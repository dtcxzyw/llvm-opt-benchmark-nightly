Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gfluidimgproc?download=true
inline.NumInlined: 3372
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN2cv6detail14scratch_helperILb1ENS_4gapi5fluid12GFluidResizeEJNS_4GMatENS_5Size_IiEEddiEE14help_init_implIJLi0ELi1ELi2ELi3ELi4EEEEvRKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EERNS3_6BufferENS0_3SeqIJXspT_EEEE:bb.a
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #26
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void

bb.p:                                             ; preds = %.invoke, %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.p, %bb.l, %bb.i, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.r, %bb.f ], [ %i.y, %bb.i ], [ %i.aq, %bb.p ], [ %i.ag, %bb.l ]
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !111 ; 3 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i34, label %_ZN2cv8GMatDescD2Ev.exit35, label %bb.q

bb.q:                                             ; preds = %.body
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !114
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #26
  br label %_ZN2cv8GMatDescD2Ev.exit35

_ZN2cv8GMatDescD2Ev.exit35:                       ; preds = %.body, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4gapi5fluid12GFluidResize11initScratchERKNS_8GMatDescENS_5Size_IiEEddiRNS1_6BufferE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1, double noundef %2, double noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.cv::GMatDesc", align 8     ; 11 uses
  %7 = alloca %"class.cv::gapi::fluid::Buffer", align 8 ; 7 uses
  %8 = alloca %"struct.cv::GMatDesc", align 8     ; 11 uses
  %9 = alloca %"class.cv::gapi::fluid::Buffer", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.a = load i32, ptr %0, align 8, !tbaa !91     ; 3 uses
  %i.b = icmp eq i32 %i.a, 0                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = icmp eq i32 %i.d, 3                      ; 2 uses
  %or.cond38 = select i1 %i.b, i1 %i.e, i1 false
  br i1 %or.cond38, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.a, 5
  %i.g = icmp eq i32 %i.d, 1
  %or.cond41 = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond41, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid12GFluidResize11initScratchERKNS_8GMatDescENS_5Size_IiEEddiRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 2192) #28
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %10, align 8, !tbaa !40    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.m = load i64, ptr %i.k, align 8, !tbaa !41
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %common.resume

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.o = icmp eq i32 %4, 1
  br i1 %i.o, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid12GFluidResize11initScratchERKNS_8GMatDescENS_5Size_IiEEddiRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 2193) #28
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.m:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %12, align 8, !tbaa !40    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.m
  %i.u = load i64, ptr %i.s, align 8, !tbaa !41
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.l
  %.pn31 = phi { ptr, i32 } [ %i.p, %bb.l ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.q, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %common.resume

bb.n:                                             ; preds = %bb.h
  %i.w = icmp eq i32 %.sroa.0.0.extract.trunc, 0
  %i.x = icmp eq i64 %.sroa.3.0.extract.shift, 0
  %or.cond = or i1 %i.w, %i.x
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load <2 x i32>, ptr %i.y, align 8, !tbaa !49
  %i.aa = sitofp <2 x i32> %i.z to <2 x double>
  %i.ab = insertelement <2 x double> poison, double %2, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %3, i64 1
  %i.ad = fmul <2 x double> %i.ac, %i.aa          ; 2 uses
  %i.ae = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ad)
  %i.af = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ag = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.af)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.024 = phi i32 [ %i.ae, %bb.o ], [ %.sroa.0.0.extract.trunc, %bb.n ] ; 12 uses
  %.0 = phi i32 [ %i.ag, %bb.o ], [ %.sroa.3.0.extract.trunc, %bb.n ] ; 11 uses
  br i1 %i.b, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %bb.p
  br i1 %i.e, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.035.0.copyload.i = load i32, ptr %i.ah, align 8, !tbaa !49
  %.sroa.637.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %reass.mul.i = mul i32 %.0, 6
  %reass.add = add i32 %.sroa.035.0.copyload.i, %.024
  %reass.mul = mul i32 %reass.add, 12
  %i.ai = add i32 %reass.mul, %reass.mul.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 0, ptr %i.aj, align 8, !tbaa !151
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 1, ptr %i.al, align 4, !tbaa !92
  store i32 0, ptr %8, align 8, !tbaa !91
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.0107.0.insert.ext = zext i32 %i.ai to i64
  %.sroa.0107.0.insert.insert = or disjoint i64 %.sroa.0107.0.insert.ext, 4294967296
  store i64 %.sroa.0107.0.insert.insert, ptr %i.am, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZN2cv4gapi5fluid6BufferC1ERKNS_8GMatDescE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.an = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv4gapi5fluid6BufferaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.t unwind label %bb.v       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ao = load i32, ptr %i.ah, align 8, !tbaa !152 ; 3 uses
  %16 = sitofp i32 %.024 to double
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fdiv double %16, %i.ap
  %i.ar = fdiv double 1.000000e+00, %i.aq
  %i.as = load i32, ptr %.sroa.637.0..sroa_idx.i, align 4, !tbaa !153 ; 2 uses
  %17 = sitofp i32 %.0 to double
  %i.at = sitofp i32 %i.as to double
  %i.au = fdiv double %17, %i.at
  %i.av = fdiv double 1.000000e+00, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !144
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !109
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !108 ; 2 uses
  %i.ba = sext i32 %.024 to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.ba ; 2 uses
  %i.bc = shl nsw i32 %.024, 2
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.bb, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.ba ; 2 uses
  %i.bg = sext i32 %.0 to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = icmp sgt i32 %.024, 0
  br i1 %i.bi, label %.lr.ph126, label %.preheader

