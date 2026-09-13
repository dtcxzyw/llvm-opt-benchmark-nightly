Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hough?download=true
inline.NumInlined: 2522
inline.NumDeleted: 933
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN2cv18HoughLinesPointSetERKNS_11_InputArrayERKNS_12_OutputArrayEiidddddd:bb.a
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %12, align 8, !tbaa !36    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.n = load i64, ptr %i.l, align 8, !tbaa !37
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn100 = phi { ptr, i32 } [ %i.i, %bb.k ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.bw

bb.m:                                             ; preds = %bb.c, %bb.e
  %i.p = icmp slt i32 %2, 1
  br i1 %i.p, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv18HoughLinesPointSetERKNS_11_InputArrayERKNS_12_OutputArrayEiidddddd, ptr noundef nonnull @.str.1, i32 noundef 971) #23
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.r:                                             ; preds = %bb.o
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %14, align 8, !tbaa !36    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.r
  %i.v = load i64, ptr %i.t, align 8, !tbaa !37
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.q
  %.pn121 = phi { ptr, i32 } [ %i.q, %bb.q ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.r, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bw

bb.s:                                             ; preds = %bb.m
  %i.x = icmp slt i32 %3, 0
  br i1 %i.x, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv18HoughLinesPointSetERKNS_11_InputArrayERKNS_12_OutputArrayEiidddddd, ptr noundef nonnull @.str.1, i32 noundef 974) #23
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.x:                                             ; preds = %bb.u
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.x
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !37
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.w
  %.pn119 = phi { ptr, i32 } [ %i.y, %bb.w ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %i.z, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.bw

bb.y:                                             ; preds = %bb.s
  %i.af = fsub double %5, %4                      ; 2 uses
  %i.ag = fcmp ugt double %i.af, 0.000000e+00
  %i.ah = fsub double %8, %7                      ; 2 uses
  %i.ai = fcmp ugt double %i.ah, 0.000000e+00
  %or.cond125 = and i1 %i.ag, %i.ai
  br i1 %or.cond125, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv18HoughLinesPointSetERKNS_11_InputArrayERKNS_12_OutputArrayEiidddddd, ptr noundef nonnull @.str.1, i32 noundef 977) #23
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

bb.ad:                                            ; preds = %bb.aa
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.ad
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !37
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %bb.ac
  %.pn117 = phi { ptr, i32 } [ %i.aj, %bb.ac ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %i.ak, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.bw

bb.ae:                                            ; preds = %bb.y
  %i.aq = fcmp ole double %6, 0.000000e+00
  %i.ar = fcmp ole double %9, 0.000000e+00
  %or.cond = or i1 %i.aq, %i.ar
  br i1 %or.cond, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN2cv18HoughLinesPointSetERKNS_11_InputArrayERKNS_12_OutputArrayEiidddddd, ptr noundef nonnull @.str.1, i32 noundef 980) #23
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.af
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.aj:                                            ; preds = %bb.ag
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.aj
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !37
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.ai
  %.pn115 = phi { ptr, i32 } [ %i.as, %bb.ai ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %i.at, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.bw

bb.ak:                                            ; preds = %bb.ae
  %i.az = fptrunc double %6 to float              ; 2 uses
  %i.ba = fdiv float 1.000000e+00, %i.az          ; 2 uses
  %i.bb = fptrunc double %4 to float              ; 2 uses
  %i.bc = fmul float %i.ba, %i.bb
  %i.bd = fdiv double %i.ah, %9
  %i.be = call double @llvm.floor.f64(double %i.bd)
  %i.bf = fptosi double %i.be to i32              ; 4 uses
  %i.bg = add nuw nsw i32 %i.bf, 1                ; 2 uses
  %i.bh = icmp sgt i32 %i.bf, 0
  br i1 %i.bh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.bi = uitofp nneg i32 %i.bf to double
  %i.bj = fneg double %i.bi
  %i.bk = call double @llvm.fmuladd.f64(double %i.bj, double %9, double f0x400921FB54442D18)
  %i.bl = call double @llvm.fabs.f64(double %i.bk)
  %i.bm = fmul double %9, 5.000000e-01
  %i.bn = fcmp olt double %i.bl, %i.bm
  %spec.select.i = select i1 %i.bn, i32 %i.bf, i32 %i.bg
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.0.i = phi i32 [ %i.bg, %bb.ak ], [ %spec.select.i, %bb.al ] ; 8 uses
  %i.bo = fadd double %i.af, 1.000000e+00
  %i.bp = fdiv double %i.bo, %6
  %i.bq = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.br = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bq) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.bs = add nsw i32 %.0.i, 2
  %i.bt = add nsw i32 %i.br, 2                    ; 4 uses
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %23, i32 noundef %i.bs, i32 noundef %i.bt, i32 noundef 4)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %22) #22
  %i.bu = load ptr, ptr %23, align 8, !tbaa !59, !noalias !265 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !61
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull align 8 dereferenceable(688) %23, ptr noundef nonnull align 8 dereferenceable(208) %22, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.an
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %23) #22
  br label %bb.as

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.an
  %i.bz = getelementptr inbounds nuw i8, ptr %23, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bz) #22
  %i.ca = getelementptr inbounds nuw i8, ptr %23, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ca) #22
  %i.cb = getelementptr inbounds nuw i8, ptr %23, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cb) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.cc = sext i32 %.0.i to i64                   ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  store ptr %i.cd, ptr %25, align 8, !tbaa !64
  %i.ce = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.not.i.i = icmp ugt i32 %.0.i, 264
  store i64 %i.cc, ptr %i.ce, align 8, !tbaa !65
  br i1 %.not.i.i, label %bb.ao, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit

bb.ao:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.cf = shl nuw nsw i64 %i.cc, 2                ; 2 uses
  %i.cg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cf) #25
          to label %bb.ap unwind label %bb.at

_ZN2cv10AutoBufferIfLm264EEC2Em.exit:             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.ch = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  store ptr %i.ch, ptr %26, align 8, !tbaa !64
  %i.ci = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.cc, ptr %i.ci, align 8, !tbaa !65
  br label %.lr.ph.i

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.cg, ptr %25, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.cj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  store ptr %i.cj, ptr %26, align 8, !tbaa !64
  %i.ck = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.cc, ptr %i.ck, align 8, !tbaa !65
  %i.cl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cf) #25
          to label %.noexc140 unwind label %bb.au ; 2 uses

.noexc140:                                        ; preds = %bb.ap
  store ptr %i.cl, ptr %26, align 8, !tbaa !64
  %.pre = load ptr, ptr %25, align 8, !tbaa !64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc140, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit
  %28 = phi ptr [ %i.ch, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit ], [ %i.cl, %.noexc140 ] ; 4 uses
  %29 = phi ptr [ %i.cd, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit ], [ %.pre, %.noexc140 ] ; 4 uses
  %30 = phi ptr [ %i.ch, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit ], [ %i.cj, %.noexc140 ] ; 2 uses
  %31 = getelementptr inbounds nuw i8, ptr %22, i64 24
  %32 = load ptr, ptr %31, align 8, !tbaa !38     ; 5 uses
  %i.cm = fptrunc double %7 to float              ; 3 uses
  %i.cn = fpext float %i.ba to double             ; 6 uses
  %i.co = fptrunc double %9 to float              ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.0.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cp = icmp eq i32 %.0.i, 1
  br i1 %i.cp, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.aq ] ; 4 uses
  %.01314.i = phi float [ %i.cm, %.lr.ph.i.new ], [ %i.dj, %bb.aq ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.aq ]
  %i.cq = fpext float %.01314.i to double         ; 2 uses
  %i.cr = call double @sin(double noundef %i.cq) #22
  %i.cs = fmul double %i.cr, %i.cn
  %i.ct = fptrunc double %i.cs to float
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv.i
  store float %i.ct, ptr %i.cu, align 4, !tbaa !44
  %i.cv = call double @cos(double noundef %i.cq) #22
  %i.cw = fmul double %i.cv, %i.cn
  %i.cx = fptrunc double %i.cw to float
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %indvars.iv.i
  store float %i.cx, ptr %i.cy, align 4, !tbaa !44
  %i.cz = fadd float %.01314.i, %i.co             ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.da = fpext float %i.cz to double             ; 2 uses
  %i.db = call double @sin(double noundef %i.da) #22
  %i.dc = fmul double %i.db, %i.cn
  %i.dd = fptrunc double %i.dc to float
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv.next.i
  store float %i.dd, ptr %i.de, align 4, !tbaa !44
  %i.df = call double @cos(double noundef %i.da) #22
  %i.dg = fmul double %i.df, %i.cn
  %i.dh = fptrunc double %i.dg to float
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %indvars.iv.next.i
  store float %i.dh, ptr %i.di, align 4, !tbaa !44
  %i.dj = fadd float %i.cz, %i.co                 ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cvL15createTrigTableEiddfPfS0_.exit.unr-lcssa, label %bb.aq, !llvm.loop !0

