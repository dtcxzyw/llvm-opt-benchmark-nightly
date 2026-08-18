inline.NumInlined: 1901
inline.NumDeleted: 586
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN2cv7Affine3IdE8rotationERKNS_3MatE:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %.sink.i, ptr %i.cp, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.t

bb.o:                                             ; preds = %bb.k
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.u

.thread32:                                        ; preds = %bb.h, %bb.g, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %.thread32
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv7Affine3IdE8rotationERKNS_3MatE, ptr noundef nonnull @.str.27, i32 noundef 448) #23
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %.thread32
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.s:                                             ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %9, align 8, !tbaa !50    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.s
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !18
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.r
  %.pn20 = phi { ptr, i32 } [ %i.cr, %bb.r ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.cs, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.u

bb.t:                                             ; preds = %_ZN2cv7Affine3IdE8rotationERKNS_3VecIdLi3EEE.exit, %bb.i
  ret void

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn24 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cq, %bb.o ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ]
  resume { ptr, i32 } %.pn24
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Vec.31") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 4 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 3
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !55   ; 3 uses
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = icmp eq i32 %i.j, 1
  %or.cond13 = select i1 %i.h, i1 true, i1 %i.k
  %i.l = add nsw i32 %i.j, %i.g
  %i.m = icmp eq i32 %i.l, 4
  %or.cond15 = select i1 %or.cond13, i1 %i.m, i1 false
  br i1 %or.cond15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %1, align 8, !tbaa !99     ; 2 uses
  %i.o = and i32 %i.n, 4064
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3MatcvNS_3VecIT_XT0_EEEIfLi6EEEv, ptr noundef nonnull @.str.21, i32 noundef 1301) #23
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.v = load i64, ptr %i.t, align 8, !tbaa !18
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.o

bb.i:                                             ; preds = %bb.c
  %i.x = and i32 %i.n, 16415
  %or.cond17 = icmp eq i32 %i.x, 16390
  br i1 %or.cond17, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = load double, ptr %i.b, align 8, !tbaa !83
  store double %i.y, ptr %0, align 8, !tbaa !83
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.aa, ptr %i.ab, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ad, ptr %i.ae, align 8, !tbaa !83
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %i.g, i32 noundef %i.j, i32 noundef 6, ptr noundef nonnull %0, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.ag, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !23
  store ptr %4, ptr %i.af, align 8, !tbaa !26
  %i.ah = load i32, ptr %4, align 8, !tbaa !99
  %i.ai = and i32 %i.ah, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.ai, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.j
  ret void

bb.o:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn6.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn6.pn
}

declare void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail9jacob_expIdEENS_4MatxIT_Li4ELi4EEERKNS_4QuatIS3_EE(ptr dead_on_unwind noalias writable sret(%"class.cv::Matx.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <3 x double>, ptr %i.a, align 8, !tbaa !83 ; 5 uses
  %i.d = load double, ptr %i.b, align 8, !tbaa !342 ; 7 uses
  %i.e = fmul double %i.d, %i.d
  %i.f = extractelement <3 x double> %i.c, i64 0  ; 4 uses
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double %i.e)
  %i.h = extractelement <3 x double> %i.c, i64 2  ; 2 uses
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.g)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.i) ; 9 uses
  %i.j = tail call noundef double @llvm.fabs.f64(double %sqrt)
  %i.k = fcmp olt double %i.j, f0x3EB0C6F7A0B5ED8D
  br i1 %i.k, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.l = fneg double %sqrt
  %i.m = fmul nnan double %sqrt, %i.l
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double f0x3FC5555555555555, double 1.000000e+00)
  br label %_ZN2cv4MatxIdLi4ELi4EEC2ESt16initializer_listIdE.exit

bb.b:                                             ; preds = %bb.a
  %i.o = tail call double @sin(double noundef %sqrt) #22
  %i.p = fdiv double %i.o, %sqrt                  ; 2 uses
  %i.q = tail call double @cos(double noundef %sqrt) #22
  %i.r = fsub double %i.q, %i.p
  %i.s = fdiv double %i.r, %sqrt
  %i.t = fdiv double %i.s, %sqrt
  br label %_ZN2cv4MatxIdLi4ELi4EEC2ESt16initializer_listIdE.exit

