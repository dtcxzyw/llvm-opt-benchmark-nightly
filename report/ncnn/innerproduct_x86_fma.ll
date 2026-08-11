inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 24
begin_hunk_0

@_ZN4ncnn20InnerProduct_x86_fmaC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn20InnerProduct_x86_fmaC2Ev

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn20InnerProduct_x86_fmaD2Ev(ptr noundef nonnull align 8 dead_on_return(744) dereferenceable(744) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn20InnerProduct_x86_fmaE, i64 16), ptr %0, align 8, !tbaa !9
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
  tail call void @__clang_call_terminate(ptr %i.m) #20
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
  tail call void @__clang_call_terminate(ptr %i.ab) #20
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
define linkonce_odr hidden void @_ZN4ncnn20InnerProduct_x86_fmaD0Ev(ptr noundef nonnull align 8 dereferenceable(744) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn20InnerProduct_x86_fmaD2Ev(ptr noundef nonnull align 8 dead_on_return(744) dereferenceable(744) %0) #10
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 744) #21
  ret void
}

declare noundef i32 @_ZN4ncnn12InnerProduct10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(592), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn12InnerProduct10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(592), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn20InnerProduct_x86_fma15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) initializes((592, 600)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %3 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %4 = alloca %"class.ncnn::ParamDict", align 8   ; 7 uses
  %i.a = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 14)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(208) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
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
  %i.s = call noundef i32 @_ZN4ncnn20InnerProduct_x86_fma24create_pipeline_int8_x86ERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  br label %bb.bg

common.resume:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit181.i, %_ZN4ncnn3MatD2Ev.exit.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit181.i ], [ %i.nw, %_ZN4ncnn3MatD2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %common.resume

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i8, ptr %i.u, align 8, !tbaa !44, !range !41, !noundef !42
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = call noundef i32 @_ZN4ncnn20InnerProduct_x86_fma21create_pipeline_bf16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  br label %bb.bg

bb.i:                                             ; preds = %bb.g
  %i.y = call noundef i32 @_ZN4ncnn20cpu_support_x86_f16cEv()
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !45, !range !41, !noundef !42
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = call noundef i32 @_ZN4ncnn20InnerProduct_x86_fma21create_pipeline_fp16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  br label %bb.bg

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !47 ; 12 uses
  %i.ah = sdiv i32 %i.ae, %i.ag                   ; 24 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.val = load i8, ptr %i.ak, align 1, !tbaa !48, !range !41, !noundef !42
  %i.al = trunc nuw i8 %.val to i1
  br i1 %i.al, label %bb.m, label %.thread27.i

bb.m:                                             ; preds = %bb.l
  %i.am = and i32 %i.ag, 7
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = and i32 %i.ag, 3
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.ac, label %.thread27.i

.thread.i:                                        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.ai, i32 noundef %i.ah, i32 noundef %i.ag, ptr noundef null)
  %i.aq = ashr exact i32 %i.ag, 3
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, i32 noundef %i.ah, i32 noundef %i.aq, i64 noundef 32, i32 noundef 8, ptr noundef null)
          to label %.preheader29.i unwind label %bb.u

.preheader29.i:                                   ; preds = %.thread.i
  %i.ar = icmp sgt i32 %i.ag, 7
  br i1 %i.ar, label %.lr.ph86.i, label %._crit_edge87.i

.lr.ph86.i:                                       ; preds = %.preheader29.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = icmp sgt i32 %i.ah, 7
  %i.ax = and i32 %i.ah, -8
  %i.ay = zext nneg i32 %i.ag to i64
  br label %bb.v

._crit_edge87.i:                                  ; preds = %._crit_edge84.i, %.preheader29.i
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %_ZN4ncnn3MatD2Ev.exit182.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge87.i
  %i.bb = atomicrmw add ptr %i.ba, i32 -1 acq_rel, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit182.i

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !17 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.be, null
  %i.bf = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef %i.bf)
          to label %_ZN4ncnn3MatD2Ev.exit182.i unwind label %bb.t, !inline_history !19

bb.r:                                             ; preds = %bb.p
  %.not.i200.i = icmp eq ptr %i.bf, null
  br i1 %.not.i200.i, label %_ZN4ncnn3MatD2Ev.exit182.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.bf) #10
  br label %_ZN4ncnn3MatD2Ev.exit182.i

bb.t:                                             ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit182.i:                       ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %._crit_edge87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %_ZN4ncnnL33innerproduct_transform_kernel_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.u:                                             ; preds = %.thread.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !11 ; 2 uses
  %.not.i183.i = icmp eq ptr %i.bn, null
  br i1 %.not.i183.i, label %_ZN4ncnn3MatD2Ev.exit181.i, label %bb.w

bb.v:                                             ; preds = %._crit_edge84.i, %.lr.ph86.i
  %indvars.iv110.i = phi i64 [ 0, %.lr.ph86.i ], [ %indvars.iv.next111.i, %._crit_edge84.i ] ; 10 uses
  %i.bo = or disjoint i64 %indvars.iv110.i, 7
  %i.bp = lshr exact i64 %indvars.iv110.i, 3
  %i.bq = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.br = load i32, ptr %i.as, align 4, !tbaa !49
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul nsw i64 %i.bp, %i.bs
  %i.bu = load i64, ptr %i.at, align 8, !tbaa !50
  %i.bv = mul i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv ; 2 uses
  %i.bx = load ptr, ptr %2, align 8, !tbaa !18    ; 8 uses
  %i.by = load i32, ptr %i.au, align 4, !tbaa !49
  %i.bz = sext i32 %i.by to i64
  %i.ca = load i64, ptr %i.av, align 8, !tbaa !50
  %i.cb = mul i64 %i.ca, %i.bz                    ; 8 uses
  %i.cc = mul i64 %i.cb, %indvars.iv110.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cc ; 2 uses
  %i.ce = or disjoint i64 %indvars.iv110.i, 1
  %i.cf = mul i64 %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cf ; 2 uses
  %i.ch = or disjoint i64 %indvars.iv110.i, 2
  %i.ci = mul i64 %i.cb, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %i.ck = or disjoint i64 %indvars.iv110.i, 3
  %i.cl = mul i64 %i.cb, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cl ; 2 uses
  %i.cn = or disjoint i64 %indvars.iv110.i, 4
  %i.co = mul i64 %i.cb, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.co ; 2 uses
  %i.cq = or disjoint i64 %indvars.iv110.i, 5
  %i.cr = mul i64 %i.cb, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cr ; 2 uses
  %i.ct = or disjoint i64 %indvars.iv110.i, 6
  %i.cu = mul i64 %i.cb, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cu ; 2 uses
  %i.cw = mul i64 %i.cb, %i.bo
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cw ; 2 uses
  br i1 %i.aw, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.v
  %.0174.lcssa.i = phi ptr [ %i.cm, %bb.v ], [ %i.fu, %.lr.ph.i ] ; 6 uses
  %.0172.lcssa.i = phi ptr [ %i.cp, %bb.v ], [ %i.fv, %.lr.ph.i ] ; 6 uses
  %.0170.lcssa.i = phi ptr [ %i.cs, %bb.v ], [ %i.fw, %.lr.ph.i ] ; 6 uses
  %.0168.lcssa.i = phi ptr [ %i.cv, %bb.v ], [ %i.fx, %.lr.ph.i ] ; 6 uses
  %.0166.lcssa.i = phi ptr [ %i.cx, %bb.v ], [ %i.fy, %.lr.ph.i ] ; 6 uses
  %.0164.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.ax, %.lr.ph.i ] ; 6 uses
  %.0149.lcssa.i = phi ptr [ %i.cj, %bb.v ], [ %i.ft, %.lr.ph.i ] ; 6 uses
  %.0147.lcssa.i = phi ptr [ %i.cg, %bb.v ], [ %i.fs, %.lr.ph.i ] ; 6 uses
  %.0145.lcssa.i = phi ptr [ %i.cd, %bb.v ], [ %i.fr, %.lr.ph.i ] ; 6 uses
  %.0143.lcssa.i = phi ptr [ %i.bw, %bb.v ], [ %i.fz, %.lr.ph.i ] ; 13 uses
  %i.cy = icmp slt i32 %.0164.lcssa.i, %i.ah
  br i1 %i.cy, label %.lr.ph83.i.preheader, label %._crit_edge84.i

.lr.ph83.i.preheader:                             ; preds = %.preheader.i
  %i.cz = xor i32 %.0164.lcssa.i, -1
  %i.da = add i32 %i.ah, %i.cz                    ; 2 uses
  %i.db = zext i32 %i.da to i64
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check171 = icmp ult i32 %i.da, 31
  br i1 %min.iters.check171, label %.lr.ph83.i.preheader207, label %vector.memcheck120

vector.memcheck120:                               ; preds = %.lr.ph83.i.preheader
  %scevgep121 = getelementptr i8, ptr %.0143.lcssa.i, i64 32
  %i.dd = xor i32 %.0164.lcssa.i, -1
  %i.de = add i32 %i.ah, %i.dd
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = shl nuw nsw i64 %i.df, 5
  %scevgep122 = getelementptr i8, ptr %scevgep121, i64 %i.dg ; 8 uses
  %scevgep123 = getelementptr i8, ptr %.0166.lcssa.i, i64 4
  %i.dh = shl nuw nsw i64 %i.df, 2                ; 8 uses
  %scevgep124 = getelementptr i8, ptr %scevgep123, i64 %i.dh
  %scevgep125 = getelementptr i8, ptr %.0168.lcssa.i, i64 4
  %scevgep126 = getelementptr i8, ptr %scevgep125, i64 %i.dh
  %scevgep127 = getelementptr i8, ptr %.0170.lcssa.i, i64 4
  %scevgep128 = getelementptr i8, ptr %scevgep127, i64 %i.dh
  %scevgep129 = getelementptr i8, ptr %.0172.lcssa.i, i64 4
  %scevgep130 = getelementptr i8, ptr %scevgep129, i64 %i.dh
  %scevgep131 = getelementptr i8, ptr %.0174.lcssa.i, i64 4
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %i.dh
  %scevgep133 = getelementptr i8, ptr %.0149.lcssa.i, i64 4
  %scevgep134 = getelementptr i8, ptr %scevgep133, i64 %i.dh
  %scevgep135 = getelementptr i8, ptr %.0147.lcssa.i, i64 4
  %scevgep136 = getelementptr i8, ptr %scevgep135, i64 %i.dh
  %scevgep137 = getelementptr i8, ptr %.0145.lcssa.i, i64 4
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.dh
  %bound0139 = icmp ult ptr %.0143.lcssa.i, %scevgep124
  %bound1140 = icmp ult ptr %.0166.lcssa.i, %scevgep122
  %found.conflict141 = and i1 %bound0139, %bound1140
  %bound0142 = icmp ult ptr %.0143.lcssa.i, %scevgep126
  %bound1143 = icmp ult ptr %.0168.lcssa.i, %scevgep122
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %found.conflict141, %found.conflict144
  %bound0146 = icmp ult ptr %.0143.lcssa.i, %scevgep128
  %bound1147 = icmp ult ptr %.0170.lcssa.i, %scevgep122
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %conflict.rdx145, %found.conflict148
  %bound0150 = icmp ult ptr %.0143.lcssa.i, %scevgep130
  %bound1151 = icmp ult ptr %.0172.lcssa.i, %scevgep122
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx153 = or i1 %conflict.rdx149, %found.conflict152
  %bound0154 = icmp ult ptr %.0143.lcssa.i, %scevgep132
  %bound1155 = icmp ult ptr %.0174.lcssa.i, %scevgep122
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %conflict.rdx153, %found.conflict156
  %bound0158 = icmp ult ptr %.0143.lcssa.i, %scevgep134
  %bound1159 = icmp ult ptr %.0149.lcssa.i, %scevgep122
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx161 = or i1 %conflict.rdx157, %found.conflict160
  %bound0162 = icmp ult ptr %.0143.lcssa.i, %scevgep136
