Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/motion_stabilizing?download=true
inline.NumInlined: 328
inline.NumDeleted: 170
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !66
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !56
  %i.g = load i64, ptr %i.a, align 8, !tbaa !66
  store i64 %i.g, ptr %i.b, align 8, !tbaa !57
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !57
  store i8 %i.i, ptr %i.h, align 1, !tbaa !57
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !67
  %i.l = load ptr, ptr %0, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv9videostab25ensureInclusionConstraintERKNS_3MatENS_5Size_IiEEf(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i64 %2, float noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [4 x %"class.cv::Point_"], align 16 ; 11 uses
  %5 = alloca [4 x %"class.cv::Point_"], align 16 ; 5 uses
  %6 = alloca [4 x %"class.cv::Point_"], align 16 ; 11 uses
  %7 = alloca [4 x %"class.cv::Point_"], align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %10 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %13 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %14 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %15 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %16 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32
  %.sroa.2.0.extract.shift = lshr i64 %2, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv9videostab25ensureInclusionConstraintERKNS_3MatENS_5Size_IiEEfE25__cv_trace_location_fn640)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 4 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.6, i32 noundef 109) #23
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  unreachable

bb.d:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %8, align 8, !tbaa !56     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !57
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body

bb.e:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.l = icmp eq i32 %i.b, 2
  %i.m = zext i1 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !58
  %i.p = icmp eq i32 %i.o, 3
  %i.q = icmp eq i32 %i.b, 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 3
  %i.u = and i1 %i.q, %i.p
  %i.v = select i1 %i.u, i1 %i.t, i1 false
  br i1 %i.v, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %1, align 8, !tbaa !59
  %i.x = and i32 %i.w, 4095
  %i.y = icmp eq i32 %i.x, 5
  br i1 %i.y, label %bb.l, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.critedge
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv9videostab25ensureInclusionConstraintERKNS_3MatENS_5Size_IiEEf, ptr noundef nonnull @.str.1, i32 noundef 642) #23
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %11, align 8, !tbaa !56   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !57
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.z, %bb.j ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aa, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

