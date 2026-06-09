inline.NumInlined: 6379
inline.NumDeleted: 1713
begin_hunk_0_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
  br i1 %.not.i31, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.i:                                             ; preds = %._crit_edge43
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.c, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.av = phi i32 [ %.pre41, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre42, %bb.c ], [ %.pre42, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.aw = sitofp i32 %.pre to float
  %i.ax = fadd nnan float %i.aw, 5.000000e-01
  %i.ay = fdiv float %i.ax, %i.k
  %i.az = sitofp i32 %i.av to float
  %i.ba = fsub float %i.y, %i.az
  %i.bb = fadd float %i.ba, 5.000000e-01
  %i.bc = fdiv float %i.bb, %i.n
  %i.bd = load ptr, ptr %i.z, align 8, !tbaa !1161, !nonnull !123
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !109, !range !122, !noundef !123
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = fpext float %i.ay to double
  %i.bh = fmul double %i.bg, f0x401921FB54442D18
  %i.bi = fptrunc double %i.bh to float           ; 4 uses
  %i.bj = fpext float %i.bc to double
  %i.bk = fmul double %i.bj, f0x400921FB54442D18
  %i.bl = fptrunc double %i.bk to float           ; 2 uses
  %i.bm = call noundef float @llvm.sin.f32(float %i.bl) ; 3 uses
  %i.bn = call noundef float @llvm.cos.f32(float %i.bl) ; 2 uses
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.bo = call float @llvm.sin.f32(float %i.bi)
  %i.bp = fmul float %i.bo, %i.bm
  %i.bq = fneg float %i.bm
  %i.br = call float @llvm.cos.f32(float %i.bi)
  %i.bs = fmul float %i.br, %i.bq
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.bt = fneg float %i.bm                        ; 2 uses
  %i.bu = call float @llvm.cos.f32(float %i.bi)
  %i.bv = fmul float %i.bu, %i.bt
  %i.bw = call float @llvm.sin.f32(float %i.bi)
  %i.bx = fmul float %i.bw, %i.bt
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit:   ; preds = %bb.k, %bb.j
  %.sink11.i = phi float [ %i.bp, %bb.j ], [ %i.bv, %bb.k ] ; 2 uses
  %.sink10.i = phi float [ %i.bn, %bb.j ], [ %i.bx, %bb.k ] ; 2 uses
  %.sink.i = phi float [ %i.bs, %bb.j ], [ %i.bn, %bb.k ]
  %i.by = call float @llvm.acos.f32(float %.sink.i)
  %i.bz = fpext ninf float %i.by to double
  %i.ca = fmul double %i.bz, f0x3FD45F306DC9C883
  %i.cb = call float @hypotf(float noundef %.sink11.i, float noundef %.sink10.i) #37
  %i.cc = fpext float %i.cb to double
  %i.cd = fdiv double %i.ca, %i.cc
  %i.ce = fptrunc double %i.cd to float           ; 2 uses
  %i.cf = call float @llvm.fmuladd.f32(float %.sink11.i, float %i.ce, float 1.000000e+00)
  %i.cg = fmul float %i.cf, 5.000000e-01
  %i.ch = call float @llvm.fmuladd.f32(float %.sink10.i, float %i.ce, float 1.000000e+00)
  %i.ci = fmul float %i.ch, 5.000000e-01
  %i.cj = load ptr, ptr %i.o, align 8, !tbaa !1160, !nonnull !123, !align !490
  invoke fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIhEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, float noundef %i.cg, float noundef %i.ci, ptr %i.h, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 2)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit
  %i.ck = load i32, ptr %i.aa, align 8, !tbaa !234 ; 2 uses
  %i.cl = load i32, ptr %i.ab, align 4, !tbaa !235
  %i.cm = icmp slt i32 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.cn = sext i32 %i.ck to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.o, %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.q, !llvm.loop !1162

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ %i.cn, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !172
  %i.cr = load ptr, ptr %3, align 8, !tbaa !1143
  %i.cs = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %.lr.ph
  %i.ct = icmp eq i32 %i.cs, 3
  br i1 %i.ct, label %bb.n, label %bb.o, !prof !78

bb.n:                                             ; preds = %.noexc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc, %bb.n
  %i.cu = load ptr, ptr %i.ac, align 8, !tbaa !1144
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %indvars.iv
  store float %i.cq, ptr %i.cv, align 4, !tbaa !172
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cw = load i32, ptr %i.ab, align 4, !tbaa !235
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp slt i64 %indvars.iv.next, %i.cx
  br i1 %i.cy, label %.lr.ph, label %._crit_edge, !llvm.loop !1163

bb.p:                                             ; preds = %bb.n, %.lr.ph
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.m, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.da, %bb.q ], [ %i.co, %bb.m ], [ %i.cz, %bb.p ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.r ], [ %i.au, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIhEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr nofree writeonly captures(none) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef range(i32 1, 3) %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !208
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !209
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !154
  %i.j = sitofp i32 %i.c to float
  %i.k = sitofp i32 %i.g to float
  %i.l = tail call float @llvm.fmuladd.f32(float %1, float %i.k, float %i.j)
  %i.m = sitofp i32 %i.e to float
  %i.n = sitofp i32 %i.i to float                 ; 3 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %2, float %i.n, float %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !171  ; 14 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl nsw i32 %i.q, 2
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = alloca i8, i64 %i.t, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.w = sext i32 %i.q to i64                     ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.w ; 5 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.w ; 4 uses
  %i.aa = fadd float %i.l, -5.000000e-01          ; 2 uses
  %i.ab = fadd float %i.o, -5.000000e-01          ; 2 uses
  %i.ac = tail call noundef float @llvm.floor.f32(float %i.aa) ; 2 uses
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  %i.ae = fsub float %i.aa, %i.ac                 ; 4 uses
  %i.af = tail call noundef float @llvm.floor.f32(float %i.ab) ; 2 uses
  %i.ag = fptosi float %i.af to i32               ; 4 uses
  %i.ah = fsub float %i.ab, %i.af                 ; 3 uses
  %i.ai = add nsw i32 %i.ad, 2
  %i.aj = add nsw i32 %i.ag, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef %i.ad, i32 noundef %i.ai, i32 noundef %i.ag, i32 noundef %i.aj, i32 noundef 0, i32 noundef 1, i32 noundef %6)
  %i.ak = icmp sgt i32 %i.q, 0                    ; 2 uses
  br i1 %i.ak, label %.lr.ph, label %._crit_edge99