_ZN2cvL15createTrigTableEiddfPfS0_.exit.unr-lcssa: ; preds = %bb.aq
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cvL15createTrigTableEiddfPfS0_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2cvL15createTrigTableEiddfPfS0_.exit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZN2cvL15createTrigTableEiddfPfS0_.exit.unr-lcssa ] ; 2 uses
  %.01314.i.epil.init = phi float [ %i.cm, %.lr.ph.i ], [ %i.dj, %_ZN2cvL15createTrigTableEiddfPfS0_.exit.unr-lcssa ]
  %lcmp.mod291 = trunc i32 %.0.i to i1
  call void @llvm.assume(i1 %lcmp.mod291)
  %i.dk = fpext float %.01314.i.epil.init to double ; 2 uses
  %i.dl = call double @sin(double noundef %i.dk) #22
  %i.dm = fmul double %i.dl, %i.cn
  %i.dn = fptrunc double %i.dm to float
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv.i.epil.init
  store float %i.dn, ptr %i.do, align 4, !tbaa !44
  %i.dp = call double @cos(double noundef %i.dk) #22
  %i.dq = fmul double %i.dp, %i.cn
  %i.dr = fptrunc double %i.dq to float
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %indvars.iv.i.epil.init
  store float %i.dr, ptr %i.ds, align 4, !tbaa !44
  br label %_ZN2cvL15createTrigTableEiddfPfS0_.exit

_ZN2cvL15createTrigTableEiddfPfS0_.exit:          ; preds = %_ZN2cvL15createTrigTableEiddfPfS0_.exit.unr-lcssa, %.epil.preheader
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !83
  %i.dv = load ptr, ptr %10, align 8, !tbaa !84   ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 3                 ; 5 uses
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.preheader.preheader, label %._crit_edge208.split

.preheader.preheader:                             ; preds = %_ZN2cvL15createTrigTableEiddfPfS0_.exit
  %wide.trip.count228 = and i64 %i.dz, 2147483647
  %wide.trip.count = zext nneg i32 %.0.i to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv224 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next225, %._crit_edge ] ; 3 uses
  %exitcond227.not = icmp eq i64 %indvars.iv224, %i.dz
  br i1 %exitcond227.not, label %bb.ax, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.preheader
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv224 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load float, ptr %i.ec, align 4, !tbaa !86
  %i.ef = load float, ptr %i.ed, align 4, !tbaa !87
  br label %bb.aw

._crit_edge:                                      ; preds = %._crit_edge237
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count228
  br i1 %exitcond229.not, label %._crit_edge208.split, label %.preheader, !llvm.loop !261

bb.ar:                                            ; preds = %bb.am
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.body, %bb.ar
  %.pn102 = phi { ptr, i32 } [ %i.by, %.body ], [ %i.eg, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.bv

bb.at:                                            ; preds = %bb.ao
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit163

bb.au:                                            ; preds = %bb.ap
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit160

bb.av:                                            ; preds = %.noexc148, %bb.bb, %._crit_edge208.split
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.aw:                                            ; preds = %.lr.ph.split, %._crit_edge237
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %.pre238, %._crit_edge237 ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %indvars.iv
  %i.el = load float, ptr %i.ek, align 4, !tbaa !44
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv
  %i.en = load float, ptr %i.em, align 4, !tbaa !44
  %i.eo = fmul float %i.ef, %i.en
  %i.ep = call float @llvm.fmuladd.f32(float %i.ee, float %i.el, float %i.eo)
  %i.eq = fsub float %i.ep, %i.bc
  %i.er = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.es = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.er) ; 3 uses
  %i.et = icmp slt i32 %i.es, 0
  %.not = icmp sgt i32 %i.es, %i.br
  %or.cond126 = or i1 %i.et, %.not
  %.pre238 = add nuw nsw i64 %indvars.iv, 1       ; 3 uses
  br i1 %or.cond126, label %._crit_edge237, label %bb.ay

