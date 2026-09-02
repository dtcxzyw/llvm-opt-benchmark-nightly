Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ippe?download=true
inline.NumInlined: 985
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv4IPPE10PoseSolver18solveCanonicalFormERKNS_11_InputArrayES4_RKNS_4MatxIdLi3ELi3EEERKNS_12_OutputArrayESB_:bb.a
bb.w:                                             ; preds = %bb.g, %bb.f
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  br label %bb.at

bb.x:                                             ; preds = %bb.i, %bb.h
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  br label %bb.at

bb.y:                                             ; preds = %bb.j
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn53 = phi { ptr, i32 } [ %i.ce, %bb.z ], [ %i.cd, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  br label %bb.as

bb.ab:                                            ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn55 = phi { ptr, i32 } [ %i.cg, %bb.ac ], [ %i.cf, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  br label %bb.ar

bb.ae:                                            ; preds = %bb.n
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  br label %bb.aq

bb.af:                                            ; preds = %bb.o
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.p
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #15
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn60 = phi { ptr, i32 } [ %i.cj, %bb.ag ], [ %i.ci, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #15
  br label %bb.ap

bb.ai:                                            ; preds = %bb.q
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #15
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn62 = phi { ptr, i32 } [ %i.cl, %bb.aj ], [ %i.ck, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  br label %bb.ao

bb.al:                                            ; preds = %bb.s
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  br label %bb.an

bb.am:                                            ; preds = %bb.t
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn67.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.am ], [ %i.cm, %bb.al ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #15
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.pn67.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn, %bb.an ], [ %.pn62, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #15
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ah
  %.pn67.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn.pn, %bb.ao ], [ %.pn60, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ae
  %.pn67.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn.pn.pn, %bb.ap ], [ %i.ch, %bb.ae ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #15
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ad
  %.pn67.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn.pn.pn.pn, %bb.aq ], [ %.pn55, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #15
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aa
  %.pn67.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn.pn.pn.pn.pn, %bb.ar ], [ %.pn53, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.x, %bb.w
  %.pn67.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn.pn.pn.pn.pn.pn, %bb.as ], [ %i.cb, %bb.w ], [ %i.cc, %bb.x ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #15
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.v
  %.pn67.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn.pn.pn.pn.pn.pn.pn, %bb.at ], [ %i.ca, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  resume { ptr, i32 } %.pn67.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #15
  ret void
}

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv4IPPE10PoseSolver16computeRotationsEddddddRKNS_12_OutputArrayES4_(ptr nofree nonnull readnone align 8 captures(none) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 9 uses
  tail call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 3, i32 noundef 3, i32 noundef 6, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  tail call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 3, i32 noundef 3, i32 noundef 6, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  %i.a = fmul double %6, %6
  %i.b = tail call double @llvm.fmuladd.f64(double %5, double %5, double %i.a)
  %i.c = fadd double %i.b, 1.000000e+00
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.c) ; 2 uses
  %i.d = fdiv double 1.000000e+00, %sqrt.i
  %i.e = fadd double %i.d, 1.000000e+00           ; 2 uses
  %i.f = tail call noundef double @llvm.fabs.f64(double %i.e)
  %i.g = fcmp olt double %i.f, f0x3E80000000000000
  br i1 %i.g, label %_ZN2cv4IPPE10PoseSolver15rotateVec2ZAxisERKNS_4MatxIdLi3ELi1EEERNS2_IdLi3ELi3EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = insertelement <2 x double> poison, double %6, i64 0
  %i.i = insertelement <2 x double> %i.h, double %5, i64 1
  %i.j = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fdiv <2 x double> %i.i, %i.k             ; 5 uses
  %i.m = fdiv double 1.000000e+00, %i.e           ; 3 uses
  %i.n = extractelement <2 x double> %i.l, i64 1  ; 2 uses
  %i.o = extractelement <2 x double> %i.l, i64 0
  %i.p = fneg <2 x double> %i.l                   ; 2 uses
  %i.q = extractelement <2 x double> %i.p, i64 0  ; 2 uses
  %i.r = fmul double %i.n, %i.q
  %i.s = fmul double %i.r, %i.m                   ; 4 uses
  %i.t = fmul <2 x double> %i.l, %i.l             ; 3 uses
  %i.u = fneg <2 x double> %i.t
  %i.v = insertelement <2 x double> poison, double %i.m, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.w, <2 x double> splat (double 1.000000e+00)) ; 4 uses
  %shift = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.t
  %i.y = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.z = fneg double %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.m, double 1.000000e+00)
  %15 = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  %16 = insertelement <4 x double> %15, double %i.s, i64 1
  %17 = shufflevector <4 x double> %16, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ab = insertelement <2 x double> %i.x, double %i.s, i64 0
  %i.ac = insertelement <2 x double> %i.x, double %i.s, i64 1
  br label %_ZN2cv4IPPE10PoseSolver15rotateVec2ZAxisERKNS_4MatxIdLi3ELi1EEERNS2_IdLi3ELi3EEE.exit

_ZN2cv4IPPE10PoseSolver15rotateVec2ZAxisERKNS_4MatxIdLi3ELi1EEERNS2_IdLi3ELi3EEE.exit: ; preds = %bb.a, %bb.b
  %.sroa.33.0 = phi double [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ] ; 5 uses
  %.sroa.29.0 = phi double [ %i.n, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %.sroa.25.0 = phi double [ %i.q, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.sroa.17.0 = phi double [ %i.s, %bb.b ], [ 0.000000e+00, %bb.a ] ; 4 uses
  %.sink.i = phi double [ %i.aa, %bb.b ], [ -1.000000e+00, %bb.a ] ; 5 uses
  %i.ad = phi <2 x double> [ %i.p, %bb.b ], [ zeroinitializer, %bb.a ] ; 4 uses
  %18 = phi <4 x double> [ %17, %bb.b ], [ <double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00>, %bb.a ] ; 3 uses
  %i.ae = phi <2 x double> [ %i.ab, %bb.b ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.a ]
  %i.af = phi <2 x double> [ %i.ac, %bb.b ], [ <double 1.000000e+00, double 0.000000e+00>, %bb.a ]
  %i.ag = phi <2 x double> [ %i.x, %bb.b ], [ splat (double 1.000000e+00), %bb.a ] ; 2 uses
  %i.ah = shufflevector <2 x double> %i.ad, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ai = insertelement <2 x double> poison, double %6, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %5, i64 1
  %i.ak = fneg <2 x double> %i.aj
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.am = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.al, <4 x double> %i.ah, <4 x double> %18) ; 5 uses
  %i.an = extractelement <4 x double> %i.am, i64 2
  %i.ao = fneg double %i.an
  %i.ap = extractelement <4 x double> %i.am, i64 1
  %i.aq = fmul double %i.ap, %i.ao
  %i.ar = extractelement <4 x double> %i.am, i64 0
  %i.as = extractelement <4 x double> %i.am, i64 3
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ar, double %i.aq)
  %i.au = fdiv double 1.000000e+00, %i.at         ; 2 uses
  %i.av = fneg double %i.au
  %i.aw = insertelement <4 x double> poison, double %i.au, i64 0
  %i.ax = insertelement <4 x double> %i.aw, double %i.av, i64 1
  %i.ay = shufflevector <4 x double> %i.ax, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.az = fmul <4 x double> %i.am, %i.ay          ; 4 uses
  %i.ba = insertelement <2 x double> poison, double %3, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %4, i64 1 ; 2 uses
  %i.bc = shufflevector <4 x double> %i.az, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = fmul <2 x double> %i.bb, %i.bc
  %i.be = shufflevector <4 x double> %i.az, <4 x double> poison, <2 x i32> zeroinitializer
  %i.bf = insertelement <2 x double> poison, double %1, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %2, i64 1 ; 2 uses
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.bg, <2 x double> %i.bd) ; 5 uses
  %i.bi = shufflevector <4 x double> %i.az, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.bj = fmul <2 x double> %i.bb, %i.bi
  %i.bk = shufflevector <4 x double> %i.az, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bg, <2 x double> %i.bj) ; 5 uses
  %i.bm = extractelement <2 x double> %i.bh, i64 0
  %foldExtExtBinop331 = fmul <2 x double> %i.bh, %i.bl
  %i.bn = extractelement <2 x double> %foldExtExtBinop331, i64 1
  %i.bo = extractelement <2 x double> %i.bl, i64 0
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bo, double %i.bn) ; 2 uses
  %i.bq = shufflevector <2 x double> %i.bh, <2 x double> %i.bl, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.br = fmul <2 x double> %i.bq, %i.bq
  %i.bs = shufflevector <2 x double> %i.bh, <2 x double> %i.bl, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.bs, <2 x double> %i.br) ; 2 uses
  %i.bu = extractelement <2 x double> %i.bt, i64 0 ; 2 uses
  %i.bv = extractelement <2 x double> %i.bt, i64 1 ; 2 uses
  %i.bw = fadd double %i.bu, %i.bv
  %i.bx = fsub double %i.bu, %i.bv                ; 2 uses
  %i.by = fmul double %i.bp, 4.000000e+00
  %i.bz = fmul double %i.bp, %i.by
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bx, double %i.bz)
  %i.cb = tail call double @sqrt(double noundef %i.ca) #15
  %i.cc = fadd double %i.cb, %i.bw
  %i.cd = fmul double %i.cc, 5.000000e-01         ; 2 uses
  %i.ce = fcmp olt double %i.cd, 0.000000e+00
  br i1 %i.ce, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZN2cv4IPPE10PoseSolver15rotateVec2ZAxisERKNS_4MatxIdLi3ELi1EEERNS2_IdLi3ELi3EEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -7, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv4IPPE10PoseSolver16computeRotationsEddddddRKNS_12_OutputArrayES4_, ptr noundef nonnull @.str.1, i32 noundef 459) #16
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !36
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn270 = phi { ptr, i32 } [ %i.cf, %bb.f ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cg, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.u

bb.h:                                             ; preds = %_ZN2cv4IPPE10PoseSolver15rotateVec2ZAxisERKNS_4MatxIdLi3ELi1EEERNS2_IdLi3ELi3EEE.exit
  %i.cm = tail call double @sqrt(double noundef %i.cd) #15 ; 2 uses
  %i.cn = tail call double @llvm.fabs.f64(double %i.cm)
  %i.co = fcmp olt double %i.cn, f0x3E80000000000000
  br i1 %i.co, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -7, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv4IPPE10PoseSolver16computeRotationsEddddddRKNS_12_OutputArrayES4_, ptr noundef nonnull @.str.1, i32 noundef 464) #16
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