.lr.ph:                                           ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %wide.load = load <4 x i8>, ptr %i.an, align 1, !tbaa !21
  %wide.load1 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !21
  %i.ap = uitofp <4 x i8> %wide.load to <4 x float>
  %i.aq = uitofp <4 x i8> %wide.load1 to <4 x float>
  %i.ar = fmul nnan <4 x float> %i.ap, splat (float f0x3B808081)
  %i.as = fmul nnan <4 x float> %i.aq, splat (float f0x3B808081)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x float> %i.ar, ptr %i.at, align 16, !tbaa !172
  store <4 x float> %i.as, ptr %i.au, align 16, !tbaa !172
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph94, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph94:                                         ; preds = %scalar.ph, %middle.block
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check3 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count108, 2147483640 ; 3 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %vector.ph4
  %index8 = phi i64 [ 0, %vector.ph4 ], [ %index.next11, %vector.body7 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %wide.load9 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !21
  %wide.load10 = load <4 x i8>, ptr %i.az, align 1, !tbaa !21
  %i.ba = uitofp <4 x i8> %wide.load9 to <4 x float>
  %i.bb = uitofp <4 x i8> %wide.load10 to <4 x float>
  %i.bc = fmul nnan <4 x float> %i.ba, splat (float f0x3B808081)
  %i.bd = fmul nnan <4 x float> %i.bb, splat (float f0x3B808081)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x float> %i.bc, ptr %i.be, align 4, !tbaa !172
  store <4 x float> %i.bd, ptr %i.bf, align 4, !tbaa !172
  %index.next11 = add nuw i64 %index8, 8          ; 2 uses
  %i.bg = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.bg, label %middle.block12, label %vector.body7, !llvm.loop !1165

middle.block12:                                   ; preds = %vector.body7
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count108
  br i1 %cmp.n13, label %.lr.ph98, label %scalar.ph2.preheader

scalar.ph2.preheader:                             ; preds = %.lr.ph94, %middle.block12
  %indvars.iv105.ph = phi i64 [ 0, %.lr.ph94 ], [ %n.vec6, %middle.block12 ]
  br label %scalar.ph2

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !21
  %i.bj = uitofp i8 %i.bi to float
  %i.bk = fmul nnan float %i.bj, f0x3B808081
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store float %i.bk, ptr %i.bl, align 4, !tbaa !172
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph94, label %scalar.ph, !llvm.loop !1166

.lr.ph98:                                         ; preds = %scalar.ph2, %middle.block12
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count113 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check16 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph98
  %n.vec19 = and i64 %wide.trip.count113, 2147483640 ; 3 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next24, %vector.body20 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index21 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %wide.load22 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !21
  %wide.load23 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !21
  %i.bq = uitofp <4 x i8> %wide.load22 to <4 x float>
  %i.br = uitofp <4 x i8> %wide.load23 to <4 x float>
  %i.bs = fmul nnan <4 x float> %i.bq, splat (float f0x3B808081)
  %i.bt = fmul nnan <4 x float> %i.br, splat (float f0x3B808081)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index21 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x float> %i.bs, ptr %i.bu, align 4, !tbaa !172
  store <4 x float> %i.bt, ptr %i.bv, align 4, !tbaa !172
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.bw, label %middle.block25, label %vector.body20, !llvm.loop !1167

middle.block25:                                   ; preds = %vector.body20
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count113
  br i1 %cmp.n26, label %.lr.ph102, label %scalar.ph15.preheader

scalar.ph15.preheader:                            ; preds = %.lr.ph98, %middle.block25
  %indvars.iv110.ph = phi i64 [ 0, %.lr.ph98 ], [ %n.vec19, %middle.block25 ]
  br label %scalar.ph15

scalar.ph2:                                       ; preds = %scalar.ph2.preheader, %scalar.ph2
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %scalar.ph2 ], [ %indvars.iv105.ph, %scalar.ph2.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv105
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !21
  %i.bz = uitofp i8 %i.by to float
  %i.ca = fmul nnan float %i.bz, f0x3B808081
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv105
  store float %i.ca, ptr %i.cb, align 4, !tbaa !172
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %.lr.ph98, label %scalar.ph2, !llvm.loop !1168

._crit_edge99:                                    ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  br label %._crit_edge103

.lr.ph102:                                        ; preds = %scalar.ph15, %middle.block25
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count118 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check29 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph102
  %n.vec32 = and i64 %wide.trip.count118, 2147483640 ; 3 uses
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next37, %vector.body33 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %index34 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %wide.load35 = load <4 x i8>, ptr %i.ce, align 1, !tbaa !21
  %wide.load36 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !21
  %i.cg = uitofp <4 x i8> %wide.load35 to <4 x float>
  %i.ch = uitofp <4 x i8> %wide.load36 to <4 x float>
  %i.ci = fmul nnan <4 x float> %i.cg, splat (float f0x3B808081)
  %i.cj = fmul nnan <4 x float> %i.ch, splat (float f0x3B808081)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index34 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x float> %i.ci, ptr %i.ck, align 4, !tbaa !172
  store <4 x float> %i.cj, ptr %i.cl, align 4, !tbaa !172
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.cm = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.cm, label %middle.block38, label %vector.body33, !llvm.loop !1169

middle.block38:                                   ; preds = %vector.body33
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count118
  br i1 %cmp.n39, label %._crit_edge103, label %scalar.ph28.preheader

scalar.ph28.preheader:                            ; preds = %.lr.ph102, %middle.block38
  %indvars.iv115.ph = phi i64 [ 0, %.lr.ph102 ], [ %n.vec32, %middle.block38 ]
  br label %scalar.ph28

scalar.ph15:                                      ; preds = %scalar.ph15.preheader, %scalar.ph15
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %scalar.ph15 ], [ %indvars.iv110.ph, %scalar.ph15.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv110
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !21
  %i.cp = uitofp i8 %i.co to float
  %i.cq = fmul nnan float %i.cp, f0x3B808081
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv110
  store float %i.cq, ptr %i.cr, align 4, !tbaa !172
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %.lr.ph102, label %scalar.ph15, !llvm.loop !1170

._crit_edge103:                                   ; preds = %scalar.ph28, %middle.block38, %._crit_edge99
  br i1 %4, label %bb.d, label %bb.e

scalar.ph28:                                      ; preds = %scalar.ph28.preheader, %scalar.ph28
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %scalar.ph28 ], [ %indvars.iv115.ph, %scalar.ph28.preheader ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv115
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !21
  %i.cu = uitofp i8 %i.ct to float
  %i.cv = fmul nnan float %i.cu, f0x3B808081
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv115
  store float %i.cv, ptr %i.cw, align 4, !tbaa !172
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge103, label %scalar.ph28, !llvm.loop !1171

bb.d:                                             ; preds = %._crit_edge103
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !206 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !153
  %i.db = add i32 %i.cy, -1
  %i.dc = add i32 %i.db, %i.da                    ; 2 uses
  %i.dd = add nsw i32 %i.ag, 1
  %spec.select.i81 = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.dd)
  %.1.i82 = tail call i32 @llvm.smin.i32(i32 %spec.select.i81, i32 %i.dc)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.ag)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.dc)
  %i.de = fsub float 1.000000e+00, %i.ah
  %i.df = sitofp i32 %.1.i to float
  %i.dg = fadd nnan float %i.df, 5.000000e-01
  %i.dh = fmul nnan float %i.dg, f0x40490FDB
  %i.di = fdiv float %i.dh, %i.n
  %i.dj = tail call float @llvm.sin.f32(float %i.di)
  %i.dk = fmul float %i.de, %i.dj
  %i.dl = sitofp i32 %.1.i82 to float
  %i.dm = fadd nnan float %i.dl, 5.000000e-01
  %i.dn = fmul nnan float %i.dm, f0x40490FDB
  %i.do = fdiv float %i.dn, %i.n
  %i.dp = tail call float @llvm.sin.f32(float %i.do)
  %i.dq = fmul float %i.ah, %i.dp                 ; 2 uses
  %i.dr = fadd float %i.dk, %i.dq
  %i.ds = fdiv float %i.dq, %i.dr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.ds, %bb.d ], [ %i.ah, %._crit_edge103 ] ; 3 uses
  %i.dt = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.du = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.dt, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.du, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.dv, align 16, !tbaa !172
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.dw, align 4, !tbaa !172
  %i.dx = fmul <4 x float> %broadcast.splat, %wide.load55
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat47, <4 x float> %i.dx)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.dz, align 4, !tbaa !172
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.ea, align 4, !tbaa !172
  %i.eb = fmul <4 x float> %broadcast.splat, %wide.load57
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat47, <4 x float> %i.eb)
  %i.ed = fmul <4 x float> %broadcast.splat49, %i.ec
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat51, <4 x float> %i.dy, <4 x float> %i.ed)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index53
  store <4 x float> %i.ee, ptr %i.ef, align 4, !tbaa !172
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.eg, label %middle.block59, label %vector.body52, !llvm.loop !1172

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count.i
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !172
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !172
  %i.el = fmul float %i.ae, %i.ek
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.dt, float %i.el)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.eo = load float, ptr %i.en, align 4, !tbaa !172
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !172
  %i.er = fmul float %i.ae, %i.eq
  %i.es = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.dt, float %i.er)
  %i.et = fmul float %.0, %i.es
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.du, float %i.em, float %i.et)
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.eu, ptr %i.ev, align 4, !tbaa !172
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1173

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block59, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !1124
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_bNS0_3ROIEiENKUlS8_E_clES8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_bNS0_3ROIEiEUlS8_E_, ptr %0, align 8, !tbaa !1125
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !215
  store ptr %.val, ptr %0, align 8, !tbaa !215
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1127
  store ptr %i.a, ptr %0, align 8, !tbaa !215
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !215 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #31
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_bNS0_3ROIEiENKUlS8_E_clES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.200", align 8 ; 8 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1174, !nonnull !123, !align !490
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
end_hunk_0
begin_hunk_1_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
  br i1 %.not.i31, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.i:                                             ; preds = %._crit_edge43
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.c, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.av = phi i32 [ %.pre41, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre42, %bb.c ], [ %.pre42, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.aw = sitofp i32 %.pre to float
  %i.ax = fadd nnan float %i.aw, 5.000000e-01
  %i.ay = fdiv float %i.ax, %i.k
  %i.az = sitofp i32 %i.av to float
  %i.ba = fsub float %i.y, %i.az
  %i.bb = fadd float %i.ba, 5.000000e-01
  %i.bc = fdiv float %i.bb, %i.n
  %i.bd = load ptr, ptr %i.z, align 8, !tbaa !1191, !nonnull !123
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !109, !range !122, !noundef !123
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = fpext float %i.ay to double
  %i.bh = fmul double %i.bg, f0x401921FB54442D18
  %i.bi = fptrunc double %i.bh to float           ; 4 uses
  %i.bj = fpext float %i.bc to double
  %i.bk = fmul double %i.bj, f0x400921FB54442D18
  %i.bl = fptrunc double %i.bk to float           ; 2 uses
  %i.bm = call noundef float @llvm.sin.f32(float %i.bl) ; 3 uses
  %i.bn = call noundef float @llvm.cos.f32(float %i.bl) ; 2 uses
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.bo = call float @llvm.sin.f32(float %i.bi)
  %i.bp = fmul float %i.bo, %i.bm
  %i.bq = fneg float %i.bm
  %i.br = call float @llvm.cos.f32(float %i.bi)
  %i.bs = fmul float %i.br, %i.bq
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.bt = fneg float %i.bm                        ; 2 uses
  %i.bu = call float @llvm.cos.f32(float %i.bi)
  %i.bv = fmul float %i.bu, %i.bt
  %i.bw = call float @llvm.sin.f32(float %i.bi)
  %i.bx = fmul float %i.bw, %i.bt
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit:   ; preds = %bb.k, %bb.j
  %.sink11.i = phi float [ %i.bp, %bb.j ], [ %i.bv, %bb.k ] ; 2 uses
  %.sink10.i = phi float [ %i.bn, %bb.j ], [ %i.bx, %bb.k ] ; 2 uses
  %.sink.i = phi float [ %i.bs, %bb.j ], [ %i.bn, %bb.k ]
  %i.by = call float @llvm.acos.f32(float %.sink.i)
  %i.bz = fpext ninf float %i.by to double
  %i.ca = fmul double %i.bz, f0x3FD45F306DC9C883
  %i.cb = call float @hypotf(float noundef %.sink11.i, float noundef %.sink10.i) #37
  %i.cc = fpext float %i.cb to double
  %i.cd = fdiv double %i.ca, %i.cc
  %i.ce = fptrunc double %i.cd to float           ; 2 uses
  %i.cf = call float @llvm.fmuladd.f32(float %.sink11.i, float %i.ce, float 1.000000e+00)
  %i.cg = fmul float %i.cf, 5.000000e-01
  %i.ch = call float @llvm.fmuladd.f32(float %.sink10.i, float %i.ce, float 1.000000e+00)
  %i.ci = fmul float %i.ch, 5.000000e-01
  %i.cj = load ptr, ptr %i.o, align 8, !tbaa !1190, !nonnull !123, !align !490
  invoke fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCItEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, float noundef %i.cg, float noundef %i.ci, ptr %i.h, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 2)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit
  %i.ck = load i32, ptr %i.aa, align 8, !tbaa !234 ; 2 uses
  %i.cl = load i32, ptr %i.ab, align 4, !tbaa !235
  %i.cm = icmp slt i32 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.cn = sext i32 %i.ck to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.o, %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.q, !llvm.loop !1192

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ %i.cn, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !172
  %i.cr = load ptr, ptr %3, align 8, !tbaa !1143
  %i.cs = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %.lr.ph
  %i.ct = icmp eq i32 %i.cs, 3
  br i1 %i.ct, label %bb.n, label %bb.o, !prof !78

bb.n:                                             ; preds = %.noexc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc, %bb.n
  %i.cu = load ptr, ptr %i.ac, align 8, !tbaa !1144
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %indvars.iv
  store float %i.cq, ptr %i.cv, align 4, !tbaa !172
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cw = load i32, ptr %i.ab, align 4, !tbaa !235
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp slt i64 %indvars.iv.next, %i.cx
  br i1 %i.cy, label %.lr.ph, label %._crit_edge, !llvm.loop !1193

bb.p:                                             ; preds = %bb.n, %.lr.ph
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.m, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.da, %bb.q ], [ %i.co, %bb.m ], [ %i.cz, %bb.p ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.r ], [ %i.au, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCItEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr nofree writeonly captures(none) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef range(i32 1, 3) %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !208
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !209
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !154
  %i.j = sitofp i32 %i.c to float
  %i.k = sitofp i32 %i.g to float
  %i.l = tail call float @llvm.fmuladd.f32(float %1, float %i.k, float %i.j)
  %i.m = sitofp i32 %i.e to float
  %i.n = sitofp i32 %i.i to float                 ; 3 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %2, float %i.n, float %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !171  ; 14 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl nsw i32 %i.q, 2
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = alloca i8, i64 %i.t, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.w = sext i32 %i.q to i64                     ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.w ; 5 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.w ; 4 uses
  %i.aa = fadd float %i.l, -5.000000e-01          ; 2 uses
  %i.ab = fadd float %i.o, -5.000000e-01          ; 2 uses
  %i.ac = tail call noundef float @llvm.floor.f32(float %i.aa) ; 2 uses
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  %i.ae = fsub float %i.aa, %i.ac                 ; 4 uses
  %i.af = tail call noundef float @llvm.floor.f32(float %i.ab) ; 2 uses
  %i.ag = fptosi float %i.af to i32               ; 4 uses
  %i.ah = fsub float %i.ab, %i.af                 ; 3 uses
  %i.ai = add nsw i32 %i.ad, 2
  %i.aj = add nsw i32 %i.ag, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef %i.ad, i32 noundef %i.ai, i32 noundef %i.ag, i32 noundef %i.aj, i32 noundef 0, i32 noundef 1, i32 noundef %6)
  %i.ak = icmp sgt i32 %i.q, 0                    ; 2 uses
  br i1 %i.ak, label %.lr.ph, label %._crit_edge99