end_hunk_0
begin_hunk_1_@_ZN4ncnn20InnerProduct_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %.115079.i.ph = phi ptr [ %.0149.lcssa.i, %vector.memcheck120 ], [ %.0149.lcssa.i, %.lr.ph83.i.preheader ], [ %i.dn, %middle.block195 ]
  %.116578.i.ph = phi i32 [ %.0164.lcssa.i, %vector.memcheck120 ], [ %.0164.lcssa.i, %.lr.ph83.i.preheader ], [ %i.dp, %middle.block195 ]
  %.116777.i.ph = phi ptr [ %.0166.lcssa.i, %vector.memcheck120 ], [ %.0166.lcssa.i, %.lr.ph83.i.preheader ], [ %i.dq, %middle.block195 ]
  %.116976.i.ph = phi ptr [ %.0168.lcssa.i, %vector.memcheck120 ], [ %.0168.lcssa.i, %.lr.ph83.i.preheader ], [ %i.dr, %middle.block195 ]
  %.117175.i.ph = phi ptr [ %.0170.lcssa.i, %vector.memcheck120 ], [ %.0170.lcssa.i, %.lr.ph83.i.preheader ], [ %i.ds, %middle.block195 ]
  %.117374.i.ph = phi ptr [ %.0172.lcssa.i, %vector.memcheck120 ], [ %.0172.lcssa.i, %.lr.ph83.i.preheader ], [ %i.dt, %middle.block195 ]
  %.117573.i.ph = phi ptr [ %.0174.lcssa.i, %vector.memcheck120 ], [ %.0174.lcssa.i, %.lr.ph83.i.preheader ], [ %i.du, %middle.block195 ]
  br label %.lr.ph83.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.i
  %.014362.i = phi ptr [ %i.fz, %.lr.ph.i ], [ %i.bw, %bb.v ] ; 9 uses
  %.014561.i = phi ptr [ %i.fr, %.lr.ph.i ], [ %i.cd, %bb.v ] ; 2 uses
  %.014760.i = phi ptr [ %i.fs, %.lr.ph.i ], [ %i.cg, %bb.v ] ; 2 uses
  %.014959.i = phi ptr [ %i.ft, %.lr.ph.i ], [ %i.cj, %bb.v ] ; 2 uses
  %.016458.i = phi i32 [ %i.ga, %.lr.ph.i ], [ 0, %bb.v ]
  %.016657.i = phi ptr [ %i.fy, %.lr.ph.i ], [ %i.cx, %bb.v ] ; 2 uses
  %.016856.i = phi ptr [ %i.fx, %.lr.ph.i ], [ %i.cv, %bb.v ] ; 2 uses
  %.017055.i = phi ptr [ %i.fw, %.lr.ph.i ], [ %i.cs, %bb.v ] ; 2 uses
  %.017254.i = phi ptr [ %i.fv, %.lr.ph.i ], [ %i.cp, %bb.v ] ; 2 uses
  %.017453.i = phi ptr [ %i.fu, %.lr.ph.i ], [ %i.cm, %bb.v ] ; 2 uses
  %i.ee = load <8 x float>, ptr %.014561.i, align 1, !tbaa !77 ; 2 uses
  %i.ef = load <8 x float>, ptr %.014760.i, align 1, !tbaa !77 ; 2 uses
  %i.eg = load <8 x float>, ptr %.014959.i, align 1, !tbaa !77 ; 2 uses
  %i.eh = load <8 x float>, ptr %.017453.i, align 1, !tbaa !77 ; 2 uses
  %i.ei = load <8 x float>, ptr %.017254.i, align 1, !tbaa !77 ; 2 uses
  %i.ej = load <8 x float>, ptr %.017055.i, align 1, !tbaa !77 ; 2 uses
  %i.ek = load <8 x float>, ptr %.016856.i, align 1, !tbaa !77 ; 2 uses
  %i.el = load <8 x float>, ptr %.016657.i, align 1, !tbaa !77 ; 2 uses
  %i.em = shufflevector <8 x float> %i.ee, <8 x float> %i.ef, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.en = shufflevector <8 x float> %i.ee, <8 x float> %i.ef, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.eo = shufflevector <8 x float> %i.eg, <8 x float> %i.eh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ep = shufflevector <8 x float> %i.eg, <8 x float> %i.eh, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.eq = shufflevector <8 x float> %i.ei, <8 x float> %i.ej, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.er = shufflevector <8 x float> %i.ei, <8 x float> %i.ej, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.es = shufflevector <8 x float> %i.ek, <8 x float> %i.el, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.et = shufflevector <8 x float> %i.ek, <8 x float> %i.el, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.eu = shufflevector <8 x float> %i.em, <8 x float> %i.eo, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ev = shufflevector <8 x float> %i.em, <8 x float> %i.eo, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ew = shufflevector <8 x float> %i.en, <8 x float> %i.ep, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ex = shufflevector <8 x float> %i.en, <8 x float> %i.ep, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ey = shufflevector <8 x float> %i.eq, <8 x float> %i.es, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ez = shufflevector <8 x float> %i.eq, <8 x float> %i.es, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.fa = shufflevector <8 x float> %i.er, <8 x float> %i.et, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fb = shufflevector <8 x float> %i.er, <8 x float> %i.et, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.fc = shufflevector <8 x float> %i.eu, <8 x float> %i.ey, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fd = shufflevector <8 x float> %i.ev, <8 x float> %i.ez, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fe = shufflevector <8 x float> %i.ew, <8 x float> %i.fa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ff = shufflevector <8 x float> %i.ex, <8 x float> %i.fb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fg = shufflevector <8 x float> %i.eu, <8 x float> %i.ey, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fh = shufflevector <8 x float> %i.ev, <8 x float> %i.ez, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fi = shufflevector <8 x float> %i.ew, <8 x float> %i.fa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fj = shufflevector <8 x float> %i.ex, <8 x float> %i.fb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.fc, ptr %.014362.i, align 1, !tbaa !77
  %i.fk = getelementptr inbounds nuw i8, ptr %.014362.i, i64 32
  store <8 x float> %i.fd, ptr %i.fk, align 1, !tbaa !77
  %i.fl = getelementptr inbounds nuw i8, ptr %.014362.i, i64 64
  store <8 x float> %i.fe, ptr %i.fl, align 1, !tbaa !77
  %i.fm = getelementptr inbounds nuw i8, ptr %.014362.i, i64 96
  store <8 x float> %i.ff, ptr %i.fm, align 1, !tbaa !77
  %i.fn = getelementptr inbounds nuw i8, ptr %.014362.i, i64 128
  store <8 x float> %i.fg, ptr %i.fn, align 1, !tbaa !77
  %i.fo = getelementptr inbounds nuw i8, ptr %.014362.i, i64 160
  store <8 x float> %i.fh, ptr %i.fo, align 1, !tbaa !77
  %i.fp = getelementptr inbounds nuw i8, ptr %.014362.i, i64 192
  store <8 x float> %i.fi, ptr %i.fp, align 1, !tbaa !77
  %i.fq = getelementptr inbounds nuw i8, ptr %.014362.i, i64 224
  store <8 x float> %i.fj, ptr %i.fq, align 1, !tbaa !77
  %i.fr = getelementptr inbounds nuw i8, ptr %.014561.i, i64 32 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.014760.i, i64 32 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.014959.i, i64 32 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.017453.i, i64 32 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.017254.i, i64 32 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.017055.i, i64 32 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.016856.i, i64 32 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.016657.i, i64 32 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.014362.i, i64 256 ; 2 uses
  %i.ga = add nuw nsw i32 %.016458.i, 8           ; 2 uses
  %i.gb = or disjoint i32 %i.ga, 7
  %i.gc = icmp slt i32 %i.gb, %i.ah
  br i1 %i.gc, label %.lr.ph.i, label %.preheader.i, !llvm.loop !78

