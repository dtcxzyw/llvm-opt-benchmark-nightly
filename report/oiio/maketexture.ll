inline.NumInlined: 6379
inline.NumDeleted: 1713
begin_hunk_0_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIfEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
  %or.cond = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.c
  %i.aj = load i32, ptr %i.w, align 4, !tbaa !1138
  %i.ak = load i32, ptr %i.x, align 8, !tbaa !1139
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1140
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1140
  %.not.i31 = icmp eq ptr %i.ar, null
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

bb.j:                                             ; preds = %._crit_edge
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.c, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.aw = phi i32 [ %.pre41, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre42, %bb.c ], [ %.pre42, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.ax = sitofp i32 %.pre to float
  %i.ay = fadd nnan float %i.ax, 5.000000e-01
  %i.az = fdiv float %i.ay, %i.k
  %i.ba = sitofp i32 %i.aw to float
  %i.bb = fsub float %i.y, %i.ba
  %i.bc = fadd float %i.bb, 5.000000e-01
  %i.bd = fdiv float %i.bc, %i.n
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !1141, !nonnull !123
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !109, !range !122, !noundef !123
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = fpext float %i.az to double
  %i.bi = fmul double %i.bh, f0x401921FB54442D18
  %i.bj = fptrunc double %i.bi to float           ; 4 uses
  %i.bk = fpext float %i.bd to double
  %i.bl = fmul double %i.bk, f0x400921FB54442D18
  %i.bm = fptrunc double %i.bl to float           ; 2 uses
  %i.bn = call noundef float @llvm.sin.f32(float %i.bm) ; 3 uses
  %i.bo = call noundef float @llvm.cos.f32(float %i.bm) ; 2 uses
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.bp = call float @llvm.sin.f32(float %i.bj)
  %i.bq = fmul float %i.bp, %i.bn
  %i.br = fneg float %i.bn
  %i.bs = call float @llvm.cos.f32(float %i.bj)
  %i.bt = fmul float %i.bs, %i.br
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.bu = fneg float %i.bn                        ; 2 uses
  %i.bv = call float @llvm.cos.f32(float %i.bj)
  %i.bw = fmul float %i.bv, %i.bu
  %i.bx = call float @llvm.sin.f32(float %i.bj)
  %i.by = fmul float %i.bx, %i.bu
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit:   ; preds = %bb.l, %bb.k
  %.sink11.i = phi float [ %i.bq, %bb.k ], [ %i.bw, %bb.l ] ; 2 uses
  %.sink10.i = phi float [ %i.bo, %bb.k ], [ %i.by, %bb.l ] ; 2 uses
  %.sink.i = phi float [ %i.bt, %bb.k ], [ %i.bo, %bb.l ]
  %i.bz = call float @llvm.acos.f32(float %.sink.i)
  %i.ca = fpext ninf float %i.bz to double
  %i.cb = fmul double %i.ca, f0x3FD45F306DC9C883
  %i.cc = call float @hypotf(float noundef %.sink11.i, float noundef %.sink10.i) #37
  %i.cd = fpext float %i.cc to double
  %i.ce = fdiv double %i.cb, %i.cd
  %i.cf = fptrunc double %i.ce to float           ; 2 uses
  %i.cg = call float @llvm.fmuladd.f32(float %.sink11.i, float %i.cf, float 1.000000e+00)
  %i.ch = fmul float %i.cg, 5.000000e-01
  %i.ci = call float @llvm.fmuladd.f32(float %.sink10.i, float %i.cf, float 1.000000e+00)
  %i.cj = fmul float %i.ci, 5.000000e-01
  %i.ck = load ptr, ptr %i.o, align 8, !tbaa !1130, !nonnull !123, !align !490
  invoke fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIfEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, float noundef %i.ch, float noundef %i.cj, ptr %i.h, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit
  %i.cl = load i32, ptr %i.aa, align 8, !tbaa !234 ; 2 uses
  %i.cm = load i32, ptr %i.ab, align 4, !tbaa !235
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.co = sext i32 %i.cl to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %bb.m
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.j, !llvm.loop !1142

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ %i.co, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !172
  %i.cs = load ptr, ptr %3, align 8, !tbaa !1143
  %i.ct = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.lr.ph
  %i.cu = icmp eq i32 %i.ct, 3
  br i1 %i.cu, label %bb.o, label %bb.p, !prof !78

bb.o:                                             ; preds = %.noexc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc, %bb.o
  %i.cv = load ptr, ptr %i.ac, align 8, !tbaa !1144
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %indvars.iv
  store float %i.cr, ptr %i.cw, align 4, !tbaa !172
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cx = load i32, ptr %i.ab, align 4, !tbaa !235
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i64 %indvars.iv.next, %i.cy
  br i1 %i.cz, label %.lr.ph, label %._crit_edge, !llvm.loop !1145

bb.q:                                             ; preds = %bb.o, %.lr.ph
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.j ], [ %i.cp, %bb.n ], [ %i.da, %bb.q ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.r ], [ %i.au, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.acos.f32(float) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIfEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr nofree writeonly captures(none) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef range(i32 1, 3) %6) unnamed_addr #0 {
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
  %i.n = sitofp i32 %i.i to float                 ; 2 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %2, float %i.n, float %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !171  ; 10 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl nsw i32 %i.q, 2
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = alloca i8, i64 %i.t, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.w = sext i32 %i.q to i64                     ; 3 uses
  %i.x = getelementptr [4 x i8], ptr %i.v, i64 %i.w ; 4 uses
  %i.y = getelementptr [4 x i8], ptr %i.x, i64 %i.w ; 4 uses
  %i.z = getelementptr [4 x i8], ptr %i.y, i64 %i.w ; 3 uses
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
  br i1 %i.ak, label %.lr.ph102, label %._crit_edge99

._crit_edge99:                                    ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  br label %._crit_edge103

.lr.ph102:                                        ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1144
  %i.an = zext nneg i32 %i.q to i64
  %i.ao = shl nuw nsw i64 %i.an, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.v, ptr align 4 %i.am, i64 %i.ao, i1 false), !tbaa !172
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1144
  %i.ar = zext nneg i32 %i.q to i64
  %i.as = shl nuw nsw i64 %i.ar, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.x, ptr align 4 %i.aq, i64 %i.as, i1 false), !tbaa !172
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1144
  %i.av = zext nneg i32 %i.q to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.au, i64 %i.aw, i1 false), !tbaa !172
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1144
  %i.az = zext nneg i32 %i.q to i64
  %i.ba = shl nuw nsw i64 %i.az, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr align 4 %i.ay, i64 %i.ba, i1 false), !tbaa !172
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge99, %.lr.ph102
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge103
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !206 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !153
  %i.bf = add i32 %i.bc, -1
  %i.bg = add i32 %i.bf, %i.be                    ; 2 uses
  %7 = fsub float 1.000000e+00, %i.ah
  %i.bh = add nsw i32 %i.ag, 1
  %spec.select.i81.a = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 %i.ag)
  %.1.i82.a = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 %i.bh)
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i81.a, i32 %i.bg)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %.1.i82.a, i32 %i.bg)
  %8 = insertelement <2 x i32> poison, i32 %.1.i, i64 0
  %9 = insertelement <2 x i32> %8, i32 %spec.select.i, i64 1
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = fadd nnan <2 x float> %10, splat (float 5.000000e-01)
  %12 = fmul nnan <2 x float> %11, splat (float f0x40490FDB)
  %13 = insertelement <2 x float> poison, float %i.n, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fdiv <2 x float> %12, %14
  %16 = tail call <2 x float> @llvm.sin.v2f32(<2 x float> %15)
  %17 = insertelement <2 x float> poison, float %i.ah, i64 0
  %18 = insertelement <2 x float> %17, float %7, i64 1
  %19 = fmul <2 x float> %18, %16                 ; 3 uses
  %20 = extractelement <2 x float> %19, i64 0
  %shift = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %19
  %21 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bi = fdiv float %20, %21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.bi, %bb.d ], [ %i.ah, %._crit_edge103 ] ; 3 uses
  %i.bj = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.bk = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1 = insertelement <4 x float> poison, float %i.bj, i64 0
  %broadcast.splat2 = shufflevector <4 x float> %broadcast.splatinsert1, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat4 = shufflevector <4 x float> %broadcast.splatinsert3, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert5 = insertelement <4 x float> poison, float %i.bk, i64 0
  %broadcast.splat6 = shufflevector <4 x float> %broadcast.splatinsert5, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index
  %wide.load = load <4 x float>, ptr %i.bl, align 16, !tbaa !172
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index
  %wide.load7 = load <4 x float>, ptr %i.bm, align 4, !tbaa !172
  %i.bn = fmul <4 x float> %broadcast.splat, %wide.load7
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat2, <4 x float> %i.bn)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index
  %wide.load8 = load <4 x float>, ptr %i.bp, align 4, !tbaa !172
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index
  %wide.load9 = load <4 x float>, ptr %i.bq, align 4, !tbaa !172
  %i.br = fmul <4 x float> %broadcast.splat, %wide.load9
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load8, <4 x float> %broadcast.splat2, <4 x float> %i.br)
  %i.bt = fmul <4 x float> %broadcast.splat4, %i.bs
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat6, <4 x float> %i.bo, <4 x float> %i.bt)
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  store <4 x float> %i.bu, ptr %i.bv, align 4, !tbaa !172
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !1146

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.by = load float, ptr %i.bx, align 4, !tbaa !172
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !172
  %i.cb = fmul float %i.ae, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.by, float %i.bj, float %i.cb)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !172
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !172
  %i.ch = fmul float %i.ae, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.bj, float %i.ch)
  %i.cj = fmul float %.0, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.cc, float %i.cj)
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.ck, ptr %i.cl, align 4, !tbaa !172
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1147

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1135
  %i.c = add nsw i32 %i.b, 1                      ; 7 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !1135
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1148
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !1149, !range !122, !noundef !123
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !1136
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !1150, !range !122, !noundef !123
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1151
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1144
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.n
  store ptr %i.q, ptr %i.o, align 8, !tbaa !1144
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1152
  %.not.i = icmp slt i32 %i.c, %i.s
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit, label %bb.e, !prof !36

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %0)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.u = load i8, ptr %i.t, align 2, !tbaa !1153, !range !122, !noundef !123
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1151
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1144
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.x
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !1144
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1152
  %i.ad = icmp slt i32 %i.c, %i.ac                ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp sge i32 %i.c, %i.af
  %not..i = xor i1 %i.ad, true
  %or.cond.i = select i1 %not..i, i1 true, i1 %i.ag, !prof !1154
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = select i1 %or.cond.i, i1 true, i1 %i.aj, !prof !1154
  br i1 %i.ak, label %bb.h, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit, !prof !78