.lr.ph126:                                        ; preds = %bb.t
  %i.bj = add nsw i32 %i.ao, -1
  %wide.trip.count143 = zext nneg i32 %.024 to i64
  br label %bb.w

.preheader:                                       ; preds = %bb.w, %bb.t
  %i.bk = icmp sgt i32 %.0, 0
  br i1 %i.bk, label %.lr.ph128.preheader, label %_ZN2cv4gapi5fluid17initScratchLinearIhNS1_6linear6MapperELi3EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit

.lr.ph128.preheader:                              ; preds = %.preheader
  %i.bl = zext nneg i32 %.0 to i64                ; 2 uses
  %invariant.gep161 = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.bl
  br label %.lr.ph128

bb.u:                                             ; preds = %bb.r
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4gapi5fluid6BufferD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph126, %bb.w
  %indvars.iv140 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next141, %bb.w ] ; 5 uses
  %i.bo = trunc nuw nsw i64 %indvars.iv140 to i32
  %i.bp = uitofp nneg i32 %i.bo to double
  %i.bq = fadd double %i.bp, 5.000000e-01
  %i.br = call double @llvm.fmuladd.f64(double %i.bq, double %i.ar, double -5.000000e-01)
  %i.bs = fptrunc double %i.br to float           ; 2 uses
  %i.bt = call float @llvm.floor.f32(float %i.bs)
  %i.bu = fptosi float %i.bt to i32               ; 4 uses
  %i.bv = sitofp i32 %i.bu to float
  %i.bw = fsub float %i.bs, %i.bv                 ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.bu, i32 0) ; 2 uses
  %i.bx = fcmp une float %i.bw, 0.000000e+00
  %i.by = add nsw i32 %i.bu, 1
  %.not.i53 = icmp slt i32 %i.by, %i.ao
  %or.cond.i = select i1 %i.bx, i1 %.not.i53, i1 false
  %i.bz = zext i1 %or.cond.i to i32
  %i.ca = add nsw i32 %i.bz, %i.bu
  %i.cb = fsub float 1.000000e+00, %i.bw
  %i.cc = fmul float %i.cb, 3.276800e+04
  %i.cd = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.ce = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.cd)
  %i.cf = call i32 @llvm.smax.i32(i32 %i.ce, i32 -32768)
  %i.cg = call i32 @llvm.smin.i32(i32 %i.cf, i32 32767)
  %i.ch = and i32 %i.ca, 65535
  %.sroa.4.0.insert.ext.i = zext nneg i32 %i.ch to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 48
  %.sroa.016.0.extract.trunc.i = trunc nsw i32 %i.cg to i16
  %.sroa.518.0.extract.trunc.i = trunc i32 %.sroa.speculated.i to i16
  %i.ci = ashr exact i64 %.sroa.4.0.insert.shift.i, 48
  %i.cj = trunc nsw i64 %i.ci to i32
  %sext = shl i32 %.sroa.speculated.i, 16
  %i.ck = ashr exact i32 %sext, 16                ; 2 uses
  %i.cl = add nsw i32 %i.ck, 1
  %.not.i = icmp ne i32 %i.cl, %i.cj              ; 2 uses
  %i.cm = icmp sle i32 %i.bj, %i.ck               ; 2 uses
  %spec.select = select i1 %i.cm, i16 0, i16 32767
  %.059.i = select i1 %.not.i, i16 %spec.select, i16 %.sroa.016.0.extract.trunc.i ; 2 uses
  %narrow = select i1 %.not.i, i1 %i.cm, i1 false
  %spec.select117 = sext i1 %narrow to i16
  %.058.i = add i16 %.sroa.518.0.extract.trunc.i, %spec.select117
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %indvars.iv140
  store i16 %.059.i, ptr %i.cn, align 2, !tbaa !146
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv140
  store i16 %.058.i, ptr %i.co, align 2, !tbaa !146
  %.idx172 = shl nuw nsw i64 %indvars.iv140, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx172
  %i.cq = insertelement <4 x i16> poison, i16 %.059.i, i64 0
  %i.cr = shufflevector <4 x i16> %i.cq, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.cr, ptr %i.cp, align 2, !tbaa !146
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %.preheader, label %bb.w, !llvm.loop !267