bb.ax:                                            ; preds = %.preheader
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.43, i64 noundef %i.dz, i64 noundef %i.dz) #23
          to label %.noexc143 unwind label %bb.az

.noexc143:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.eu = trunc i64 %.pre238 to i32
  %i.ev = mul i32 %i.bt, %i.eu
  %i.ew = add nsw i32 %i.es, %i.ev
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr [4 x i8], ptr %32, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 4      ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !42
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !42
  br label %._crit_edge237

bb.az:                                            ; preds = %bb.ax
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

._crit_edge237:                                   ; preds = %bb.aw, %bb.ay
  %exitcond.not = icmp eq i64 %.pre238, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.aw, !llvm.loop !262

._crit_edge208.split:                             ; preds = %._crit_edge, %_ZN2cvL15createTrigTableEiddfPfS0_.exit
  invoke fastcc void @_ZN2cvL17findLocalMaximumsEiiiPKiRSt6vectorIiSaIiEE(i32 noundef %i.br, i32 noundef %.0.i, i32 noundef %3, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.ba unwind label %bb.av

bb.ba:                                            ; preds = %._crit_edge208.split
  %i.fd = load ptr, ptr %24, align 8, !tbaa !67   ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !67 ; 4 uses
  %.not.i.i147 = icmp eq ptr %i.fd, %i.ff
  %.pre239 = ptrtoint ptr %i.ff to i64
  %.pre240 = ptrtoint ptr %i.fd to i64
  %.pre242 = sub i64 %.pre239, %.pre240           ; 2 uses
  br i1 %.not.i.i147, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN2cv12hough_cmp_gtEEvT_S9_T0_.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fg = ashr exact i64 %.pre242, 2
  %i.fh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fg, i1 true)
  %i.fi = shl nuw nsw i64 %i.fh, 1
  %i.fj = xor i64 %i.fi, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_T0_T1_(ptr %i.fd, ptr %i.ff, i64 noundef %i.fj, ptr %32)
          to label %.noexc148 unwind label %bb.av

.noexc148:                                        ; preds = %bb.bb
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN2cv12hough_cmp_gtEEEEvT_SC_T0_(ptr %i.fd, ptr %i.ff, ptr %32)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN2cv12hough_cmp_gtEEvT_S9_T0_.exit unwind label %bb.av

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN2cv12hough_cmp_gtEEvT_S9_T0_.exit: ; preds = %bb.ba, %.noexc148
  %i.fk = lshr exact i64 %.pre242, 2
  %i.fl = trunc i64 %i.fk to i32                  ; 2 uses
  %i.fm = sitofp i32 %i.bt to double
  %i.fn = fdiv nnan double 1.000000e+00, %i.fm
  %i.fo = icmp sgt i32 %i.fl, 0
  br i1 %i.fo, label %.lr.ph, label %._crit_edge213

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN2cv12hough_cmp_gtEEvT_S9_T0_.exit
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %2, i32 %i.fl)
  %wide.trip.count233 = zext nneg i32 %.sroa.speculated to i64
  %i.fp = insertelement <2 x float> poison, float %i.az, i64 0
  %i.fq = insertelement <2 x float> %i.fp, float %i.co, i64 1
  %i.fr = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.fs = insertelement <2 x float> %i.fr, float %i.cm, i64 1
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12emplace_backIJdddEEERS2_DpOT_.exit
  %i.ft = phi ptr [ %i.fd, %.lr.ph ], [ %i.hm, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12emplace_backIJdddEEERS2_DpOT_.exit ] ; 3 uses
  %indvars.iv230 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next231, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12emplace_backIJdddEEERS2_DpOT_.exit ] ; 2 uses
  %.sroa.0180.0211 = phi ptr [ null, %.lr.ph ], [ %.sroa.0180.6, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12emplace_backIJdddEEERS2_DpOT_.exit ] ; 8 uses
  %.sroa.17.0210 = phi ptr [ null, %.lr.ph ], [ %.sroa.17.6, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12emplace_backIJdddEEERS2_DpOT_.exit ] ; 7 uses
  %.sroa.10.0209 = phi ptr [ null, %.lr.ph ], [ %.sroa.10.1, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12emplace_backIJdddEEERS2_DpOT_.exit ] ; 4 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv230
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !42 ; 3 uses
  %i.fw = sitofp i32 %i.fv to double
  %i.fx = fmul double %i.fn, %i.fw
  %i.fy = call double @llvm.floor.f64(double %i.fx)
  %i.fz = fptosi double %i.fy to i32              ; 2 uses
  %i.ga = mul nsw i32 %i.bt, %i.fz
  %i.gb = xor i32 %i.ga, -1
  %i.gc = add nsw i32 %i.fz, -1
  %i.gd = add i32 %i.fv, %i.gb
  %i.ge = insertelement <2 x i32> poison, i32 %i.gd, i64 0
  %i.gf = insertelement <2 x i32> %i.ge, i32 %i.gc, i64 1
  %i.gg = sitofp <2 x i32> %i.gf to <2 x float>
  %i.gh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.fq, <2 x float> %i.fs)
  %i.gi = sext i32 %i.fv to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %32, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !42
  %i.gl = sitofp i32 %i.gk to double              ; 2 uses
  %i.gm = fpext <2 x float> %i.gh to <2 x double> ; 2 uses
  %.not.i = icmp eq ptr %.sroa.10.0209, %.sroa.17.0210
  br i1 %.not.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store double %i.gl, ptr %.sroa.10.0209, align 8, !tbaa !88
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.10.0209, i64 8
  store <2 x double> %i.gm, ptr %i.gn, align 8, !tbaa !88
  br label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12emplace_backIJdddEEERS2_DpOT_.exit