bb.l:                                             ; preds = %bb.g
  %i.ag = sitofp i32 %.sroa.0.0.extract.trunc to float ; 4 uses
  %i.ah = sitofp i32 %.sroa.2.0.extract.trunc to float ; 5 uses
  %i.ai = fmul float %3, %i.ag
  %i.aj = call float @llvm.floor.f32(float %i.ai) ; 5 uses
  %i.ak = fmul float %3, %i.ah
  %i.al = call float @llvm.floor.f32(float %i.ak) ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !69 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = icmp slt i32 %i.an, 2                   ; 2 uses
  %i.at = load i64, ptr %i.aq, align 8            ; 2 uses
  %.sink.idx.i = select i1 %i.as, i64 0, i64 %i.at
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sink.idx.i ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sink.i, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.aw = load float, ptr %i.av, align 4, !tbaa !51 ; 2 uses
  %i.ax = shl i64 %i.at, 1
  %.sink.idx.i68 = select i1 %i.as, i64 0, i64 %i.ax
  %.sink.i69 = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sink.idx.i68 ; 3 uses
  %i.ay = load float, ptr %.sink.i69, align 4, !tbaa !51 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sink.i69, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink.i69, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bi = load <2 x float>, ptr %i.ap, align 4, !tbaa !51 ; 3 uses
  %i.bj = load <2 x float>, ptr %.sink.i, align 4, !tbaa !51 ; 2 uses
  %i.bk = load float, ptr %i.au, align 4, !tbaa !51 ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bi, <2 x float> %i.bj, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.bm = fadd <4 x float> %i.bl, <float 0.000000e+00, float -0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.bn = fadd float %i.bk, 0.000000e+00          ; 2 uses
  %i.bo = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 poison>
  %i.bp = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %i.br = shufflevector <4 x float> %i.bo, <4 x float> %i.bq, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.bs = fmul <4 x float> %i.br, zeroinitializer
  %i.bt = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.ag, i64 2 ; 2 uses
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.bv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.bu, <4 x float> %i.bs)
  %i.bw = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.by = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bz = insertelement <2 x float> %i.by, float 0.000000e+00, i64 0 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cb = load <2 x float>, ptr %i.ar, align 4, !tbaa !51 ; 4 uses
  %i.cc = load float, ptr %i.az, align 4, !tbaa !51 ; 3 uses
  %i.cd = load float, ptr %i.ba, align 4, !tbaa !51 ; 2 uses
  %i.ce = fadd float %i.cd, 0.000000e+00
  %i.cf = fmul float %i.cc, 0.000000e+00
  %i.cg = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ch = insertelement <4 x float> %i.cg, float %i.aw, i64 1
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cj = fadd <4 x float> %i.ci, %i.bv
  %i.ck = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bz, <2 x float> %i.cl)
  %i.cn = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = fadd <2 x float> %i.co, %i.cm
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cr = fdiv <4 x float> %i.cj, %i.cq
  store <4 x float> %i.cr, ptr %7, align 16, !tbaa !51
  %i.cs = insertelement <2 x float> %i.cb, float %i.bn, i64 1
  %i.ct = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = fmul <2 x float> %i.cs, %i.cu
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cx = fmul float %i.cc, %i.ah
  %17 = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cy = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.ag, i64 0 ; 2 uses
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 2 uses
  %i.da = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> %i.cz, <4 x float> %i.cw)
  %i.db = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dc = insertelement <2 x float> %i.db, float %i.aw, i64 1 ; 2 uses
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.de = fadd <4 x float> %i.dd, %i.da
  %i.df = shufflevector <4 x float> %i.cy, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.dg = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.df, <2 x float> %i.dh)
  %i.dj = fadd <2 x float> %i.co, %i.di
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dl = fdiv <4 x float> %i.de, %i.dk
  store <4 x float> %i.dl, ptr %i.ca, align 16, !tbaa !51
  store float %i.aj, ptr %6, align 16, !tbaa !51
  store float %i.al, ptr %i.bb, align 4, !tbaa !51
  %i.dm = fsub float %i.ag, %i.aj                 ; 4 uses
  store float %i.dm, ptr %i.bc, align 8, !tbaa !51
  store float %i.al, ptr %i.bd, align 4, !tbaa !51
  %i.dn = fsub float %i.ah, %i.al                 ; 4 uses
  store float %i.dm, ptr %i.be, align 16, !tbaa !51
  store float %i.dn, ptr %i.bf, align 4, !tbaa !51
  store float %i.aj, ptr %i.bg, align 8, !tbaa !51
  store float %i.dn, ptr %i.bh, align 4, !tbaa !51
  %i.do = call fastcc noundef zeroext i1 @_ZN2cv9videostabL12isRectInsideEPKNS_6Point_IfEES4_(ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %i.do, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dx = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ay, i64 0
  %i.dy = extractelement <2 x float> %i.bi, i64 0
  %i.dz = extractelement <2 x float> %i.bj, i64 0
  %i.ea = extractelement <2 x float> %i.cb, i64 0
  %i.eb = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.ac unwind label %bb.o

bb.n:                                             ; preds = %.preheader, %bb.n
  %.0101 = phi float [ 1.000000e+00, %.preheader ], [ %..0, %bb.n ] ; 2 uses
  %.036100 = phi float [ 0.000000e+00, %.preheader ], [ %.036., %bb.n ] ; 2 uses
  %i.ec = fadd float %.036100, %.0101
  %i.ed = fmul float %i.ec, 5.000000e-01          ; 6 uses
  %i.ee = fsub float 1.000000e+00, %i.ed          ; 7 uses
  %i.ef = call float @llvm.fmuladd.f32(float %i.dy, float %i.ee, float %i.ed)
  %i.eg = fmul float %i.ea, %i.ee                 ; 2 uses
  %i.eh = fmul float %i.dz, %i.ee
  %i.ei = call float @llvm.fmuladd.f32(float %i.bk, float %i.ee, float %i.ed) ; 2 uses
  %i.ej = fmul float %i.cc, %i.ee                 ; 2 uses
  %i.ek = call float @llvm.fmuladd.f32(float %i.cd, float %i.ee, float %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.el = insertelement <2 x float> poison, float %i.ee, i64 0 ; 2 uses
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> zeroinitializer
  %i.en = fmul <4 x float> %i.eb, %i.em           ; 2 uses
  %i.eo = insertelement <4 x float> poison, float %i.eg, i64 0
  %i.ep = insertelement <4 x float> %i.eo, float %i.ei, i64 1
  %i.eq = fmul <4 x float> %i.ep, <float 0.000000e+00, float 0.000000e+00, float poison, float poison>
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.es = insertelement <2 x float> %i.el, float %i.ej, i64 1
  %i.et = fmul <2 x float> %i.dx, %i.es           ; 2 uses
  %i.eu = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.ev = insertelement <4 x float> %i.eu, float %i.eh, i64 1
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ex = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> %i.bu, <4 x float> %i.er)
  %i.ey = fadd <4 x float> %i.en, %i.ex
  %i.ez = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fa = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.bz, <2 x float> %i.fa)
  %i.fc = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fe = fadd <2 x float> %i.fd, %i.fb
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.fg = fdiv <4 x float> %i.ey, %i.ff
  store <4 x float> %i.fg, ptr %5, align 16, !tbaa !51
  %i.fh = fmul float %i.ej, %i.ah
  %i.fi = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.ei, i64 1
  %i.fk = fmul <2 x float> %i.fj, %i.cu
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> %i.cz, <4 x float> %i.fl)
  %i.fn = fadd <4 x float> %i.en, %i.fm
  %i.fo = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.df, <2 x float> %i.fp)
  %i.fr = fadd <2 x float> %i.fd, %i.fq
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ft = fdiv <4 x float> %i.fn, %i.fs
  store <4 x float> %i.ft, ptr %i.dw, align 16, !tbaa !51
  store float %i.aj, ptr %4, align 16, !tbaa !51
  store float %i.al, ptr %i.dp, align 4, !tbaa !51
  store float %i.dm, ptr %i.dq, align 8, !tbaa !51
  store float %i.al, ptr %i.dr, align 4, !tbaa !51
  store float %i.dm, ptr %i.ds, align 16, !tbaa !51
  store float %i.dn, ptr %i.dt, align 4, !tbaa !51
  store float %i.aj, ptr %i.du, align 8, !tbaa !51
  store float %i.dn, ptr %i.dv, align 4, !tbaa !51
  %i.fu = call fastcc noundef zeroext i1 @_ZN2cv9videostabL12isRectInsideEPKNS_6Point_IfEES4_(ptr noundef %4, ptr noundef %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.036. = select i1 %i.fu, float %.036100, float %i.ed ; 2 uses
  %..0 = select i1 %i.fu, float %i.ed, float %.0101 ; 4 uses
  %i.fv = fsub float %..0, %.036.
  %i.fw = fcmp ogt float %i.fv, 1.000000e-03
  br i1 %i.fw, label %bb.n, label %bb.p, !llvm.loop !121

bb.o:                                             ; preds = %bb.b, %bb.m
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.fy = fsub float 1.000000e+00, %..0
  %i.fz = fpext float %i.fy to double
  invoke void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %14, double noundef %i.fz, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %16, i32 noundef 3, i32 noundef 3, i32 noundef 5)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ga = fpext float %..0 to double
  invoke void @_ZN2cvmlEdRKNS_7MatExprE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %15, double noundef %i.ga, ptr noundef nonnull align 8 dereferenceable(688) %16)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cvplERKNS_7MatExprES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(688) %14, ptr noundef nonnull align 8 dereferenceable(688) %15)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #22
  %i.gb = load ptr, ptr %13, align 8, !tbaa !34, !noalias !124 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !36
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  invoke void %i.ge(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull align 8 dereferenceable(688) %13, ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body74

.body74:                                          ; preds = %bb.t
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %13) #22
  br label %bb.y

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.t
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gg) #22
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gh) #22
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gi) #22
  %i.gj = getelementptr inbounds nuw i8, ptr %15, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gj) #22
  %i.gk = getelementptr inbounds nuw i8, ptr %15, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gk) #22
  %i.gl = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gl) #22
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gm) #22
  %i.gn = getelementptr inbounds nuw i8, ptr %16, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gn) #22
  %i.go = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.go) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.gp = getelementptr inbounds nuw i8, ptr %14, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gp) #22
  %i.gq = getelementptr inbounds nuw i8, ptr %14, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gq) #22
  %i.gr = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gr) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ac

bb.u:                                             ; preds = %bb.p
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.v:                                             ; preds = %bb.q
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

end_hunk_0