.lr.ph83.i:                                       ; preds = %.lr.ph83.i.preheader207, %.lr.ph83.i
  %.114482.i = phi ptr [ %i.ha, %.lr.ph83.i ], [ %.114482.i.ph, %.lr.ph83.i.preheader207 ] ; 9 uses
  %.114681.i = phi ptr [ %i.gd, %.lr.ph83.i ], [ %.114681.i.ph, %.lr.ph83.i.preheader207 ] ; 2 uses
  %.114880.i = phi ptr [ %i.gf, %.lr.ph83.i ], [ %.114880.i.ph, %.lr.ph83.i.preheader207 ] ; 2 uses
  %.115079.i = phi ptr [ %i.gi, %.lr.ph83.i ], [ %.115079.i.ph, %.lr.ph83.i.preheader207 ] ; 2 uses
  %.116578.i = phi i32 [ %i.hb, %.lr.ph83.i ], [ %.116578.i.ph, %.lr.ph83.i.preheader207 ]
  %.116777.i = phi ptr [ %i.gx, %.lr.ph83.i ], [ %.116777.i.ph, %.lr.ph83.i.preheader207 ] ; 2 uses
  %.116976.i = phi ptr [ %i.gu, %.lr.ph83.i ], [ %.116976.i.ph, %.lr.ph83.i.preheader207 ] ; 2 uses
  %.117175.i = phi ptr [ %i.gr, %.lr.ph83.i ], [ %.117175.i.ph, %.lr.ph83.i.preheader207 ] ; 2 uses
  %.117374.i = phi ptr [ %i.go, %.lr.ph83.i ], [ %.117374.i.ph, %.lr.ph83.i.preheader207 ] ; 2 uses
  %.117573.i = phi ptr [ %i.gl, %.lr.ph83.i ], [ %.117573.i.ph, %.lr.ph83.i.preheader207 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.114681.i, i64 4
  %i.ge = load float, ptr %.114681.i, align 4, !tbaa !51
  store float %i.ge, ptr %.114482.i, align 4, !tbaa !51
  %i.gf = getelementptr inbounds nuw i8, ptr %.114880.i, i64 4
  %i.gg = load float, ptr %.114880.i, align 4, !tbaa !51
  %i.gh = getelementptr inbounds nuw i8, ptr %.114482.i, i64 4
  store float %i.gg, ptr %i.gh, align 4, !tbaa !51
  %i.gi = getelementptr inbounds nuw i8, ptr %.115079.i, i64 4
  %i.gj = load float, ptr %.115079.i, align 4, !tbaa !51
  %i.gk = getelementptr inbounds nuw i8, ptr %.114482.i, i64 8
  store float %i.gj, ptr %i.gk, align 4, !tbaa !51
  %i.gl = getelementptr inbounds nuw i8, ptr %.117573.i, i64 4
  %i.gm = load float, ptr %.117573.i, align 4, !tbaa !51
  %i.gn = getelementptr inbounds nuw i8, ptr %.114482.i, i64 12
  store float %i.gm, ptr %i.gn, align 4, !tbaa !51
  %i.go = getelementptr inbounds nuw i8, ptr %.117374.i, i64 4
  %i.gp = load float, ptr %.117374.i, align 4, !tbaa !51
  %i.gq = getelementptr inbounds nuw i8, ptr %.114482.i, i64 16
  store float %i.gp, ptr %i.gq, align 4, !tbaa !51
  %i.gr = getelementptr inbounds nuw i8, ptr %.117175.i, i64 4
  %i.gs = load float, ptr %.117175.i, align 4, !tbaa !51
  %i.gt = getelementptr inbounds nuw i8, ptr %.114482.i, i64 20
  store float %i.gs, ptr %i.gt, align 4, !tbaa !51
  %i.gu = getelementptr inbounds nuw i8, ptr %.116976.i, i64 4
  %i.gv = load float, ptr %.116976.i, align 4, !tbaa !51
  %i.gw = getelementptr inbounds nuw i8, ptr %.114482.i, i64 24
  store float %i.gv, ptr %i.gw, align 4, !tbaa !51
  %i.gx = getelementptr inbounds nuw i8, ptr %.116777.i, i64 4
  %i.gy = load float, ptr %.116777.i, align 4, !tbaa !51
  %i.gz = getelementptr inbounds nuw i8, ptr %.114482.i, i64 28
  store float %i.gy, ptr %i.gz, align 4, !tbaa !51
  %i.ha = getelementptr inbounds nuw i8, ptr %.114482.i, i64 32
  %i.hb = add nuw nsw i32 %.116578.i, 1           ; 2 uses
  %exitcond109.not.i = icmp eq i32 %i.hb, %i.ah
  br i1 %exitcond109.not.i, label %._crit_edge84.i, label %.lr.ph83.i, !llvm.loop !79

._crit_edge84.i:                                  ; preds = %.lr.ph83.i, %middle.block195, %.preheader.i
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 8 ; 2 uses
  %i.hc = or disjoint i64 %indvars.iv.next111.i, 7
  %i.hd = icmp samesign ult i64 %i.hc, %i.ay
  br i1 %i.hd, label %bb.v, label %._crit_edge87.i, !llvm.loop !80

bb.w:                                             ; preds = %bb.u
  %i.he = atomicrmw add ptr %i.bn, i32 -1 acq_rel, align 4
  %i.hf = icmp eq i32 %i.he, 1
  br i1 %i.hf, label %bb.x, label %_ZN4ncnn3MatD2Ev.exit181.i

bb.x:                                             ; preds = %bb.w
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !17 ; 3 uses
  %.not3.i184.i = icmp eq ptr %i.hh, null
  %i.hi = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i184.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hj = load ptr, ptr %i.hh, align 8, !tbaa !9
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  invoke void %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef %i.hi)
          to label %_ZN4ncnn3MatD2Ev.exit181.i unwind label %bb.ab, !inline_history !19

bb.z:                                             ; preds = %bb.x
  %.not.i198.i = icmp eq ptr %i.hi, null
  br i1 %.not.i198.i, label %_ZN4ncnn3MatD2Ev.exit181.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.hi) #10
  br label %_ZN4ncnn3MatD2Ev.exit181.i

bb.ab:                                            ; preds = %bb.y
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit181.i:                       ; preds = %bb.aa, %bb.z, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %common.resume

bb.ac:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.ai, i32 noundef %i.ah, i32 noundef %i.ag, ptr noundef null)
  %i.ho = ashr exact i32 %i.ag, 2
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, i32 noundef %i.ah, i32 noundef %i.ho, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %.preheader31.i unwind label %bb.ak

.preheader31.i:                                   ; preds = %bb.ac
  %i.hp = icmp sgt i32 %i.ag, 3
  br i1 %i.hp, label %.lr.ph51.i, label %._crit_edge52.i

.lr.ph51.i:                                       ; preds = %.preheader31.i
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hu = icmp sgt i32 %i.ah, 3
  br i1 %i.hu, label %.lr.ph.us.preheader.i, label %.lr.ph51.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph51.i
  %i.hv = and i32 %i.ah, 2147483644               ; 5 uses
  %i.hw = zext nneg i32 %i.ag to i64
  %.not14 = icmp eq i32 %i.hv, %i.ah
  %i.hx = xor i32 %i.hv, -1
  %i.hy = add nsw i32 %i.ah, %i.hx
  %i.hz = zext i32 %i.hy to i64                   ; 2 uses
  %i.ia = shl nuw nsw i64 %i.hz, 4
  %i.ib = shl nuw nsw i64 %i.hz, 2                ; 4 uses
  %i.ic = and i32 %i.ah, 2147483644
  %5 = xor i32 %i.ic, -1
  %i.id = add nsw i32 %i.ah, %5                   ; 2 uses
  %i.ie = zext i32 %i.id to i64
  %i.if = add nuw nsw i64 %i.ie, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.id, 23
  %n.vec = and i64 %i.if, 8589934584              ; 5 uses
  %i.ig = trunc i64 %n.vec to i32
  %i.ih = add i32 %i.hv, %i.ig
  %i.ii = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %i.ij = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %i.if, %n.vec
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv106.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next107.i, %._crit_edge.us.i ] ; 9 uses
  %i.ik = or disjoint i64 %indvars.iv106.i, 3
  %i.il = or disjoint i64 %indvars.iv106.i, 2
  %i.im = or disjoint i64 %indvars.iv106.i, 1
  %i.in = or disjoint i64 %indvars.iv106.i, 3
  %i.io = lshr exact i64 %indvars.iv106.i, 2
  %i.ip = load ptr, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.iq = load i32, ptr %i.hq, align 4, !tbaa !49
  %i.ir = sext i32 %i.iq to i64
  %i.is = mul i64 %i.io, %i.ir
  %i.it = load i64, ptr %i.hr, align 8, !tbaa !50
  %i.iu = mul i64 %i.is, %i.it                    ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.iu
  %i.iw = load ptr, ptr %3, align 8, !tbaa !18    ; 8 uses
  %i.ix = load i32, ptr %i.hs, align 4, !tbaa !49
  %i.iy = sext i32 %i.ix to i64                   ; 4 uses
  %i.iz = load i64, ptr %i.ht, align 8, !tbaa !50 ; 4 uses
  %i.ja = mul i64 %i.iz, %i.iy                    ; 4 uses
  %i.jb = mul i64 %i.ja, %indvars.iv106.i         ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.jb
  %i.jd = or disjoint i64 %indvars.iv106.i, 1
  %i.je = mul i64 %i.ja, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.je
  %i.jg = or disjoint i64 %indvars.iv106.i, 2
  %i.jh = mul i64 %i.ja, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.jh
  %i.jj = mul i64 %i.ja, %i.in
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.jj
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.us.i
  %indvar = phi i64 [ %indvar.next, %bb.ad ], [ 0, %.lr.ph.us.i ] ; 3 uses
  %.015137.us.i = phi i32 [ %i.kf, %bb.ad ], [ 0, %.lr.ph.us.i ]
  %.015336.us.i = phi ptr [ %i.kd, %bb.ad ], [ %i.jk, %.lr.ph.us.i ] ; 2 uses
  %.015535.us.i = phi ptr [ %i.kc, %bb.ad ], [ %i.ji, %.lr.ph.us.i ] ; 2 uses
  %.015734.us.i = phi ptr [ %i.kb, %bb.ad ], [ %i.jf, %.lr.ph.us.i ] ; 2 uses
  %.015933.us.i = phi ptr [ %i.ka, %bb.ad ], [ %i.jc, %.lr.ph.us.i ] ; 2 uses
  %.016132.us.i = phi ptr [ %i.ke, %bb.ad ], [ %i.iv, %.lr.ph.us.i ] ; 5 uses
  %i.jl = load <4 x float>, ptr %.015933.us.i, align 1, !tbaa !77 ; 2 uses
  %i.jm = load <4 x float>, ptr %.015734.us.i, align 1, !tbaa !77 ; 2 uses
  %i.jn = load <4 x float>, ptr %.015535.us.i, align 1, !tbaa !77 ; 2 uses
  %i.jo = load <4 x float>, ptr %.015336.us.i, align 1, !tbaa !77 ; 2 uses
  %i.jp = shufflevector <4 x float> %i.jl, <4 x float> %i.jm, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jq = shufflevector <4 x float> %i.jn, <4 x float> %i.jo, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jr = shufflevector <4 x float> %i.jl, <4 x float> %i.jm, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.js = shufflevector <4 x float> %i.jn, <4 x float> %i.jo, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jt = shufflevector <4 x float> %i.jp, <4 x float> %i.jq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ju = shufflevector <4 x float> %i.jq, <4 x float> %i.jp, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jv = shufflevector <4 x float> %i.jr, <4 x float> %i.js, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jw = shufflevector <4 x float> %i.js, <4 x float> %i.jr, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.jt, ptr %.016132.us.i, align 1, !tbaa !77
  %i.jx = getelementptr inbounds nuw i8, ptr %.016132.us.i, i64 16
  store <4 x float> %i.ju, ptr %i.jx, align 1, !tbaa !77
  %i.jy = getelementptr inbounds nuw i8, ptr %.016132.us.i, i64 32
  store <4 x float> %i.jv, ptr %i.jy, align 1, !tbaa !77
  %i.jz = getelementptr inbounds nuw i8, ptr %.016132.us.i, i64 48
  store <4 x float> %i.jw, ptr %i.jz, align 1, !tbaa !77
  %i.ka = getelementptr i8, ptr %.015933.us.i, i64 16 ; 6 uses
  %i.kb = getelementptr i8, ptr %.015734.us.i, i64 16 ; 6 uses
  %i.kc = getelementptr i8, ptr %.015535.us.i, i64 16 ; 6 uses
  %i.kd = getelementptr i8, ptr %.015336.us.i, i64 16 ; 6 uses
  %i.ke = getelementptr i8, ptr %.016132.us.i, i64 64 ; 9 uses
  %i.kf = add nuw nsw i32 %.015137.us.i, 4        ; 2 uses
  %i.kg = or disjoint i32 %i.kf, 3
  %i.kh = icmp slt i32 %i.kg, %i.ah
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kh, label %bb.ad, label %..preheader30_crit_edge.us.i, !llvm.loop !81