.lr.ph128:                                        ; preds = %.lr.ph128.preheader, %.lr.ph128
  %indvars.iv145 = phi i64 [ 0, %.lr.ph128.preheader ], [ %indvars.iv.next146, %.lr.ph128 ] ; 5 uses
  %i.cs = trunc nuw nsw i64 %indvars.iv145 to i32
  %i.ct = uitofp nneg i32 %i.cs to double
  %i.cu = fadd double %i.ct, 5.000000e-01
  %i.cv = call double @llvm.fmuladd.f64(double %i.cu, double %i.av, double -5.000000e-01)
  %i.cw = fptrunc double %i.cv to float           ; 2 uses
  %i.cx = call float @llvm.floor.f32(float %i.cw)
  %i.cy = fptosi float %i.cx to i32               ; 4 uses
  %i.cz = sitofp i32 %i.cy to float
  %i.da = fsub float %i.cw, %i.cz                 ; 2 uses
  %.sroa.speculated.i54 = call i32 @llvm.smax.i32(i32 %i.cy, i32 0)
  %i.db = fcmp une float %i.da, 0.000000e+00
  %i.dc = add nsw i32 %i.cy, 1
  %.not.i55 = icmp slt i32 %i.dc, %i.as
  %or.cond.i56 = select i1 %i.db, i1 %.not.i55, i1 false
  %i.dd = zext i1 %or.cond.i56 to i32
  %i.de = add nsw i32 %i.dd, %i.cy
  %i.df = fsub float 1.000000e+00, %i.da
  %i.dg = fmul float %i.df, 3.276800e+04
  %i.dh = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.di = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dh)
  %i.dj = call i32 @llvm.smax.i32(i32 %i.di, i32 -32768)
  %i.dk = call i32 @llvm.smin.i32(i32 %i.dj, i32 32767)
  %.sroa.0.0.extract.trunc.i = trunc nsw i32 %i.dk to i16
  %.sroa.51.0.extract.trunc.i = trunc i32 %.sroa.speculated.i54 to i16
  %.sroa.6.0.extract.trunc.i = trunc i32 %i.de to i16
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv145
  store i16 %.sroa.0.0.extract.trunc.i, ptr %i.dl, align 2, !tbaa !146
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv145
  store i16 %.sroa.51.0.extract.trunc.i, ptr %i.dm, align 2, !tbaa !146
  %gep162 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep161, i64 %indvars.iv145
  store i16 %.sroa.6.0.extract.trunc.i, ptr %gep162, align 2, !tbaa !146
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %i.bl
  br i1 %exitcond149.not, label %_ZN2cv4gapi5fluid17initScratchLinearIhNS1_6linear6MapperELi3EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit, label %.lr.ph128, !llvm.loop !268