bb.h:                                             ; preds = %bb.g
  %i.al = zext i1 %i.ad to i8
  %i.am = load ptr, ptr %0, align 8, !tbaa !1143
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1136
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !1138
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !1155
  %i.ax = tail call noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef %i.c, i32 noundef %i.ao, i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i1 noundef zeroext %i.ad, i32 noundef %i.aw)
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !1144
  store i8 %i.al, ptr %i.g, align 1, !tbaa !1149
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit

bb.i:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !1137 ; 3 uses
  store i32 %i.az, ptr %i.a, align 4, !tbaa !1135
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !1136
  %i.bc = add nsw i32 %i.bb, 1                    ; 3 uses
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !1136
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1156
  %.not = icmp slt i32 %i.bc, %i.be
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !1157 ; 2 uses
  store i32 %i.bg, ptr %i.ba, align 8, !tbaa !1136
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !1138
  %i.bj = add nsw i32 %i.bi, 1                    ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !1138
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !1139
  %.not1 = icmp slt i32 %i.bj, %i.bl
  br i1 %.not1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bm, align 8, !tbaa !1131
end_hunk_0
begin_hunk_1_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.af = load i32, ptr %i.t, align 4, !tbaa !1137
  %i.ag = icmp eq i32 %.pre, %i.af
  %.pre42 = load i32, ptr %i.u, align 8, !tbaa !1136 ; 3 uses
  %i.ah = load i32, ptr %i.v, align 4
  %i.ai = icmp eq i32 %.pre42, %i.ah
  %or.cond = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.c
  %i.aj = load i32, ptr %i.w, align 4, !tbaa !1138
  %i.ak = load i32, ptr %i.x, align 8, !tbaa !1139
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1140
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1140
  %.not.i31 = icmp eq ptr %i.ar, null
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
  %i.n = sitofp i32 %i.i to float                 ; 2 uses
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
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 9 uses
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
  %wide.trip.count108 = zext nneg i32 %i.q to i64
  %min.iters.check3 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count, 2147483640  ; 3 uses
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
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count
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
  %wide.trip.count113 = zext nneg i32 %i.q to i64
  %min.iters.check16 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph98
  %n.vec19 = and i64 %wide.trip.count, 2147483640 ; 3 uses
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
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count
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
  %wide.trip.count118 = zext nneg i32 %i.q to i64
  %min.iters.check29 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph102
  %n.vec32 = and i64 %wide.trip.count, 2147483640 ; 3 uses
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
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count
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
  %7 = fsub float 1.000000e+00, %i.ah
  %i.dd = add nsw i32 %i.ag, 1
  %spec.select.i81.a = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.ag)
  %.1.i82.a = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.dd)
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i81.a, i32 %i.dc)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %.1.i82.a, i32 %i.dc)
  %8 = insertelement <2 x i32> poison, i32 %.1.i, i64 0
  %9 = insertelement <2 x i32> %8, i32 %spec.select.i, i64 1
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = fadd nnan <2 x float> %10, splat (float 5.000000e-01)
  %12 = fmul nnan <2 x float> %11, splat (float f0x40490FDB)
  %13 = insertelement <2 x float> poison, float %i.n, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fdiv <2 x float> %12, %14
  %16 = tail call <2 x float> @llvm.sin.v2f32(<2 x float> %15)
  %17 = insertelement <2 x float> poison, float %i.ah, i64 0
  %18 = insertelement <2 x float> %17, float %7, i64 1
  %19 = fmul <2 x float> %18, %16                 ; 3 uses
  %20 = extractelement <2 x float> %19, i64 0
  %shift = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %19
  %21 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.de = fdiv float %20, %21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.de, %bb.d ], [ %i.ah, %._crit_edge103 ] ; 3 uses
  %i.df = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.dg = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.df, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.dg, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.dh, align 16, !tbaa !172
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.di, align 4, !tbaa !172
  %i.dj = fmul <4 x float> %broadcast.splat, %wide.load55
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat47, <4 x float> %i.dj)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.dl, align 4, !tbaa !172
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.dm, align 4, !tbaa !172
  %i.dn = fmul <4 x float> %broadcast.splat, %wide.load57
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat47, <4 x float> %i.dn)
  %i.dp = fmul <4 x float> %broadcast.splat49, %i.do
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat51, <4 x float> %i.dk, <4 x float> %i.dp)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index53
  store <4 x float> %i.dq, ptr %i.dr, align 4, !tbaa !172
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.ds = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.ds, label %middle.block59, label %vector.body52, !llvm.loop !1172

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count.i
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.du = load float, ptr %i.dt, align 4, !tbaa !172
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !172
  %i.dx = fmul float %i.ae, %i.dw
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.du, float %i.df, float %i.dx)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !172
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !172
  %i.ed = fmul float %i.ae, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.df, float %i.ed)
  %i.ef = fmul float %.0, %i.ee
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dy, float %i.ef)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.eg, ptr %i.eh, align 4, !tbaa !172
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
  %i.d = load i32, ptr %i.c, align 4, !tbaa !171  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge43, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = alloca i8, i64 %i.f, align 16
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !151
  %i.k = sitofp i32 %i.j to float
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !153
  %i.n = sitofp i32 %i.m to float                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1176, !nonnull !123, !align !490
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.q = load ptr, ptr %0, align 8, !tbaa !1174, !nonnull !123, !align !490
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %._crit_edge43
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.y = fadd float %i.n, -1.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 112
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %._crit_edge
  %i.ad = load i8, ptr %i.r, align 8, !tbaa !1131, !range !122, !noundef !123
  %i.ae = icmp eq i8 %i.ad, 0
  %.pre = load i32, ptr %i.s, align 4, !tbaa !1135 ; 2 uses
  br i1 %i.ae, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre41 = load i32, ptr %i.u, align 8, !tbaa !1136
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.af = load i32, ptr %i.t, align 4, !tbaa !1137
  %i.ag = icmp eq i32 %.pre, %i.af
  %.pre42 = load i32, ptr %i.u, align 8, !tbaa !1136 ; 3 uses
  %i.ah = load i32, ptr %i.v, align 4
  %i.ai = icmp eq i32 %.pre42, %i.ah
  %or.cond = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.c
  %i.aj = load i32, ptr %i.w, align 4, !tbaa !1138
  %i.ak = load i32, ptr %i.x, align 8, !tbaa !1139
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1140
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1140
  %.not.i31 = icmp eq ptr %i.ar, null
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
  %i.bd = load ptr, ptr %i.z, align 8, !tbaa !1177, !nonnull !123
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
  %i.cj = load ptr, ptr %i.o, align 8, !tbaa !1176, !nonnull !123, !align !490
  invoke fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIN9Imath_3_14halfEEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS4_13ConstIteratorIT_fEENS4_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, float noundef %i.cg, float noundef %i.ci, ptr %i.h, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 2)
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
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.q, !llvm.loop !1178

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
  br i1 %i.cy, label %.lr.ph, label %._crit_edge, !llvm.loop !1179

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
define internal fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIN9Imath_3_14halfEEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS4_13ConstIteratorIT_fEENS4_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr nofree writeonly captures(none) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef range(i32 1, 3) %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
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
  %i.n = sitofp i32 %i.i to float                 ; 2 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %2, float %i.n, float %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !171  ; 10 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl nsw i32 %i.q, 2
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = alloca i8, i64 %i.t, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.w = sext i32 %i.q to i64                     ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.w ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.w ; 3 uses
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
  br i1 %i.ak, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  br label %._crit_edge115