.lr.ph49.us.i:                                    ; preds = %.lr.ph49.us.i.prol.loopexit, %.lr.ph49.us.i
  %.115248.us.i = phi i32 [ %i.lg, %.lr.ph49.us.i ], [ %.115248.us.i.unr, %.lr.ph49.us.i.prol.loopexit ]
  %.115447.us.i = phi ptr [ %i.lc, %.lr.ph49.us.i ], [ %.115447.us.i.unr, %.lr.ph49.us.i.prol.loopexit ] ; 3 uses
  %.115646.us.i = phi ptr [ %i.kz, %.lr.ph49.us.i ], [ %.115646.us.i.unr, %.lr.ph49.us.i.prol.loopexit ] ; 3 uses
  %.115845.us.i = phi ptr [ %i.kw, %.lr.ph49.us.i ], [ %.115845.us.i.unr, %.lr.ph49.us.i.prol.loopexit ] ; 3 uses
  %.116044.us.i = phi ptr [ %i.ku, %.lr.ph49.us.i ], [ %.116044.us.i.unr, %.lr.ph49.us.i.prol.loopexit ] ; 3 uses
  %.116243.us.i = phi ptr [ %i.lf, %.lr.ph49.us.i ], [ %.116243.us.i.unr, %.lr.ph49.us.i.prol.loopexit ] ; 9 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.116044.us.i, i64 4
  %i.kj = load float, ptr %.116044.us.i, align 4, !tbaa !51
  store float %i.kj, ptr %.116243.us.i, align 4, !tbaa !51
  %i.kk = getelementptr inbounds nuw i8, ptr %.115845.us.i, i64 4
  %i.kl = load float, ptr %.115845.us.i, align 4, !tbaa !51
  %i.km = getelementptr inbounds nuw i8, ptr %.116243.us.i, i64 4
  store float %i.kl, ptr %i.km, align 4, !tbaa !51
  %i.kn = getelementptr inbounds nuw i8, ptr %.115646.us.i, i64 4
  %i.ko = load float, ptr %.115646.us.i, align 4, !tbaa !51
  %i.kp = getelementptr inbounds nuw i8, ptr %.116243.us.i, i64 8
  store float %i.ko, ptr %i.kp, align 4, !tbaa !51
  %i.kq = getelementptr inbounds nuw i8, ptr %.115447.us.i, i64 4
  %i.kr = load float, ptr %.115447.us.i, align 4, !tbaa !51
  %i.ks = getelementptr inbounds nuw i8, ptr %.116243.us.i, i64 12
  store float %i.kr, ptr %i.ks, align 4, !tbaa !51
  %i.kt = getelementptr inbounds nuw i8, ptr %.116243.us.i, i64 16
  %i.ku = getelementptr inbounds nuw i8, ptr %.116044.us.i, i64 8
  %i.kv = load float, ptr %i.ki, align 4, !tbaa !51
  store float %i.kv, ptr %i.kt, align 4, !tbaa !51
  %i.kw = getelementptr inbounds nuw i8, ptr %.115845.us.i, i64 8
  %i.kx = load float, ptr %i.kk, align 4, !tbaa !51
  %i.ky = getelementptr inbounds nuw i8, ptr %.116243.us.i, i64 20
  store float %i.kx, ptr %i.ky, align 4, !tbaa !51
  %i.kz = getelementptr inbounds nuw i8, ptr %.115646.us.i, i64 8
  %i.la = load float, ptr %i.kn, align 4, !tbaa !51
  %i.lb = getelementptr inbounds nuw i8, ptr %.116243.us.i, i64 24
  store float %i.la, ptr %i.lb, align 4, !tbaa !51
  %i.lc = getelementptr inbounds nuw i8, ptr %.115447.us.i, i64 8
  %i.ld = load float, ptr %i.kq, align 4, !tbaa !51
  %i.le = getelementptr inbounds nuw i8, ptr %.116243.us.i, i64 28
  store float %i.ld, ptr %i.le, align 4, !tbaa !51
  %i.lf = getelementptr inbounds nuw i8, ptr %.116243.us.i, i64 32
  %i.lg = add nuw nsw i32 %.115248.us.i, 2        ; 2 uses
  %exitcond105.not.i.1 = icmp eq i32 %i.lg, %i.ah
  br i1 %exitcond105.not.i.1, label %._crit_edge.us.i, label %.lr.ph49.us.i, !llvm.loop !82

._crit_edge.us.i:                                 ; preds = %.lr.ph49.us.i.prol.loopexit, %.lr.ph49.us.i, %middle.block, %..preheader30_crit_edge.us.i
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 4 ; 2 uses
  %i.lh = or disjoint i64 %indvars.iv.next107.i, 3
  %i.li = icmp samesign ult i64 %i.lh, %i.hw
  br i1 %i.li, label %.lr.ph.us.i, label %._crit_edge52.i, !llvm.loop !83

..preheader30_crit_edge.us.i:                     ; preds = %bb.ad
  br i1 %.not14, label %._crit_edge.us.i, label %.lr.ph49.us.i.preheader

.lr.ph49.us.i.preheader:                          ; preds = %..preheader30_crit_edge.us.i
  br i1 %min.iters.check, label %.lr.ph49.us.i.preheader216, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph49.us.i.preheader
  %i.lj = shl nuw nsw i64 %indvar, 6
  %i.lk = getelementptr i8, ptr %i.ip, i64 %i.lj
  %i.ll = getelementptr i8, ptr %i.lk, i64 %i.ia
  %i.lm = getelementptr i8, ptr %i.ll, i64 80
  %scevgep = getelementptr i8, ptr %i.lm, i64 %i.iu ; 4 uses
  %i.ln = mul i64 %i.iz, %i.ik
  %i.lo = mul i64 %i.ln, %i.iy
  %i.lp = shl nuw nsw i64 %indvar, 4              ; 4 uses
  %i.lq = getelementptr i8, ptr %i.iw, i64 %i.lp
  %i.lr = getelementptr i8, ptr %i.lq, i64 %i.ib
  %i.ls = getelementptr i8, ptr %i.lr, i64 20
  %scevgep93 = getelementptr i8, ptr %i.ls, i64 %i.lo
  %i.lt = mul i64 %i.iz, %i.il
  %i.lu = mul i64 %i.lt, %i.iy
  %i.lv = getelementptr i8, ptr %i.iw, i64 %i.lp
  %i.lw = getelementptr i8, ptr %i.lv, i64 %i.ib
  %i.lx = getelementptr i8, ptr %i.lw, i64 20
  %scevgep94 = getelementptr i8, ptr %i.lx, i64 %i.lu
  %i.ly = mul i64 %i.iz, %i.im
  %i.lz = mul i64 %i.ly, %i.iy
  %i.ma = getelementptr i8, ptr %i.iw, i64 %i.lp
  %i.mb = getelementptr i8, ptr %i.ma, i64 %i.ib
  %i.mc = getelementptr i8, ptr %i.mb, i64 20
  %scevgep95 = getelementptr i8, ptr %i.mc, i64 %i.lz
  %i.md = getelementptr i8, ptr %i.iw, i64 %i.lp
  %i.me = getelementptr i8, ptr %i.md, i64 %i.ib
  %i.mf = getelementptr i8, ptr %i.me, i64 20
  %scevgep96 = getelementptr i8, ptr %i.mf, i64 %i.jb
  %bound0 = icmp ult ptr %i.ke, %scevgep93
  %bound1 = icmp ult ptr %i.kd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound097 = icmp ult ptr %i.ke, %scevgep94
  %bound198 = icmp ult ptr %i.kc, %scevgep
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx = or i1 %found.conflict, %found.conflict99
  %bound0100 = icmp ult ptr %i.ke, %scevgep95
  %bound1101 = icmp ult ptr %i.kb, %scevgep
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx, %found.conflict102
  %bound0104 = icmp ult ptr %i.ke, %scevgep96
  %bound1105 = icmp ult ptr %i.ka, %scevgep
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  br i1 %conflict.rdx107, label %.lr.ph49.us.i.preheader216, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.mg = getelementptr i8, ptr %i.kd, i64 %i.ii
  %i.mh = getelementptr i8, ptr %i.kc, i64 %i.ii
  %i.mi = getelementptr i8, ptr %i.kb, i64 %i.ii
  %i.mj = getelementptr i8, ptr %i.ka, i64 %i.ii
  %i.mk = getelementptr i8, ptr %i.ke, i64 %i.ij
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ml = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.kd, i64 %i.ml
  %next.gep108 = getelementptr i8, ptr %i.kc, i64 %i.ml
  %next.gep109 = getelementptr i8, ptr %i.kb, i64 %i.ml
  %next.gep110 = getelementptr i8, ptr %i.ka, i64 %i.ml
  %i.mm = shl i64 %index, 4
  %next.gep111 = getelementptr i8, ptr %i.ke, i64 %i.mm
  %wide.load = load <8 x float>, ptr %next.gep110, align 4, !tbaa !51, !alias.scope !84
  %wide.load112 = load <8 x float>, ptr %next.gep109, align 4, !tbaa !51, !alias.scope !87
end_hunk_1
begin_hunk_2_@_ZN4ncnn20InnerProduct_x86_fma24create_pipeline_int8_x86ERKNS_6OptionE:bb.a
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit37:                          ; preds = %bb.c, %._crit_edge56, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.ch = load i32, ptr %i.c, align 8, !tbaa !47
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.cg, i32 noundef %i.ch, i64 noundef 4, ptr noundef null)
  %i.ci = load i32, ptr %i.c, align 8, !tbaa !47  ; 4 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %_ZN4ncnn3MatD2Ev.exit37
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !18 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !18 ; 3 uses
  %wide.trip.count72 = zext nneg i32 %i.ci to i64 ; 2 uses
  %xtraiter90 = and i64 %wide.trip.count72, 1
  %i.co = icmp eq i32 %i.ci, 1
  br i1 %i.co, label %.epil.preheader89, label %.lr.ph58.new