bb.x:                                             ; preds = %bb.v, %bb.u
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.bn, %bb.v ], [ %i.bm, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.dn = load ptr, ptr %i.ak, align 8, !tbaa !111 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !114
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #26
  br label %_ZN2cv8GMatDescD2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZN2cv8GMatDescD2Ev.exit84, %_ZN2cv8GMatDescD2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %_ZN2cv8GMatDescD2Ev.exit ], [ %.pn.pn.pn.pn.pn.i43, %_ZN2cv8GMatDescD2Ev.exit84 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume

_ZN2cv4gapi5fluid17initScratchLinearIhNS1_6linear6MapperELi3EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit: ; preds = %.lr.ph128, %.preheader
  call void @_ZN2cv4gapi5fluid6BufferD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.dt = load ptr, ptr %i.ak, align 8, !tbaa !111 ; 3 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i66, label %_ZN2cv8GMatDescD2Ev.exit67, label %bb.z

bb.z:                                             ; preds = %_ZN2cv4gapi5fluid17initScratchLinearIhNS1_6linear6MapperELi3EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !114
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #26
  br label %_ZN2cv8GMatDescD2Ev.exit67

_ZN2cv8GMatDescD2Ev.exit67:                       ; preds = %_ZN2cv4gapi5fluid17initScratchLinearIhNS1_6linear6MapperELi3EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.aq

bb.aa:                                            ; preds = %bb.p
  %i.dz = icmp eq i32 %i.a, 5
  %i.ea = icmp eq i32 %i.d, 1
  %or.cond118 = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond118, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.035.0.copyload.i42 = load i32, ptr %i.eb, align 8, !tbaa !49
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.ec = mul i32 %.024, 24
  %i.ed = shl i32 %.sroa.035.0.copyload.i42, 4
  %reass.mul.i68 = mul i32 %.0, 12
  %i.ee = add i32 %reass.mul.i68, %i.ec
  %i.ef = add i32 %i.ee, %i.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.eg, align 8, !tbaa !151
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 1, ptr %i.ei, align 4, !tbaa !92
  store i32 0, ptr %6, align 8, !tbaa !91
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0115.0.insert.ext = zext i32 %i.ef to i64
  %.sroa.0115.0.insert.insert = or disjoint i64 %.sroa.0115.0.insert.ext, 4294967296
  store i64 %.sroa.0115.0.insert.insert, ptr %i.ej, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZN2cv4gapi5fluid6BufferC1ERKNS_8GMatDescE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ek = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv4gapi5fluid6BufferaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.ad unwind label %bb.af     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.el = sitofp i32 %.024 to double
  %18 = sitofp i32 %.0 to double
  %i.em = load <2 x i32>, ptr %i.eb, align 8, !tbaa !49
  %i.en = sitofp <2 x i32> %i.em to <2 x double>  ; 2 uses
  %i.eo = extractelement <2 x double> %i.en, i64 0
  %i.ep = fdiv double %i.el, %i.eo
  %i.eq = fdiv double 1.000000e+00, %i.ep
  %i.er = extractelement <2 x double> %i.en, i64 1
  %i.es = fdiv double %18, %i.er
  %i.et = fdiv double 1.000000e+00, %i.es         ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !144
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !109
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !108 ; 3 uses
  %i.ey = sext i32 %.024 to i64                   ; 3 uses
  %i.ez = getelementptr [4 x i8], ptr %i.ex, i64 %i.ey ; 2 uses
  %i.fa = shl i32 %.024, 2
  %i.fb = sext i32 %i.fa to i64                   ; 2 uses
  %i.fc = getelementptr [4 x i8], ptr %i.ez, i64 %i.fb ; 2 uses
  %i.fd = getelementptr [4 x i8], ptr %i.fc, i64 %i.ey ; 3 uses
  %i.fe = sext i32 %.0 to i64                     ; 2 uses
  %i.ff = getelementptr [4 x i8], ptr %i.fd, i64 %i.fe ; 4 uses
  %i.fg = icmp sgt i32 %.024, 0
  br i1 %i.fg, label %.lr.ph.preheader, label %.preheader119

.lr.ph.preheader:                                 ; preds = %bb.ad
  %wide.trip.count = zext nneg i32 %.024 to i64
  br label %.lr.ph

.preheader119:                                    ; preds = %bb.ai, %bb.ad
  %i.fh = icmp sgt i32 %.0, 0
  br i1 %i.fh, label %.lr.ph123.preheader, label %_ZN2cv4gapi5fluid17initScratchLinearIfNS1_9linear32f6MapperELi1EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit

.lr.ph123.preheader:                              ; preds = %.preheader119
  %i.fi = zext nneg i32 %.0 to i64                ; 5 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fi ; 4 uses
  %min.iters.check = icmp ult i32 %.0, 4
  br i1 %min.iters.check, label %.lr.ph123.preheader173, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123.preheader
  %i.fj = add nsw i64 %i.ey, %i.fi
  %i.fk = shl nsw i64 %i.fj, 3
  %i.fl = add nsw i64 %i.fe, %i.fb
  %i.fm = shl nsw i64 %i.fl, 2
  %i.fn = getelementptr i8, ptr %i.ex, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.fk
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %bound0 = icmp ult ptr %invariant.gep, %i.fp
  %bound1 = icmp ult ptr %.sroa.6.0..sroa_idx.i, %i.fo
  %found.conflict = and i1 %bound0, %bound1
  %bound0167 = icmp ult ptr %i.ff, %i.fp
  %bound1168 = icmp ult ptr %.sroa.6.0..sroa_idx.i, %invariant.gep
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx = or i1 %found.conflict, %found.conflict169
  br i1 %conflict.rdx, label %.lr.ph123.preheader173, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fi, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.et, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.fq = load <1 x i32>, ptr %.sroa.6.0..sroa_idx.i, align 4
  %broadcast.splat171 = shufflevector <1 x i32> %i.fq, <1 x i32> poison, <4 x i32> zeroinitializer
  %i.fr = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.fs = fadd <4 x double> %i.fr, splat (double 5.000000e-01)
  %i.ft = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fs, <4 x double> %broadcast.splat, <4 x double> splat (double -5.000000e-01))
  %i.fu = fptrunc <4 x double> %i.ft to <4 x float> ; 2 uses
  %i.fv = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.fu)
  %i.fw = fptosi <4 x float> %i.fv to <4 x i32>   ; 4 uses
  %i.fx = sitofp <4 x i32> %i.fw to <4 x float>
  %i.fy = fsub <4 x float> %i.fu, %i.fx           ; 2 uses
  %i.fz = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fw, <4 x i32> zeroinitializer)
  %i.ga = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fy)
  %i.gb = fcmp ugt <4 x float> %i.ga, splat (float f0x34000000)
  %i.gc = add nsw <4 x i32> %i.fw, splat (i32 1)
  %i.gd = icmp slt <4 x i32> %i.gc, %broadcast.splat171
  %i.ge = select <4 x i1> %i.gb, <4 x i1> %i.gd, <4 x i1> zeroinitializer
  %i.gf = zext <4 x i1> %i.ge to <4 x i32>
  %i.gg = add nsw <4 x i32> %i.gf, %i.fw
  %i.gh = fsub <4 x float> splat (float 1.000000e+00), %i.fy
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %index
  store <4 x float> %i.gh, ptr %i.gi, align 4, !tbaa !149
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %index
  store <4 x i32> %i.fz, ptr %i.gj, align 4, !tbaa !49, !alias.scope !276, !noalias !277
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x i32> %i.gg, ptr %i.gk, align 4, !tbaa !49, !alias.scope !278, !noalias !277
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %middle.block, label %vector.body, !llvm.loop !273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fi
  br i1 %cmp.n, label %_ZN2cv4gapi5fluid17initScratchLinearIfNS1_9linear32f6MapperELi1EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit, label %.lr.ph123.preheader173