bb.be:                                            ; preds = %bb.bc
  %i.go = ptrtoint ptr %.sroa.17.0210 to i64
  %i.gp = ptrtoint ptr %.sroa.0180.0211 to i64
  %i.gq = sub i64 %i.go, %i.gp                    ; 4 uses
  %i.gr = icmp eq i64 %i.gq, 9223372036854775800
  br i1 %i.gr, label %bb.bf, label %_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #23
          to label %.noexc171 unwind label %.loopexit.split-lp

.noexc171:                                        ; preds = %bb.bf
  unreachable

_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.be
  %i.gs = sdiv exact i64 %i.gq, 24                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.gs, i64 1)
  %i.gt = add nsw i64 %.sroa.speculated.i.i, %i.gs ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.gs
  %i.gv = call i64 @llvm.umin.i64(i64 %i.gt, i64 384307168202282325)
  %i.gw = select i1 %i.gu, i64 384307168202282325, i64 %i.gv ; 3 uses
  %.not.i.i170 = icmp ne i64 %i.gw, 0
  call void @llvm.assume(i1 %.not.i.i170)
  %i.gx = mul nuw nsw i64 %i.gw, 24
  %i.gy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gx) #25
          to label %.noexc172 unwind label %.loopexit ; 5 uses

.noexc172:                                        ; preds = %_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gq ; 2 uses
  store double %i.gl, ptr %i.gz, align 8, !tbaa !88
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store <2 x double> %i.gm, ptr %i.ha, align 8, !tbaa !88
  %.not13.i.i.i.i.i.i = icmp eq ptr %.sroa.0180.0211, %.sroa.17.0210
  br i1 %.not13.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit36.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc172, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i.i ], [ %i.gy, %.noexc172 ] ; 4 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.hi, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0180.0211, %.noexc172 ] ; 4 uses
  %i.hb = load double, ptr %.01214.i.i.i.i.i.i, align 8, !tbaa !88
  store double %i.hb, ptr %.015.i.i.i.i.i.i, align 8, !tbaa !88
  %i.hc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !88
  %i.he = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 8
  store double %i.hd, ptr %i.he, align 8, !tbaa !88
  %i.hf = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !88
  %i.hh = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 16
  store double %i.hg, ptr %i.hh, align 8, !tbaa !88
  %i.hi = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hi, %.sroa.17.0210
  br i1 %.not.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit36.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !263

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit36.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc172
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.gy, %.noexc172 ], [ %i.hj, %.lr.ph.i.i.i.i.i.i ]
  %.not.i37.i = icmp eq ptr %.sroa.0180.0211, null
  br i1 %.not.i37.i, label %.noexc150, label %bb.bg