bb.m:                                             ; preds = %bb.j
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %11, align 8, !tbaa !35   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.m
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !36
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273, %bb.l
  %.pn267 = phi { ptr, i32 } [ %i.cp, %bb.l ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273 ], [ %i.cq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.u

bb.n:                                             ; preds = %bb.h
  %i.cw = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cy = fdiv <2 x double> %i.bh, %i.cx          ; 7 uses
  %i.cz = fdiv <2 x double> %i.bl, %i.cx          ; 8 uses
  %i.da = fmul <2 x double> %i.cz, %i.cz
  %i.db = fneg <2 x double> %i.cy                 ; 3 uses
  %i.dc = fmul <2 x double> %i.cy, %i.db
  %i.dd = fsub <2 x double> %i.dc, %i.da
  %i.de = fadd <2 x double> %i.dd, splat (double 1.000000e+00) ; 2 uses
  %i.df = extractelement <2 x double> %i.de, i64 0
  %i.dg = tail call double @sqrt(double noundef %i.df) #15 ; 7 uses
  %i.dh = extractelement <2 x double> %i.de, i64 1
  %i.di = tail call double @sqrt(double noundef %i.dh) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.dj = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %7), !noalias !214
  %i.dk = icmp eq i32 %i.dj, 65536
  br i1 %i.dk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !15, !noalias !214
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.dm)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.p:                                             ; preds = %bb.n
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.dn = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.do = icmp eq i32 %i.dn, 65536
  br i1 %i.do, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !15, !noalias !215
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %i.dq)
          to label %bb.s unwind label %bb.t