.lr.ph:                                           ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1144
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1144
  %wide.trip.count120 = zext nneg i32 %i.q to i64
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !1180 ; 2 uses
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 13
  %i.at = and i32 %i.as, 268427264                ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.aq to i32
  %i.au = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.av = icmp samesign ugt i32 %i.at, 8388607
  br i1 %i.av, label %bb.e, label %bb.h, !prof !36

bb.e:                                             ; preds = %bb.d
  %i.aw = or disjoint i32 %i.at, %i.au            ; 2 uses
  %i.ax = icmp samesign ult i32 %i.at, 260046848
  br i1 %i.ax, label %bb.f, label %bb.g, !prof !36

bb.f:                                             ; preds = %bb.e
  %i.ay = add nuw nsw i32 %i.aw, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.g:                                             ; preds = %bb.e
  %i.az = or i32 %i.aw, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.h:                                             ; preds = %bb.d
  %.not.i.i.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.at, i1 true)
  %i.bb = add nsw i32 %i.ba, -8                   ; 2 uses
  %i.bc = shl i32 %i.at, %i.bb
  %i.bd = or i32 %i.au, %i.bc
  %i.be = or i32 %i.bd, 947912704
  %i.bf = shl nuw nsw i32 %i.bb, 23
  %i.bg = sub nuw i32 %i.be, %i.bf
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.ay, %bb.f ], [ %i.az, %bb.g ], [ %i.bg, %bb.i ], [ %i.au, %bb.h ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.bh, align 4, !tbaa !172
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !1182

._crit_edge107:                                   ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit86
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1144
  %wide.trip.count125 = zext nneg i32 %i.q to i64
  br label %bb.p

bb.j:                                             ; preds = %._crit_edge, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit86
  %indvars.iv117 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next118, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit86 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv117
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !1180 ; 2 uses
  %i.bm = zext i16 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 13
  %i.bo = and i32 %i.bn, 268427264                ; 6 uses
  %.signext.i.i.i.i.i83 = sext i16 %i.bl to i32
  %i.bp = and i32 %.signext.i.i.i.i.i83, -2147483648 ; 3 uses
  %i.bq = icmp samesign ugt i32 %i.bo, 8388607
  br i1 %i.bq, label %bb.k, label %bb.n, !prof !36

bb.k:                                             ; preds = %bb.j
  %i.br = or disjoint i32 %i.bo, %i.bp            ; 2 uses
  %i.bs = icmp samesign ult i32 %i.bo, 260046848
  br i1 %i.bs, label %bb.l, label %bb.m, !prof !36

bb.l:                                             ; preds = %bb.k
  %i.bt = add nuw nsw i32 %i.br, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit86

bb.m:                                             ; preds = %bb.k
  %i.bu = or i32 %i.br, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit86

bb.n:                                             ; preds = %bb.j
  %.not.i.i.i.i.i84 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i.i84, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit86, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bo, i1 true)
  %i.bw = add nsw i32 %i.bv, -8                   ; 2 uses
  %i.bx = shl i32 %i.bo, %i.bw
  %i.by = or i32 %i.bp, %i.bx
  %i.bz = or i32 %i.by, 947912704
  %i.ca = shl nuw nsw i32 %i.bw, 23
  %i.cb = sub nuw i32 %i.bz, %i.ca
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit86

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit86: ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %.sroa.0.0.i.i.i.i.i85 = phi i32 [ %i.bt, %bb.l ], [ %i.bu, %bb.m ], [ %i.cb, %bb.o ], [ %i.bp, %bb.n ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv117
  store i32 %.sroa.0.0.i.i.i.i.i85, ptr %i.cc, align 4, !tbaa !172
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge107, label %bb.j, !llvm.loop !1183

._crit_edge111:                                   ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit90
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1144
  %wide.trip.count130 = zext nneg i32 %i.q to i64
  br label %bb.v

bb.p:                                             ; preds = %._crit_edge107, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit90
  %indvars.iv122 = phi i64 [ 0, %._crit_edge107 ], [ %indvars.iv.next123, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit90 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv122
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !1180 ; 2 uses
  %i.ch = zext i16 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 13
  %i.cj = and i32 %i.ci, 268427264                ; 6 uses
  %.signext.i.i.i.i.i87 = sext i16 %i.cg to i32
  %i.ck = and i32 %.signext.i.i.i.i.i87, -2147483648 ; 3 uses
  %i.cl = icmp samesign ugt i32 %i.cj, 8388607
  br i1 %i.cl, label %bb.q, label %bb.t, !prof !36

bb.q:                                             ; preds = %bb.p
  %i.cm = or disjoint i32 %i.cj, %i.ck            ; 2 uses
  %i.cn = icmp samesign ult i32 %i.cj, 260046848
  br i1 %i.cn, label %bb.r, label %bb.s, !prof !36

bb.r:                                             ; preds = %bb.q
  %i.co = add nuw nsw i32 %i.cm, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit90

bb.s:                                             ; preds = %bb.q
  %i.cp = or i32 %i.cm, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit90

bb.t:                                             ; preds = %bb.p
  %.not.i.i.i.i.i88 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i.i88, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit90, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.cj, i1 true)
  %i.cr = add nsw i32 %i.cq, -8                   ; 2 uses
  %i.cs = shl i32 %i.cj, %i.cr
  %i.ct = or i32 %i.ck, %i.cs
  %i.cu = or i32 %i.ct, 947912704
  %i.cv = shl nuw nsw i32 %i.cr, 23
  %i.cw = sub nuw i32 %i.cu, %i.cv
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit90

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit90: ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.0.0.i.i.i.i.i89 = phi i32 [ %i.co, %bb.r ], [ %i.cp, %bb.s ], [ %i.cw, %bb.u ], [ %i.ck, %bb.t ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv122
  store i32 %.sroa.0.0.i.i.i.i.i89, ptr %i.cx, align 4, !tbaa !172
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge111, label %bb.p, !llvm.loop !1184

._crit_edge115:                                   ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit94, %._crit_edge.thread
  br i1 %4, label %bb.ab, label %bb.ac

bb.v:                                             ; preds = %._crit_edge111, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit94
  %indvars.iv127 = phi i64 [ 0, %._crit_edge111 ], [ %indvars.iv.next128, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit94 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv127
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !1180 ; 2 uses
  %i.da = zext i16 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.da, 13
  %i.dc = and i32 %i.db, 268427264                ; 6 uses
  %.signext.i.i.i.i.i91 = sext i16 %i.cz to i32
  %i.dd = and i32 %.signext.i.i.i.i.i91, -2147483648 ; 3 uses
  %i.de = icmp samesign ugt i32 %i.dc, 8388607
  br i1 %i.de, label %bb.w, label %bb.z, !prof !36

bb.w:                                             ; preds = %bb.v
  %i.df = or disjoint i32 %i.dc, %i.dd            ; 2 uses
  %i.dg = icmp samesign ult i32 %i.dc, 260046848
  br i1 %i.dg, label %bb.x, label %bb.y, !prof !36

bb.x:                                             ; preds = %bb.w
  %i.dh = add nuw nsw i32 %i.df, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit94

bb.y:                                             ; preds = %bb.w
  %i.di = or i32 %i.df, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit94

bb.z:                                             ; preds = %bb.v
  %.not.i.i.i.i.i92 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i.i.i.i92, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit94, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.dc, i1 true)
  %i.dk = add nsw i32 %i.dj, -8                   ; 2 uses
  %i.dl = shl i32 %i.dc, %i.dk
  %i.dm = or i32 %i.dd, %i.dl
  %i.dn = or i32 %i.dm, 947912704
  %i.do = shl nuw nsw i32 %i.dk, 23
  %i.dp = sub nuw i32 %i.dn, %i.do
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit94

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit94: ; preds = %bb.x, %bb.y, %bb.z, %bb.aa
  %.sroa.0.0.i.i.i.i.i93 = phi i32 [ %i.dh, %bb.x ], [ %i.di, %bb.y ], [ %i.dp, %bb.aa ], [ %i.dd, %bb.z ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv127
  store i32 %.sroa.0.0.i.i.i.i.i93, ptr %i.dq, align 4, !tbaa !172
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge115, label %bb.v, !llvm.loop !1185

bb.ab:                                            ; preds = %._crit_edge115
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !206 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !153
  %i.dv = add i32 %i.ds, -1
  %i.dw = add i32 %i.dv, %i.du                    ; 2 uses
  %7 = fsub float 1.000000e+00, %i.ah
  %i.dx = add nsw i32 %i.ag, 1
  %spec.select.i81.a = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 %i.ag)
  %.1.i82.a = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 %i.dx)
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i81.a, i32 %i.dw)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %.1.i82.a, i32 %i.dw)
  %8 = insertelement <2 x i32> poison, i32 %.1.i, i64 0
  %9 = insertelement <2 x i32> %8, i32 %spec.select.i, i64 1
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = fadd nnan <2 x float> %10, splat (float 5.000000e-01)
  %12 = fmul nnan <2 x float> %11, splat (float f0x40490FDB)
  %13 = insertelement <2 x float> poison, float %i.n, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fdiv <2 x float> %12, %14
  %16 = tail call <2 x float> @llvm.sin.v2f32(<2 x float> %15)
  %17 = insertelement <2 x float> poison, float %i.ah, i64 0
  %18 = insertelement <2 x float> %17, float %7, i64 1
  %19 = fmul <2 x float> %18, %16                 ; 3 uses
  %20 = extractelement <2 x float> %19, i64 0
  %shift = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %19
  %21 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dy = fdiv float %20, %21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge115
  %.0 = phi float [ %i.dy, %bb.ab ], [ %i.ah, %._crit_edge115 ] ; 3 uses
  %i.dz = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.ea = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.ac
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1 = insertelement <4 x float> poison, float %i.dz, i64 0
  %broadcast.splat2 = shufflevector <4 x float> %broadcast.splatinsert1, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat4 = shufflevector <4 x float> %broadcast.splatinsert3, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert5 = insertelement <4 x float> poison, float %i.ea, i64 0
  %broadcast.splat6 = shufflevector <4 x float> %broadcast.splatinsert5, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index
  %wide.load = load <4 x float>, ptr %i.eb, align 16, !tbaa !172
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index
  %wide.load7 = load <4 x float>, ptr %i.ec, align 4, !tbaa !172
  %i.ed = fmul <4 x float> %broadcast.splat, %wide.load7
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat2, <4 x float> %i.ed)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index
  %wide.load8 = load <4 x float>, ptr %i.ef, align 4, !tbaa !172
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index
  %wide.load9 = load <4 x float>, ptr %i.eg, align 4, !tbaa !172
  %i.eh = fmul <4 x float> %broadcast.splat, %wide.load9
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load8, <4 x float> %broadcast.splat2, <4 x float> %i.eh)
  %i.ej = fmul <4 x float> %broadcast.splat4, %i.ei
  %i.ek = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat6, <4 x float> %i.ee, <4 x float> %i.ej)
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  store <4 x float> %i.ek, ptr %i.el, align 4, !tbaa !172
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !1186

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.eo = load float, ptr %i.en, align 4, !tbaa !172
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !172
  %i.er = fmul float %i.ae, %i.eq
  %i.es = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.dz, float %i.er)
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.eu = load float, ptr %i.et, align 4, !tbaa !172
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !172
  %i.ex = fmul float %i.ae, %i.ew
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.dz, float %i.ex)
  %i.ez = fmul float %.0, %i.ey
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.es, float %i.ez)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.fa, ptr %i.fb, align 4, !tbaa !172
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1187

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.ac
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21lightprobe_to_envlatlItEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !1124
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21lightprobe_to_envlatlItEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !1125
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !215
  store ptr %.val, ptr %0, align 8, !tbaa !215
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1127
  store ptr %i.a, ptr %0, align 8, !tbaa !215
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !215 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #31
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.204", align 8 ; 8 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1188, !nonnull !123, !align !490
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !171  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge43, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = alloca i8, i64 %i.f, align 16
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !151
  %i.k = sitofp i32 %i.j to float
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !153
  %i.n = sitofp i32 %i.m to float                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1190, !nonnull !123, !align !490
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.q = load ptr, ptr %0, align 8, !tbaa !1188, !nonnull !123, !align !490
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %._crit_edge43
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.y = fadd float %i.n, -1.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 112
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %._crit_edge
  %i.ad = load i8, ptr %i.r, align 8, !tbaa !1131, !range !122, !noundef !123
  %i.ae = icmp eq i8 %i.ad, 0
  %.pre = load i32, ptr %i.s, align 4, !tbaa !1135 ; 2 uses
  br i1 %i.ae, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre41 = load i32, ptr %i.u, align 8, !tbaa !1136
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.af = load i32, ptr %i.t, align 4, !tbaa !1137
  %i.ag = icmp eq i32 %.pre, %i.af
  %.pre42 = load i32, ptr %i.u, align 8, !tbaa !1136 ; 3 uses
  %i.ah = load i32, ptr %i.v, align 4
  %i.ai = icmp eq i32 %.pre42, %i.ah
  %or.cond = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.c
  %i.aj = load i32, ptr %i.w, align 4, !tbaa !1138
  %i.ak = load i32, ptr %i.x, align 8, !tbaa !1139
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1140
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1140
  %.not.i31 = icmp eq ptr %i.ar, null
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
  %i.n = sitofp i32 %i.i to float                 ; 2 uses
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
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 9 uses
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
  %wide.trip.count108 = zext nneg i32 %i.q to i64
  %min.iters.check3 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count, 2147483640  ; 3 uses
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
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count
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
  %wide.trip.count113 = zext nneg i32 %i.q to i64
  %min.iters.check16 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph98
  %n.vec19 = and i64 %wide.trip.count, 2147483640 ; 3 uses
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
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count
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
  %wide.trip.count118 = zext nneg i32 %i.q to i64
  %min.iters.check29 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph102
  %n.vec32 = and i64 %wide.trip.count, 2147483640 ; 3 uses
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
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count
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
  %7 = fsub float 1.000000e+00, %i.ah
  %i.dd = add nsw i32 %i.ag, 1
  %spec.select.i81.a = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.ag)
  %.1.i82.a = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.dd)
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i81.a, i32 %i.dc)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %.1.i82.a, i32 %i.dc)
  %8 = insertelement <2 x i32> poison, i32 %.1.i, i64 0
  %9 = insertelement <2 x i32> %8, i32 %spec.select.i, i64 1
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = fadd nnan <2 x float> %10, splat (float 5.000000e-01)
  %12 = fmul nnan <2 x float> %11, splat (float f0x40490FDB)
  %13 = insertelement <2 x float> poison, float %i.n, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fdiv <2 x float> %12, %14
  %16 = tail call <2 x float> @llvm.sin.v2f32(<2 x float> %15)
  %17 = insertelement <2 x float> poison, float %i.ah, i64 0
  %18 = insertelement <2 x float> %17, float %7, i64 1
  %19 = fmul <2 x float> %18, %16                 ; 3 uses
  %20 = extractelement <2 x float> %19, i64 0
  %shift = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %19
  %21 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.de = fdiv float %20, %21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.de, %bb.d ], [ %i.ah, %._crit_edge103 ] ; 3 uses
  %i.df = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.dg = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.df, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.dg, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.dh, align 16, !tbaa !172
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.di, align 4, !tbaa !172
  %i.dj = fmul <4 x float> %broadcast.splat, %wide.load55
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat47, <4 x float> %i.dj)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.dl, align 4, !tbaa !172
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.dm, align 4, !tbaa !172
  %i.dn = fmul <4 x float> %broadcast.splat, %wide.load57
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat47, <4 x float> %i.dn)
  %i.dp = fmul <4 x float> %broadcast.splat49, %i.do
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat51, <4 x float> %i.dk, <4 x float> %i.dp)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index53
  store <4 x float> %i.dq, ptr %i.dr, align 4, !tbaa !172
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.ds = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.ds, label %middle.block59, label %vector.body52, !llvm.loop !1203

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count.i
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.du = load float, ptr %i.dt, align 4, !tbaa !172
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !172
  %i.dx = fmul float %i.ae, %i.dw
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.du, float %i.df, float %i.dx)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !172
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !172
  %i.ed = fmul float %i.ae, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.df, float %i.ed)
  %i.ef = fmul float %.0, %i.ee
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dy, float %i.ef)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.eg, ptr %i.eh, align 4, !tbaa !172
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
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !22
  store ptr %i.t, ptr %2, align 8, !tbaa !19
  store i64 0, ptr %i.ab, align 8, !tbaa !22
  store i8 0, ptr %i.t, align 8, !tbaa !21
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !16, !alias.scope !1205, !noalias !1208
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !19, !alias.scope !1208, !noalias !1205 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !22, !alias.scope !1208, !noalias !1205 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !1210
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !19, !alias.scope !1205, !noalias !1208
  %i.al = load i64, ptr %i.af, align 8, !tbaa !21, !alias.scope !1208, !noalias !1205
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !21, !alias.scope !1205, !noalias !1208
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !22, !alias.scope !1208, !noalias !1205
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !22, !alias.scope !1205, !noalias !1208
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !19, !alias.scope !1208, !noalias !1205
  store i64 0, ptr %i.an, align 8, !tbaa !22, !alias.scope !1208, !noalias !1205
  store i8 0, ptr %i.af, align 8, !tbaa !21, !alias.scope !1208, !noalias !1205
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1211

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L13resize_block_IdEEbRNS0_8ImageBufERKS2_NS0_3ROIEb:bb.a
bb.v:                                             ; preds = %bb.u, %.noexc79.us
  %i.eo = load ptr, ptr %i.bs, align 8, !tbaa !1144
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv
  store float %i.ek, ptr %i.ep, align 4, !tbaa !172
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !1446