_ZN2cv4MatxIdLi4ELi4EEC2ESt16initializer_listIdE.exit: ; preds = %.thread, %bb.b
  %i.u = phi double [ %i.p, %bb.b ], [ %i.n, %.thread ] ; 6 uses
  %i.v = phi double [ %i.t, %bb.b ], [ f0xBFD5555555555555, %.thread ] ; 2 uses
  %i.w = shufflevector <3 x double> %i.c, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.x = tail call double @cos(double noundef %sqrt) #22
  %i.y = fneg double %i.u
  %i.z = fmul double %i.d, %i.v                   ; 3 uses
  %i.aa = load double, ptr %1, align 8, !tbaa !344
  %i.ab = tail call double @exp(double noundef %i.aa) #22 ; 5 uses
  %i.ac = fmul double %i.ab, %i.x
  store double %i.ac, ptr %0, align 8, !tbaa !83, !alias.scope !345
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = insertelement <4 x double> poison, double %i.y, i64 0
  %i.af = insertelement <4 x double> %i.ae, double %i.u, i64 1
  %i.ag = shufflevector <4 x double> %i.af, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ah = fmul <4 x double> %i.w, %i.ag
  %i.ai = insertelement <4 x double> poison, double %i.ab, i64 0
  %i.aj = shufflevector <4 x double> %i.ai, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ak = fmul <4 x double> %i.aj, %i.ah
  store <4 x double> %i.ak, ptr %i.ad, align 8, !tbaa !83, !alias.scope !345
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = shufflevector <3 x double> %i.c, <3 x double> poison, <2 x i32> <i32 2, i32 0> ; 3 uses
  %i.an = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.am, %i.ao          ; 4 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0 ; 2 uses
  %i.ar = fmul double %i.f, %i.aq
  %i.as = fmul double %i.d, %i.aq
  %i.at = insertelement <2 x double> poison, double %i.u, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.am, <2 x double> %i.au) ; 2 uses
  %2 = insertelement <2 x double> %i.am, double %i.d, i64 1
  %3 = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %4 = insertelement <2 x double> %3, double %i.u, i64 1
  %5 = fmul <2 x double> %2, %4
  %6 = extractelement <2 x double> %i.ap, i64 1
  %i.aw = fmul double %i.d, %6
  %i.ax = shufflevector <2 x double> %i.av, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ay = insertelement <4 x double> %i.ax, double %i.aw, i64 1
  %7 = shufflevector <2 x double> %5, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %8 = shufflevector <4 x double> %i.ay, <4 x double> %7, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.az = fmul <4 x double> %i.aj, %8
  store <4 x double> %i.az, ptr %i.al, align 8, !tbaa !83, !alias.scope !345
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.z, double %i.d, double %i.u)
  %i.bc = shufflevector <3 x double> %i.c, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bd = insertelement <2 x double> poison, double %i.z, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.u, i64 1
  %i.bf = fmul <2 x double> %i.bc, %i.be
  %i.bg = fmul double %i.f, %i.z
  %i.bh = insertelement <4 x double> poison, double %i.bg, i64 0
  %i.bi = insertelement <4 x double> %i.bh, double %i.bb, i64 1
  %i.bj = shufflevector <2 x double> %i.bf, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x double> %i.bi, <4 x double> %i.bj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bl = fmul <4 x double> %i.aj, %i.bk
  store <4 x double> %i.bl, ptr %i.ba, align 8, !tbaa !83, !alias.scope !345
  %i.bm = fmul double %i.ab, %i.ar
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.bm, ptr %i.bn, align 8, !tbaa !83, !alias.scope !345
  %i.bo = fmul double %i.ab, %i.as
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.bo, ptr %i.bp, align 8, !tbaa !83, !alias.scope !345
  %i.bq = extractelement <2 x double> %i.av, i64 0
  %i.br = fmul double %i.ab, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.br, ptr %i.bs, align 8, !tbaa !83, !alias.scope !345
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv4QuatIdE11toRotMat4x4ENS_14QuatAssumeTypeE(ptr dead_on_unwind noalias writable sret(%"class.cv::Matx.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %i.a = load double, ptr %1, align 8, !tbaa !344 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !83 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !348 ; 3 uses
  %.not = icmp eq i32 %2, 0
  %i.f = insertelement <2 x double> poison, double %i.a, i64 0
  %i.g = insertelement <2 x double> %i.f, double %i.e, i64 1 ; 2 uses
  br i1 %.not, label %bb.b, label %_ZN2cv4MatxIdLi4ELi4EEC2ESt16initializer_listIdE.exit

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop = fmul <2 x double> %i.c, %i.c
  %i.h = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.i = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.h)
  %i.j = extractelement <2 x double> %i.c, i64 1  ; 2 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.i)
  %i.l = tail call noundef double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.k)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.l) ; 2 uses
  %i.m = fcmp olt double %sqrt.i.i, f0x3EB0C6F7A0B5ED8D
  br i1 %i.m, label %bb.c, label %_ZNK2cv4QuatIdE9normalizeEv.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !349
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !349
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !349
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv4QuatIdE9normalizeEv, ptr noundef nonnull @.str.32, i32 noundef 458) #23
          to label %bb.d unwind label %bb.e, !noalias !349

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %3, align 8, !tbaa !50, !noalias !349 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !349
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #25, !noalias !349
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !349
  resume { ptr, i32 } %i.n