.lr.ph:                                           ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %wide.load = load <4 x i16>, ptr %i.an, align 2, !tbaa !1194
  %wide.load1 = load <4 x i16>, ptr %i.ao, align 2, !tbaa !1194
  %i.ap = uitofp <4 x i16> %wide.load to <4 x float>
  %i.aq = uitofp <4 x i16> %wide.load1 to <4 x float>
  %i.ar = fmul nnan <4 x float> %i.ap, splat (float f0x37800080)
  %i.as = fmul nnan <4 x float> %i.aq, splat (float f0x37800080)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x float> %i.ar, ptr %i.at, align 16, !tbaa !172
  store <4 x float> %i.as, ptr %i.au, align 16, !tbaa !172
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph94, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph94:                                         ; preds = %scalar.ph, %middle.block
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check3 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count108, 2147483640 ; 3 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %vector.ph4
  %index8 = phi i64 [ 0, %vector.ph4 ], [ %index.next11, %vector.body7 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %index8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %wide.load9 = load <4 x i16>, ptr %i.ay, align 2, !tbaa !1194
  %wide.load10 = load <4 x i16>, ptr %i.az, align 2, !tbaa !1194
  %i.ba = uitofp <4 x i16> %wide.load9 to <4 x float>
  %i.bb = uitofp <4 x i16> %wide.load10 to <4 x float>
  %i.bc = fmul nnan <4 x float> %i.ba, splat (float f0x37800080)
  %i.bd = fmul nnan <4 x float> %i.bb, splat (float f0x37800080)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x float> %i.bc, ptr %i.be, align 4, !tbaa !172
  store <4 x float> %i.bd, ptr %i.bf, align 4, !tbaa !172
  %index.next11 = add nuw i64 %index8, 8          ; 2 uses
  %i.bg = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.bg, label %middle.block12, label %vector.body7, !llvm.loop !1196

middle.block12:                                   ; preds = %vector.body7
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count108
  br i1 %cmp.n13, label %.lr.ph98, label %scalar.ph2.preheader

scalar.ph2.preheader:                             ; preds = %.lr.ph94, %middle.block12
  %indvars.iv105.ph = phi i64 [ 0, %.lr.ph94 ], [ %n.vec6, %middle.block12 ]
  br label %scalar.ph2

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !1194
  %i.bj = uitofp i16 %i.bi to float
  %i.bk = fmul nnan float %i.bj, f0x37800080
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store float %i.bk, ptr %i.bl, align 4, !tbaa !172
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph94, label %scalar.ph, !llvm.loop !1197

.lr.ph98:                                         ; preds = %scalar.ph2, %middle.block12
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count113 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check16 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph98
  %n.vec19 = and i64 %wide.trip.count113, 2147483640 ; 3 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next24, %vector.body20 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index21 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %wide.load22 = load <4 x i16>, ptr %i.bo, align 2, !tbaa !1194
  %wide.load23 = load <4 x i16>, ptr %i.bp, align 2, !tbaa !1194
  %i.bq = uitofp <4 x i16> %wide.load22 to <4 x float>
  %i.br = uitofp <4 x i16> %wide.load23 to <4 x float>
  %i.bs = fmul nnan <4 x float> %i.bq, splat (float f0x37800080)
  %i.bt = fmul nnan <4 x float> %i.br, splat (float f0x37800080)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index21 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x float> %i.bs, ptr %i.bu, align 4, !tbaa !172
  store <4 x float> %i.bt, ptr %i.bv, align 4, !tbaa !172
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.bw, label %middle.block25, label %vector.body20, !llvm.loop !1198

middle.block25:                                   ; preds = %vector.body20
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count113
  br i1 %cmp.n26, label %.lr.ph102, label %scalar.ph15.preheader

scalar.ph15.preheader:                            ; preds = %.lr.ph98, %middle.block25
  %indvars.iv110.ph = phi i64 [ 0, %.lr.ph98 ], [ %n.vec19, %middle.block25 ]
  br label %scalar.ph15

scalar.ph2:                                       ; preds = %scalar.ph2.preheader, %scalar.ph2
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %scalar.ph2 ], [ %indvars.iv105.ph, %scalar.ph2.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv105
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !1194
  %i.bz = uitofp i16 %i.by to float
  %i.ca = fmul nnan float %i.bz, f0x37800080
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv105
  store float %i.ca, ptr %i.cb, align 4, !tbaa !172
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %.lr.ph98, label %scalar.ph2, !llvm.loop !1199

._crit_edge99:                                    ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  br label %._crit_edge103

.lr.ph102:                                        ; preds = %scalar.ph15, %middle.block25
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count118 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check29 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph102
  %n.vec32 = and i64 %wide.trip.count118, 2147483640 ; 3 uses
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next37, %vector.body33 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %index34 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %wide.load35 = load <4 x i16>, ptr %i.ce, align 2, !tbaa !1194
  %wide.load36 = load <4 x i16>, ptr %i.cf, align 2, !tbaa !1194
  %i.cg = uitofp <4 x i16> %wide.load35 to <4 x float>
  %i.ch = uitofp <4 x i16> %wide.load36 to <4 x float>
  %i.ci = fmul nnan <4 x float> %i.cg, splat (float f0x37800080)
  %i.cj = fmul nnan <4 x float> %i.ch, splat (float f0x37800080)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index34 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x float> %i.ci, ptr %i.ck, align 4, !tbaa !172
  store <4 x float> %i.cj, ptr %i.cl, align 4, !tbaa !172
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.cm = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.cm, label %middle.block38, label %vector.body33, !llvm.loop !1200

middle.block38:                                   ; preds = %vector.body33
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count118
  br i1 %cmp.n39, label %._crit_edge103, label %scalar.ph28.preheader

scalar.ph28.preheader:                            ; preds = %.lr.ph102, %middle.block38
  %indvars.iv115.ph = phi i64 [ 0, %.lr.ph102 ], [ %n.vec32, %middle.block38 ]
  br label %scalar.ph28

scalar.ph15:                                      ; preds = %scalar.ph15.preheader, %scalar.ph15
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %scalar.ph15 ], [ %indvars.iv110.ph, %scalar.ph15.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv110
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !1194
  %i.cp = uitofp i16 %i.co to float
  %i.cq = fmul nnan float %i.cp, f0x37800080
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv110
  store float %i.cq, ptr %i.cr, align 4, !tbaa !172
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %.lr.ph102, label %scalar.ph15, !llvm.loop !1201

._crit_edge103:                                   ; preds = %scalar.ph28, %middle.block38, %._crit_edge99
  br i1 %4, label %bb.d, label %bb.e

scalar.ph28:                                      ; preds = %scalar.ph28.preheader, %scalar.ph28
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %scalar.ph28 ], [ %indvars.iv115.ph, %scalar.ph28.preheader ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv115
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !1194
  %i.cu = uitofp i16 %i.ct to float
  %i.cv = fmul nnan float %i.cu, f0x37800080
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv115
  store float %i.cv, ptr %i.cw, align 4, !tbaa !172
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge103, label %scalar.ph28, !llvm.loop !1202

bb.d:                                             ; preds = %._crit_edge103
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !206 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !153
  %i.db = add i32 %i.cy, -1
  %i.dc = add i32 %i.db, %i.da                    ; 2 uses
  %i.dd = add nsw i32 %i.ag, 1
  %spec.select.i81 = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.dd)
  %.1.i82 = tail call i32 @llvm.smin.i32(i32 %spec.select.i81, i32 %i.dc)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.ag)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.dc)
  %i.de = fsub float 1.000000e+00, %i.ah
  %i.df = sitofp i32 %.1.i to float
  %i.dg = fadd nnan float %i.df, 5.000000e-01
  %i.dh = fmul nnan float %i.dg, f0x40490FDB
  %i.di = fdiv float %i.dh, %i.n
  %i.dj = tail call float @llvm.sin.f32(float %i.di)
  %i.dk = fmul float %i.de, %i.dj
  %i.dl = sitofp i32 %.1.i82 to float
  %i.dm = fadd nnan float %i.dl, 5.000000e-01
  %i.dn = fmul nnan float %i.dm, f0x40490FDB
  %i.do = fdiv float %i.dn, %i.n
  %i.dp = tail call float @llvm.sin.f32(float %i.do)
  %i.dq = fmul float %i.ah, %i.dp                 ; 2 uses
  %i.dr = fadd float %i.dk, %i.dq
  %i.ds = fdiv float %i.dq, %i.dr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.ds, %bb.d ], [ %i.ah, %._crit_edge103 ] ; 3 uses
  %i.dt = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.du = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.dt, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.du, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.dv, align 16, !tbaa !172
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.dw, align 4, !tbaa !172
  %i.dx = fmul <4 x float> %broadcast.splat, %wide.load55
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat47, <4 x float> %i.dx)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.dz, align 4, !tbaa !172
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.ea, align 4, !tbaa !172
  %i.eb = fmul <4 x float> %broadcast.splat, %wide.load57
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat47, <4 x float> %i.eb)
  %i.ed = fmul <4 x float> %broadcast.splat49, %i.ec
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat51, <4 x float> %i.dy, <4 x float> %i.ed)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index53
  store <4 x float> %i.ee, ptr %i.ef, align 4, !tbaa !172
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.eg, label %middle.block59, label %vector.body52, !llvm.loop !1203

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count.i
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !172
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !172
  %i.el = fmul float %i.ae, %i.ek
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.dt, float %i.el)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.eo = load float, ptr %i.en, align 4, !tbaa !172
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !172
  %i.er = fmul float %i.ae, %i.eq
  %i.es = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.dt, float %i.er)
  %i.et = fmul float %.0, %i.es
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.du, float %i.em, float %i.et)
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.eu, ptr %i.ev, align 4, !tbaa !172
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1204

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block59, %bb.e
  ret void
}

declare void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !165    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.255) #34
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !16
  %i.s = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !22   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !19
  %i.z = load i64, ptr %i.t, align 8, !tbaa !21
  store i64 %i.z, ptr %i.r, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L13resize_block_IdEEbRNS0_8ImageBufERKS2_NS0_3ROIEb:bb.a
bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._crit_edge
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._crit_edge, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !1140
  %.not.i74 = icmp eq ptr %i.ez, null
  br i1 %.not.i74, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit75, label %bb.y

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit75 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit75: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.aa:                                            ; preds = %._crit_edge
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit82