bb.bg:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit36.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.0211, i64 noundef %i.gq) #24
  %.pre235 = load ptr, ptr %24, align 8, !tbaa !70
  br label %.noexc150

.noexc150:                                        ; preds = %bb.bg, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit36.i
  %i.hk = phi ptr [ %.pre235, %bb.bg ], [ %i.ft, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit36.i ]
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %i.gw
  br label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12emplace_backIJdddEEERS2_DpOT_.exit

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12emplace_backIJdddEEERS2_DpOT_.exit: ; preds = %.noexc150, %bb.bd
  %i.hm = phi ptr [ %i.hk, %.noexc150 ], [ %i.ft, %bb.bd ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %.noexc150 ], [ %.sroa.10.0209, %bb.bd ]
  %.sroa.17.6 = phi ptr [ %i.hl, %.noexc150 ], [ %.sroa.17.0210, %bb.bd ] ; 2 uses
  %.sroa.0180.6 = phi ptr [ %i.gy, %.noexc150 ], [ %.sroa.0180.0211, %bb.bd ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 24 ; 2 uses
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %._crit_edge213, label %bb.bc, !llvm.loop !264

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp:                               ; preds = %bb.bf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

._crit_edge213:                                   ; preds = %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12emplace_backIJdddEEERS2_DpOT_.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN2cv12hough_cmp_gtEEvT_S9_T0_.exit
  %i.hn = phi ptr [ %i.fd, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN2cv12hough_cmp_gtEEvT_S9_T0_.exit ], [ %i.hm, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12emplace_backIJdddEEERS2_DpOT_.exit ] ; 3 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN2cv12hough_cmp_gtEEvT_S9_T0_.exit ], [ %.sroa.10.1, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12emplace_backIJdddEEERS2_DpOT_.exit ] ; 2 uses
  %.sroa.17.0.lcssa = phi ptr [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN2cv12hough_cmp_gtEEvT_S9_T0_.exit ], [ %.sroa.17.6, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12emplace_backIJdddEEERS2_DpOT_.exit ] ; 2 uses
  %.sroa.0180.0.lcssa = phi ptr [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN2cv12hough_cmp_gtEEvT_S9_T0_.exit ], [ %.sroa.0180.6, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12emplace_backIJdddEEERS2_DpOT_.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  store i32 1124024390, ptr %27, align 8, !tbaa !32
  %i.ho = getelementptr inbounds nuw i8, ptr %27, i64 4
  store i32 1, ptr %i.ho, align 4, !tbaa !49
  %i.hp = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 1, ptr %i.hp, align 8, !tbaa !41
  %i.hq = getelementptr inbounds nuw i8, ptr %27, i64 12 ; 2 uses
  %i.hr = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.hs = ptrtoint ptr %.sroa.0180.0.lcssa to i64 ; 2 uses
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = sdiv exact i64 %i.ht, 24
  %i.hv = trunc i64 %i.hu to i32
  store i32 %i.hv, ptr %i.hq, align 4, !tbaa !40
  %i.hw = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 153, ptr %i.hw, align 8, !tbaa !76
  %i.hx = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.hz = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.ia = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.ib = getelementptr inbounds nuw i8, ptr %27, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hx, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.ib, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc151 unwind label %bb.bo

.noexc151:                                        ; preds = %._crit_edge213
  %i.ic = getelementptr inbounds nuw i8, ptr %27, i64 128
  %i.id = getelementptr inbounds nuw i8, ptr %27, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.id, i8 0, i64 72, i1 false), !tbaa !39
  %i.ie = load i32, ptr %i.hq, align 4, !tbaa !40 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %27, i64 84
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !42
  store i64 24, ptr %i.ic, align 8, !tbaa !39
  %i.ig = icmp eq ptr %.sroa.0180.0.lcssa, %.sroa.10.0.lcssa
  br i1 %i.ig, label %_ZN2cv3MatC2INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEb.exit, label %bb.bh