.preheader.us:                                    ; preds = %bb.i
  br i1 %i.br, label %.lr.ph.us, label %._crit_edge.us

._crit_edge90.us:                                 ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.us
  %i.eq = add i32 %.06291.us, 1                   ; 2 uses
  %exitcond103.not = icmp eq i32 %i.eq, %i.g
  br i1 %exitcond103.not, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._crit_edge, label %.lr.ph89.us, !llvm.loop !1447

.split.us:                                        ; preds = %bb.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.split94.us:                                      ; preds = %bb.t, %bb.r, %bb.n
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.split97.us:                                      ; preds = %bb.u, %.lr.ph.us
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._crit_edge: ; preds = %._crit_edge90.us, %.lr.ph92, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1140
  %.not.i = icmp eq ptr %i.ev, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.w

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
  %i.n = sitofp i32 %i.i to float                 ; 2 uses
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
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 9 uses
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
  %wide.trip.count108 = zext nneg i32 %i.q to i64
  %min.iters.check3 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count, 2147483640  ; 3 uses
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
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count
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
  %wide.trip.count113 = zext nneg i32 %i.q to i64
  %min.iters.check16 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph98
  %n.vec19 = and i64 %wide.trip.count, 2147483640 ; 3 uses
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
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count
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
  %wide.trip.count118 = zext nneg i32 %i.q to i64
  %min.iters.check29 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph102
  %n.vec32 = and i64 %wide.trip.count, 2147483640 ; 3 uses
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
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count
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
  %7 = fsub float 1.000000e+00, %i.ah
  %i.dd = add nsw i32 %i.ag, 1
  %spec.select.i81.a = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.ag)
  %.1.i82.a = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.dd)
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i81.a, i32 %i.dc)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %.1.i82.a, i32 %i.dc)
  %8 = insertelement <2 x i32> poison, i32 %.1.i, i64 0
  %9 = insertelement <2 x i32> %8, i32 %spec.select.i, i64 1
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = fadd nnan <2 x float> %10, splat (float 5.000000e-01)
  %12 = fmul nnan <2 x float> %11, splat (float f0x40490FDB)
  %13 = insertelement <2 x float> poison, float %i.n, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fdiv <2 x float> %12, %14
  %16 = tail call <2 x float> @llvm.sin.v2f32(<2 x float> %15)
  %17 = insertelement <2 x float> poison, float %i.ah, i64 0
  %18 = insertelement <2 x float> %17, float %7, i64 1
  %19 = fmul <2 x float> %18, %16                 ; 3 uses
  %20 = extractelement <2 x float> %19, i64 0
  %shift = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %19
  %21 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.de = fdiv float %20, %21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.de, %bb.d ], [ %i.ah, %._crit_edge103 ] ; 3 uses
  %i.df = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.dg = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.df, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.dg, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.dh, align 16, !tbaa !172
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.di, align 4, !tbaa !172
  %i.dj = fmul <4 x float> %broadcast.splat, %wide.load55
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat47, <4 x float> %i.dj)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.dl, align 4, !tbaa !172
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.dm, align 4, !tbaa !172
  %i.dn = fmul <4 x float> %broadcast.splat, %wide.load57
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat47, <4 x float> %i.dn)
  %i.dp = fmul <4 x float> %broadcast.splat49, %i.do
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat51, <4 x float> %i.dk, <4 x float> %i.dp)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index53
  store <4 x float> %i.dq, ptr %i.dr, align 4, !tbaa !172
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.ds = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.ds, label %middle.block59, label %vector.body52, !llvm.loop !1462

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count.i
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.du = load float, ptr %i.dt, align 4, !tbaa !172
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !172
  %i.dx = fmul float %i.ae, %i.dw
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.du, float %i.df, float %i.dx)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !172
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !172
  %i.ed = fmul float %i.ae, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.df, float %i.ed)
  %i.ef = fmul float %.0, %i.ee
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dy, float %i.ef)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.eg, ptr %i.eh, align 4, !tbaa !172
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
  %i.n = sitofp i32 %i.i to float                 ; 2 uses
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
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 9 uses
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
  %wide.trip.count108 = zext nneg i32 %i.q to i64
  %min.iters.check3 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count, 2147483640  ; 3 uses
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
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count
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
  %wide.trip.count113 = zext nneg i32 %i.q to i64
  %min.iters.check16 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph98
  %n.vec19 = and i64 %wide.trip.count, 2147483640 ; 3 uses
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
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count
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
  %wide.trip.count118 = zext nneg i32 %i.q to i64
  %min.iters.check29 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph102
  %n.vec32 = and i64 %wide.trip.count, 2147483640 ; 3 uses
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
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count
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
  %7 = fsub float 1.000000e+00, %i.ah
  %i.dd = add nsw i32 %i.ag, 1
  %spec.select.i81.a = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.ag)
  %.1.i82.a = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.dd)
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i81.a, i32 %i.dc)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %.1.i82.a, i32 %i.dc)
  %8 = insertelement <2 x i32> poison, i32 %.1.i, i64 0
  %9 = insertelement <2 x i32> %8, i32 %spec.select.i, i64 1
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = fadd nnan <2 x float> %10, splat (float 5.000000e-01)
  %12 = fmul nnan <2 x float> %11, splat (float f0x40490FDB)
  %13 = insertelement <2 x float> poison, float %i.n, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fdiv <2 x float> %12, %14
  %16 = tail call <2 x float> @llvm.sin.v2f32(<2 x float> %15)
  %17 = insertelement <2 x float> poison, float %i.ah, i64 0
  %18 = insertelement <2 x float> %17, float %7, i64 1
  %19 = fmul <2 x float> %18, %16                 ; 3 uses
  %20 = extractelement <2 x float> %19, i64 0
  %shift = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %19
  %21 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.de = fdiv float %20, %21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.de, %bb.d ], [ %i.ah, %._crit_edge103 ] ; 3 uses
  %i.df = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.dg = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.df, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.dg, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.dh, align 16, !tbaa !172
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.di, align 4, !tbaa !172
  %i.dj = fmul <4 x float> %broadcast.splat, %wide.load55
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat47, <4 x float> %i.dj)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.dl, align 4, !tbaa !172
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.dm, align 4, !tbaa !172
  %i.dn = fmul <4 x float> %broadcast.splat, %wide.load57
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat47, <4 x float> %i.dn)
  %i.dp = fmul <4 x float> %broadcast.splat49, %i.do
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat51, <4 x float> %i.dk, <4 x float> %i.dp)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index53
  store <4 x float> %i.dq, ptr %i.dr, align 4, !tbaa !172
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.ds = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.ds, label %middle.block59, label %vector.body52, !llvm.loop !1472

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count.i
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.du = load float, ptr %i.dt, align 4, !tbaa !172
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !172
  %i.dx = fmul float %i.ae, %i.dw
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.du, float %i.df, float %i.dx)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !172
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !172
  %i.ed = fmul float %i.ae, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.df, float %i.ed)
  %i.ef = fmul float %.0, %i.ee
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dy, float %i.ef)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.eg, ptr %i.eh, align 4, !tbaa !172
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
  %i.n = sitofp i32 %i.i to float                 ; 2 uses
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
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 9 uses
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
  %wide.trip.count108 = zext nneg i32 %i.q to i64
  %min.iters.check3 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count, 2147483640  ; 3 uses
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
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count
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
  %wide.trip.count113 = zext nneg i32 %i.q to i64
  %min.iters.check16 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph98
  %n.vec19 = and i64 %wide.trip.count, 2147483640 ; 3 uses
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
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count
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
  %wide.trip.count118 = zext nneg i32 %i.q to i64
  %min.iters.check29 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph102
  %n.vec32 = and i64 %wide.trip.count, 2147483640 ; 3 uses
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
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count
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
  %7 = fsub float 1.000000e+00, %i.ah
  %i.dd = add nsw i32 %i.ag, 1
  %spec.select.i81.a = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.ag)
  %.1.i82.a = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.dd)
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i81.a, i32 %i.dc)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %.1.i82.a, i32 %i.dc)
  %8 = insertelement <2 x i32> poison, i32 %.1.i, i64 0
  %9 = insertelement <2 x i32> %8, i32 %spec.select.i, i64 1
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = fadd nnan <2 x float> %10, splat (float 5.000000e-01)
  %12 = fmul nnan <2 x float> %11, splat (float f0x40490FDB)
  %13 = insertelement <2 x float> poison, float %i.n, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fdiv <2 x float> %12, %14
  %16 = tail call <2 x float> @llvm.sin.v2f32(<2 x float> %15)
  %17 = insertelement <2 x float> poison, float %i.ah, i64 0
  %18 = insertelement <2 x float> %17, float %7, i64 1
  %19 = fmul <2 x float> %18, %16                 ; 3 uses
  %20 = extractelement <2 x float> %19, i64 0
  %shift = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %19
  %21 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.de = fdiv float %20, %21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.de, %bb.d ], [ %i.ah, %._crit_edge103 ] ; 3 uses
  %i.df = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.dg = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.df, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.dg, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.dh, align 16, !tbaa !172
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.di, align 4, !tbaa !172
  %i.dj = fmul <4 x float> %broadcast.splat, %wide.load55
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat47, <4 x float> %i.dj)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.dl, align 4, !tbaa !172
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.dm, align 4, !tbaa !172
  %i.dn = fmul <4 x float> %broadcast.splat, %wide.load57
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat47, <4 x float> %i.dn)
  %i.dp = fmul <4 x float> %broadcast.splat49, %i.do
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat51, <4 x float> %i.dk, <4 x float> %i.dp)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index53
  store <4 x float> %i.dq, ptr %i.dr, align 4, !tbaa !172
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.ds = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.ds, label %middle.block59, label %vector.body52, !llvm.loop !1482

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count.i
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.du = load float, ptr %i.dt, align 4, !tbaa !172
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !172
  %i.dx = fmul float %i.ae, %i.dw
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.du, float %i.df, float %i.dx)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !172
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !172
  %i.ed = fmul float %i.ae, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.df, float %i.ed)
  %i.ef = fmul float %.0, %i.ee
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dy, float %i.ef)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.eg, ptr %i.eh, align 4, !tbaa !172
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
  %i.n = sitofp i32 %i.i to float                 ; 2 uses
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
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 9 uses
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
  %wide.trip.count108 = zext nneg i32 %i.q to i64
  %min.iters.check3 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count, 2147483640  ; 3 uses
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
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count
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
  %wide.trip.count113 = zext nneg i32 %i.q to i64
  %min.iters.check16 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph98
  %n.vec19 = and i64 %wide.trip.count, 2147483640 ; 3 uses
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
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count
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
  %wide.trip.count118 = zext nneg i32 %i.q to i64
  %min.iters.check29 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph102
  %n.vec32 = and i64 %wide.trip.count, 2147483640 ; 3 uses
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
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count
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
  %7 = fsub float 1.000000e+00, %i.ah
  %i.dd = add nsw i32 %i.ag, 1
  %spec.select.i81.a = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.ag)
  %.1.i82.a = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.dd)
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i81.a, i32 %i.dc)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %.1.i82.a, i32 %i.dc)
  %8 = insertelement <2 x i32> poison, i32 %.1.i, i64 0
  %9 = insertelement <2 x i32> %8, i32 %spec.select.i, i64 1
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = fadd nnan <2 x float> %10, splat (float 5.000000e-01)
  %12 = fmul nnan <2 x float> %11, splat (float f0x40490FDB)
  %13 = insertelement <2 x float> poison, float %i.n, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fdiv <2 x float> %12, %14
  %16 = tail call <2 x float> @llvm.sin.v2f32(<2 x float> %15)
  %17 = insertelement <2 x float> poison, float %i.ah, i64 0
  %18 = insertelement <2 x float> %17, float %7, i64 1
  %19 = fmul <2 x float> %18, %16                 ; 3 uses
  %20 = extractelement <2 x float> %19, i64 0
  %shift = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %19
  %21 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.de = fdiv float %20, %21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.de, %bb.d ], [ %i.ah, %._crit_edge103 ] ; 3 uses
  %i.df = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.dg = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.df, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.dg, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.dh, align 16, !tbaa !172
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.di, align 4, !tbaa !172
  %i.dj = fmul <4 x float> %broadcast.splat, %wide.load55
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat47, <4 x float> %i.dj)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.dl, align 4, !tbaa !172
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.dm, align 4, !tbaa !172
  %i.dn = fmul <4 x float> %broadcast.splat, %wide.load57
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat47, <4 x float> %i.dn)
  %i.dp = fmul <4 x float> %broadcast.splat49, %i.do
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat51, <4 x float> %i.dk, <4 x float> %i.dp)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index53
  store <4 x float> %i.dq, ptr %i.dr, align 4, !tbaa !172
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.ds = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.ds, label %middle.block59, label %vector.body52, !llvm.loop !1492

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count.i
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.du = load float, ptr %i.dt, align 4, !tbaa !172
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !172
  %i.dx = fmul float %i.ae, %i.dw
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.du, float %i.df, float %i.dx)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !172
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !172
  %i.ed = fmul float %i.ae, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.df, float %i.ed)
  %i.ef = fmul float %.0, %i.ee
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dy, float %i.ef)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.eg, ptr %i.eh, align 4, !tbaa !172
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
  %i.n = sitofp i32 %i.i to float                 ; 2 uses
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
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 9 uses
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
  %wide.trip.count108 = zext nneg i32 %i.q to i64
  %min.iters.check3 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count, 2147483644  ; 3 uses
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
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count
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
  %wide.trip.count113 = zext nneg i32 %i.q to i64
  %min.iters.check16 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph98
  %n.vec19 = and i64 %wide.trip.count, 2147483644 ; 3 uses
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
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count
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
  %wide.trip.count118 = zext nneg i32 %i.q to i64
  %min.iters.check29 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph102
  %n.vec32 = and i64 %wide.trip.count, 2147483644 ; 3 uses
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
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count
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
  %7 = fsub float 1.000000e+00, %i.ah
  %i.cr = add nsw i32 %i.ag, 1
  %spec.select.i81.a = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 %i.ag)
  %.1.i82.a = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 %i.cr)
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i81.a, i32 %i.cq)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %.1.i82.a, i32 %i.cq)
  %8 = insertelement <2 x i32> poison, i32 %.1.i, i64 0
  %9 = insertelement <2 x i32> %8, i32 %spec.select.i, i64 1
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = fadd nnan <2 x float> %10, splat (float 5.000000e-01)
  %12 = fmul nnan <2 x float> %11, splat (float f0x40490FDB)
  %13 = insertelement <2 x float> poison, float %i.n, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fdiv <2 x float> %12, %14
  %16 = tail call <2 x float> @llvm.sin.v2f32(<2 x float> %15)
  %17 = insertelement <2 x float> poison, float %i.ah, i64 0
  %18 = insertelement <2 x float> %17, float %7, i64 1
  %19 = fmul <2 x float> %18, %16                 ; 3 uses
  %20 = extractelement <2 x float> %19, i64 0
  %shift = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %19
  %21 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cs = fdiv float %20, %21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.cs, %bb.d ], [ %i.ah, %._crit_edge103 ] ; 3 uses
  %i.ct = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.cu = fsub float 1.000000e+00, %.0            ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.q, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.ct, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.cv, align 16, !tbaa !172
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.cw, align 4, !tbaa !172
  %i.cx = fmul <4 x float> %broadcast.splat, %wide.load55
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat47, <4 x float> %i.cx)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.cz, align 4, !tbaa !172
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.da, align 4, !tbaa !172
  %i.db = fmul <4 x float> %broadcast.splat, %wide.load57
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat47, <4 x float> %i.db)
  %i.dd = fmul <4 x float> %broadcast.splat49, %i.dc
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat51, <4 x float> %i.cy, <4 x float> %i.dd)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index53
  store <4 x float> %i.de, ptr %i.df, align 4, !tbaa !172
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.dg = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.dg, label %middle.block59, label %vector.body52, !llvm.loop !1502

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count.i
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.di = load float, ptr %i.dh, align 4, !tbaa !172
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !172
  %i.dl = fmul float %i.ae, %i.dk
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.di, float %i.ct, float %i.dl)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.do = load float, ptr %i.dn, align 4, !tbaa !172
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !172
  %i.dr = fmul float %i.ae, %i.dq
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.do, float %i.ct, float %i.dr)
  %i.dt = fmul float %.0, %i.ds
  %i.du = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.dm, float %i.dt)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.du, ptr %i.dv, align 4, !tbaa !172
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