bb.ab:                                            ; preds = %.split.us, %.split97.us, %.split94.us
  %.pn.pn = phi { ptr, i32 } [ %i.es, %.split94.us ], [ %i.et, %.split97.us ], [ %i.er, %.split.us ] ; 2 uses
  %i.fd = load ptr, ptr %i.ci, align 8, !tbaa !1140
  %.not.i81 = icmp eq ptr %i.fd, null
  br i1 %.not.i81, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit82, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit82 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit82: ; preds = %bb.ac, %bb.ab, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fc, %bb.aa ], [ %.pn.pn, %bb.ab ], [ %.pn.pn, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !1140
  %.not.i83 = icmp eq ptr %i.fh, null
  br i1 %.not.i83, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit84, label %bb.ae

bb.ae:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit82
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit84 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit84: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit82, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA39_cJRA13_KcRKNS0_8TypeDescEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(39) %1, ptr noundef nonnull align 1 dereferenceable(13) %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.239", align 16 ; 6 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(39) %1) #30, !noalias !1448
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !1448
  store ptr %2, ptr %4, align 16, !tbaa !21, !alias.scope !1451, !noalias !1448
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.b, align 16, !tbaa !21, !noalias !1448
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN11OpenImageIO4v3_18TypeDescEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.c, align 8, !tbaa !21, !noalias !1448
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 1 dereferenceable(39) %1, i64 %i.a, i64 252, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1448
  %i.d = load ptr, ptr %6, align 8, !tbaa !19
  store ptr %i.d, ptr %5, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22
  store i64 %i.g, ptr %i.e, align 8, !tbaa !12
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %6, align 8, !tbaa !19     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !21
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %6, align 8, !tbaa !19     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !21
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.m
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #25

declare noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIcEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr nofree writeonly captures(none) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef range(i32 1, 3) %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !208
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !209
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !154
  %i.j = sitofp i32 %i.c to float
  %i.k = sitofp i32 %i.g to float
  %i.l = tail call float @llvm.fmuladd.f32(float %1, float %i.k, float %i.j)
  %i.m = sitofp i32 %i.e to float
  %i.n = sitofp i32 %i.i to float                 ; 3 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %2, float %i.n, float %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !171  ; 14 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl nsw i32 %i.q, 2
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = alloca i8, i64 %i.t, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.w = sext i32 %i.q to i64                     ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.w ; 5 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.w ; 4 uses
  %i.aa = fadd float %i.l, -5.000000e-01          ; 2 uses
  %i.ab = fadd float %i.o, -5.000000e-01          ; 2 uses
  %i.ac = tail call noundef float @llvm.floor.f32(float %i.aa) ; 2 uses
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  %i.ae = fsub float %i.aa, %i.ac                 ; 4 uses
  %i.af = tail call noundef float @llvm.floor.f32(float %i.ab) ; 2 uses
  %i.ag = fptosi float %i.af to i32               ; 4 uses
  %i.ah = fsub float %i.ab, %i.af                 ; 3 uses
  %i.ai = add nsw i32 %i.ad, 2
  %i.aj = add nsw i32 %i.ag, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef %i.ad, i32 noundef %i.ai, i32 noundef %i.ag, i32 noundef %i.aj, i32 noundef 0, i32 noundef 1, i32 noundef %6)
  %i.ak = icmp sgt i32 %i.q, 0                    ; 2 uses
  br i1 %i.ak, label %.lr.ph, label %._crit_edge99

.lr.ph:                                           ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %wide.load = load <4 x i8>, ptr %i.an, align 1, !tbaa !21
  %wide.load1 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !21
  %i.ap = sitofp <4 x i8> %wide.load to <4 x float>
  %i.aq = sitofp <4 x i8> %wide.load1 to <4 x float>
  %i.ar = fmul nnan <4 x float> %i.ap, splat (float f0x3C010204)
  %i.as = fmul nnan <4 x float> %i.aq, splat (float f0x3C010204)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x float> %i.ar, ptr %i.at, align 16, !tbaa !172
  store <4 x float> %i.as, ptr %i.au, align 16, !tbaa !172
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1454

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph94, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph94:                                         ; preds = %scalar.ph, %middle.block
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check3 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count108, 2147483640 ; 3 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %vector.ph4
  %index8 = phi i64 [ 0, %vector.ph4 ], [ %index.next11, %vector.body7 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %wide.load9 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !21
  %wide.load10 = load <4 x i8>, ptr %i.az, align 1, !tbaa !21
  %i.ba = sitofp <4 x i8> %wide.load9 to <4 x float>
  %i.bb = sitofp <4 x i8> %wide.load10 to <4 x float>
  %i.bc = fmul nnan <4 x float> %i.ba, splat (float f0x3C010204)
  %i.bd = fmul nnan <4 x float> %i.bb, splat (float f0x3C010204)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x float> %i.bc, ptr %i.be, align 4, !tbaa !172
  store <4 x float> %i.bd, ptr %i.bf, align 4, !tbaa !172
  %index.next11 = add nuw i64 %index8, 8          ; 2 uses
  %i.bg = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.bg, label %middle.block12, label %vector.body7, !llvm.loop !1455

middle.block12:                                   ; preds = %vector.body7
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count108
  br i1 %cmp.n13, label %.lr.ph98, label %scalar.ph2.preheader

scalar.ph2.preheader:                             ; preds = %.lr.ph94, %middle.block12
  %indvars.iv105.ph = phi i64 [ 0, %.lr.ph94 ], [ %n.vec6, %middle.block12 ]
  br label %scalar.ph2

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !21
  %i.bj = sitofp i8 %i.bi to float
  %i.bk = fmul nnan float %i.bj, f0x3C010204
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store float %i.bk, ptr %i.bl, align 4, !tbaa !172
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph94, label %scalar.ph, !llvm.loop !1456

.lr.ph98:                                         ; preds = %scalar.ph2, %middle.block12
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count113 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check16 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph98
  %n.vec19 = and i64 %wide.trip.count113, 2147483640 ; 3 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next24, %vector.body20 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index21 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %wide.load22 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !21
  %wide.load23 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !21
  %i.bq = sitofp <4 x i8> %wide.load22 to <4 x float>
  %i.br = sitofp <4 x i8> %wide.load23 to <4 x float>
  %i.bs = fmul nnan <4 x float> %i.bq, splat (float f0x3C010204)
  %i.bt = fmul nnan <4 x float> %i.br, splat (float f0x3C010204)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index21 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x float> %i.bs, ptr %i.bu, align 4, !tbaa !172
  store <4 x float> %i.bt, ptr %i.bv, align 4, !tbaa !172
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.bw, label %middle.block25, label %vector.body20, !llvm.loop !1457

middle.block25:                                   ; preds = %vector.body20
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count113
  br i1 %cmp.n26, label %.lr.ph102, label %scalar.ph15.preheader

scalar.ph15.preheader:                            ; preds = %.lr.ph98, %middle.block25
  %indvars.iv110.ph = phi i64 [ 0, %.lr.ph98 ], [ %n.vec19, %middle.block25 ]
  br label %scalar.ph15

scalar.ph2:                                       ; preds = %scalar.ph2.preheader, %scalar.ph2
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %scalar.ph2 ], [ %indvars.iv105.ph, %scalar.ph2.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv105
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !21
  %i.bz = sitofp i8 %i.by to float
  %i.ca = fmul nnan float %i.bz, f0x3C010204
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv105
  store float %i.ca, ptr %i.cb, align 4, !tbaa !172
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %.lr.ph98, label %scalar.ph2, !llvm.loop !1458

._crit_edge99:                                    ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  br label %._crit_edge103

.lr.ph102:                                        ; preds = %scalar.ph15, %middle.block25
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count118 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check29 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph102
  %n.vec32 = and i64 %wide.trip.count118, 2147483640 ; 3 uses
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next37, %vector.body33 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %index34 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %wide.load35 = load <4 x i8>, ptr %i.ce, align 1, !tbaa !21
  %wide.load36 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !21
  %i.cg = sitofp <4 x i8> %wide.load35 to <4 x float>
  %i.ch = sitofp <4 x i8> %wide.load36 to <4 x float>
  %i.ci = fmul nnan <4 x float> %i.cg, splat (float f0x3C010204)
  %i.cj = fmul nnan <4 x float> %i.ch, splat (float f0x3C010204)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index34 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x float> %i.ci, ptr %i.ck, align 4, !tbaa !172
  store <4 x float> %i.cj, ptr %i.cl, align 4, !tbaa !172
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.cm = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.cm, label %middle.block38, label %vector.body33, !llvm.loop !1459

middle.block38:                                   ; preds = %vector.body33
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count118
  br i1 %cmp.n39, label %._crit_edge103, label %scalar.ph28.preheader

scalar.ph28.preheader:                            ; preds = %.lr.ph102, %middle.block38
  %indvars.iv115.ph = phi i64 [ 0, %.lr.ph102 ], [ %n.vec32, %middle.block38 ]
  br label %scalar.ph28

scalar.ph15:                                      ; preds = %scalar.ph15.preheader, %scalar.ph15
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %scalar.ph15 ], [ %indvars.iv110.ph, %scalar.ph15.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv110
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !21
  %i.cp = sitofp i8 %i.co to float
  %i.cq = fmul nnan float %i.cp, f0x3C010204
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv110
  store float %i.cq, ptr %i.cr, align 4, !tbaa !172
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %.lr.ph102, label %scalar.ph15, !llvm.loop !1460

._crit_edge103:                                   ; preds = %scalar.ph28, %middle.block38, %._crit_edge99
  br i1 %4, label %bb.d, label %bb.e

scalar.ph28:                                      ; preds = %scalar.ph28.preheader, %scalar.ph28
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %scalar.ph28 ], [ %indvars.iv115.ph, %scalar.ph28.preheader ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv115
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !21
  %i.cu = sitofp i8 %i.ct to float
  %i.cv = fmul nnan float %i.cu, f0x3C010204
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv115
  store float %i.cv, ptr %i.cw, align 4, !tbaa !172
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge103, label %scalar.ph28, !llvm.loop !1461

bb.d:                                             ; preds = %._crit_edge103
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !206 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !153
  %i.db = add i32 %i.cy, -1
  %i.dc = add i32 %i.db, %i.da                    ; 2 uses
  %i.dd = add nsw i32 %i.ag, 1
  %spec.select.i81 = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.dd)
  %.1.i82 = tail call i32 @llvm.smin.i32(i32 %spec.select.i81, i32 %i.dc)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.ag)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.dc)
  %i.de = fsub float 1.000000e+00, %i.ah
  %i.df = sitofp i32 %.1.i to float
  %i.dg = fadd nnan float %i.df, 5.000000e-01
  %i.dh = fmul nnan float %i.dg, f0x40490FDB
  %i.di = fdiv float %i.dh, %i.n
  %i.dj = tail call float @llvm.sin.f32(float %i.di)
  %i.dk = fmul float %i.de, %i.dj
  %i.dl = sitofp i32 %.1.i82 to float
  %i.dm = fadd nnan float %i.dl, 5.000000e-01
  %i.dn = fmul nnan float %i.dm, f0x40490FDB
  %i.do = fdiv float %i.dn, %i.n
  %i.dp = tail call float @llvm.sin.f32(float %i.do)
  %i.dq = fmul float %i.ah, %i.dp                 ; 2 uses
  %i.dr = fadd float %i.dk, %i.dq
  %i.ds = fdiv float %i.dq, %i.dr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.ds, %bb.d ], [ %i.ah, %._crit_edge103 ] ; 3 uses
  %i.dt = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.du = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.dt, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.du, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.dv, align 16, !tbaa !172
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.dw, align 4, !tbaa !172
  %i.dx = fmul <4 x float> %broadcast.splat, %wide.load55
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat47, <4 x float> %i.dx)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.dz, align 4, !tbaa !172
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.ea, align 4, !tbaa !172
  %i.eb = fmul <4 x float> %broadcast.splat, %wide.load57
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat47, <4 x float> %i.eb)
  %i.ed = fmul <4 x float> %broadcast.splat49, %i.ec
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat51, <4 x float> %i.dy, <4 x float> %i.ed)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index53
  store <4 x float> %i.ee, ptr %i.ef, align 4, !tbaa !172
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.eg, label %middle.block59, label %vector.body52, !llvm.loop !1462

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count.i
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !172
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !172
  %i.el = fmul float %i.ae, %i.ek
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.dt, float %i.el)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.eo = load float, ptr %i.en, align 4, !tbaa !172
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !172
  %i.er = fmul float %i.ae, %i.eq
  %i.es = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.dt, float %i.er)
  %i.et = fmul float %.0, %i.es
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.du, float %i.em, float %i.et)
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.eu, ptr %i.ev, align 4, !tbaa !172
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1463

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block59, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIsEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr nofree writeonly captures(none) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef range(i32 1, 3) %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !208
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !209
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !154
  %i.j = sitofp i32 %i.c to float
  %i.k = sitofp i32 %i.g to float
  %i.l = tail call float @llvm.fmuladd.f32(float %1, float %i.k, float %i.j)
  %i.m = sitofp i32 %i.e to float
  %i.n = sitofp i32 %i.i to float                 ; 3 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %2, float %i.n, float %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !171  ; 14 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl nsw i32 %i.q, 2
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = alloca i8, i64 %i.t, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.w = sext i32 %i.q to i64                     ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.w ; 5 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.w ; 4 uses
  %i.aa = fadd float %i.l, -5.000000e-01          ; 2 uses
  %i.ab = fadd float %i.o, -5.000000e-01          ; 2 uses
  %i.ac = tail call noundef float @llvm.floor.f32(float %i.aa) ; 2 uses
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  %i.ae = fsub float %i.aa, %i.ac                 ; 4 uses
  %i.af = tail call noundef float @llvm.floor.f32(float %i.ab) ; 2 uses
  %i.ag = fptosi float %i.af to i32               ; 4 uses
  %i.ah = fsub float %i.ab, %i.af                 ; 3 uses
  %i.ai = add nsw i32 %i.ad, 2
  %i.aj = add nsw i32 %i.ag, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef %i.ad, i32 noundef %i.ai, i32 noundef %i.ag, i32 noundef %i.aj, i32 noundef 0, i32 noundef 1, i32 noundef %6)
  %i.ak = icmp sgt i32 %i.q, 0                    ; 2 uses
  br i1 %i.ak, label %.lr.ph, label %._crit_edge99