bb.r:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef -1)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.dr = extractelement <2 x double> %i.cz, i64 1 ; 3 uses
  %i.ds = fneg double %i.dr                       ; 2 uses
  %19 = extractelement <2 x double> %i.cz, i64 0  ; 3 uses
  %20 = fmul double %19, %i.ds
  %21 = extractelement <2 x double> %i.cy, i64 1  ; 4 uses
  %22 = extractelement <2 x double> %i.db, i64 0  ; 2 uses
  %23 = call double @llvm.fmuladd.f64(double %22, double %21, double %20)
  %24 = fcmp olt double %23, 0.000000e+00
  %25 = fneg double %i.di
  %.0 = select i1 %24, double %25, double %i.di   ; 7 uses
  %i.dt = shufflevector <4 x double> %18, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %26 = fmul <2 x double> %i.dt, %i.cz
  %27 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %28 = load i32, ptr %27, align 4, !tbaa !46
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %30 = load ptr, ptr %29, align 8, !tbaa !47     ; 8 uses
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 6 uses
  %31 = shufflevector <4 x double> %18, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %32 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %31, <2 x double> %26) ; 2 uses
  %33 = insertelement <2 x double> poison, double %i.dg, i64 0
  %34 = insertelement <2 x double> %33, double %.0, i64 1 ; 2 uses
  %35 = insertelement <2 x double> poison, double %.sroa.29.0, i64 0
  %36 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %37 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %34, <2 x double> %36, <2 x double> %32)
  store <2 x double> %37, ptr %30, align 8, !tbaa !37
  %38 = fmul double %i.dg, %i.ds
  %39 = fmul double %.0, %22
  %40 = extractelement <2 x double> %i.cy, i64 0  ; 2 uses
  %41 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %42 = icmp slt i32 %28, 2                       ; 6 uses
  %43 = extractelement <2 x double> %i.ag, i64 0  ; 3 uses
  %44 = fmul double %43, %i.dr
  %i.dv = extractelement <2 x double> %i.ad, i64 1
  %i.dw = insertelement <2 x double> poison, double %.sroa.25.0, i64 0 ; 2 uses
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x double> %i.dx, %i.cz
  %i.dz = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ea = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.dz, <2 x double> %i.dy) ; 3 uses
  %i.eb = extractelement <2 x double> %i.ea, i64 0
  %i.ec = call double @llvm.fmuladd.f64(double %i.dg, double %.sink.i, double %i.eb)
  %i.ed = extractelement <2 x double> %i.ea, i64 1
  %i.ee = call double @llvm.fmuladd.f64(double %.0, double %.sink.i, double %i.ed)
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %14, i64 128 ; 6 uses
  %i.ei = fneg <2 x double> %34                   ; 3 uses
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %36, <2 x double> %32)
  %45 = call double @llvm.fmuladd.f64(double %.0, double %19, double %38) ; 3 uses
  %46 = fneg double %19                           ; 2 uses
  %i.ek = call double @llvm.fmuladd.f64(double %i.dg, double %21, double %39) ; 3 uses
  %i.el = fmul double %21, %46
  %i.em = call double @llvm.fmuladd.f64(double %40, double %i.dr, double %i.el) ; 6 uses
  %i.en = insertelement <2 x double> %i.cz, double %i.ek, i64 1
  %i.eo = fmul <2 x double> %i.af, %i.en
  %i.ep = insertelement <2 x double> %i.cy, double %45, i64 1
  %i.eq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.ae, <2 x double> %i.eo) ; 3 uses
  %i.er = extractelement <2 x double> %i.eq, i64 1
  %i.es = call double @llvm.fmuladd.f64(double %i.em, double %.sroa.29.0, double %i.er)
  store double %i.es, ptr %41, align 8, !tbaa !37
  %i.et = load i64, ptr %i.du, align 8
  %.sink.idx.i = select i1 %42, i64 0, i64 %i.et
  %.sink.i282 = getelementptr inbounds nuw i8, ptr %30, i64 %.sink.idx.i
  %47 = fmul double %43, %i.ek
  %i.eu = call double @llvm.fmuladd.f64(double %45, double %.sroa.17.0, double %47)
  %48 = call double @llvm.fmuladd.f64(double %i.em, double %.sroa.33.0, double %i.eu)
  %49 = insertelement <2 x double> %i.dw, double %.0, i64 1
  %50 = insertelement <2 x double> poison, double %i.ek, i64 0
  %51 = insertelement <2 x double> %50, double %46, i64 1
  %52 = fmul <2 x double> %49, %51
  %i.ev = insertelement <2 x double> poison, double %45, i64 0
  %53 = insertelement <2 x double> %i.ev, double %i.dg, i64 1
  %54 = shufflevector <2 x double> %i.ad, <2 x double> %i.cz, <2 x i32> <i32 1, i32 3>
  %i.ew = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %53, <2 x double> %54, <2 x double> %52) ; 2 uses
  %i.ex = extractelement <2 x double> %i.ew, i64 0
  %i.ey = call double @llvm.fmuladd.f64(double %i.em, double %.sink.i, double %i.ex)
  %55 = extractelement <2 x double> %i.db, i64 1
  %56 = fmul double %i.dg, %55
  %57 = call double @llvm.fmuladd.f64(double %.0, double %40, double %56) ; 3 uses
  %58 = fmul double %.sroa.17.0, %57
  %59 = extractelement <2 x double> %i.ew, i64 1  ; 3 uses
  %i.ez = extractelement <2 x double> %i.ag, i64 1
  %i.fa = call double @llvm.fmuladd.f64(double %59, double %i.ez, double %58)
  %60 = call double @llvm.fmuladd.f64(double %i.em, double %.sroa.29.0, double %i.fa)
  %61 = extractelement <2 x double> %i.eq, i64 0
  %62 = call double @llvm.fmuladd.f64(double %21, double %.sroa.17.0, double %44) ; 2 uses
  %63 = call double @llvm.fmuladd.f64(double %.0, double %.sroa.33.0, double %62)
  %64 = call double @llvm.fmuladd.f64(double %i.dg, double %.sroa.33.0, double %61)
  store double %64, ptr %.sink.i282, align 8, !tbaa !37
  %i.fb = load i64, ptr %i.du, align 8
  %.sink.idx.i289.a = select i1 %42, i64 0, i64 %i.fb
  %.sink.i290.a = getelementptr inbounds nuw i8, ptr %30, i64 %.sink.idx.i289.a
  %i.fc = getelementptr inbounds nuw i8, ptr %.sink.i290.a, i64 8
  store double %63, ptr %i.fc, align 8, !tbaa !37
  %i.fd = load i64, ptr %i.du, align 8
  %.sink.idx.i291.a = select i1 %42, i64 0, i64 %i.fd
  %.sink.i292.a = getelementptr inbounds nuw i8, ptr %30, i64 %.sink.idx.i291.a
  %i.fe = getelementptr inbounds nuw i8, ptr %.sink.i292.a, i64 16
  store double %48, ptr %i.fe, align 8, !tbaa !37
  %65 = load i64, ptr %i.du, align 8
  %66 = shl i64 %65, 1
  %.sink.idx.i287 = select i1 %42, i64 0, i64 %66
  %.sink.i288 = getelementptr inbounds nuw i8, ptr %30, i64 %.sink.idx.i287
  store double %i.ec, ptr %.sink.i288, align 8, !tbaa !37
  %67 = load i64, ptr %i.du, align 8
  %68 = shl i64 %67, 1
  %.sink.idx.i289 = select i1 %42, i64 0, i64 %68
  %.sink.i290 = getelementptr inbounds nuw i8, ptr %30, i64 %.sink.idx.i289
  %69 = getelementptr inbounds nuw i8, ptr %.sink.i290, i64 8
  store double %i.ee, ptr %69, align 8, !tbaa !37
  %70 = load i64, ptr %i.du, align 8
  %71 = shl i64 %70, 1
  %.sink.idx.i291 = select i1 %42, i64 0, i64 %71
  %.sink.i292 = getelementptr inbounds nuw i8, ptr %30, i64 %.sink.idx.i291
  %i.ff = getelementptr inbounds nuw i8, ptr %.sink.i292, i64 16
  store double %i.ey, ptr %i.ff, align 8, !tbaa !37
  %72 = load i32, ptr %i.ef, align 4, !tbaa !46
  %73 = load ptr, ptr %i.eg, align 8, !tbaa !47   ; 8 uses
  store <2 x double> %i.ej, ptr %73, align 8, !tbaa !37
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 16
  store double %60, ptr %74, align 8, !tbaa !37
  %i.fg = icmp slt i32 %72, 2                     ; 6 uses
  %i.fh = load i64, ptr %i.eh, align 8
  %.sink.idx.i299 = select i1 %i.fg, i64 0, i64 %i.fh
  %.sink.i300 = getelementptr inbounds nuw i8, ptr %73, i64 %.sink.idx.i299
  %i.fi = insertelement <2 x double> poison, double %.sroa.33.0, i64 0
  %i.fj = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %75 = insertelement <2 x double> %i.eq, double %62, i64 1
  %i.fk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.fj, <2 x double> %75) ; 2 uses
  %i.fl = extractelement <2 x double> %i.fk, i64 0
  store double %i.fl, ptr %.sink.i300, align 8, !tbaa !37
  %i.fm = load i64, ptr %i.eh, align 8
  %.sink.idx.i301 = select i1 %i.fg, i64 0, i64 %i.fm
  %.sink.i302 = getelementptr inbounds nuw i8, ptr %73, i64 %.sink.idx.i301
  %i.fn = getelementptr inbounds nuw i8, ptr %.sink.i302, i64 8
  %i.fo = extractelement <2 x double> %i.fk, i64 1
  store double %i.fo, ptr %i.fn, align 8, !tbaa !37
  %i.fp = load i64, ptr %i.eh, align 8
  %.sink.idx.i303 = select i1 %i.fg, i64 0, i64 %i.fp
  %.sink.i304 = getelementptr inbounds nuw i8, ptr %73, i64 %.sink.idx.i303
  %i.fq = getelementptr inbounds nuw i8, ptr %.sink.i304, i64 16
  %i.fr = fmul double %43, %57
  %i.fs = call double @llvm.fmuladd.f64(double %59, double %.sroa.17.0, double %i.fr)
  %i.ft = call double @llvm.fmuladd.f64(double %i.em, double %.sroa.33.0, double %i.fs)
  store double %i.ft, ptr %i.fq, align 8, !tbaa !37
  %i.fu = load i64, ptr %i.eh, align 8
  %i.fv = shl i64 %i.fu, 1
  %.sink.idx.i305 = select i1 %i.fg, i64 0, i64 %i.fv
  %.sink.i306 = getelementptr inbounds nuw i8, ptr %73, i64 %.sink.idx.i305
  %i.fw = insertelement <2 x double> poison, double %.sink.i, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.fx, <2 x double> %i.ea) ; 2 uses
  %i.fz = extractelement <2 x double> %i.fy, i64 0
  store double %i.fz, ptr %.sink.i306, align 8, !tbaa !37
  %i.ga = load i64, ptr %i.eh, align 8
  %i.gb = shl i64 %i.ga, 1
  %.sink.idx.i307 = select i1 %i.fg, i64 0, i64 %i.gb
  %.sink.i308 = getelementptr inbounds nuw i8, ptr %73, i64 %.sink.idx.i307
  %i.gc = getelementptr inbounds nuw i8, ptr %.sink.i308, i64 8
  %i.gd = extractelement <2 x double> %i.fy, i64 1
  store double %i.gd, ptr %i.gc, align 8, !tbaa !37
  %i.ge = load i64, ptr %i.eh, align 8
  %i.gf = shl i64 %i.ge, 1
  %.sink.idx.i309 = select i1 %i.fg, i64 0, i64 %i.gf
  %.sink.i310 = getelementptr inbounds nuw i8, ptr %73, i64 %.sink.idx.i309
  %i.gg = getelementptr inbounds nuw i8, ptr %.sink.i310, i64 16
  %i.gh = fmul double %.sroa.25.0, %57
  %i.gi = call double @llvm.fmuladd.f64(double %59, double %i.dv, double %i.gh)
  %i.gj = call double @llvm.fmuladd.f64(double %i.em, double %.sink.i, double %i.gi)
  store double %i.gj, ptr %i.gg, align 8, !tbaa !37
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  ret void