bb.bh:                                            ; preds = %.noexc151
  store ptr %.sroa.0180.0.lcssa, ptr %i.hx, align 8, !tbaa !38
  store ptr %.sroa.0180.0.lcssa, ptr %i.hy, align 8, !tbaa !77
  %i.ih = sext i32 %i.ie to i64
  %i.ii = mul nsw i64 %i.ih, 24
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0180.0.lcssa, i64 %i.ii ; 2 uses
  store ptr %i.ij, ptr %i.hz, align 8, !tbaa !78
  store ptr %i.ij, ptr %i.ia, align 8, !tbaa !79
  br label %_ZN2cv3MatC2INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEb.exit

_ZN2cv3MatC2INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEb.exit: ; preds = %bb.bh, %.noexc151
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.bi unwind label %bb.bp

bb.bi:                                            ; preds = %_ZN2cv3MatC2INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEb.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %i.ik = load ptr, ptr %26, align 8, !tbaa !64   ; 3 uses
  %.not.i.i152 = icmp eq ptr %i.ik, %30
  %i.il = icmp eq ptr %i.ik, null
  %or.cond.i = or i1 %.not.i.i152, %i.il
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZdaPv(ptr noundef nonnull %i.ik) #24
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  %i.im = load ptr, ptr %25, align 8, !tbaa !64   ; 3 uses
  %.not.i.i153 = icmp eq ptr %i.im, %i.cd
  %i.in = icmp eq ptr %i.im, null
  %or.cond.i154 = or i1 %.not.i.i153, %i.in
  br i1 %or.cond.i154, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit155, label %bb.bk

bb.bk:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.im) #24
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit155

_ZN2cv10AutoBufferIfLm264EED2Ev.exit155:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %.not.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit155
  %i.io = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !69
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.hn to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.is) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit155, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.it = load ptr, ptr %10, align 8, !tbaa !84   ; 3 uses
  %.not.i.i.i156 = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i156, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.iu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !89
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = sub i64 %i.iw, %i.ix
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.iy) #24
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %.not.i.i.i157 = icmp eq ptr %.sroa.0180.0.lcssa, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %i.iz = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.ja = sub i64 %i.iz, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.0.lcssa, i64 noundef %i.ja) #24
  br label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit:   ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, %bb.bn
  ret void