.lr.ph:                                           ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %wide.load = load <4 x i16>, ptr %i.an, align 2, !tbaa !1194
  %wide.load1 = load <4 x i16>, ptr %i.ao, align 2, !tbaa !1194
  %i.ap = sitofp <4 x i16> %wide.load to <4 x float>
  %i.aq = sitofp <4 x i16> %wide.load1 to <4 x float>
  %i.ar = fmul nnan <4 x float> %i.ap, splat (float f0x38000100)
  %i.as = fmul nnan <4 x float> %i.aq, splat (float f0x38000100)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x float> %i.ar, ptr %i.at, align 16, !tbaa !172
  store <4 x float> %i.as, ptr %i.au, align 16, !tbaa !172
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1464

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph94, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph94:                                         ; preds = %scalar.ph, %middle.block
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check3 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count108, 2147483640 ; 3 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %vector.ph4
  %index8 = phi i64 [ 0, %vector.ph4 ], [ %index.next11, %vector.body7 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %index8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %wide.load9 = load <4 x i16>, ptr %i.ay, align 2, !tbaa !1194
  %wide.load10 = load <4 x i16>, ptr %i.az, align 2, !tbaa !1194
  %i.ba = sitofp <4 x i16> %wide.load9 to <4 x float>
  %i.bb = sitofp <4 x i16> %wide.load10 to <4 x float>
  %i.bc = fmul nnan <4 x float> %i.ba, splat (float f0x38000100)
  %i.bd = fmul nnan <4 x float> %i.bb, splat (float f0x38000100)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x float> %i.bc, ptr %i.be, align 4, !tbaa !172
  store <4 x float> %i.bd, ptr %i.bf, align 4, !tbaa !172
  %index.next11 = add nuw i64 %index8, 8          ; 2 uses
  %i.bg = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.bg, label %middle.block12, label %vector.body7, !llvm.loop !1465

middle.block12:                                   ; preds = %vector.body7
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count108
  br i1 %cmp.n13, label %.lr.ph98, label %scalar.ph2.preheader

scalar.ph2.preheader:                             ; preds = %.lr.ph94, %middle.block12
  %indvars.iv105.ph = phi i64 [ 0, %.lr.ph94 ], [ %n.vec6, %middle.block12 ]
  br label %scalar.ph2

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !1194
  %i.bj = sitofp i16 %i.bi to float
  %i.bk = fmul nnan float %i.bj, f0x38000100
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store float %i.bk, ptr %i.bl, align 4, !tbaa !172
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph94, label %scalar.ph, !llvm.loop !1466

.lr.ph98:                                         ; preds = %scalar.ph2, %middle.block12
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count113 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check16 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph98
  %n.vec19 = and i64 %wide.trip.count113, 2147483640 ; 3 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next24, %vector.body20 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index21 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %wide.load22 = load <4 x i16>, ptr %i.bo, align 2, !tbaa !1194
  %wide.load23 = load <4 x i16>, ptr %i.bp, align 2, !tbaa !1194
  %i.bq = sitofp <4 x i16> %wide.load22 to <4 x float>
  %i.br = sitofp <4 x i16> %wide.load23 to <4 x float>
  %i.bs = fmul nnan <4 x float> %i.bq, splat (float f0x38000100)
  %i.bt = fmul nnan <4 x float> %i.br, splat (float f0x38000100)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index21 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x float> %i.bs, ptr %i.bu, align 4, !tbaa !172
  store <4 x float> %i.bt, ptr %i.bv, align 4, !tbaa !172
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.bw, label %middle.block25, label %vector.body20, !llvm.loop !1467

middle.block25:                                   ; preds = %vector.body20
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count113
  br i1 %cmp.n26, label %.lr.ph102, label %scalar.ph15.preheader

scalar.ph15.preheader:                            ; preds = %.lr.ph98, %middle.block25
  %indvars.iv110.ph = phi i64 [ 0, %.lr.ph98 ], [ %n.vec19, %middle.block25 ]
  br label %scalar.ph15

scalar.ph2:                                       ; preds = %scalar.ph2.preheader, %scalar.ph2
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %scalar.ph2 ], [ %indvars.iv105.ph, %scalar.ph2.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv105
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !1194
  %i.bz = sitofp i16 %i.by to float
  %i.ca = fmul nnan float %i.bz, f0x38000100
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv105
  store float %i.ca, ptr %i.cb, align 4, !tbaa !172
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %.lr.ph98, label %scalar.ph2, !llvm.loop !1468

._crit_edge99:                                    ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  br label %._crit_edge103

.lr.ph102:                                        ; preds = %scalar.ph15, %middle.block25
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count118 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check29 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph102
  %n.vec32 = and i64 %wide.trip.count118, 2147483640 ; 3 uses
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next37, %vector.body33 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %index34 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %wide.load35 = load <4 x i16>, ptr %i.ce, align 2, !tbaa !1194
  %wide.load36 = load <4 x i16>, ptr %i.cf, align 2, !tbaa !1194
  %i.cg = sitofp <4 x i16> %wide.load35 to <4 x float>
  %i.ch = sitofp <4 x i16> %wide.load36 to <4 x float>
  %i.ci = fmul nnan <4 x float> %i.cg, splat (float f0x38000100)
  %i.cj = fmul nnan <4 x float> %i.ch, splat (float f0x38000100)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index34 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x float> %i.ci, ptr %i.ck, align 4, !tbaa !172
  store <4 x float> %i.cj, ptr %i.cl, align 4, !tbaa !172
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.cm = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.cm, label %middle.block38, label %vector.body33, !llvm.loop !1469

middle.block38:                                   ; preds = %vector.body33
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count118
  br i1 %cmp.n39, label %._crit_edge103, label %scalar.ph28.preheader

scalar.ph28.preheader:                            ; preds = %.lr.ph102, %middle.block38
  %indvars.iv115.ph = phi i64 [ 0, %.lr.ph102 ], [ %n.vec32, %middle.block38 ]
  br label %scalar.ph28

scalar.ph15:                                      ; preds = %scalar.ph15.preheader, %scalar.ph15
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %scalar.ph15 ], [ %indvars.iv110.ph, %scalar.ph15.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv110
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !1194
  %i.cp = sitofp i16 %i.co to float
  %i.cq = fmul nnan float %i.cp, f0x38000100
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv110
  store float %i.cq, ptr %i.cr, align 4, !tbaa !172
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %.lr.ph102, label %scalar.ph15, !llvm.loop !1470

._crit_edge103:                                   ; preds = %scalar.ph28, %middle.block38, %._crit_edge99
  br i1 %4, label %bb.d, label %bb.e

scalar.ph28:                                      ; preds = %scalar.ph28.preheader, %scalar.ph28
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %scalar.ph28 ], [ %indvars.iv115.ph, %scalar.ph28.preheader ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv115
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !1194
  %i.cu = sitofp i16 %i.ct to float
  %i.cv = fmul nnan float %i.cu, f0x38000100
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv115
  store float %i.cv, ptr %i.cw, align 4, !tbaa !172
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge103, label %scalar.ph28, !llvm.loop !1471

bb.d:                                             ; preds = %._crit_edge103
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !206 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !153
  %i.db = add i32 %i.cy, -1
  %i.dc = add i32 %i.db, %i.da                    ; 2 uses
  %i.dd = add nsw i32 %i.ag, 1
  %spec.select.i81 = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.dd)
  %.1.i82 = tail call i32 @llvm.smin.i32(i32 %spec.select.i81, i32 %i.dc)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.ag)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.dc)
  %i.de = fsub float 1.000000e+00, %i.ah
  %i.df = sitofp i32 %.1.i to float
  %i.dg = fadd nnan float %i.df, 5.000000e-01
  %i.dh = fmul nnan float %i.dg, f0x40490FDB
  %i.di = fdiv float %i.dh, %i.n
  %i.dj = tail call float @llvm.sin.f32(float %i.di)
  %i.dk = fmul float %i.de, %i.dj
  %i.dl = sitofp i32 %.1.i82 to float
  %i.dm = fadd nnan float %i.dl, 5.000000e-01
  %i.dn = fmul nnan float %i.dm, f0x40490FDB
  %i.do = fdiv float %i.dn, %i.n
  %i.dp = tail call float @llvm.sin.f32(float %i.do)
  %i.dq = fmul float %i.ah, %i.dp                 ; 2 uses
  %i.dr = fadd float %i.dk, %i.dq
  %i.ds = fdiv float %i.dq, %i.dr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.ds, %bb.d ], [ %i.ah, %._crit_edge103 ] ; 3 uses
  %i.dt = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.du = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.dt, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.du, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.dv, align 16, !tbaa !172
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.dw, align 4, !tbaa !172
  %i.dx = fmul <4 x float> %broadcast.splat, %wide.load55
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat47, <4 x float> %i.dx)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.dz, align 4, !tbaa !172
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.ea, align 4, !tbaa !172
  %i.eb = fmul <4 x float> %broadcast.splat, %wide.load57
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat47, <4 x float> %i.eb)
  %i.ed = fmul <4 x float> %broadcast.splat49, %i.ec
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat51, <4 x float> %i.dy, <4 x float> %i.ed)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index53
  store <4 x float> %i.ee, ptr %i.ef, align 4, !tbaa !172
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.eg, label %middle.block59, label %vector.body52, !llvm.loop !1472

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count.i
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !172
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !172
  %i.el = fmul float %i.ae, %i.ek
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.dt, float %i.el)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.eo = load float, ptr %i.en, align 4, !tbaa !172
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !172
  %i.er = fmul float %i.ae, %i.eq
  %i.es = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.dt, float %i.er)
  %i.et = fmul float %.0, %i.es
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.du, float %i.em, float %i.et)
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.eu, ptr %i.ev, align 4, !tbaa !172
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1473

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block59, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIjEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr nofree writeonly captures(none) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef range(i32 1, 3) %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !208
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !209
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !154
  %i.j = sitofp i32 %i.c to float
  %i.k = sitofp i32 %i.g to float
  %i.l = tail call float @llvm.fmuladd.f32(float %1, float %i.k, float %i.j)
  %i.m = sitofp i32 %i.e to float
  %i.n = sitofp i32 %i.i to float                 ; 3 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %2, float %i.n, float %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !171  ; 14 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl nsw i32 %i.q, 2
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = alloca i8, i64 %i.t, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.w = sext i32 %i.q to i64                     ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.w ; 5 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.w ; 4 uses
  %i.aa = fadd float %i.l, -5.000000e-01          ; 2 uses
  %i.ab = fadd float %i.o, -5.000000e-01          ; 2 uses
  %i.ac = tail call noundef float @llvm.floor.f32(float %i.aa) ; 2 uses
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  %i.ae = fsub float %i.aa, %i.ac                 ; 4 uses
  %i.af = tail call noundef float @llvm.floor.f32(float %i.ab) ; 2 uses
  %i.ag = fptosi float %i.af to i32               ; 4 uses
  %i.ah = fsub float %i.ab, %i.af                 ; 3 uses
  %i.ai = add nsw i32 %i.ad, 2
  %i.aj = add nsw i32 %i.ag, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef %i.ad, i32 noundef %i.ai, i32 noundef %i.ag, i32 noundef %i.aj, i32 noundef 0, i32 noundef 1, i32 noundef %6)
  %i.ak = icmp sgt i32 %i.q, 0                    ; 2 uses
  br i1 %i.ak, label %.lr.ph, label %._crit_edge99

