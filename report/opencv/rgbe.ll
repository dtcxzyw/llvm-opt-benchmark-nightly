Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rgbe?download=true
inline.NumInlined: 115
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z15RGBE_ReadPixelsP8_IO_FILEPfi:bb.a
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.h, ptr noundef nonnull align 1 dereferenceable(15) @.str.17, i64 15, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 15, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 31
  store i8 0, ptr %i.j, align 1, !tbaa !19
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZL10rgbe_erroriPKc, ptr noundef nonnull @.str.18, i32 noundef 88) #17
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.h
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.n = load i64, ptr %i.h, align 8, !tbaa !19
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.068, i64 8
  %i.q = load i8, ptr %i.c, align 1, !tbaa !19    ; 2 uses
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %_ZL10rgbe2floatPfS_S_Ph.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -136
  %i.t = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.s) #16
  %i.u = fptrunc double %i.t to float             ; 2 uses
  %i.v = load i8, ptr %i.a, align 1, !tbaa !19
  %i.w = uitofp i8 %i.v to float
  %i.x = fmul float %i.u, %i.w
  %i.y = load <2 x i8>, ptr %i.d, align 1, !tbaa !19
  %i.z = uitofp <2 x i8> %i.y to <2 x float>
  %i.aa = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.ab, %i.z
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %_ZL10rgbe2floatPfS_S_Ph.exit

_ZL10rgbe2floatPfS_S_Ph.exit:                     ; preds = %bb.f, %bb.g
  %.sink = phi float [ %i.x, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.ae = phi <2 x float> [ %i.ad, %bb.g ], [ zeroinitializer, %bb.f ]
  store <2 x float> %i.ae, ptr %.068, align 4, !tbaa !21
  store float %.sink, ptr %i.p, align 4, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %.068, i64 12
  %i.ag = icmp samesign ugt i32 %.in, 1
  br i1 %i.ag, label %bb.b, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %_ZL10rgbe2floatPfS_S_Ph.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_Z20RGBE_WritePixels_RLEP8_IO_FILEPfii(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca [2 x i8], align 1                 ; 9 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca [4 x i8], align 1                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.g = add i32 %2, -32768
  %or.cond = icmp ult i32 %i.g, -32760
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = mul nsw i32 %3, %2
  %i.i = tail call noundef i32 @_Z16RGBE_WritePixelsP8_IO_FILEPfi(ptr noundef %0, ptr noundef %1, i32 noundef %i.h) ; 0 uses
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  %i.j = shl nuw nsw i32 %2, 2
  %i.k = zext nneg i32 %i.j to i64
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #20 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %.preheader53

.preheader53:                                     ; preds = %bb.c
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %.lr.ph59, label %._crit_edge

.lr.ph59:                                         ; preds = %.preheader53
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.p = lshr i32 %2, 8
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.s = trunc i32 %2 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 3 ; 2 uses
  %i.u = shl nuw nsw i32 %2, 1
  %i.v = mul nuw nsw i32 %2, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.x = zext nneg i32 %2 to i64                  ; 4 uses
  %i.y = zext nneg i32 %i.u to i64
  %i.z = zext nneg i32 %i.v to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x
  %invariant.gep83 = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %invariant.gep85 = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.z
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = mul nsw i32 %3, %2
  %i.ab = tail call noundef i32 @_Z16RGBE_WritePixelsP8_IO_FILEPfi(ptr noundef %0, ptr noundef %1, i32 noundef %i.aa) ; 0 uses
  br label %bb.ai

.loopexit:                                        ; preds = %_ZL19RGBE_WriteBytes_RLEP8_IO_FILEPhi.exit
  %i.ac = icmp sgt i32 %.in, 1
  br i1 %i.ac, label %bb.e, label %._crit_edge, !llvm.loop !34

bb.e:                                             ; preds = %.lr.ph59, %.loopexit
  %.in = phi i32 [ %3, %.lr.ph59 ], [ %i.ad, %.loopexit ] ; 2 uses
  %.04858 = phi ptr [ %1, %.lr.ph59 ], [ %i.br, %.loopexit ]
  %i.ad = add nsw i32 %.in, -1
  store i8 2, ptr %i.f, align 1, !tbaa !19
  store i8 2, ptr %i.o, align 1, !tbaa !19
  store i8 %i.q, ptr %i.r, align 1, !tbaa !19
  store i8 %i.s, ptr %i.t, align 1, !tbaa !19
  %i.ae = call i64 @fwrite(ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef 1, ptr noundef %0)
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.f, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef %i.l) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ag, ptr %7, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 16, ptr %i.e, align 8, !tbaa !16
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc27.i unwind label %bb.h ; 2 uses

.noexc27.i:                                       ; preds = %bb.f
  store ptr %i.ah, ptr %7, align 8, !tbaa !18
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !16  ; 3 uses
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ah, ptr noundef nonnull align 1 dereferenceable(16) @.str.19, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !20
  %i.ak = load ptr, ptr %7, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZL10rgbe_erroriPKc, ptr noundef nonnull @.str.18, i32 noundef 91) #17
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.noexc27.i
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i