.lr.ph123.preheader173:                           ; preds = %vector.memcheck, %.lr.ph123.preheader, %middle.block
  %indvars.iv131.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph123.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph123

bb.ae:                                            ; preds = %bb.ab
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.af:                                            ; preds = %bb.ac
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4gapi5fluid6BufferD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #24
  br label %bb.aj

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ai ] ; 5 uses
  %i.go = load i32, ptr %i.eb, align 8, !tbaa !152 ; 2 uses
  %i.gp = trunc nuw nsw i64 %indvars.iv to i32
  %i.gq = uitofp nneg i32 %i.gp to double
  %i.gr = fadd double %i.gq, 5.000000e-01
  %i.gs = call double @llvm.fmuladd.f64(double %i.gr, double %i.eq, double -5.000000e-01)
  %i.gt = fptrunc double %i.gs to float           ; 2 uses
  %i.gu = call float @llvm.floor.f32(float %i.gt)
  %i.gv = fptosi float %i.gu to i32               ; 4 uses
  %i.gw = sitofp i32 %i.gv to float
  %i.gx = fsub float %i.gt, %i.gw                 ; 2 uses
  %.sroa.speculated.i69 = call i32 @llvm.smax.i32(i32 %i.gv, i32 0) ; 5 uses
  %i.gy = call noundef float @llvm.fabs.f32(float %i.gx)
  %i.gz = fcmp ugt float %i.gy, f0x34000000
  %i.ha = add nsw i32 %i.gv, 1
  %.not.i70 = icmp slt i32 %i.ha, %i.go
  %or.cond.i71 = select i1 %i.gz, i1 %.not.i70, i1 false
  %i.hb = zext i1 %or.cond.i71 to i32
  %i.hc = add nsw i32 %i.hb, %i.gv
  %i.hd = fsub float 1.000000e+00, %i.gx
  %i.he = add nuw nsw i32 %.sroa.speculated.i69, 1
  %.not.i47 = icmp eq i32 %i.he, %i.hc
  br i1 %.not.i47, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph
  %i.hf = add nsw i32 %i.go, -1
  %i.hg = icmp sgt i32 %i.hf, %.sroa.speculated.i69
  br i1 %i.hg, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hh = add nsw i32 %.sroa.speculated.i69, -1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %.lr.ph
  %.058.i48 = phi float [ %i.hd, %.lr.ph ], [ 0.000000e+00, %bb.ah ], [ 1.000000e+00, %bb.ag ] ; 2 uses
  %.057.i49 = phi i32 [ %.sroa.speculated.i69, %.lr.ph ], [ %i.hh, %bb.ah ], [ %.sroa.speculated.i69, %bb.ag ]
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv
  store float %.058.i48, ptr %i.hi, align 4, !tbaa !149
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv
  store i32 %.057.i49, ptr %i.hj, align 4, !tbaa !49
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.idx
  %i.hl = insertelement <4 x float> poison, float %.058.i48, i64 0
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.hm, ptr %i.hk, align 4, !tbaa !149
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader119, label %.lr.ph, !llvm.loop !274