.lr.ph:                                           ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <4 x i32>, ptr %i.an, align 4, !tbaa !3
  %wide.load1 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !3
  %i.ap = uitofp <4 x i32> %wide.load to <4 x float>
  %i.aq = uitofp <4 x i32> %wide.load1 to <4 x float>
  %i.ar = fmul nnan <4 x float> %i.ap, splat (float f0x2F800000)
  %i.as = fmul nnan <4 x float> %i.aq, splat (float f0x2F800000)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x float> %i.ar, ptr %i.at, align 16, !tbaa !172
  store <4 x float> %i.as, ptr %i.au, align 16, !tbaa !172
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1474

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph94, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph94:                                         ; preds = %scalar.ph, %middle.block
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check3 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count108, 2147483640 ; 3 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %vector.ph4
  %index8 = phi i64 [ 0, %vector.ph4 ], [ %index.next11, %vector.body7 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load9 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !3
  %wide.load10 = load <4 x i32>, ptr %i.az, align 4, !tbaa !3
  %i.ba = uitofp <4 x i32> %wide.load9 to <4 x float>
  %i.bb = uitofp <4 x i32> %wide.load10 to <4 x float>
  %i.bc = fmul nnan <4 x float> %i.ba, splat (float f0x2F800000)
  %i.bd = fmul nnan <4 x float> %i.bb, splat (float f0x2F800000)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x float> %i.bc, ptr %i.be, align 4, !tbaa !172
  store <4 x float> %i.bd, ptr %i.bf, align 4, !tbaa !172
  %index.next11 = add nuw i64 %index8, 8          ; 2 uses
  %i.bg = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.bg, label %middle.block12, label %vector.body7, !llvm.loop !1475

middle.block12:                                   ; preds = %vector.body7
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count108
  br i1 %cmp.n13, label %.lr.ph98, label %scalar.ph2.preheader

scalar.ph2.preheader:                             ; preds = %.lr.ph94, %middle.block12
  %indvars.iv105.ph = phi i64 [ 0, %.lr.ph94 ], [ %n.vec6, %middle.block12 ]
  br label %scalar.ph2

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = uitofp i32 %i.bi to float
  %i.bk = fmul nnan float %i.bj, f0x2F800000
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store float %i.bk, ptr %i.bl, align 4, !tbaa !172
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph94, label %scalar.ph, !llvm.loop !1476

.lr.ph98:                                         ; preds = %scalar.ph2, %middle.block12
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count113 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check16 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph98
  %n.vec19 = and i64 %wide.trip.count113, 2147483640 ; 3 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next24, %vector.body20 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index21 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load22 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !3
  %wide.load23 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !3
  %i.bq = uitofp <4 x i32> %wide.load22 to <4 x float>
  %i.br = uitofp <4 x i32> %wide.load23 to <4 x float>
  %i.bs = fmul nnan <4 x float> %i.bq, splat (float f0x2F800000)
  %i.bt = fmul nnan <4 x float> %i.br, splat (float f0x2F800000)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index21 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x float> %i.bs, ptr %i.bu, align 4, !tbaa !172
  store <4 x float> %i.bt, ptr %i.bv, align 4, !tbaa !172
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.bw, label %middle.block25, label %vector.body20, !llvm.loop !1477

middle.block25:                                   ; preds = %vector.body20
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count113
  br i1 %cmp.n26, label %.lr.ph102, label %scalar.ph15.preheader

scalar.ph15.preheader:                            ; preds = %.lr.ph98, %middle.block25
  %indvars.iv110.ph = phi i64 [ 0, %.lr.ph98 ], [ %n.vec19, %middle.block25 ]
  br label %scalar.ph15

scalar.ph2:                                       ; preds = %scalar.ph2.preheader, %scalar.ph2
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %scalar.ph2 ], [ %indvars.iv105.ph, %scalar.ph2.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv105
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = uitofp i32 %i.by to float
  %i.ca = fmul nnan float %i.bz, f0x2F800000
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv105
  store float %i.ca, ptr %i.cb, align 4, !tbaa !172
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %.lr.ph98, label %scalar.ph2, !llvm.loop !1478

._crit_edge99:                                    ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  br label %._crit_edge103

.lr.ph102:                                        ; preds = %scalar.ph15, %middle.block25
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count118 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check29 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph102
  %n.vec32 = and i64 %wide.trip.count118, 2147483640 ; 3 uses
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next37, %vector.body33 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index34 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load35 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !3
  %wide.load36 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !3
  %i.cg = uitofp <4 x i32> %wide.load35 to <4 x float>
  %i.ch = uitofp <4 x i32> %wide.load36 to <4 x float>
  %i.ci = fmul nnan <4 x float> %i.cg, splat (float f0x2F800000)
  %i.cj = fmul nnan <4 x float> %i.ch, splat (float f0x2F800000)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index34 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x float> %i.ci, ptr %i.ck, align 4, !tbaa !172
  store <4 x float> %i.cj, ptr %i.cl, align 4, !tbaa !172
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.cm = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.cm, label %middle.block38, label %vector.body33, !llvm.loop !1479

middle.block38:                                   ; preds = %vector.body33
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count118
  br i1 %cmp.n39, label %._crit_edge103, label %scalar.ph28.preheader

scalar.ph28.preheader:                            ; preds = %.lr.ph102, %middle.block38
  %indvars.iv115.ph = phi i64 [ 0, %.lr.ph102 ], [ %n.vec32, %middle.block38 ]
  br label %scalar.ph28

scalar.ph15:                                      ; preds = %scalar.ph15.preheader, %scalar.ph15
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %scalar.ph15 ], [ %indvars.iv110.ph, %scalar.ph15.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv110
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = uitofp i32 %i.co to float
  %i.cq = fmul nnan float %i.cp, f0x2F800000
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv110
  store float %i.cq, ptr %i.cr, align 4, !tbaa !172
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %.lr.ph102, label %scalar.ph15, !llvm.loop !1480

._crit_edge103:                                   ; preds = %scalar.ph28, %middle.block38, %._crit_edge99
  br i1 %4, label %bb.d, label %bb.e

scalar.ph28:                                      ; preds = %scalar.ph28.preheader, %scalar.ph28
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %scalar.ph28 ], [ %indvars.iv115.ph, %scalar.ph28.preheader ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv115
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = uitofp i32 %i.ct to float
  %i.cv = fmul nnan float %i.cu, f0x2F800000
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv115
  store float %i.cv, ptr %i.cw, align 4, !tbaa !172
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge103, label %scalar.ph28, !llvm.loop !1481

bb.d:                                             ; preds = %._crit_edge103
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !206 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !153
  %i.db = add i32 %i.cy, -1
  %i.dc = add i32 %i.db, %i.da                    ; 2 uses
  %i.dd = add nsw i32 %i.ag, 1
  %spec.select.i81 = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.dd)
  %.1.i82 = tail call i32 @llvm.smin.i32(i32 %spec.select.i81, i32 %i.dc)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.ag)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.dc)
  %i.de = fsub float 1.000000e+00, %i.ah
  %i.df = sitofp i32 %.1.i to float
  %i.dg = fadd nnan float %i.df, 5.000000e-01
  %i.dh = fmul nnan float %i.dg, f0x40490FDB
  %i.di = fdiv float %i.dh, %i.n
  %i.dj = tail call float @llvm.sin.f32(float %i.di)
  %i.dk = fmul float %i.de, %i.dj
  %i.dl = sitofp i32 %.1.i82 to float
  %i.dm = fadd nnan float %i.dl, 5.000000e-01
  %i.dn = fmul nnan float %i.dm, f0x40490FDB
  %i.do = fdiv float %i.dn, %i.n
  %i.dp = tail call float @llvm.sin.f32(float %i.do)
  %i.dq = fmul float %i.ah, %i.dp                 ; 2 uses
  %i.dr = fadd float %i.dk, %i.dq
  %i.ds = fdiv float %i.dq, %i.dr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.ds, %bb.d ], [ %i.ah, %._crit_edge103 ] ; 3 uses
  %i.dt = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.du = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.dt, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.du, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.dv, align 16, !tbaa !172
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.dw, align 4, !tbaa !172
  %i.dx = fmul <4 x float> %broadcast.splat, %wide.load55
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat47, <4 x float> %i.dx)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.dz, align 4, !tbaa !172
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.ea, align 4, !tbaa !172
  %i.eb = fmul <4 x float> %broadcast.splat, %wide.load57
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat47, <4 x float> %i.eb)
  %i.ed = fmul <4 x float> %broadcast.splat49, %i.ec
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat51, <4 x float> %i.dy, <4 x float> %i.ed)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index53
  store <4 x float> %i.ee, ptr %i.ef, align 4, !tbaa !172
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.eg, label %middle.block59, label %vector.body52, !llvm.loop !1482

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count.i
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !172
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !172
  %i.el = fmul float %i.ae, %i.ek
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.dt, float %i.el)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.eo = load float, ptr %i.en, align 4, !tbaa !172
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !172
  %i.er = fmul float %i.ae, %i.eq
  %i.es = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.dt, float %i.er)
  %i.et = fmul float %.0, %i.es
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.du, float %i.em, float %i.et)
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.eu, ptr %i.ev, align 4, !tbaa !172
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1483

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block59, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIiEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr nofree writeonly captures(none) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef range(i32 1, 3) %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !208
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !209
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !154
  %i.j = sitofp i32 %i.c to float
  %i.k = sitofp i32 %i.g to float
  %i.l = tail call float @llvm.fmuladd.f32(float %1, float %i.k, float %i.j)
  %i.m = sitofp i32 %i.e to float
  %i.n = sitofp i32 %i.i to float                 ; 3 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %2, float %i.n, float %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !171  ; 14 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl nsw i32 %i.q, 2
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = alloca i8, i64 %i.t, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.w = sext i32 %i.q to i64                     ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.w ; 5 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.w ; 4 uses
  %i.aa = fadd float %i.l, -5.000000e-01          ; 2 uses
  %i.ab = fadd float %i.o, -5.000000e-01          ; 2 uses
  %i.ac = tail call noundef float @llvm.floor.f32(float %i.aa) ; 2 uses
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  %i.ae = fsub float %i.aa, %i.ac                 ; 4 uses
  %i.af = tail call noundef float @llvm.floor.f32(float %i.ab) ; 2 uses
  %i.ag = fptosi float %i.af to i32               ; 4 uses
  %i.ah = fsub float %i.ab, %i.af                 ; 3 uses
  %i.ai = add nsw i32 %i.ad, 2
  %i.aj = add nsw i32 %i.ag, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef %i.ad, i32 noundef %i.ai, i32 noundef %i.ag, i32 noundef %i.aj, i32 noundef 0, i32 noundef 1, i32 noundef %6)
  %i.ak = icmp sgt i32 %i.q, 0                    ; 2 uses
  br i1 %i.ak, label %.lr.ph, label %._crit_edge99