bb.bo:                                            ; preds = %._crit_edge213
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %_ZN2cv3MatC2INS_3VecIdLi3EEEEERKSt6vectorIT_SaIS5_EEb.exit
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #22
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn104 = phi { ptr, i32 } [ %i.jc, %bb.bp ], [ %i.jb, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %bb.br

bb.br:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bq, %bb.az, %bb.av
  %.sroa.17.1 = phi ptr [ null, %bb.az ], [ null, %bb.av ], [ %.sroa.17.0.lcssa, %bb.bq ], [ %.sroa.17.0210, %.loopexit ], [ %.sroa.17.0210, %.loopexit.split-lp ] ; 2 uses
  %.sroa.0180.1 = phi ptr [ null, %bb.az ], [ null, %bb.av ], [ %.sroa.0180.0.lcssa, %bb.bq ], [ %.sroa.0180.0211, %.loopexit ], [ %.sroa.0180.0211, %.loopexit.split-lp ] ; 2 uses
  %.pn108 = phi { ptr, i32 } [ %i.fc, %bb.az ], [ %i.ej, %bb.av ], [ %.pn104, %bb.bq ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.jd = load ptr, ptr %26, align 8, !tbaa !64   ; 3 uses
  %.not.i.i158 = icmp eq ptr %i.jd, %30
  %i.je = icmp eq ptr %i.jd, null
  %or.cond.i159 = or i1 %.not.i.i158, %i.je
  br i1 %or.cond.i159, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit160, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZdaPv(ptr noundef nonnull %i.jd) #24
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit160

_ZN2cv10AutoBufferIfLm264EED2Ev.exit160:          ; preds = %bb.bs, %bb.br, %bb.au
  %.sroa.17.2 = phi ptr [ null, %bb.au ], [ %.sroa.17.1, %bb.br ], [ %.sroa.17.1, %bb.bs ] ; 2 uses
  %.sroa.0180.2 = phi ptr [ null, %bb.au ], [ %.sroa.0180.1, %bb.br ], [ %.sroa.0180.1, %bb.bs ] ; 2 uses
  %.pn108.pn = phi { ptr, i32 } [ %i.ei, %bb.au ], [ %.pn108, %bb.br ], [ %.pn108, %bb.bs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  %i.jf = load ptr, ptr %25, align 8, !tbaa !64   ; 3 uses
  %.not.i.i161 = icmp eq ptr %i.jf, %i.cd
  %i.jg = icmp eq ptr %i.jf, null
  %or.cond.i162 = or i1 %.not.i.i161, %i.jg
  br i1 %or.cond.i162, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit163, label %bb.bt

bb.bt:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit160
  call void @_ZdaPv(ptr noundef nonnull %i.jf) #24
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit163

_ZN2cv10AutoBufferIfLm264EED2Ev.exit163:          ; preds = %bb.bt, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit160, %bb.at
  %.sroa.17.3 = phi ptr [ null, %bb.at ], [ %.sroa.17.2, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit160 ], [ %.sroa.17.2, %bb.bt ]
  %.sroa.0180.3 = phi ptr [ null, %bb.at ], [ %.sroa.0180.2, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit160 ], [ %.sroa.0180.2, %bb.bt ]
  %.pn108.pn.pn = phi { ptr, i32 } [ %i.eh, %bb.at ], [ %.pn108.pn, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit160 ], [ %.pn108.pn, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.jh = load ptr, ptr %24, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i164 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorIiSaIiEED2Ev.exit165, label %bb.bu

bb.bu:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit163
  %i.ji = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !69
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit165

_ZNSt6vectorIiSaIiEED2Ev.exit165:                 ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit163, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #22
  %i.jn = ptrtoint ptr %.sroa.17.3 to i64
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit165, %bb.as
  %.sroa.17.4 = phi i64 [ %i.jn, %_ZNSt6vectorIiSaIiEED2Ev.exit165 ], [ 0, %bb.as ]
  %.sroa.0180.4 = phi ptr [ %.sroa.0180.3, %_ZNSt6vectorIiSaIiEED2Ev.exit165 ], [ null, %bb.as ]
  %.pn108.pn.pn.pn = phi { ptr, i32 } [ %.pn108.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit165 ], [ %.pn102, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.f
  %.sroa.17.5 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %.sroa.17.4, %bb.bv ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.g ], [ 0, %bb.f ]
  %.sroa.0180.5 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %.sroa.0180.4, %bb.bv ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %bb.g ], [ null, %bb.f ] ; 3 uses
  %.pn121.pn = phi { ptr, i32 } [ %.pn121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %.pn119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %.pn115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %.pn108.pn.pn.pn, %bb.bv ], [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %.pn100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %bb.g ], [ %i.g, %bb.f ]
  %i.jo = load ptr, ptr %10, align 8, !tbaa !84   ; 3 uses
  %.not.i.i.i166 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit167, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jp = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !89
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jo to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.jt) #24
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit167

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit167: ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %.not.i.i.i168 = icmp eq ptr %.sroa.0180.5, null
  br i1 %.not.i.i.i168, label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit169, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit167
  %i.ju = ptrtoint ptr %.sroa.0180.5 to i64
  %i.jv = sub i64 %.sroa.17.5, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.5, i64 noundef %i.jv) #24
  br label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit169

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit169: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit167, %bb.by
  resume { ptr, i32 } %.pn121.pn
}

declare void @_ZNK2cv11_InputArray6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !47
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.40) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !39
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !36
  %i.g = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.g, ptr %i.b, align 8, !tbaa !37
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !37
  store i8 %i.i, ptr %i.h, align 1, !tbaa !37
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !48
  %i.l = load ptr, ptr %0, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #22
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL17findLocalMaximumsEiiiPKiRSt6vectorIiSaIiEE(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4) unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge28.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge28.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.e = add nuw nsw i32 %0, 2
  %i.f = zext nneg i32 %i.e to i64
  %i.g = zext nneg i32 %0 to i64                  ; 2 uses
  %wide.trip.count33 = zext nneg i32 %0 to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.g
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv30 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next31, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge28.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge28.split, label %.preheader, !llvm.loop !266

bb.b:                                             ; preds = %.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.h = mul nuw nsw i64 %indvars.iv.next, %i.f
  %i.i = add nuw nsw i64 %i.h, %indvars.iv30      ; 2 uses
end_hunk_0