bb.t:                                             ; preds = %bb.r, %bb.q, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn270.pn = phi { ptr, i32 } [ %.pn270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ], [ %i.gk, %bb.t ]
  resume { ptr, i32 } %.pn270.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv4IPPE10PoseSolver18computeTranslationERKNS_11_InputArrayES4_S4_RKNS_12_OutputArrayE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 20 uses
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.b = icmp eq i32 %i.a, 38
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  tail call void @_ZN2cv6detail20check_failed_MatTypeEiRKNS0_12CheckContextE(i32 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv4IPPE10PoseSolver18computeTranslationERKNS_11_InputArrayES4_S4_RKNS_12_OutputArrayEE15__cv_check__331) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  %i.e = icmp eq i32 %i.d, 38
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  tail call void @_ZN2cv6detail20check_failed_MatTypeEiRKNS0_12CheckContextE(i32 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv4IPPE10PoseSolver18computeTranslationERKNS_11_InputArrayES4_S4_RKNS_12_OutputArrayEE15__cv_check__333) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  %i.h = icmp eq i32 %i.g, 6
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  tail call void @_ZN2cv6detail20check_failed_MatTypeEiRKNS0_12CheckContextE(i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv4IPPE10PoseSolver18computeTranslationERKNS_11_InputArrayES4_S4_RKNS_12_OutputArrayEE15__cv_check__335) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = tail call noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv4IPPE10PoseSolver18computeTranslationERKNS_11_InputArrayES4_S4_RKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 336) #16
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %5, align 8, !tbaa !35     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.s = load i64, ptr %i.q, align 8, !tbaa !36
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.n, %bb.l ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.o, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.bx

bb.n:                                             ; preds = %bb.h
  %i.u = tail call noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = tail call noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv4IPPE10PoseSolver18computeTranslationERKNS_11_InputArrayES4_S4_RKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 337) #16
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

bb.t:                                             ; preds = %bb.q
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.t
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !36
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %bb.s
  %.pn141 = phi { ptr, i32 } [ %i.y, %bb.s ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %i.z, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.bx

bb.u:                                             ; preds = %bb.n, %bb.o
  %i.af = tail call noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = tail call noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv4IPPE10PoseSolver18computeTranslationERKNS_11_InputArrayES4_S4_RKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 338) #16
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

bb.aa:                                            ; preds = %bb.x
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.aa
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !36
  %i.ap = add i64 %i.ao, 1
end_hunk_0