.lr.ph:                                           ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <4 x i32>, ptr %i.an, align 4, !tbaa !3
  %wide.load1 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !3
  %i.ap = sitofp <4 x i32> %wide.load to <4 x float>
  %i.aq = sitofp <4 x i32> %wide.load1 to <4 x float>
  %i.ar = fmul nnan <4 x float> %i.ap, splat (float f0x30000000)
  %i.as = fmul nnan <4 x float> %i.aq, splat (float f0x30000000)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x float> %i.ar, ptr %i.at, align 16, !tbaa !172
  store <4 x float> %i.as, ptr %i.au, align 16, !tbaa !172
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1484

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph94, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph94:                                         ; preds = %scalar.ph, %middle.block
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check3 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count108, 2147483640 ; 3 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %vector.ph4
  %index8 = phi i64 [ 0, %vector.ph4 ], [ %index.next11, %vector.body7 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load9 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !3
  %wide.load10 = load <4 x i32>, ptr %i.az, align 4, !tbaa !3
  %i.ba = sitofp <4 x i32> %wide.load9 to <4 x float>
  %i.bb = sitofp <4 x i32> %wide.load10 to <4 x float>
  %i.bc = fmul nnan <4 x float> %i.ba, splat (float f0x30000000)
  %i.bd = fmul nnan <4 x float> %i.bb, splat (float f0x30000000)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x float> %i.bc, ptr %i.be, align 4, !tbaa !172
  store <4 x float> %i.bd, ptr %i.bf, align 4, !tbaa !172
  %index.next11 = add nuw i64 %index8, 8          ; 2 uses
  %i.bg = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.bg, label %middle.block12, label %vector.body7, !llvm.loop !1485

middle.block12:                                   ; preds = %vector.body7
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count108
  br i1 %cmp.n13, label %.lr.ph98, label %scalar.ph2.preheader

scalar.ph2.preheader:                             ; preds = %.lr.ph94, %middle.block12
  %indvars.iv105.ph = phi i64 [ 0, %.lr.ph94 ], [ %n.vec6, %middle.block12 ]
  br label %scalar.ph2

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = sitofp i32 %i.bi to float
  %i.bk = fmul nnan float %i.bj, f0x30000000
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store float %i.bk, ptr %i.bl, align 4, !tbaa !172
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph94, label %scalar.ph, !llvm.loop !1486

.lr.ph98:                                         ; preds = %scalar.ph2, %middle.block12
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count113 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check16 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph98
  %n.vec19 = and i64 %wide.trip.count113, 2147483640 ; 3 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next24, %vector.body20 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index21 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load22 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !3
  %wide.load23 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !3
  %i.bq = sitofp <4 x i32> %wide.load22 to <4 x float>
  %i.br = sitofp <4 x i32> %wide.load23 to <4 x float>
  %i.bs = fmul nnan <4 x float> %i.bq, splat (float f0x30000000)
  %i.bt = fmul nnan <4 x float> %i.br, splat (float f0x30000000)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index21 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x float> %i.bs, ptr %i.bu, align 4, !tbaa !172
  store <4 x float> %i.bt, ptr %i.bv, align 4, !tbaa !172
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.bw, label %middle.block25, label %vector.body20, !llvm.loop !1487

middle.block25:                                   ; preds = %vector.body20
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count113
  br i1 %cmp.n26, label %.lr.ph102, label %scalar.ph15.preheader

scalar.ph15.preheader:                            ; preds = %.lr.ph98, %middle.block25
  %indvars.iv110.ph = phi i64 [ 0, %.lr.ph98 ], [ %n.vec19, %middle.block25 ]
  br label %scalar.ph15

scalar.ph2:                                       ; preds = %scalar.ph2.preheader, %scalar.ph2
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %scalar.ph2 ], [ %indvars.iv105.ph, %scalar.ph2.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv105
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = sitofp i32 %i.by to float
  %i.ca = fmul nnan float %i.bz, f0x30000000
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv105
  store float %i.ca, ptr %i.cb, align 4, !tbaa !172
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %.lr.ph98, label %scalar.ph2, !llvm.loop !1488

._crit_edge99:                                    ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  br label %._crit_edge103

.lr.ph102:                                        ; preds = %scalar.ph15, %middle.block25
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count118 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check29 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph102
  %n.vec32 = and i64 %wide.trip.count118, 2147483640 ; 3 uses
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next37, %vector.body33 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index34 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load35 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !3
  %wide.load36 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !3
  %i.cg = sitofp <4 x i32> %wide.load35 to <4 x float>
  %i.ch = sitofp <4 x i32> %wide.load36 to <4 x float>
  %i.ci = fmul nnan <4 x float> %i.cg, splat (float f0x30000000)
  %i.cj = fmul nnan <4 x float> %i.ch, splat (float f0x30000000)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index34 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x float> %i.ci, ptr %i.ck, align 4, !tbaa !172
  store <4 x float> %i.cj, ptr %i.cl, align 4, !tbaa !172
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.cm = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.cm, label %middle.block38, label %vector.body33, !llvm.loop !1489

middle.block38:                                   ; preds = %vector.body33
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count118
  br i1 %cmp.n39, label %._crit_edge103, label %scalar.ph28.preheader

scalar.ph28.preheader:                            ; preds = %.lr.ph102, %middle.block38
  %indvars.iv115.ph = phi i64 [ 0, %.lr.ph102 ], [ %n.vec32, %middle.block38 ]
  br label %scalar.ph28

scalar.ph15:                                      ; preds = %scalar.ph15.preheader, %scalar.ph15
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %scalar.ph15 ], [ %indvars.iv110.ph, %scalar.ph15.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv110
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = sitofp i32 %i.co to float
  %i.cq = fmul nnan float %i.cp, f0x30000000
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv110
  store float %i.cq, ptr %i.cr, align 4, !tbaa !172
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %.lr.ph102, label %scalar.ph15, !llvm.loop !1490

._crit_edge103:                                   ; preds = %scalar.ph28, %middle.block38, %._crit_edge99
  br i1 %4, label %bb.d, label %bb.e

scalar.ph28:                                      ; preds = %scalar.ph28.preheader, %scalar.ph28
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %scalar.ph28 ], [ %indvars.iv115.ph, %scalar.ph28.preheader ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv115
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = sitofp i32 %i.ct to float
  %i.cv = fmul nnan float %i.cu, f0x30000000
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv115
  store float %i.cv, ptr %i.cw, align 4, !tbaa !172
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge103, label %scalar.ph28, !llvm.loop !1491

bb.d:                                             ; preds = %._crit_edge103
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !206 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !153
  %i.db = add i32 %i.cy, -1
  %i.dc = add i32 %i.db, %i.da                    ; 2 uses
  %i.dd = add nsw i32 %i.ag, 1
  %spec.select.i81 = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.dd)
  %.1.i82 = tail call i32 @llvm.smin.i32(i32 %spec.select.i81, i32 %i.dc)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.ag)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.dc)
  %i.de = fsub float 1.000000e+00, %i.ah
  %i.df = sitofp i32 %.1.i to float
  %i.dg = fadd nnan float %i.df, 5.000000e-01
  %i.dh = fmul nnan float %i.dg, f0x40490FDB
  %i.di = fdiv float %i.dh, %i.n
  %i.dj = tail call float @llvm.sin.f32(float %i.di)
  %i.dk = fmul float %i.de, %i.dj
  %i.dl = sitofp i32 %.1.i82 to float
  %i.dm = fadd nnan float %i.dl, 5.000000e-01
  %i.dn = fmul nnan float %i.dm, f0x40490FDB
  %i.do = fdiv float %i.dn, %i.n
  %i.dp = tail call float @llvm.sin.f32(float %i.do)
  %i.dq = fmul float %i.ah, %i.dp                 ; 2 uses
  %i.dr = fadd float %i.dk, %i.dq
  %i.ds = fdiv float %i.dq, %i.dr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.ds, %bb.d ], [ %i.ah, %._crit_edge103 ] ; 3 uses
  %i.dt = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.du = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.dt, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.du, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.dv, align 16, !tbaa !172
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.dw, align 4, !tbaa !172
  %i.dx = fmul <4 x float> %broadcast.splat, %wide.load55
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat47, <4 x float> %i.dx)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.dz, align 4, !tbaa !172
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.ea, align 4, !tbaa !172
  %i.eb = fmul <4 x float> %broadcast.splat, %wide.load57
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat47, <4 x float> %i.eb)
  %i.ed = fmul <4 x float> %broadcast.splat49, %i.ec
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat51, <4 x float> %i.dy, <4 x float> %i.ed)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index53
  store <4 x float> %i.ee, ptr %i.ef, align 4, !tbaa !172
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.eg, label %middle.block59, label %vector.body52, !llvm.loop !1492

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count.i
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !172
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !172
  %i.el = fmul float %i.ae, %i.ek
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.dt, float %i.el)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.eo = load float, ptr %i.en, align 4, !tbaa !172
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !172
  %i.er = fmul float %i.ae, %i.eq
  %i.es = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.dt, float %i.er)
  %i.et = fmul float %.0, %i.es
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.du, float %i.em, float %i.et)
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.eu, ptr %i.ev, align 4, !tbaa !172
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1493

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block59, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIdEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr nofree writeonly captures(none) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef range(i32 1, 3) %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !208
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !209
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !154
  %i.j = sitofp i32 %i.c to float
  %i.k = sitofp i32 %i.g to float
  %i.l = tail call float @llvm.fmuladd.f32(float %1, float %i.k, float %i.j)
  %i.m = sitofp i32 %i.e to float
  %i.n = sitofp i32 %i.i to float                 ; 3 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %2, float %i.n, float %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !171  ; 14 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl nsw i32 %i.q, 2
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = alloca i8, i64 %i.t, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.w = sext i32 %i.q to i64                     ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.w ; 5 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.w ; 4 uses
  %i.aa = fadd float %i.l, -5.000000e-01          ; 2 uses
  %i.ab = fadd float %i.o, -5.000000e-01          ; 2 uses
  %i.ac = tail call noundef float @llvm.floor.f32(float %i.aa) ; 2 uses
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  %i.ae = fsub float %i.aa, %i.ac                 ; 4 uses
  %i.af = tail call noundef float @llvm.floor.f32(float %i.ab) ; 2 uses
  %i.ag = fptosi float %i.af to i32               ; 4 uses
  %i.ah = fsub float %i.ab, %i.af                 ; 3 uses
  %i.ai = add nsw i32 %i.ad, 2
  %i.aj = add nsw i32 %i.ag, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef %i.ad, i32 noundef %i.ai, i32 noundef %i.ag, i32 noundef %i.aj, i32 noundef 0, i32 noundef 1, i32 noundef %6)
  %i.ak = icmp sgt i32 %i.q, 0                    ; 2 uses
  br i1 %i.ak, label %.lr.ph, label %._crit_edge99