_ZNK2cv4QuatIdE9normalizeEv.exit:                 ; preds = %bb.b
  %i.t = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.v = fdiv <2 x double> %i.c, %i.u
  %i.w = fdiv <2 x double> %i.g, %i.u
  br label %_ZN2cv4MatxIdLi4ELi4EEC2ESt16initializer_listIdE.exit

_ZN2cv4MatxIdLi4ELi4EEC2ESt16initializer_listIdE.exit: ; preds = %_ZNK2cv4QuatIdE9normalizeEv.exit, %bb.a
  %i.x = phi <2 x double> [ %i.c, %bb.a ], [ %i.v, %_ZNK2cv4QuatIdE9normalizeEv.exit ] ; 9 uses
  %i.y = phi <2 x double> [ %i.g, %bb.a ], [ %i.w, %_ZNK2cv4QuatIdE9normalizeEv.exit ] ; 5 uses
  %i.z = shufflevector <2 x double> %i.y, <2 x double> %i.x, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.aa = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.z, %i.aa           ; 3 uses
  %i.ac = fneg <2 x double> %i.ab                 ; 2 uses
  %i.ad = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !83
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = shufflevector <2 x double> %i.x, <2 x double> <double poison, double -2.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.af = insertelement <2 x double> %i.ab, double 1.000000e+00, i64 1
  %foldExtExtBinop43 = fmul <2 x double> %i.x, %i.y ; 2 uses
  %i.ag = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fneg <2 x double> %foldExtExtBinop43
  %i.ai = shufflevector <2 x double> %i.ab, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.ag, <2 x double> %i.ai)
  %i.ak = fmul <2 x double> %i.aj, splat (double 2.000000e+00) ; 2 uses
  %i.al = fmul <2 x double> %i.z, %i.z            ; 2 uses
  %i.am = shufflevector <2 x double> %i.ac, <2 x double> %i.al, <2 x i32> <i32 0, i32 2>
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.ad, <2 x double> %i.am)
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> <double 2.000000e+00, double -2.000000e+00>, <2 x double> <double -0.000000e+00, double 1.000000e+00>)
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ap, ptr %0, align 8, !tbaa !83
  %i.aq = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.aq, <2 x double> %i.al) ; 2 uses
  %i.as = shufflevector <2 x double> %i.x, <2 x double> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.ae, <2 x double> %i.af)
  %i.au = fmul <2 x double> %i.at, <double 2.000000e+00, double 1.000000e+00>
  %i.av = extractelement <2 x double> %i.ar, i64 1
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double -2.000000e+00, double 1.000000e+00)
  %i.ax = extractelement <2 x double> %i.ak, i64 0
  store double %i.ax, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !83
  store <2 x double> %i.au, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !83
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = extractelement <2 x double> %i.ak, i64 1
  store double %i.ay, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !83
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !83
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ba = shufflevector <2 x double> %i.ac, <2 x double> %foldExtExtBinop43, <2 x i32> <i32 1, i32 2>
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.az, <2 x double> %i.ba)
  %i.bc = fmul <2 x double> %i.bb, splat (double 2.000000e+00)
  store <2 x double> %i.bc, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !83
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.aw, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !83
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_INS_3VecIfLi4EEEEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !99
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 101
  store i32 %i.d, ptr %0, align 8, !tbaa !99
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !99     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 101
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !170
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 4, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
end_hunk_0