.lr.ph110.us:                                     ; preds = %.lr.ph110.us.preheader, %._crit_edge111.us
  %.069112.us = phi i32 [ %i.aa, %._crit_edge111.us ], [ %i.da, %.lr.ph110.us.preheader ] ; 5 uses
  %i.f = call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  call void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.f, i32 noundef %.069112.us, i32 noundef 0, ptr %i.ae, i64 %i.ad, i32 noundef 1)
  %i.g = call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.h = add nsw i32 %i.g, -1
  call void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.h, i32 noundef %.069112.us, i32 noundef 0, ptr %i.af, i64 %i.ad, i32 noundef 1)
  br i1 %min.iters.check186, label %scalar.ph185.preheader, label %vector.body190

vector.body190:                                   ; preds = %.lr.ph110.us, %vector.body190
  %index191 = phi i64 [ %index.next196, %vector.body190 ], [ 0, %.lr.ph110.us ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index191 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load192 = load <4 x float>, ptr %i.i, align 16, !tbaa !172
  %wide.load193 = load <4 x float>, ptr %i.j, align 16, !tbaa !172
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index191 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load194 = load <4 x float>, ptr %i.k, align 16, !tbaa !172
  %wide.load195 = load <4 x float>, ptr %i.l, align 16, !tbaa !172
  %i.m = fmul <4 x float> %wide.load194, splat (float 5.000000e-01)
  %i.n = fmul <4 x float> %wide.load195, splat (float 5.000000e-01)
  %i.o = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load192, <4 x float> splat (float 5.000000e-01), <4 x float> %i.m)
  %i.p = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load193, <4 x float> splat (float 5.000000e-01), <4 x float> %i.n)
  store <4 x float> %i.o, ptr %i.i, align 16, !tbaa !172
  store <4 x float> %i.p, ptr %i.j, align 16, !tbaa !172
  %index.next196 = add nuw i64 %index191, 8       ; 2 uses
  %i.q = icmp eq i64 %index.next196, %n.vec189
  br i1 %i.q, label %middle.block197, label %vector.body190, !llvm.loop !1504