.lr.ph58.new:                                     ; preds = %.lr.ph58
  %unroll_iter93 = and i64 %wide.trip.count72, 2147483646
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !11 ; 2 uses
  %.not.i38 = icmp eq ptr %i.cr, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cs = atomicrmw add ptr %i.cr, i32 -1 acq_rel, align 4
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !17 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.cv, null
  %i.cw = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i39, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef %i.cw)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.o, !inline_history !19

bb.m:                                             ; preds = %bb.k
  %.not.i46 = icmp eq ptr %i.cw, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.cw) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.j, %bb.i, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  resume { ptr, i32 } %i.cp

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.u
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %._crit_edge, label %.epil.preheader89

.epil.preheader89:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph58
  %indvars.iv69.epil.init = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next70.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod92 = trunc i32 %i.ci to i1
  call void @llvm.assume(i1 %lcmp.mod92)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv69.epil.init
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !51 ; 2 uses
  %i.de = fcmp fast oeq float %i.dd, 0.000000e+00
  br i1 %i.de, label %._crit_edge.loopexit.epilog-lcssa, label %bb.p

bb.p:                                             ; preds = %.epil.preheader89
  %i.df = load ptr, ptr %i.cm, align 8, !tbaa !18
  %i.dg = load float, ptr %i.df, align 4, !tbaa !51
  %i.dh = fmul fast float %i.dg, %i.dd
  %i.di = fdiv fast float 1.000000e+00, %i.dh
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.p, %.epil.preheader89
  %.0.epil = phi nsz float [ %i.di, %bb.p ], [ 0.000000e+00, %.epil.preheader89 ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv69.epil.init
  store float %.0.epil, ptr %i.dj, align 4, !tbaa !51
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit37
  %i.dk = load i8, ptr %1, align 8, !tbaa !102, !range !41, !noundef !42
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.v, label %bb.ab

bb.q:                                             ; preds = %bb.u, %.lr.ph58.new
  %indvars.iv69 = phi i64 [ 0, %.lr.ph58.new ], [ %indvars.iv.next70.1, %bb.u ] ; 4 uses
  %niter94 = phi i64 [ 0, %.lr.ph58.new ], [ %niter94.next.1, %bb.u ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv69
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !51 ; 2 uses
  %i.do = fcmp fast oeq float %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = load ptr, ptr %i.cm, align 8, !tbaa !18
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !51
  %i.dr = fmul fast float %i.dq, %i.dn
  %i.ds = fdiv fast float 1.000000e+00, %i.dr
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0 = phi nsz float [ %i.ds, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv69
  store float %.0, ptr %i.dt, align 4, !tbaa !51
  %indvars.iv.next70 = or disjoint i64 %indvars.iv69, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next70
  %i.dv = load float, ptr %i.du, align 4, !tbaa !51 ; 2 uses
  %i.dw = fcmp fast oeq float %i.dv, 0.000000e+00
  br i1 %i.dw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = load ptr, ptr %i.cm, align 8, !tbaa !18
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !51
  %i.dz = fmul fast float %i.dy, %i.dv
  %i.ea = fdiv fast float 1.000000e+00, %i.dz
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.1 = phi nsz float [ %i.ea, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.next70
  store float %.0.1, ptr %i.eb, align 4, !tbaa !51
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %niter94.next.1 = add i64 %niter94, 2           ; 2 uses
  %niter94.ncmp.1 = icmp eq i64 %niter94.next.1, %unroll_iter93
  br i1 %niter94.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.q, !llvm.loop !119

bb.v:                                             ; preds = %._crit_edge
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !11 ; 2 uses
  %.not.i42 = icmp eq ptr %i.ed, null
  br i1 %.not.i42, label %_ZN4ncnn3Mat7releaseEv.exit44, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ee = atomicrmw add ptr %i.ed, i32 -1 acq_rel, align 4
  %i.ef = icmp eq i32 %i.ee, 1
  br i1 %i.ef, label %bb.x, label %_ZN4ncnn3Mat7releaseEv.exit44

bb.x:                                             ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !17 ; 3 uses
  %.not3.i43 = icmp eq ptr %i.eh, null
  %i.ei = load ptr, ptr %i.l, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i43, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !9
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef %i.ei), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit44

bb.z:                                             ; preds = %bb.x
  %.not.i45 = icmp eq ptr %i.ei, null
  br i1 %.not.i45, label %_ZN4ncnn3Mat7releaseEv.exit44, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.ei) #10
  br label %_ZN4ncnn3Mat7releaseEv.exit44

_ZN4ncnn3Mat7releaseEv.exit44:                    ; preds = %bb.aa, %bb.z, %bb.v, %bb.w, %bb.y
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.en, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.l, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.em, i8 0, i64 20, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit44, %._crit_edge
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn20InnerProduct_x86_fma21create_pipeline_bf16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %3 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load i32, ptr %i.c, align 8, !tbaa !47   ; 12 uses
  %i.e = sdiv i32 %i.b, %i.d                      ; 20 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.i = load i8, ptr %i.h, align 1, !tbaa !48, !range !41, !noundef !42
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %.thread276.i

bb.b:                                             ; preds = %bb.a
  %i.k = and i32 %i.d, 7
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %i.d, 3
  %.not.i4 = icmp eq i32 %i.m, 0
  br i1 %.not.i4, label %bb.r, label %.thread276.i

.thread.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i32 noundef %i.e, i32 noundef %i.d, ptr noundef null)
  %i.n = ashr exact i32 %i.d, 3
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i32 noundef %i.e, i32 noundef %i.n, i64 noundef 16, i32 noundef 8, ptr noundef null)
          to label %.preheader278.i unwind label %bb.j

.preheader278.i:                                  ; preds = %.thread.i
  %i.o = icmp sgt i32 %i.d, 7
  br i1 %i.o, label %.lr.ph337.i, label %._crit_edge338.i

.lr.ph337.i:                                      ; preds = %.preheader278.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = icmp sgt i32 %i.e, 7
  %i.u = and i32 %i.e, -8
  %i.v = zext nneg i32 %i.d to i64
  br label %bb.k

._crit_edge338.i:                                 ; preds = %._crit_edge335.i, %.preheader278.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZN4ncnn3MatD2Ev.exit196.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge338.i
  %i.y = atomicrmw add ptr %i.x, i32 -1 acq_rel, align 4
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.e, label %_ZN4ncnn3MatD2Ev.exit196.i

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.ab, null
  %i.ac = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ac)
          to label %_ZN4ncnn3MatD2Ev.exit196.i unwind label %bb.i, !inline_history !19

bb.g:                                             ; preds = %bb.e
  %.not.i226.i = icmp eq ptr %i.ac, null
  br i1 %.not.i226.i, label %_ZN4ncnn3MatD2Ev.exit196.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.ac) #10
  br label %_ZN4ncnn3MatD2Ev.exit196.i

bb.i:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit196.i:                       ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %._crit_edge338.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.j:                                             ; preds = %.thread.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %.not.i197.i = icmp eq ptr %i.ak, null
  br i1 %.not.i197.i, label %_ZN4ncnn3MatD2Ev.exit195.i, label %bb.l

bb.k:                                             ; preds = %._crit_edge335.i, %.lr.ph337.i
  %indvars.iv356.i = phi i64 [ 0, %.lr.ph337.i ], [ %indvars.iv.next357.i, %._crit_edge335.i ] ; 10 uses
  %i.al = or disjoint i64 %indvars.iv356.i, 7
  %i.am = lshr exact i64 %indvars.iv356.i, 3
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ao = load i32, ptr %i.p, align 4, !tbaa !49
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %i.am, %i.ap
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !50
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %2, align 8, !tbaa !18    ; 8 uses
  %i.av = load i32, ptr %i.r, align 4, !tbaa !49
  %i.aw = sext i32 %i.av to i64
  %i.ax = load i64, ptr %i.s, align 8, !tbaa !50
  %i.ay = mul i64 %i.ax, %i.aw                    ; 8 uses
  %i.az = mul i64 %i.ay, %indvars.iv356.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.az ; 2 uses
  %i.bb = or disjoint i64 %indvars.iv356.i, 1
  %i.bc = mul i64 %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bc ; 2 uses
  %i.be = or disjoint i64 %indvars.iv356.i, 2
  %i.bf = mul i64 %i.ay, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bf ; 2 uses
  %i.bh = or disjoint i64 %indvars.iv356.i, 3
  %i.bi = mul i64 %i.ay, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bi ; 2 uses
  %i.bk = or disjoint i64 %indvars.iv356.i, 4
  %i.bl = mul i64 %i.ay, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bl ; 2 uses
  %i.bn = or disjoint i64 %indvars.iv356.i, 5
  %i.bo = mul i64 %i.ay, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bo ; 2 uses
  %i.bq = or disjoint i64 %indvars.iv356.i, 6
  %i.br = mul i64 %i.ay, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.br ; 2 uses
  %i.bt = mul i64 %i.ay, %i.al
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bt ; 2 uses
  br i1 %i.t, label %.lr.ph313.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph313.i, %bb.k
  %.0175.lcssa.i = phi ptr [ %i.bd, %bb.k ], [ %i.fo, %.lr.ph313.i ]
  %.0173.lcssa.i = phi ptr [ %i.bg, %bb.k ], [ %i.fp, %.lr.ph313.i ]
  %.0171.lcssa.i = phi ptr [ %i.bj, %bb.k ], [ %i.fq, %.lr.ph313.i ]
  %.0169.lcssa.i = phi ptr [ %i.bm, %bb.k ], [ %i.fr, %.lr.ph313.i ]
  %.0167.lcssa.i = phi ptr [ %i.bp, %bb.k ], [ %i.fs, %.lr.ph313.i ]
  %.0165.lcssa.i = phi ptr [ %i.bs, %bb.k ], [ %i.ft, %.lr.ph313.i ]
  %.0163.lcssa.i = phi ptr [ %i.bu, %bb.k ], [ %i.fu, %.lr.ph313.i ]
  %.0161.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.u, %.lr.ph313.i ] ; 2 uses
  %.0146.lcssa.i = phi ptr [ %i.ba, %bb.k ], [ %i.fn, %.lr.ph313.i ]
  %.0144.lcssa.i = phi ptr [ %i.at, %bb.k ], [ %i.fv, %.lr.ph313.i ]
  %i.bv = icmp slt i32 %.0161.lcssa.i, %i.e
  br i1 %i.bv, label %.lr.ph334.i, label %._crit_edge335.i