bb.i:                                             ; preds = %.noexc27.i
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ag
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.i
  %i.aq = load i64, ptr %i.ag, align 8, !tbaa !19
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i58.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i64.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i
  %common.resume.op = phi { ptr, i32 } [ %.pn16.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i ], [ %.pn16.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i ], [ %.pn16.i59.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i58.i ], [ %.pn16.i65.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i64.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i, %bb.h
  %.pn16.i = phi { ptr, i32 } [ %i.am, %bb.h ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i ], [ %i.an, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %common.resume

.preheader:                                       ; preds = %_ZL10float2rgbePhfff.exit
  store i8 %.sink30.i, ptr %i.t, align 1
  store i8 %.sink29.i, ptr %i.r, align 1
  store i8 %.sink28.i, ptr %i.o, align 1
  store i8 %.sink.i, ptr %i.f, align 1
  br label %.preheader.a

.lr.ph:                                           ; preds = %bb.e, %_ZL10float2rgbePhfff.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZL10float2rgbePhfff.exit ], [ 0, %bb.e ] ; 5 uses
  %.14955 = phi ptr [ %i.br, %_ZL10float2rgbePhfff.exit ], [ %.04858, %bb.e ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.14955, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !21 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.14955, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !21 ; 3 uses
  %i.aw = load float, ptr %.14955, align 4, !tbaa !21 ; 3 uses
  %i.ax = fcmp ogt float %i.av, %i.at
  %.0.i = select i1 %i.ax, float %i.av, float %i.at ; 2 uses
  %i.ay = fcmp ogt float %i.aw, %.0.i
  %.1.i = select i1 %i.ay, float %i.aw, float %.0.i ; 2 uses
  %i.az = fpext float %.1.i to double             ; 2 uses
  %i.ba = fcmp olt double %i.az, 1.000000e-32
  br i1 %i.ba, label %_ZL10float2rgbePhfff.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bb = tail call { float, i32 } @llvm.frexp.f32.i32(float %.1.i) ; 2 uses
  %i.bc = extractvalue { float, i32 } %i.bb, 1
  %i.bd = extractvalue { float, i32 } %i.bb, 0
  %i.be = fpext float %i.bd to double
  %i.bf = fmul double %i.be, 2.560000e+02
  %i.bg = fdiv double %i.bf, %i.az
  %i.bh = fptrunc double %i.bg to float           ; 3 uses
  %i.bi = fmul float %i.at, %i.bh
  %i.bj = fptoui float %i.bi to i8
  %i.bk = fmul float %i.av, %i.bh
  %i.bl = fptoui float %i.bk to i8
  %i.bm = fmul float %i.aw, %i.bh
  %i.bn = fptoui float %i.bm to i8
  %i.bo = trunc i32 %i.bc to i8
  %i.bp = xor i8 %i.bo, -128
  br label %_ZL10float2rgbePhfff.exit

_ZL10float2rgbePhfff.exit:                        ; preds = %.lr.ph, %bb.j
  %.sink30.i = phi i8 [ %i.bp, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %.sink29.i = phi i8 [ %i.bn, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %.sink28.i = phi i8 [ %i.bl, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %.sink.i = phi i8 [ %i.bj, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  store i8 %.sink.i, ptr %i.bq, align 1, !tbaa !19
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %.sink28.i, ptr %gep, align 1, !tbaa !19
  %gep84 = getelementptr inbounds nuw i8, ptr %invariant.gep83, i64 %indvars.iv
  store i8 %.sink29.i, ptr %gep84, align 1, !tbaa !19
  %gep86 = getelementptr inbounds nuw i8, ptr %invariant.gep85, i64 %indvars.iv
  store i8 %.sink30.i, ptr %gep86, align 1, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %.14955, i64 12 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !35

.preheader.a:                                     ; preds = %.preheader, %_ZL19RGBE_WriteBytes_RLEP8_IO_FILEPhi.exit
  %indvars.iv63 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next64, %_ZL19RGBE_WriteBytes_RLEP8_IO_FILEPhi.exit ] ; 2 uses
  %i.bs = mul nuw nsw i64 %indvars.iv63, %i.x
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bs ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ah, %.preheader.a
  %.05180.i = phi i32 [ 0, %.preheader.a ], [ %.3.i, %bb.ah ] ; 6 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i, %.preheader.i
  %.04976.i = phi i32 [ 0, %.preheader.i ], [ %.1.lcssa.i, %.critedge.i ] ; 4 uses
  %.05075.i = phi i32 [ %.05180.i, %.preheader.i ], [ %i.bu, %.critedge.i ]
  %i.bu = add nsw i32 %.05075.i, %.04976.i        ; 10 uses
  %i.bv = add nsw i32 %i.bu, 1                    ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %2
  br i1 %i.bw, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bx = sext i32 %i.bu to i64                   ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !19
  %i.ca = sext i32 %i.bv to i64
  %invariant.op.i = sub nsw i64 %i.x, %i.bx
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv82.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next83.i, %bb.m ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.ca, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.bt, i64 %indvars.iv.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !19
  %i.cd = icmp eq i8 %i.bz, %i.cc
  br i1 %i.cd, label %bb.m, label %.critedge.loopexit.i

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 3 uses
  %i.ce = icmp slt i64 %indvars.iv.next83.i, %invariant.op.i
  %i.cf = icmp samesign ult i64 %indvars.iv82.i, 126
  %or.cond.i = select i1 %i.ce, i1 %i.cf, i1 false
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %bb.l, label %.critedge.loopexit.i, !llvm.loop !36

.critedge.loopexit.i:                             ; preds = %bb.m, %bb.l
  %.1.lcssa.ph.in.i = phi i64 [ %indvars.iv82.i, %bb.l ], [ %indvars.iv.next83.i, %bb.m ]
  %.1.lcssa.ph.i = trunc i64 %.1.lcssa.ph.in.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.k
  %.1.lcssa.i = phi i32 [ 1, %bb.k ], [ %.1.lcssa.ph.i, %.critedge.loopexit.i ] ; 5 uses
  %i.cg = icmp samesign ult i32 %.1.lcssa.i, 4
  %i.ch = icmp slt i32 %i.bu, %2
  %i.ci = and i1 %i.ch, %i.cg
  br i1 %i.ci, label %bb.k, label %bb.n, !llvm.loop !37

bb.n:                                             ; preds = %.critedge.i
  %i.cj = icmp sgt i32 %.04976.i, 1
  %i.ck = sub nsw i32 %i.bu, %.05180.i
  %i.cl = icmp eq i32 %.04976.i, %i.ck
  %or.cond57.i = select i1 %i.cj, i1 %i.cl, i1 false
  br i1 %or.cond57.i, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.cm = trunc nuw nsw i32 %.04976.i to i8
  %i.cn = or disjoint i8 %i.cm, -128
  store i8 %i.cn, ptr %i.d, align 1, !tbaa !19
  %i.co = sext i32 %.05180.i to i64
  %i.cp = getelementptr inbounds i8, ptr %i.bt, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !19
  store i8 %i.cq, ptr %i.w, align 1, !tbaa !19
  %i.cr = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ct, ptr %6, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 16, ptr %i.c, align 8, !tbaa !16
  %i.cu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc27.i.i unwind label %bb.r ; 2 uses

.noexc27.i.i:                                     ; preds = %bb.p
  store ptr %i.cu, ptr %6, align 8, !tbaa !18
  %i.cv = load i64, ptr %i.c, align 8, !tbaa !16  ; 3 uses
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cu, ptr noundef nonnull align 1 dereferenceable(16) @.str.19, i64 16, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !20
  %i.cx = load ptr, ptr %6, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  store i8 0, ptr %i.cy, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZL10rgbe_erroriPKc, ptr noundef nonnull @.str.18, i32 noundef 91) #17
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %.noexc27.i.i
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i

bb.s:                                             ; preds = %.noexc27.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.ct
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i.i: ; preds = %bb.s
  %i.dd = load i64, ptr %i.ct, align 8, !tbaa !19
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i.i, %bb.r
  %.pn16.i.i = phi { ptr, i32 } [ %i.cz, %bb.r ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i.i ], [ %i.da, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %common.resume

bb.t:                                             ; preds = %bb.n
  %i.df = icmp slt i32 %.05180.i, %i.bu
  br i1 %i.df, label %.lr.ph78.i, label %._crit_edge.i

bb.u:                                             ; preds = %bb.z
  %i.dg = add nsw i32 %spec.store.select.i, %.277.i ; 3 uses
  %i.dh = icmp slt i32 %i.dg, %i.bu
  br i1 %i.dh, label %.lr.ph78.i, label %._crit_edge.i, !llvm.loop !38

.lr.ph78.i:                                       ; preds = %bb.t, %bb.u
  %.277.i = phi i32 [ %i.dg, %bb.u ], [ %.05180.i, %bb.t ] ; 3 uses
  %i.di = sub nsw i32 %i.bu, %.277.i
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %i.di, i32 128) ; 3 uses
  %i.dj = trunc nuw i32 %spec.store.select.i to i8
  store i8 %i.dj, ptr %i.d, align 1, !tbaa !19
  %i.dk = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.lr.ph78.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.dm, ptr %5, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 16, ptr %i.b, align 8, !tbaa !16
  %i.dn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc27.i60.i unwind label %bb.x ; 2 uses

.noexc27.i60.i:                                   ; preds = %bb.v
  store ptr %i.dn, ptr %5, align 8, !tbaa !18
  %i.do = load i64, ptr %i.b, align 8, !tbaa !16  ; 3 uses
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dn, ptr noundef nonnull align 1 dereferenceable(16) @.str.19, i64 16, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !20
  %i.dq = load ptr, ptr %5, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.do
  store i8 0, ptr %i.dr, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZL10rgbe_erroriPKc, ptr noundef nonnull @.str.18, i32 noundef 91) #17
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %.noexc27.i60.i
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i58.i

bb.y:                                             ; preds = %.noexc27.i60.i
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.dm
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i61.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i61.i: ; preds = %bb.y
  %i.dw = load i64, ptr %i.dm, align 8, !tbaa !19
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i58.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i58.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i61.i, %bb.x
  %.pn16.i59.i = phi { ptr, i32 } [ %i.ds, %bb.x ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i61.i ], [ %i.dt, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %common.resume

bb.z:                                             ; preds = %.lr.ph78.i
  %i.dy = sext i32 %.277.i to i64
  %i.dz = getelementptr inbounds i8, ptr %i.bt, i64 %i.dy
  %i.ea = sext i32 %spec.store.select.i to i64
  %i.eb = tail call i64 @fwrite(ptr noundef nonnull readonly %i.dz, i64 noundef %i.ea, i64 noundef 1, ptr noundef %0)
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.aa, label %bb.u

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
end_hunk_0