middle.block197:                                  ; preds = %vector.body190
  br i1 %cmp.n198, label %._crit_edge111.us, label %scalar.ph185.preheader

scalar.ph185.preheader:                           ; preds = %.lr.ph110.us, %middle.block197
  %indvars.iv124.ph = phi i64 [ 0, %.lr.ph110.us ], [ %n.vec189, %middle.block197 ]
  br label %scalar.ph185

scalar.ph185:                                     ; preds = %scalar.ph185.preheader, %scalar.ph185
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %scalar.ph185 ], [ %indvars.iv124.ph, %scalar.ph185.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv124 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !172
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv124
  %i.u = load float, ptr %i.t, align 4, !tbaa !172
  %i.v = fmul float %i.u, 5.000000e-01
  %i.w = call float @llvm.fmuladd.f32(float %i.s, float 5.000000e-01, float %i.v)
  store float %i.w, ptr %i.r, align 4, !tbaa !172
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %i.am
  br i1 %exitcond128.not, label %._crit_edge111.us, label %scalar.ph185, !llvm.loop !1505

._crit_edge111.us:                                ; preds = %scalar.ph185, %middle.block197
  %i.x = call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  call void @_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiiNS0_4spanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.x, i32 noundef %.069112.us, i32 noundef 0, ptr nonnull %i.ae, i64 %i.ad)
  %i.y = call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.z = add nsw i32 %i.y, -1
  call void @_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiiNS0_4spanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.z, i32 noundef %.069112.us, i32 noundef 0, ptr nonnull %i.ae, i64 %i.ad)
  %i.aa = add nsw i32 %.069112.us, 1              ; 2 uses
  %i.ab = call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE19_M_range_initializeISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEEvT_SC_St20forward_iterator_tag:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !296
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 37
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.n, i8 0, i64 7, i1 false)
  %.sroa.0.0.copyload.i.i.i8.i.i.i.i = load ptr, ptr %.sroa.09.012.i.i.i.i, align 8, !tbaa !300
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i10.i.i.i.i.i.i = load i64, ptr %i.q, align 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i.i.i.i, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1120 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i.i.i.i, i64 36
  %i.u = load i8, ptr %i.t, align 4, !tbaa !1121
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i.i.i.i, i64 38 ; 2 uses
  %i.x = load i8, ptr %i.w, align 2, !tbaa !328, !range !122, !noundef !123
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i.i.i.i, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = select i1 %i.y, ptr %i.aa, ptr %i.z
  %i.ac = lshr i64 %.sroa.0.0.copyload.i10.i.i.i.i.i.i, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  %narrow.i.i.i.i.i.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 1)
  %i.ae = lshr i64 %.sroa.0.0.copyload.i10.i.i.i.i.i.i, 8
  %i.af = and i64 %i.ae, 255
  %i.ag = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.q) #30
  %i.ah = mul i64 %i.ag, %i.af
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = mul i32 %narrow.i.i.i.i.i.i.i.i.i, %i.s
  %i.ak = mul i32 %i.aj, %i.ai
  %i.al = sext i32 %i.ak to i64
  store ptr %i.ab, ptr %3, align 8
  store i64 %i.al, ptr %i.k, align 8
  tail call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %.013.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i8.i.i.i.i, i64 %.sroa.0.0.copyload.i10.i.i.i.i.i.i, i32 noundef %i.s, i32 noundef %i.v, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span") align 8 %3, i8 0, i8 1) #30
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i.i.i.i, i64 37
  %i.an = load i8, ptr %i.am, align 1, !tbaa !1528, !range !122, !noundef !123
  store i8 %i.an, ptr %i.o, align 1, !tbaa !1528
  %i.ao = load i8, ptr %i.w, align 2, !tbaa !328, !range !122, !noundef !123
  store i8 %i.ao, ptr %i.p, align 2, !tbaa !328
  store ptr null, ptr %i.z, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i.i.i.i, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_110ParamValueESt6vectorIS5_SaIS5_EEEEES6_S5_ET0_T_SD_SC_RSaIT1_E.exit, label %bb.c, !llvm.loop !1529

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_110ParamValueESt6vectorIS5_SaIS5_EEEEES6_S5_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_M_allocateEm.exit.thread ], [ %i.aq, %bb.c ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.ar, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12write_mipmapENS1_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS1_8ImageBufEERKNS1_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_11ImageOutputENS1_8TypeDescEbNS1_17basic_string_viewIcSG_EESC_RSoRdSP_RmE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !215   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1530, !nonnull !123, !align !490
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1532, !nonnull !123, !align !490
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1533, !nonnull !123
  %i.h = load i8, ptr %i.g, align 1, !tbaa !109, !range !122, !noundef !123
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1534, !nonnull !123
  %i.l = load i8, ptr %i.k, align 1, !tbaa !109, !range !122, !noundef !123
  %i.m = trunc nuw i8 %i.l to i1
  tail call fastcc void @_ZN11OpenImageIO4v3_1L12resize_blockERNS0_8ImageBufERKS1_NS0_3ROIEbb(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %i.i, i1 noundef zeroext %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12write_mipmapENS1_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS1_8ImageBufEERKNS1_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_11ImageOutputENS1_8TypeDescEbNS1_17basic_string_viewIcSG_EESC_RSoRdSP_RmE3$_0E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12write_mipmapENS2_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS2_8ImageBufEERKNS2_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_11ImageOutputENS2_8TypeDescEbNS2_17basic_string_viewIcSF_EESB_RSoRdSO_RmE3$_0E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_RmE3$_0", ptr %0, align 8, !tbaa !1125
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12write_mipmapENS2_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS2_8ImageBufEERKNS2_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_11ImageOutputENS2_8TypeDescEbNS2_17basic_string_viewIcSF_EESB_RSoRdSO_RmE3$_0E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !215
  store ptr %.val, ptr %0, align 8, !tbaa !215
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12write_mipmapENS2_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS2_8ImageBufEERKNS2_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_11ImageOutputENS2_8TypeDescEbNS2_17basic_string_viewIcSF_EESB_RSoRdSO_RmE3$_0E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !1535
  store ptr %i.a, ptr %0, align 8, !tbaa !215
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12write_mipmapENS2_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS2_8ImageBufEERKNS2_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_11ImageOutputENS2_8TypeDescEbNS2_17basic_string_viewIcSF_EESB_RSoRdSO_RmE3$_0E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !215 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12write_mipmapENS2_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS2_8ImageBufEERKNS2_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_11ImageOutputENS2_8TypeDescEbNS2_17basic_string_viewIcSF_EESB_RSoRdSO_RmE3$_0E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #31
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12write_mipmapENS2_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS2_8ImageBufEERKNS2_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_11ImageOutputENS2_8TypeDescEbNS2_17basic_string_viewIcSF_EESB_RSoRdSO_RmE3$_0E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12write_mipmapENS2_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS2_8ImageBufEERKNS2_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_11ImageOutputENS2_8TypeDescEbNS2_17basic_string_viewIcSF_EESB_RSoRdSO_RmE3$_0E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110Filesystem6removeENS0_17basic_string_viewIcSt11char_traitsIcEEERNSt7__cxx1112basic_stringIcS4_SaIcEEE(ptr noundef dead_on_return, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_18log_timeENS0_17basic_string_viewIcSt11char_traitsIcEEERKNS0_5TimerEi(ptr noundef dead_on_return, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sin.v2f32(<2 x float>) #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { cold nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn }
attributes #35 = { noreturn nounwind }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { nounwind willreturn memory(none) }
attributes #38 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !9, i64 0, !11, i64 8}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!8, !11, i64 8}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!15 = distinct !{!15, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!16 = !{!17, !9, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!18 = !{!11, !11, i64 0}
!19 = !{!20, !9, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !11, i64 8, !5, i64 16}
!21 = !{!5, !5, i64 0}
!22 = !{!20, !11, i64 8}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!25 = distinct !{!25, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN11OpenImageIO4v3_15TimerE", !28, i64 0, !28, i64 1, !11, i64 8, !11, i64 16, !9, i64 24}
!28 = !{!"bool", !5, i64 0}
!29 = !{!27, !28, i64 1}
!30 = !{!31, !4, i64 64}
!31 = !{!"_ZTSN11OpenImageIO4v3_13pvt11LoggedTimerE", !27, i64 0, !20, i64 32, !4, i64 64}
!32 = !{!33, !11, i64 0}
!33 = !{!"_ZTS8timespec", !11, i64 0, !11, i64 8}
!34 = !{!33, !11, i64 8}
!35 = !{!27, !11, i64 8}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"double", !5, i64 0}
!41 = !{!42, !4, i64 48}
!42 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !43, i64 64, !44, i64 72, !49, i64 96, !4, i64 120, !4, i64 124, !28, i64 128, !54, i64 136}
!43 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!44 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !45, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!48 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !10, i64 0}
!49 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !50, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!53 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!54 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !55, i64 0}
!55 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !56, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!59 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !10, i64 0}
!60 = !{!42, !4, i64 52}
!61 = !{!42, !4, i64 56}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!64 = distinct !{!64, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!65 = !{!66, !4, i64 8}
!66 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!67 = !{!66, !4, i64 12}
!68 = !{!69, !69, i64 0}
!69 = !{!"vtable pointer", !6, i64 0}
!70 = !{!71, !72, i64 16}
!71 = !{!"_ZTSSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EE", !66, i64 0, !72, i64 16}
!72 = !{!"p1 _ZTSN11OpenImageIO4v3_18ImageBufE", !10, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!75, !76, i64 0}
!75 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !76, i64 0}
!76 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!77 = distinct !{ptr @_ZNSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EE5resetIS2_EENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPS8_, ptr @_ZNSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!78 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!79 = distinct !{ptr @_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!80 = !{!81, !72, i64 0}
!81 = !{!"_ZTSSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EE", !72, i64 0, !75, i64 8}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!84 = distinct !{!84, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!87 = distinct !{!87, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!90 = distinct !{!90, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!91 = !{!92, !89}
!92 = distinct !{!92, !93, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!93 = distinct !{!93, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!96 = distinct !{!96, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!99 = distinct !{!99, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!100 = !{!101, !98}
!101 = distinct !{!101, !102, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!102 = distinct !{!102, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!103 = !{!104, !104, i64 0}
!104 = !{!"p1 _ZTSN11OpenImageIO4v3_110ImageInputE", !10, i64 0}
!105 = distinct !{null, null}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!108 = distinct !{!108, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!109 = !{!28, !28, i64 0}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!112 = distinct !{!112, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!113 = !{!114, !114, i64 0}
!114 = !{!"p1 _ZTSN11OpenImageIO4v3_111ImageOutputE", !10, i64 0}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEESB_RKT_DpOT0_: argument 0"}
!117 = distinct !{!117, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEESB_RKT_DpOT0_"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!120 = distinct !{!120, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!121 = !{!43, !5, i64 0}
!122 = !{i8 0, i8 2}
!123 = !{}
!124 = !{!27, !11, i64 16}
!125 = !{!126, !128, i64 32}
!126 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !127, i64 24, !128, i64 28, !128, i64 32, !129, i64 40, !130, i64 48, !5, i64 64, !4, i64 192, !131, i64 200, !132, i64 208}
!127 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!128 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!129 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!130 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !11, i64 8}
!131 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!132 = !{!"_ZTSSt6locale", !133, i64 0}
!133 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!134 = !{!135, !138, i64 240}
!135 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !126, i64 0, !136, i64 216, !5, i64 224, !28, i64 225, !137, i64 232, !138, i64 240, !139, i64 248, !140, i64 256}
!136 = !{!"p1 _ZTSSo", !10, i64 0}
!137 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 0}
!138 = !{!"p1 _ZTSSt5ctypeIcE", !10, i64 0}
!139 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!140 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!141 = !{!142, !5, i64 56}
!142 = !{!"_ZTSSt5ctypeIcE", !143, i64 0, !144, i64 16, !28, i64 24, !145, i64 32, !145, i64 40, !146, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!143 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!144 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!145 = !{!"p1 int", !10, i64 0}
!146 = !{!"p1 short", !10, i64 0}
!147 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA10_cJNS0_17basic_string_viewIcSt11char_traitsIcEEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEERKT_DpOT0_: argument 0"}
!150 = distinct !{!150, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA10_cJNS0_17basic_string_viewIcSt11char_traitsIcEEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEERKT_DpOT0_"}
!151 = !{!42, !4, i64 12}
!152 = !{!42, !4, i64 36}
!153 = !{!42, !4, i64 16}
!154 = !{!42, !4, i64 40}
!155 = !{!42, !5, i64 64}
end_hunk_3