.lr.ph313.i:                                      ; preds = %bb.k, %.lr.ph313.i
  %.0144311.i = phi ptr [ %i.fv, %.lr.ph313.i ], [ %i.at, %bb.k ] ; 9 uses
  %.0146310.i = phi ptr [ %i.fn, %.lr.ph313.i ], [ %i.ba, %bb.k ] ; 2 uses
  %.0161309.i = phi i32 [ %i.fw, %.lr.ph313.i ], [ 0, %bb.k ]
  %.0163308.i = phi ptr [ %i.fu, %.lr.ph313.i ], [ %i.bu, %bb.k ] ; 2 uses
  %.0165307.i = phi ptr [ %i.ft, %.lr.ph313.i ], [ %i.bs, %bb.k ] ; 2 uses
  %.0167306.i = phi ptr [ %i.fs, %.lr.ph313.i ], [ %i.bp, %bb.k ] ; 2 uses
  %.0169305.i = phi ptr [ %i.fr, %.lr.ph313.i ], [ %i.bm, %bb.k ] ; 2 uses
  %.0171304.i = phi ptr [ %i.fq, %.lr.ph313.i ], [ %i.bj, %bb.k ] ; 2 uses
  %.0173303.i = phi ptr [ %i.fp, %.lr.ph313.i ], [ %i.bg, %bb.k ] ; 2 uses
  %.0175302.i = phi ptr [ %i.fo, %.lr.ph313.i ], [ %i.bd, %bb.k ] ; 2 uses
  %i.bw = load <8 x i32>, ptr %.0146310.i, align 1, !tbaa !77 ; 2 uses
  %i.bx = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.by = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bz = lshr <4 x i32> %i.bx, splat (i32 16)
  %i.ca = lshr <4 x i32> %i.by, splat (i32 16)
  %i.cb = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bz, <4 x i32> %i.ca) ; 2 uses
  %i.cc = load <8 x i32>, ptr %.0175302.i, align 1, !tbaa !77 ; 2 uses
  %i.cd = shufflevector <8 x i32> %i.cc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ce = shufflevector <8 x i32> %i.cc, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cf = lshr <4 x i32> %i.cd, splat (i32 16)
  %i.cg = lshr <4 x i32> %i.ce, splat (i32 16)
  %i.ch = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cf, <4 x i32> %i.cg) ; 2 uses
  %i.ci = load <8 x i32>, ptr %.0173303.i, align 1, !tbaa !77 ; 2 uses
  %i.cj = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ck = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cl = lshr <4 x i32> %i.cj, splat (i32 16)
  %i.cm = lshr <4 x i32> %i.ck, splat (i32 16)
  %i.cn = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cl, <4 x i32> %i.cm) ; 2 uses
  %i.co = load <8 x i32>, ptr %.0171304.i, align 1, !tbaa !77 ; 2 uses
  %i.cp = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cq = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cr = lshr <4 x i32> %i.cp, splat (i32 16)
  %i.cs = lshr <4 x i32> %i.cq, splat (i32 16)
  %i.ct = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cr, <4 x i32> %i.cs) ; 2 uses
  %i.cu = load <8 x i32>, ptr %.0169305.i, align 1, !tbaa !77 ; 2 uses
  %i.cv = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cw = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cx = lshr <4 x i32> %i.cv, splat (i32 16)
  %i.cy = lshr <4 x i32> %i.cw, splat (i32 16)
  %i.cz = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cx, <4 x i32> %i.cy) ; 2 uses
  %i.da = load <8 x i32>, ptr %.0167306.i, align 1, !tbaa !77 ; 2 uses
  %i.db = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dc = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dd = lshr <4 x i32> %i.db, splat (i32 16)
  %i.de = lshr <4 x i32> %i.dc, splat (i32 16)
  %i.df = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dd, <4 x i32> %i.de) ; 2 uses
  %i.dg = load <8 x i32>, ptr %.0165307.i, align 1, !tbaa !77 ; 2 uses
  %i.dh = shufflevector <8 x i32> %i.dg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.di = shufflevector <8 x i32> %i.dg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dj = lshr <4 x i32> %i.dh, splat (i32 16)
  %i.dk = lshr <4 x i32> %i.di, splat (i32 16)
  %i.dl = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dj, <4 x i32> %i.dk) ; 2 uses
  %i.dm = load <8 x i32>, ptr %.0163308.i, align 1, !tbaa !77 ; 2 uses
  %i.dn = shufflevector <8 x i32> %i.dm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.do = shufflevector <8 x i32> %i.dm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
end_hunk_2
begin_hunk_3_@_ZN4ncnn20InnerProduct_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.dr = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dp, <4 x i32> %i.dq) ; 2 uses
  %i.ds = shufflevector <8 x i16> %i.cb, <8 x i16> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dt = shufflevector <8 x i16> %i.cb, <8 x i16> %i.ch, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.du = shufflevector <8 x i16> %i.cn, <8 x i16> %i.ct, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dv = shufflevector <8 x i16> %i.cn, <8 x i16> %i.ct, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dw = shufflevector <8 x i16> %i.cz, <8 x i16> %i.df, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dx = shufflevector <8 x i16> %i.cz, <8 x i16> %i.df, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dy = shufflevector <8 x i16> %i.dl, <8 x i16> %i.dr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dz = shufflevector <8 x i16> %i.dl, <8 x i16> %i.dr, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ea = bitcast <8 x i16> %i.ds to <4 x i32>    ; 2 uses
  %i.eb = bitcast <8 x i16> %i.du to <4 x i32>    ; 2 uses
  %i.ec = shufflevector <4 x i32> %i.ea, <4 x i32> %i.eb, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ed = bitcast <4 x i32> %i.ec to <2 x i64>    ; 2 uses
  %i.ee = shufflevector <4 x i32> %i.ea, <4 x i32> %i.eb, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ef = bitcast <4 x i32> %i.ee to <2 x i64>    ; 2 uses
  %i.eg = bitcast <8 x i16> %i.dt to <4 x i32>    ; 2 uses
  %i.eh = bitcast <8 x i16> %i.dv to <4 x i32>    ; 2 uses
  %i.ei = shufflevector <4 x i32> %i.eg, <4 x i32> %i.eh, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ej = bitcast <4 x i32> %i.ei to <2 x i64>    ; 2 uses
  %i.ek = shufflevector <4 x i32> %i.eg, <4 x i32> %i.eh, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.el = bitcast <4 x i32> %i.ek to <2 x i64>    ; 2 uses
  %i.em = bitcast <8 x i16> %i.dw to <4 x i32>    ; 2 uses
  %i.en = bitcast <8 x i16> %i.dy to <4 x i32>    ; 2 uses
  %i.eo = shufflevector <4 x i32> %i.em, <4 x i32> %i.en, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ep = bitcast <4 x i32> %i.eo to <2 x i64>    ; 2 uses
  %i.eq = shufflevector <4 x i32> %i.em, <4 x i32> %i.en, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.er = bitcast <4 x i32> %i.eq to <2 x i64>    ; 2 uses
  %i.es = bitcast <8 x i16> %i.dx to <4 x i32>    ; 2 uses
  %i.et = bitcast <8 x i16> %i.dz to <4 x i32>    ; 2 uses
  %i.eu = shufflevector <4 x i32> %i.es, <4 x i32> %i.et, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ev = bitcast <4 x i32> %i.eu to <2 x i64>    ; 2 uses
  %i.ew = shufflevector <4 x i32> %i.es, <4 x i32> %i.et, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ex = bitcast <4 x i32> %i.ew to <2 x i64>    ; 2 uses
  %i.ey = shufflevector <2 x i64> %i.ed, <2 x i64> %i.ep, <2 x i32> <i32 0, i32 2>
  %i.ez = shufflevector <2 x i64> %i.ed, <2 x i64> %i.ep, <2 x i32> <i32 1, i32 3>
  %i.fa = shufflevector <2 x i64> %i.ef, <2 x i64> %i.er, <2 x i32> <i32 0, i32 2>
  %i.fb = shufflevector <2 x i64> %i.ef, <2 x i64> %i.er, <2 x i32> <i32 1, i32 3>
  %i.fc = shufflevector <2 x i64> %i.ej, <2 x i64> %i.ev, <2 x i32> <i32 0, i32 2>
  %i.fd = shufflevector <2 x i64> %i.ej, <2 x i64> %i.ev, <2 x i32> <i32 1, i32 3>
  %i.fe = shufflevector <2 x i64> %i.el, <2 x i64> %i.ex, <2 x i32> <i32 0, i32 2>
  %i.ff = shufflevector <2 x i64> %i.el, <2 x i64> %i.ex, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.ey, ptr %.0144311.i, align 1, !tbaa !77
  %i.fg = getelementptr inbounds nuw i8, ptr %.0144311.i, i64 16
  store <2 x i64> %i.ez, ptr %i.fg, align 1, !tbaa !77
  %i.fh = getelementptr inbounds nuw i8, ptr %.0144311.i, i64 32
  store <2 x i64> %i.fa, ptr %i.fh, align 1, !tbaa !77
  %i.fi = getelementptr inbounds nuw i8, ptr %.0144311.i, i64 48
  store <2 x i64> %i.fb, ptr %i.fi, align 1, !tbaa !77
  %i.fj = getelementptr inbounds nuw i8, ptr %.0144311.i, i64 64
  store <2 x i64> %i.fc, ptr %i.fj, align 1, !tbaa !77
  %i.fk = getelementptr inbounds nuw i8, ptr %.0144311.i, i64 80
  store <2 x i64> %i.fd, ptr %i.fk, align 1, !tbaa !77
  %i.fl = getelementptr inbounds nuw i8, ptr %.0144311.i, i64 96
  store <2 x i64> %i.fe, ptr %i.fl, align 1, !tbaa !77
  %i.fm = getelementptr inbounds nuw i8, ptr %.0144311.i, i64 112
  store <2 x i64> %i.ff, ptr %i.fm, align 1, !tbaa !77
  %i.fn = getelementptr inbounds nuw i8, ptr %.0146310.i, i64 32 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0175302.i, i64 32 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0173303.i, i64 32 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0171304.i, i64 32 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0169305.i, i64 32 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0167306.i, i64 32 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0165307.i, i64 32 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0163308.i, i64 32 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0144311.i, i64 128 ; 2 uses
  %i.fw = add nuw nsw i32 %.0161309.i, 8          ; 2 uses
  %i.fx = or disjoint i32 %i.fw, 7
  %i.fy = icmp slt i32 %i.fx, %i.e
  br i1 %i.fy, label %.lr.ph313.i, label %.preheader.i, !llvm.loop !120