.lr.ph:                                           ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.q, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !39
  %wide.load1 = load <2 x double>, ptr %i.ao, align 8, !tbaa !39
  %i.ap = fptrunc <2 x double> %wide.load to <2 x float>
  %i.aq = fptrunc <2 x double> %wide.load1 to <2 x float>
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store <2 x float> %i.ap, ptr %i.ar, align 16, !tbaa !172
  store <2 x float> %i.aq, ptr %i.as, align 8, !tbaa !172
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1494

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph94, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph94:                                         ; preds = %scalar.ph, %middle.block
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check3 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count108, 2147483644 ; 3 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %vector.ph4
  %index8 = phi i64 [ 0, %vector.ph4 ], [ %index.next11, %vector.body7 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load9 = load <2 x double>, ptr %i.aw, align 8, !tbaa !39
  %wide.load10 = load <2 x double>, ptr %i.ax, align 8, !tbaa !39
  %i.ay = fptrunc <2 x double> %wide.load9 to <2 x float>
  %i.az = fptrunc <2 x double> %wide.load10 to <2 x float>
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store <2 x float> %i.ay, ptr %i.ba, align 4, !tbaa !172
  store <2 x float> %i.az, ptr %i.bb, align 4, !tbaa !172
  %index.next11 = add nuw i64 %index8, 4          ; 2 uses
  %i.bc = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.bc, label %middle.block12, label %vector.body7, !llvm.loop !1495

middle.block12:                                   ; preds = %vector.body7
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count108
  br i1 %cmp.n13, label %.lr.ph98, label %scalar.ph2.preheader

scalar.ph2.preheader:                             ; preds = %.lr.ph94, %middle.block12
  %indvars.iv105.ph = phi i64 [ 0, %.lr.ph94 ], [ %n.vec6, %middle.block12 ]
  br label %scalar.ph2

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.be = load double, ptr %i.bd, align 8, !tbaa !39
  %i.bf = fptrunc double %i.be to float
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store float %i.bf, ptr %i.bg, align 4, !tbaa !172
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph94, label %scalar.ph, !llvm.loop !1496

.lr.ph98:                                         ; preds = %scalar.ph2, %middle.block12
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count113 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check16 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph98
  %n.vec19 = and i64 %wide.trip.count113, 2147483644 ; 3 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next24, %vector.body20 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index21 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load22 = load <2 x double>, ptr %i.bj, align 8, !tbaa !39
  %wide.load23 = load <2 x double>, ptr %i.bk, align 8, !tbaa !39
  %i.bl = fptrunc <2 x double> %wide.load22 to <2 x float>
  %i.bm = fptrunc <2 x double> %wide.load23 to <2 x float>
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index21 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store <2 x float> %i.bl, ptr %i.bn, align 4, !tbaa !172
  store <2 x float> %i.bm, ptr %i.bo, align 4, !tbaa !172
  %index.next24 = add nuw i64 %index21, 4         ; 2 uses
  %i.bp = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.bp, label %middle.block25, label %vector.body20, !llvm.loop !1497

middle.block25:                                   ; preds = %vector.body20
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count113
  br i1 %cmp.n26, label %.lr.ph102, label %scalar.ph15.preheader

scalar.ph15.preheader:                            ; preds = %.lr.ph98, %middle.block25
  %indvars.iv110.ph = phi i64 [ 0, %.lr.ph98 ], [ %n.vec19, %middle.block25 ]
  br label %scalar.ph15

scalar.ph2:                                       ; preds = %scalar.ph2.preheader, %scalar.ph2
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %scalar.ph2 ], [ %indvars.iv105.ph, %scalar.ph2.preheader ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv105
  %i.br = load double, ptr %i.bq, align 8, !tbaa !39
  %i.bs = fptrunc double %i.br to float
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv105
  store float %i.bs, ptr %i.bt, align 4, !tbaa !172
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %.lr.ph98, label %scalar.ph2, !llvm.loop !1498

._crit_edge99:                                    ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  br label %._crit_edge103

.lr.ph102:                                        ; preds = %scalar.ph15, %middle.block25
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1144 ; 2 uses
  %wide.trip.count118 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check29 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph102
  %n.vec32 = and i64 %wide.trip.count118, 2147483644 ; 3 uses
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next37, %vector.body33 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index34 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load35 = load <2 x double>, ptr %i.bw, align 8, !tbaa !39
  %wide.load36 = load <2 x double>, ptr %i.bx, align 8, !tbaa !39
  %i.by = fptrunc <2 x double> %wide.load35 to <2 x float>
  %i.bz = fptrunc <2 x double> %wide.load36 to <2 x float>
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index34 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store <2 x float> %i.by, ptr %i.ca, align 4, !tbaa !172
  store <2 x float> %i.bz, ptr %i.cb, align 4, !tbaa !172
  %index.next37 = add nuw i64 %index34, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.cc, label %middle.block38, label %vector.body33, !llvm.loop !1499

middle.block38:                                   ; preds = %vector.body33
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count118
  br i1 %cmp.n39, label %._crit_edge103, label %scalar.ph28.preheader

scalar.ph28.preheader:                            ; preds = %.lr.ph102, %middle.block38
  %indvars.iv115.ph = phi i64 [ 0, %.lr.ph102 ], [ %n.vec32, %middle.block38 ]
  br label %scalar.ph28

scalar.ph15:                                      ; preds = %scalar.ph15.preheader, %scalar.ph15
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %scalar.ph15 ], [ %indvars.iv110.ph, %scalar.ph15.preheader ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv110
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !39
  %i.cf = fptrunc double %i.ce to float
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv110
  store float %i.cf, ptr %i.cg, align 4, !tbaa !172
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %.lr.ph102, label %scalar.ph15, !llvm.loop !1500

._crit_edge103:                                   ; preds = %scalar.ph28, %middle.block38, %._crit_edge99
  br i1 %4, label %bb.d, label %bb.e

scalar.ph28:                                      ; preds = %scalar.ph28.preheader, %scalar.ph28
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %scalar.ph28 ], [ %indvars.iv115.ph, %scalar.ph28.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv115
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !39
  %i.cj = fptrunc double %i.ci to float
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv115
  store float %i.cj, ptr %i.ck, align 4, !tbaa !172
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge103, label %scalar.ph28, !llvm.loop !1501

bb.d:                                             ; preds = %._crit_edge103
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !206 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !153
  %i.cp = add i32 %i.cm, -1
  %i.cq = add i32 %i.cp, %i.co                    ; 2 uses
  %i.cr = add nsw i32 %i.ag, 1
  %spec.select.i81 = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 %i.cr)
  %.1.i82 = tail call i32 @llvm.smin.i32(i32 %spec.select.i81, i32 %i.cq)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 %i.ag)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.cq)
  %i.cs = fsub float 1.000000e+00, %i.ah
  %i.ct = sitofp i32 %.1.i to float
  %i.cu = fadd nnan float %i.ct, 5.000000e-01
  %i.cv = fmul nnan float %i.cu, f0x40490FDB
  %i.cw = fdiv float %i.cv, %i.n
  %i.cx = tail call float @llvm.sin.f32(float %i.cw)
  %i.cy = fmul float %i.cs, %i.cx
  %i.cz = sitofp i32 %.1.i82 to float
  %i.da = fadd nnan float %i.cz, 5.000000e-01
  %i.db = fmul nnan float %i.da, f0x40490FDB
  %i.dc = fdiv float %i.db, %i.n
  %i.dd = tail call float @llvm.sin.f32(float %i.dc)
  %i.de = fmul float %i.ah, %i.dd                 ; 2 uses
  %i.df = fadd float %i.cy, %i.de
  %i.dg = fdiv float %i.de, %i.df
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.dg, %bb.d ], [ %i.ah, %._crit_edge103 ] ; 3 uses
  %i.dh = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.di = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.dh, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.di, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.dj, align 16, !tbaa !172
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.dk, align 4, !tbaa !172
  %i.dl = fmul <4 x float> %broadcast.splat, %wide.load55
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat47, <4 x float> %i.dl)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.dn, align 4, !tbaa !172
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.do, align 4, !tbaa !172
  %i.dp = fmul <4 x float> %broadcast.splat, %wide.load57
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat47, <4 x float> %i.dp)
  %i.dr = fmul <4 x float> %broadcast.splat49, %i.dq
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat51, <4 x float> %i.dm, <4 x float> %i.dr)
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index53
  store <4 x float> %i.ds, ptr %i.dt, align 4, !tbaa !172
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.du = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.du, label %middle.block59, label %vector.body52, !llvm.loop !1502

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count.i
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !172
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !172
  %i.dz = fmul float %i.ae, %i.dy
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dh, float %i.dz)
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !172
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !172
  %i.ef = fmul float %i.ae, %i.ee
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.dh, float %i.ef)
  %i.eh = fmul float %.0, %i.eg
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.di, float %i.ea, float %i.eh)
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.ei, ptr %i.ej, align 4, !tbaa !172
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1503

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block59, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(126) dereferenceable(126) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1140
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #35
  unreachable
}

declare noundef i32 @_ZN11OpenImageIO4v3_18Filter2D11num_filtersEv() local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_18Filter2D14get_filterdescEiPNS0_10FilterDescE(i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11OpenImageIO4v3_18Filter2D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEff(ptr noundef dead_on_return, float noundef, float noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L14fix_latl_edgesERNS0_8ImageBufE(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 9 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 2 uses
  %i.d = alloca i8, i64 %i.c, align 16
  %i.e = alloca i8, i64 %i.c, align 16
  br label %bb.c

.lr.ph114:                                        ; preds = %._crit_edge106.1
  br i1 %i.al, label %.lr.ph110.us.preheader, label %.lr.ph114.split

.lr.ph110.us.preheader:                           ; preds = %.lr.ph114
  %min.iters.check186 = icmp ult i32 %i.a, 8
  %n.vec189 = and i64 %i.am, 2147483640           ; 3 uses
  %cmp.n198 = icmp eq i64 %n.vec189, %i.am
  br label %.lr.ph110.us
end_hunk_2