.lr.ph123:                                        ; preds = %.lr.ph123.preheader173, %.lr.ph123
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %.lr.ph123 ], [ %indvars.iv131.ph, %.lr.ph123.preheader173 ] ; 5 uses
  %i.hn = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !153
  %i.ho = trunc nuw nsw i64 %indvars.iv131 to i32
  %i.hp = uitofp nneg i32 %i.ho to double
  %i.hq = fadd double %i.hp, 5.000000e-01
  %i.hr = call double @llvm.fmuladd.f64(double %i.hq, double %i.et, double -5.000000e-01)
  %i.hs = fptrunc double %i.hr to float           ; 2 uses
  %i.ht = call float @llvm.floor.f32(float %i.hs)
  %i.hu = fptosi float %i.ht to i32               ; 4 uses
  %i.hv = sitofp i32 %i.hu to float
  %i.hw = fsub float %i.hs, %i.hv                 ; 2 uses
  %.sroa.speculated.i72 = call i32 @llvm.smax.i32(i32 %i.hu, i32 0)
  %i.hx = call noundef float @llvm.fabs.f32(float %i.hw)
  %i.hy = fcmp ugt float %i.hx, f0x34000000
  %i.hz = add nsw i32 %i.hu, 1
  %.not.i73 = icmp slt i32 %i.hz, %i.hn
  %or.cond.i74 = select i1 %i.hy, i1 %.not.i73, i1 false
  %i.ia = zext i1 %or.cond.i74 to i32
  %i.ib = add nsw i32 %i.ia, %i.hu
  %i.ic = fsub float 1.000000e+00, %i.hw
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv131
  store float %i.ic, ptr %i.id, align 4, !tbaa !149
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv131
  store i32 %.sroa.speculated.i72, ptr %i.ie, align 4, !tbaa !49
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  store i32 %i.ib, ptr %gep, align 4, !tbaa !49
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %i.fi
  br i1 %exitcond135.not, label %_ZN2cv4gapi5fluid17initScratchLinearIfNS1_9linear32f6MapperELi1EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit, label %.lr.ph123, !llvm.loop !275

bb.aj:                                            ; preds = %bb.af, %bb.ae
  %.pn.pn.pn.pn.pn.i43 = phi { ptr, i32 } [ %i.gn, %bb.af ], [ %i.gm, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.if = load ptr, ptr %i.eh, align 8, !tbaa !111 ; 3 uses
  %.not.i.i.i.i83 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i83, label %_ZN2cv8GMatDescD2Ev.exit84, label %bb.ak

end_hunk_0