.lr.ph334.i:                                      ; preds = %.preheader.i, %.lr.ph334.i
  %.1145333.i = phi ptr [ %i.hm, %.lr.ph334.i ], [ %.0144.lcssa.i, %.preheader.i ] ; 9 uses
  %.1147332.i = phi ptr [ %i.fz, %.lr.ph334.i ], [ %.0146.lcssa.i, %.preheader.i ] ; 2 uses
  %.1162331.i = phi i32 [ %i.hn, %.lr.ph334.i ], [ %.0161.lcssa.i, %.preheader.i ]
  %.1164330.i = phi ptr [ %i.hh, %.lr.ph334.i ], [ %.0163.lcssa.i, %.preheader.i ] ; 2 uses
  %.1166329.i = phi ptr [ %i.hc, %.lr.ph334.i ], [ %.0165.lcssa.i, %.preheader.i ] ; 2 uses
  %.1168328.i = phi ptr [ %i.gx, %.lr.ph334.i ], [ %.0167.lcssa.i, %.preheader.i ] ; 2 uses
  %.1170327.i = phi ptr [ %i.gs, %.lr.ph334.i ], [ %.0169.lcssa.i, %.preheader.i ] ; 2 uses
  %.1172326.i = phi ptr [ %i.gn, %.lr.ph334.i ], [ %.0171.lcssa.i, %.preheader.i ] ; 2 uses
  %.1174325.i = phi ptr [ %i.gi, %.lr.ph334.i ], [ %.0173.lcssa.i, %.preheader.i ] ; 2 uses
  %.1176324.i = phi ptr [ %i.gd, %.lr.ph334.i ], [ %.0175.lcssa.i, %.preheader.i ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.1147332.i, i64 4
  %i.ga = load i32, ptr %.1147332.i, align 4, !tbaa !51
  %i.gb = lshr i32 %i.ga, 16
  %i.gc = trunc nuw i32 %i.gb to i16
  store i16 %i.gc, ptr %.1145333.i, align 2, !tbaa !121
  %i.gd = getelementptr inbounds nuw i8, ptr %.1176324.i, i64 4
  %i.ge = load i32, ptr %.1176324.i, align 4, !tbaa !51
  %i.gf = lshr i32 %i.ge, 16
  %i.gg = trunc nuw i32 %i.gf to i16
  %i.gh = getelementptr inbounds nuw i8, ptr %.1145333.i, i64 2
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !121
  %i.gi = getelementptr inbounds nuw i8, ptr %.1174325.i, i64 4
  %i.gj = load i32, ptr %.1174325.i, align 4, !tbaa !51
  %i.gk = lshr i32 %i.gj, 16
  %i.gl = trunc nuw i32 %i.gk to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %.1145333.i, i64 4
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !121
  %i.gn = getelementptr inbounds nuw i8, ptr %.1172326.i, i64 4
  %i.go = load i32, ptr %.1172326.i, align 4, !tbaa !51
  %i.gp = lshr i32 %i.go, 16
  %i.gq = trunc nuw i32 %i.gp to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %.1145333.i, i64 6
  store i16 %i.gq, ptr %i.gr, align 2, !tbaa !121
  %i.gs = getelementptr inbounds nuw i8, ptr %.1170327.i, i64 4
  %i.gt = load i32, ptr %.1170327.i, align 4, !tbaa !51
  %i.gu = lshr i32 %i.gt, 16
  %i.gv = trunc nuw i32 %i.gu to i16
  %i.gw = getelementptr inbounds nuw i8, ptr %.1145333.i, i64 8
  store i16 %i.gv, ptr %i.gw, align 2, !tbaa !121
  %i.gx = getelementptr inbounds nuw i8, ptr %.1168328.i, i64 4
  %i.gy = load i32, ptr %.1168328.i, align 4, !tbaa !51
  %i.gz = lshr i32 %i.gy, 16
  %i.ha = trunc nuw i32 %i.gz to i16
  %i.hb = getelementptr inbounds nuw i8, ptr %.1145333.i, i64 10
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !121
  %i.hc = getelementptr inbounds nuw i8, ptr %.1166329.i, i64 4
  %i.hd = load i32, ptr %.1166329.i, align 4, !tbaa !51
  %i.he = lshr i32 %i.hd, 16
  %i.hf = trunc nuw i32 %i.he to i16
  %i.hg = getelementptr inbounds nuw i8, ptr %.1145333.i, i64 12
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !121
  %i.hh = getelementptr inbounds nuw i8, ptr %.1164330.i, i64 4
  %i.hi = load i32, ptr %.1164330.i, align 4, !tbaa !51
  %i.hj = lshr i32 %i.hi, 16
  %i.hk = trunc nuw i32 %i.hj to i16
  %i.hl = getelementptr inbounds nuw i8, ptr %.1145333.i, i64 14
  store i16 %i.hk, ptr %i.hl, align 2, !tbaa !121
  %i.hm = getelementptr inbounds nuw i8, ptr %.1145333.i, i64 16
  %i.hn = add nuw nsw i32 %.1162331.i, 1          ; 2 uses
  %exitcond355.not.i = icmp eq i32 %i.hn, %i.e
  br i1 %exitcond355.not.i, label %._crit_edge335.i, label %.lr.ph334.i, !llvm.loop !123

._crit_edge335.i:                                 ; preds = %.lr.ph334.i, %.preheader.i
  %indvars.iv.next357.i = add nuw nsw i64 %indvars.iv356.i, 8 ; 2 uses
  %i.ho = or disjoint i64 %indvars.iv.next357.i, 7
  %i.hp = icmp samesign ult i64 %i.ho, %i.v
  br i1 %i.hp, label %bb.k, label %._crit_edge338.i, !llvm.loop !124

bb.l:                                             ; preds = %bb.j
  %i.hq = atomicrmw add ptr %i.ak, i32 -1 acq_rel, align 4
  %i.hr = icmp eq i32 %i.hq, 1
  br i1 %i.hr, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit195.i

bb.m:                                             ; preds = %bb.l
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !17 ; 3 uses
  %.not3.i198.i = icmp eq ptr %i.ht, null
  %i.hu = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i198.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !9
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8
  invoke void %i.hx(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, ptr noundef %i.hu)
          to label %_ZN4ncnn3MatD2Ev.exit195.i unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i224.i = icmp eq ptr %i.hu, null
  br i1 %.not.i224.i, label %_ZN4ncnn3MatD2Ev.exit195.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.hu) #10
  br label %_ZN4ncnn3MatD2Ev.exit195.i

bb.q:                                             ; preds = %bb.n
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  call void @__clang_call_terminate(ptr %i.hz) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit195.i:                       ; preds = %bb.p, %bb.o, %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.at

bb.r:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i32 noundef %i.e, i32 noundef %i.d, ptr noundef null)
  %i.ia = ashr exact i32 %i.d, 2
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i32 noundef %i.e, i32 noundef %i.ia, i64 noundef 8, i32 noundef 4, ptr noundef null)
          to label %.preheader280.i unwind label %bb.y

.preheader280.i:                                  ; preds = %bb.r
  %i.ib = icmp sgt i32 %i.d, 3
  br i1 %i.ib, label %.lr.ph300.i, label %._crit_edge301.i

.lr.ph300.i:                                      ; preds = %.preheader280.i
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ig = icmp sgt i32 %i.e, 3
  %i.ih = and i32 %i.e, -4                        ; 3 uses
  %i.ii = zext nneg i32 %i.d to i64               ; 2 uses
  br i1 %i.ig, label %.lr.ph300.i.split.us, label %.lr.ph300.i.split

.lr.ph300.i.split.us:                             ; preds = %.lr.ph300.i
  %.not = icmp eq i32 %i.ih, %i.e
  %i.ij = and i32 %i.e, 2147483644
  %5 = xor i32 %i.ij, -1
  %i.ik = add nsw i32 %i.e, %5                    ; 2 uses
  %i.il = zext i32 %i.ik to i64
  %i.im = add nuw nsw i64 %i.il, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ik, 7
  %n.vec = and i64 %i.im, 8589934584              ; 5 uses
  %i.in = trunc i64 %n.vec to i32
  %i.io = add i32 %i.ih, %i.in
  %i.ip = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %i.iq = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %i.im, %n.vec
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us:                            ; preds = %._crit_edge.i.us, %.lr.ph300.i.split.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph300.i.split.us ], [ %indvars.iv.next.i.us, %._crit_edge.i.us ] ; 6 uses
  %i.ir = or disjoint i64 %indvars.iv.i.us, 3
  %i.is = lshr exact i64 %indvars.iv.i.us, 2
  %i.it = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.iu = load i32, ptr %i.ic, align 4, !tbaa !49
  %i.iv = sext i32 %i.iu to i64
  %i.iw = mul nsw i64 %i.is, %i.iv
  %i.ix = load i64, ptr %i.id, align 8, !tbaa !50
  %i.iy = mul i64 %i.iw, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iy
  %i.ja = load ptr, ptr %3, align 8, !tbaa !18    ; 4 uses
  %i.jb = load i32, ptr %i.ie, align 4, !tbaa !49
  %i.jc = sext i32 %i.jb to i64
  %i.jd = load i64, ptr %i.if, align 8, !tbaa !50
  %i.je = mul i64 %i.jd, %i.jc                    ; 4 uses
  %i.jf = mul i64 %i.je, %indvars.iv.i.us
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jf
  %i.jh = or disjoint i64 %indvars.iv.i.us, 1
  %i.ji = mul i64 %i.je, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.ji
  %i.jk = or disjoint i64 %indvars.iv.i.us, 2
  %i.jl = mul i64 %i.je, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jl
  %i.jn = mul i64 %i.je, %i.ir
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jn
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.0148286.i.us = phi i32 [ %i.kr, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %.0150285.i.us = phi ptr [ %i.kp, %.lr.ph.i.us ], [ %i.jo, %.lr.ph.i.preheader.us ] ; 2 uses
  %.0152284.i.us = phi ptr [ %i.ko, %.lr.ph.i.us ], [ %i.jm, %.lr.ph.i.preheader.us ] ; 2 uses
  %.0154283.i.us = phi ptr [ %i.kn, %.lr.ph.i.us ], [ %i.jj, %.lr.ph.i.preheader.us ] ; 2 uses
  %.0156282.i.us = phi ptr [ %i.km, %.lr.ph.i.us ], [ %i.jg, %.lr.ph.i.preheader.us ] ; 2 uses
  %.0158281.i.us = phi ptr [ %i.kq, %.lr.ph.i.us ], [ %i.iz, %.lr.ph.i.preheader.us ] ; 3 uses
  %i.jp = load <4 x float>, ptr %.0156282.i.us, align 1, !tbaa !77 ; 2 uses
  %i.jq = load <4 x float>, ptr %.0154283.i.us, align 1, !tbaa !77 ; 2 uses
  %i.jr = load <4 x float>, ptr %.0152284.i.us, align 1, !tbaa !77 ; 2 uses
  %i.js = load <4 x float>, ptr %.0150285.i.us, align 1, !tbaa !77 ; 2 uses
  %i.jt = shufflevector <4 x float> %i.jp, <4 x float> %i.jq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ju = shufflevector <4 x float> %i.jr, <4 x float> %i.js, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.jv = shufflevector <4 x float> %i.jp, <4 x float> %i.jq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.jw = shufflevector <4 x float> %i.jr, <4 x float> %i.js, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.jx = shufflevector <4 x float> %i.jt, <4 x float> %i.ju, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  %i.jy = bitcast <8 x float> %i.jx to <8 x i32>  ; 2 uses
  %i.jz = shufflevector <8 x i32> %i.jy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ka = shufflevector <8 x i32> %i.jy, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kb = lshr <4 x i32> %i.jz, splat (i32 16)
  %i.kc = lshr <4 x i32> %i.ka, splat (i32 16)
  %i.kd = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kb, <4 x i32> %i.kc)
  %i.ke = shufflevector <4 x float> %i.jv, <4 x float> %i.jw, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  %i.kf = bitcast <8 x float> %i.ke to <8 x i32>  ; 2 uses
  %i.kg = shufflevector <8 x i32> %i.kf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kh = shufflevector <8 x i32> %i.kf, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ki = lshr <4 x i32> %i.kg, splat (i32 16)
  %i.kj = lshr <4 x i32> %i.kh, splat (i32 16)
  %i.kk = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ki, <4 x i32> %i.kj)
  store <8 x i16> %i.kd, ptr %.0158281.i.us, align 1, !tbaa !77
  %i.kl = getelementptr inbounds nuw i8, ptr %.0158281.i.us, i64 16
  store <8 x i16> %i.kk, ptr %i.kl, align 1, !tbaa !77
  %i.km = getelementptr inbounds nuw i8, ptr %.0156282.i.us, i64 16 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.0154283.i.us, i64 16 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.0152284.i.us, i64 16 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0150285.i.us, i64 16 ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.0158281.i.us, i64 32 ; 4 uses
  %i.kr = add nuw nsw i32 %.0148286.i.us, 4       ; 2 uses
  %i.ks = or disjoint i32 %i.kr, 3
  %i.kt = icmp slt i32 %i.ks, %i.e
  br i1 %i.kt, label %.lr.ph.i.us, label %.preheader279.i.loopexit.us, !llvm.loop !125

.lr.ph298.i.us:                                   ; preds = %.lr.ph298.i.us.preheader109, %.lr.ph298.i.us
  %.1149297.i.us = phi i32 [ %i.lo, %.lr.ph298.i.us ], [ %.1149297.i.us.ph, %.lr.ph298.i.us.preheader109 ]
  %.1151296.i.us = phi ptr [ %i.li, %.lr.ph298.i.us ], [ %.1151296.i.us.ph, %.lr.ph298.i.us.preheader109 ] ; 2 uses
  %.1153295.i.us = phi ptr [ %i.ld, %.lr.ph298.i.us ], [ %.1153295.i.us.ph, %.lr.ph298.i.us.preheader109 ] ; 2 uses
  %.1155294.i.us = phi ptr [ %i.ky, %.lr.ph298.i.us ], [ %.1155294.i.us.ph, %.lr.ph298.i.us.preheader109 ] ; 2 uses
  %.1157293.i.us = phi ptr [ %i.ku, %.lr.ph298.i.us ], [ %.1157293.i.us.ph, %.lr.ph298.i.us.preheader109 ] ; 2 uses
  %.1159292.i.us = phi ptr [ %i.ln, %.lr.ph298.i.us ], [ %.1159292.i.us.ph, %.lr.ph298.i.us.preheader109 ] ; 5 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.1157293.i.us, i64 4
  %i.kv = load i32, ptr %.1157293.i.us, align 4, !tbaa !51
  %i.kw = lshr i32 %i.kv, 16
  %i.kx = trunc nuw i32 %i.kw to i16
  store i16 %i.kx, ptr %.1159292.i.us, align 2, !tbaa !121
  %i.ky = getelementptr inbounds nuw i8, ptr %.1155294.i.us, i64 4
  %i.kz = load i32, ptr %.1155294.i.us, align 4, !tbaa !51
  %i.la = lshr i32 %i.kz, 16
  %i.lb = trunc nuw i32 %i.la to i16
  %i.lc = getelementptr inbounds nuw i8, ptr %.1159292.i.us, i64 2
  store i16 %i.lb, ptr %i.lc, align 2, !tbaa !121
  %i.ld = getelementptr inbounds nuw i8, ptr %.1153295.i.us, i64 4
  %i.le = load i32, ptr %.1153295.i.us, align 4, !tbaa !51
  %i.lf = lshr i32 %i.le, 16
  %i.lg = trunc nuw i32 %i.lf to i16
  %i.lh = getelementptr inbounds nuw i8, ptr %.1159292.i.us, i64 4
  store i16 %i.lg, ptr %i.lh, align 2, !tbaa !121
  %i.li = getelementptr inbounds nuw i8, ptr %.1151296.i.us, i64 4
  %i.lj = load i32, ptr %.1151296.i.us, align 4, !tbaa !51
  %i.lk = lshr i32 %i.lj, 16
  %i.ll = trunc nuw i32 %i.lk to i16
  %i.lm = getelementptr inbounds nuw i8, ptr %.1159292.i.us, i64 6
  store i16 %i.ll, ptr %i.lm, align 2, !tbaa !121
  %i.ln = getelementptr inbounds nuw i8, ptr %.1159292.i.us, i64 8
  %i.lo = add nuw nsw i32 %.1149297.i.us, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.lo, %i.e
  br i1 %exitcond.not.i.us, label %._crit_edge.i.us, label %.lr.ph298.i.us, !llvm.loop !126

._crit_edge.i.us:                                 ; preds = %.lr.ph298.i.us, %middle.block, %.preheader279.i.loopexit.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %i.lp = or disjoint i64 %indvars.iv.next.i.us, 3
  %i.lq = icmp samesign ult i64 %i.lp, %i.ii
  br i1 %i.lq, label %.lr.ph.i.preheader.us, label %._crit_edge301.i, !llvm.loop !127

.preheader279.i.loopexit.us:                      ; preds = %.lr.ph.i.us
  br i1 %.not, label %._crit_edge.i.us, label %.lr.ph298.i.us.preheader

.lr.ph298.i.us.preheader:                         ; preds = %.preheader279.i.loopexit.us
  br i1 %min.iters.check, label %.lr.ph298.i.us.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph298.i.us.preheader
  %i.lr = getelementptr i8, ptr %i.kp, i64 %i.ip
  %i.ls = getelementptr i8, ptr %i.ko, i64 %i.ip
  %i.lt = getelementptr i8, ptr %i.kn, i64 %i.ip
  %i.lu = getelementptr i8, ptr %i.km, i64 %i.ip
  %i.lv = getelementptr i8, ptr %i.kq, i64 %i.iq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lw = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.kp, i64 %i.lw
  %next.gep89 = getelementptr i8, ptr %i.ko, i64 %i.lw
  %next.gep90 = getelementptr i8, ptr %i.kn, i64 %i.lw
  %next.gep91 = getelementptr i8, ptr %i.km, i64 %i.lw
  %i.lx = shl i64 %index, 3
  %next.gep92 = getelementptr i8, ptr %i.kq, i64 %i.lx
  %wide.load = load <8 x i32>, ptr %next.gep91, align 4, !tbaa !51
  %wide.load93 = load <8 x i32>, ptr %next.gep90, align 4, !tbaa !51
  %wide.load94 = load <8 x i32>, ptr %next.gep89, align 4, !tbaa !51
  %wide.load95 = load <8 x i32>, ptr %next.gep, align 4, !tbaa !51
  %i.ly = shufflevector <8 x i32> %wide.load, <8 x i32> %wide.load93, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lz = lshr <16 x i32> %i.ly, splat (i32 16)
  %i.ma = trunc nuw <16 x i32> %i.lz to <16 x i16>
  %i.mb = shufflevector <8 x i32> %wide.load94, <8 x i32> %wide.load95, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mc = lshr <16 x i32> %i.mb, splat (i32 16)
  %i.md = trunc nuw <16 x i32> %i.mc to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.ma, <16 x i16> %i.md, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec, ptr %next.gep92, align 2, !tbaa !121
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.me = icmp eq i64 %index.next, %n.vec
  br i1 %i.me, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.us, label %.lr.ph298.i.us.preheader109

.lr.ph298.i.us.preheader109:                      ; preds = %.lr.ph298.i.us.preheader, %middle.block
  %.1149297.i.us.ph = phi i32 [ %i.ih, %.lr.ph298.i.us.preheader ], [ %i.io, %middle.block ]
  %.1151296.i.us.ph = phi ptr [ %i.kp, %.lr.ph298.i.us.preheader ], [ %i.lr, %middle.block ]
  %.1153295.i.us.ph = phi ptr [ %i.ko, %.lr.ph298.i.us.preheader ], [ %i.ls, %middle.block ]
  %.1155294.i.us.ph = phi ptr [ %i.kn, %.lr.ph298.i.us.preheader ], [ %i.lt, %middle.block ]
  %.1157293.i.us.ph = phi ptr [ %i.km, %.lr.ph298.i.us.preheader ], [ %i.lu, %middle.block ]
  %.1159292.i.us.ph = phi ptr [ %i.kq, %.lr.ph298.i.us.preheader ], [ %i.lv, %middle.block ]
  br label %.lr.ph298.i.us

.lr.ph300.i.split:                                ; preds = %.lr.ph300.i
  %i.mf = icmp sgt i32 %i.e, 0
  br i1 %i.mf, label %.preheader279.i.preheader, label %._crit_edge301.i

.preheader279.i.preheader:                        ; preds = %.lr.ph300.i.split
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !18
  %.pre32 = load i32, ptr %i.ic, align 4, !tbaa !49
  %.pre33 = load i64, ptr %i.id, align 8, !tbaa !50
  %.pre34 = load ptr, ptr %3, align 8, !tbaa !18  ; 4 uses
  %.pre35 = load i32, ptr %i.ie, align 4, !tbaa !49
  %.pre36 = load i64, ptr %i.if, align 8, !tbaa !50
  %i.mg = sext i32 %.pre32 to i64
  %factor.op.mul = mul i64 %.pre33, %i.mg
  %i.mh = sext i32 %.pre35 to i64
  %i.mi = mul i64 %.pre36, %i.mh                  ; 4 uses
  %exitcond.not.i = icmp eq i32 %i.e, 1
  %exitcond.not.i.1 = icmp eq i32 %i.e, 2
  br label %.preheader279.i

._crit_edge301.i:                                 ; preds = %._crit_edge.i.loopexit, %._crit_edge.i.us, %.lr.ph300.i.split, %.preheader280.i
  %i.mj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !11 ; 2 uses
  %.not.i201.i = icmp eq ptr %i.mk, null
  br i1 %.not.i201.i, label %_ZN4ncnn3MatD2Ev.exit194.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge301.i
  %i.ml = atomicrmw add ptr %i.mk, i32 -1 acq_rel, align 4
end_hunk_3
