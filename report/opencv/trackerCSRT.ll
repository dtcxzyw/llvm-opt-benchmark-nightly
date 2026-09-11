Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/trackerCSRT?download=true
inline.NumInlined: 1662
inline.NumDeleted: 602
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv8tracking4impl15TrackerCSRTImpl4initERKNS_11_InputArrayERKNS_5Rect_IiEE:bb.a
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.d = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.e, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !55
  store ptr %15, ptr %i.d, align 8, !tbaa !54
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef 8, i32 noundef 0, i32 noundef 0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.body

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.h = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.g
  %i.i = icmp eq i32 %i.h, 65536
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54, !noalias !256
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %i.k)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.k

bb.i:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.k

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.h, %bb.i
  %i.l = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.n

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.n, %bb.l ], [ %i.m, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %.body

bb.n:                                             ; preds = %bb.j, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store float 1.000000e+00, ptr %i.o, align 8, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.q = load i32, ptr %i.p, align 8, !tbaa !90   ; 6 uses
  %i.r = icmp slt i32 %i.q, 3
  br i1 %i.r, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc161 unwind label %bb.v

.noexc161:                                        ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.38, i32 noundef 109) #27
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc161
  unreachable

bb.q:                                             ; preds = %.noexc161
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %13, align 8, !tbaa !23    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  %i.w = load i64, ptr %i.u, align 8, !tbaa !26
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.body

bb.r:                                             ; preds = %bb.n
  %i.y = icmp sgt i32 %i.q, 0
  br i1 %i.y, label %bb.s, label %.thread.i

.thread.i:                                        ; preds = %bb.r
  %i.z = icmp eq i32 %i.q, 0
  %i.aa = zext i1 %i.z to i32
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 84
  %i.ac = icmp eq i32 %i.q, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %15, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = select i1 %i.ac, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %i.q, 1
  br i1 %.not.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %.thread.i
  %i.ae = phi i32 [ %i.aa, %.thread.i ], [ %i.ad, %bb.s ]
  %i.af = icmp sgt i32 %i.q, -1
  %i.ag = zext i1 %i.af to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.ah = phi i32 [ %i.ae, %bb.t ], [ %i.ad, %bb.s ]
  %i.ai = phi i32 [ %i.ag, %bb.t ], [ %.val, %bb.s ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.ai to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ah to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.aj, align 8
  %i.ak = load <2 x i32>, ptr %2, align 4, !tbaa !91
  %i.al = sitofp <2 x i32> %i.ak to <2 x float>
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load <2 x i32>, ptr %i.am, align 4, !tbaa !91
  %i.ao = sitofp <2 x i32> %i.an to <2 x float>   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  store <2 x float> %i.al, ptr %i.ap, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  store <2 x float> %i.ao, ptr %.sroa.525.0..sroa_idx, align 8
  %shift = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nnan <2 x float> %shift, %i.ao
  %i.aq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ar = fpext float %i.aq to double
  %i.as = fdiv double %i.ar, 4.000000e+02
  %i.at = call double @llvm.ceil.f64(double %i.as)
  %i.au = fptosi double %i.at to i32
  %i.av = call i32 @llvm.smax.i32(i32 %i.au, i32 1)
  %i.aw = uitofp nneg i32 %i.av to double         ; 2 uses
  %i.ax = fcmp olt double %i.aw, 4.000000e+00
  %.sroa.speculated389 = select i1 %i.ax, double %i.aw, double 4.000000e+00
  %i.ay = call double @llvm.floor.f64(double %.sroa.speculated389)
  %i.az = fptosi double %i.ay to i32              ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2772 ; 2 uses
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !102
  %i.bb = load <4 x float>, ptr %i.ap, align 8    ; 2 uses
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.bd = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.bc)
  %i.be = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.bf = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !257
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 3 uses
  %i.bq = insertelement <2 x i32> poison, i32 %i.bd, i64 0
  %i.br = insertelement <2 x i32> %i.bq, i32 %i.bf, i64 1
  %i.bs = sitofp <2 x i32> %i.br to <2 x float>   ; 5 uses
  store <2 x float> %i.bs, ptr %i.bg, align 8
  %shift495 = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop496 = fmul nnan <2 x float> %shift495, %i.bs
  %i.bt = extractelement <2 x float> %foldExtExtBinop496, i64 0
  %i.bu = call noundef float @sqrtf(float noundef %i.bt) #25
  %i.bv = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.by, <2 x float> %i.bs)
  %i.ca = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bz)
  %i.cb = fptosi <2 x float> %i.ca to <2 x i32>
  %i.cc = sitofp <2 x i32> %i.cb to <2 x float>
  %67 = call reassoc nnan float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cc)
  %i.cd = fmul nnan float %67, 5.000000e-01       ; 5 uses
  store float %i.cd, ptr %i.bl, align 4, !tbaa !89
  store float %i.cd, ptr %i.bk, align 8, !tbaa !88
  %i.ce = load float, ptr %i.bm, align 8, !tbaa !258 ; 2 uses
  %i.cf = fmul float %i.ce, %i.ce
  %i.cg = fmul float %i.cd, %i.cd
  %i.ch = fdiv float %i.cf, %i.cg
  %sqrt = call float @llvm.sqrt.f32(float %i.ch)  ; 2 uses
  %i.ci = fcmp ogt float %sqrt, 1.000000e+00
  %storemerge = select i1 %i.ci, float 1.000000e+00, float %sqrt ; 2 uses
  store float %storemerge, ptr %i.bn, align 8, !tbaa !127
  %i.cj = fmul float %i.cd, %storemerge
  %i.ck = call float @llvm.floor.f32(float %i.cj)
  %i.cl = fptosi float %i.ck to i32               ; 2 uses
  %.sroa.4383.0.insert.ext = zext i32 %i.cl to i64
  %.sroa.0382.0.insert.insert = mul nuw i64 %.sroa.4383.0.insert.ext, 4294967297 ; 2 uses
  store i64 %.sroa.0382.0.insert.insert, ptr %i.bo, align 8
  %i.cm = load <2 x i32>, ptr %2, align 4, !tbaa !91
  %i.cn = sitofp <2 x i32> %i.cm to <2 x float>
  %i.co = fmul nnan <2 x float> %i.bs, splat (float 5.000000e-01)
  %i.cp = fadd <2 x float> %i.co, %i.cn
  store <2 x float> %i.cp, ptr %i.bp, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !259
  %i.cs = trunc i64 %.sroa.0382.0.insert.insert to i32
  %i.ct = sdiv i32 %i.cs, %i.az
  %i.cu = sdiv i32 %i.cl, %i.az
  invoke void @_ZN2cv22gaussian_shaped_labelsEfii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %18, float noundef %i.cr, i32 noundef %i.ct, i32 noundef %i.cu)
          to label %bb.w unwind label %bb.ab

bb.v:                                             ; preds = %bb.o
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cx = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.cw, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.x unwind label %bb.ac      ; 0 uses

bb.x:                                             ; preds = %bb.w
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !24 ; 5 uses
  %cond = icmp eq i64 %i.cz, 0
  br i1 %cond, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit189.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.cz, i64 4) ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !23 ; 3 uses
  %bcmp = call i32 @bcmp(ptr %i.db, ptr nonnull @.str.2, i64 %.sroa.speculated.i)
  %.not.i171 = icmp eq i32 %bcmp, 0
  %i.dc = icmp eq i64 %i.cz, 4                    ; 2 uses
  %or.cond = and i1 %i.dc, %.not.i171
  br i1 %or.cond, label %bb.y, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i173

bb.y:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !260
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !261
  %.sroa.2379.0.insert.ext = zext i32 %i.dg to i64
  %.sroa.2379.0.insert.shift = shl nuw i64 %.sroa.2379.0.insert.ext, 32
  %.sroa.0378.0.insert.ext = zext i32 %i.de to i64
  %.sroa.0378.0.insert.insert = or disjoint i64 %.sroa.2379.0.insert.shift, %.sroa.0378.0.insert.ext
  invoke void @_ZN2cv12get_hann_winENS_5Size_IiEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %19, i64 %.sroa.0378.0.insert.insert)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.di = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.dh, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.aa unwind label %bb.af     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.ax

bb.ab:                                            ; preds = %bb.u
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.w
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn91 = phi { ptr, i32 } [ %i.dk, %bb.ac ], [ %i.dj, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %.body

bb.ae:                                            ; preds = %bb.y
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.z
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #25
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn99 = phi { ptr, i32 } [ %i.dm, %bb.af ], [ %i.dl, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %.body

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i173:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %bcmp397 = call i32 @bcmp(ptr %i.db, ptr nonnull @.str.3, i64 %.sroa.speculated.i)
  %.not.i174 = icmp eq i32 %bcmp397, 0
  %or.cond399 = and i1 %i.dc, %.not.i174
  br i1 %or.cond399, label %bb.ah, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i182

bb.ah:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i173
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !260
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !261
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !262
  %.sroa.2377.0.insert.ext = zext i32 %i.dq to i64
  %.sroa.2377.0.insert.shift = shl nuw i64 %.sroa.2377.0.insert.ext, 32
  %.sroa.0376.0.insert.ext = zext i32 %i.do to i64
  %.sroa.0376.0.insert.insert = or disjoint i64 %.sroa.2377.0.insert.shift, %.sroa.0376.0.insert.ext
  invoke void @_ZN2cv17get_chebyshev_winENS_5Size_IiEEf(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, i64 %.sroa.0376.0.insert.insert, float noundef %i.ds)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.du = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.dt, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.aj unwind label %bb.al     ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.ax

bb.ak:                                            ; preds = %bb.ah
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn97 = phi { ptr, i32 } [ %i.dw, %bb.al ], [ %i.dv, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %.body

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i182:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i173
  %.sroa.speculated.i181 = call i64 @llvm.umin.i64(i64 %i.cz, i64 6)
  %bcmp398 = call i32 @bcmp(ptr %i.db, ptr nonnull @.str.4, i64 %.sroa.speculated.i181)
  %.not.i183 = icmp eq i32 %bcmp398, 0
  %i.dx = icmp eq i64 %i.cz, 6
  %or.cond400 = and i1 %i.dx, %.not.i183
  br i1 %or.cond400, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit189.thread

bb.an:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i182
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !260
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !261
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !263
  %.sroa.2375.0.insert.ext = zext i32 %i.eb to i64
  %.sroa.2375.0.insert.shift = shl nuw i64 %.sroa.2375.0.insert.ext, 32
  %.sroa.0374.0.insert.ext = zext i32 %i.dz to i64
  %.sroa.0374.0.insert.insert = or disjoint i64 %.sroa.2375.0.insert.shift, %.sroa.0374.0.insert.ext
  invoke void @_ZN2cv14get_kaiser_winENS_5Size_IiEEf(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %21, i64 %.sroa.0374.0.insert.insert, float noundef %i.ed)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ef = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ee, ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.ap unwind label %bb.ar     ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.ax

bb.aq:                                            ; preds = %bb.an
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
end_hunk_0
begin_hunk_1_@_ZN2cv6legacy8tracking4impl15TrackerCSRTImpl10updateImplERKNS_3MatERNS_5Rect_IdEE:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6legacy8tracking4impl15TrackerCSRTImpl14setInitialMaskERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(2840) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !358
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54, !noalias !358
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit.i

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit.i

_ZNK2cv11_InputArray6getMatEi.exit.i:             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.f = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %_ZN2cv8tracking4impl15TrackerCSRTImpl14setInitialMaskERKNS_11_InputArrayE.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.g

_ZN2cv8tracking4impl15TrackerCSRTImpl14setInitialMaskERKNS_11_InputArrayE.exit: ; preds = %_ZNK2cv11_InputArray6getMatEi.exit.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

declare void @_ZN2cv6legacy8tracking7TrackerC2Ev(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv6legacy8tracking7TrackerD2Ev(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #21

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking21TrackerContribSamplerESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking21TrackerContribSamplerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv6detail8tracking21TrackerContribSamplerD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking21TrackerContribSamplerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking21TrackerContribSamplerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking21TrackerContribSamplerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN2cv6detail8tracking21TrackerContribSamplerC1Ev(ptr noundef nonnull align 8 dereferenceable(49)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv6detail8tracking21TrackerContribSamplerD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking24TrackerContribFeatureSetESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking24TrackerContribFeatureSetESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv6detail8tracking24TrackerContribFeatureSetD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking24TrackerContribFeatureSetESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking24TrackerContribFeatureSetESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking24TrackerContribFeatureSetESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN2cv6detail8tracking24TrackerContribFeatureSetC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv6detail8tracking24TrackerContribFeatureSetD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !51}
!1 = distinct !{null}
!2 = distinct !{!2, !51}
!3 = distinct !{!3, !51}
!4 = distinct !{null, null, null}
!5 = distinct !{!5, !51}
!6 = distinct !{!6, !51}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"vtable pointer", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"long", !11, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !21, i64 8, !11, i64 16}
!23 = !{!22, !18, i64 0}
!24 = !{!22, !21, i64 8}
!25 = !{!21, !21, i64 0}
!26 = !{!11, !11, i64 0}
!27 = !{!"float", !11, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"_ZTSN2cv5Size_IiEE", !12, i64 0, !12, i64 4}
!30 = !{!29, !12, i64 0}
!31 = !{!29, !12, i64 4}
!32 = !{!"p1 double", !17, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIdSaIdEE", !35, i64 0}
!37 = !{!"p1 int", !17, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !38, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !39, i64 0}
!41 = !{!"_ZTSSt6vectorIiSaIiEE", !40, i64 0}
!42 = !{!"_ZTSN2cv9HistogramE", !12, i64 0, !12, i64 4, !12, i64 8, !36, i64 16, !41, i64 40}
!43 = !{!38, !37, i64 0}
!44 = !{!38, !37, i64 16}
!45 = !{!33, !32, i64 0}
!46 = !{!33, !32, i64 16}
!47 = !{!"p1 _ZTSN2cv3MatE", !17, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!49 = !{!48, !47, i64 0}
!50 = !{!48, !47, i64 8}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!48, !47, i64 16}
!53 = !{!"_ZTSN2cv11_InputArrayE", !12, i64 0, !17, i64 8, !29, i64 16}
!54 = !{!53, !17, i64 8}
!55 = !{!53, !12, i64 0}
!56 = !{!"double", !11, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"_ZTSN2cv7TrackerE"}
!59 = !{!"_ZTSN2cv8tracking11TrackerCSRTE", !58, i64 0}
!60 = !{!"bool", !11, i64 0}
!61 = !{!"_ZTSN2cv8tracking11TrackerCSRT6ParamsE", !60, i64 0, !60, i64 1, !60, i64 2, !60, i64 3, !60, i64 4, !60, i64 5, !22, i64 8, !27, i64 40, !27, i64 44, !27, i64 48, !27, i64 52, !27, i64 56, !27, i64 60, !27, i64 64, !27, i64 68, !27, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !27, i64 88, !12, i64 92, !12, i64 96, !27, i64 100, !27, i64 104, !27, i64 108, !27, i64 112, !27, i64 116}
!62 = !{!"p1 _ZTSN2cv8tracking4impl16TrackerCSRTModelE", !17, i64 0}
!63 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!64 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !63, i64 0}
!65 = !{!"_ZTSSt12__shared_ptrIN2cv8tracking4impl16TrackerCSRTModelELN9__gnu_cxx12_Lock_policyE2EE", !62, i64 0, !64, i64 8}
!66 = !{!"_ZTSSt10shared_ptrIN2cv8tracking4impl16TrackerCSRTModelEE", !65, i64 0}
!67 = !{!"_ZTSN2cv3PtrINS_8tracking4impl16TrackerCSRTModelEEE", !66, i64 0}
!68 = !{!"p1 _ZTSN2cv12MatAllocatorE", !17, i64 0}
!69 = !{!"p1 _ZTSN2cv8UMatDataE", !17, i64 0}
!70 = !{!"_ZTSN2cv10DataLayoutE", !11, i64 0}
!71 = !{!"_ZTSN2cv8MatShapeE", !12, i64 0, !70, i64 4, !12, i64 8, !11, i64 12}
!72 = !{!"_ZTSN2cv7MatStepE", !11, i64 0}
!73 = !{!"_ZTSN2cv3MatE", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !68, i64 56, !69, i64 64, !71, i64 72, !72, i64 128}
!74 = !{!"_ZTSN2cv5Rect_IfEE", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12}
!75 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !48, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !76, i64 0}
!78 = !{!"p1 float", !17, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!80 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !79, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !80, i64 0}
!82 = !{!"_ZTSSt6vectorIfSaIfEE", !81, i64 0}
!83 = !{!"_ZTSN2cv5Size_IfEE", !27, i64 0, !27, i64 4}
!84 = !{!"_ZTSN2cv6Point_IfEE", !27, i64 0, !27, i64 4}
!85 = !{!"_ZTSN2cv4DSSTE", !29, i64 0, !73, i64 8, !73, i64 216, !73, i64 424, !82, i64 632, !73, i64 656, !73, i64 864, !27, i64 1072, !27, i64 1076, !27, i64 1080, !27, i64 1084, !12, i64 1088, !27, i64 1092, !27, i64 1096, !27, i64 1100, !27, i64 1104, !29, i64 1108}
!86 = !{!"_ZTSN2cv8tracking4impl15TrackerCSRTImplE", !59, i64 0, !61, i64 8, !67, i64 128, !27, i64 144, !73, i64 152, !73, i64 360, !74, i64 568, !77, i64 584, !82, i64 608, !83, i64 632, !29, i64 640, !83, i64 648, !29, i64 656, !27, i64 664, !84, i64 668, !85, i64 680, !42, i64 1800, !42, i64 1864, !56, i64 1928, !73, i64 1936, !73, i64 2144, !73, i64 2352, !73, i64 2560, !27, i64 2768, !12, i64 2772}
!87 = !{!86, !27, i64 144}
!88 = !{!86, !27, i64 648}
!89 = !{!86, !27, i64 652}
!90 = !{!71, !12, i64 0}
!91 = !{!12, !12, i64 0}
!92 = !{!86, !60, i64 12}
!93 = !{i8 0, i8 2}
!94 = !{}
!95 = !{!"p1 _ZTSN2cv5MatOpE", !17, i64 0}
!96 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !11, i64 0}
!97 = !{!"_ZTSN2cv3VecIdLi4EEE", !96, i64 0}
!98 = !{!"_ZTSN2cv7Scalar_IdEE", !97, i64 0}
!99 = !{!"_ZTSN2cv7MatExprE", !95, i64 0, !12, i64 8, !73, i64 16, !73, i64 224, !73, i64 432, !56, i64 640, !56, i64 648, !98, i64 656}
!100 = !{!99, !95, i64 0}
!101 = !{!79, !78, i64 0}
!102 = !{!86, !12, i64 2772}
!103 = !{!47, !47, i64 0}
!104 = !{!79, !78, i64 8}
!105 = !{!"llvm.loop.isvectorized", i32 1}
!106 = !{!"llvm.loop.unroll.runtime.disable"}
!107 = !{!"_ZTSN2cv5RangeE", !12, i64 0, !12, i64 4}
!108 = !{!107, !12, i64 0}
!109 = !{!107, !12, i64 4}
!110 = !{ptr @_ZN2cv8tracking4impl23ParallelCreateCSRFilterD2Ev}
!111 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!112 = !{!"p1 _ZTSSt6vectorIN2cv3MatESaIS1_EE", !17, i64 0}
!113 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!114 = !{!"_ZTSN2cv8tracking4impl23ParallelCreateCSRFilterE", !113, i64 0, !12, i64 8, !73, i64 16, !73, i64 224, !77, i64 432, !112, i64 456}
!115 = !{!114, !12, i64 8}
!116 = !{!83, !27, i64 0}
!117 = !{!83, !27, i64 4}
!118 = !{!73, !12, i64 12}
!119 = !{!73, !12, i64 8}
!120 = !{!86, !56, i64 1928}
!121 = !{!73, !12, i64 0}
!122 = !{!33, !32, i64 8}
!123 = !{!32, !32, i64 0}
!124 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!125 = !{!37, !37, i64 0}
!126 = !{!86, !12, i64 92}
!127 = !{!86, !27, i64 664}
!128 = !{!86, !60, i64 13}
!129 = !{!86, !27, i64 2768}
!130 = !{!79, !78, i64 16}
!131 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 8, !12, i64 12}
!132 = !{!131, !12, i64 8}
!133 = !{!131, !12, i64 12}
!134 = !{!65, !62, i64 0}
!135 = !{!64, !63, i64 0}
!136 = !{!61, !60, i64 4}
!137 = !{!61, !60, i64 5}
!138 = !{!60, !60, i64 0}
!139 = !{!61, !12, i64 76}
!140 = !{!61, !27, i64 72}
!141 = !{!61, !12, i64 80}
!142 = !{!61, !12, i64 96}
!143 = !{!61, !12, i64 84}
!144 = !{!61, !12, i64 92}
!145 = !{!61, !27, i64 88}
!146 = !{!61, !27, i64 116}
!147 = !{!61, !60, i64 0}
!148 = !{!61, !60, i64 1}
!149 = !{!61, !60, i64 2}
!150 = !{!"p1 _ZTSN2cv6legacy8tracking4impl15TrackerCSRTImplE", !17, i64 0}
!151 = !{!"_ZTSSt12__shared_ptrIN2cv6legacy8tracking4impl15TrackerCSRTImplELN9__gnu_cxx12_Lock_policyE2EE", !150, i64 0, !64, i64 8}
!152 = !{!151, !150, i64 0}
!153 = !{!17, !17, i64 0}
!154 = !{!"_ZTSSt9type_info", !18, i64 8}
!155 = !{!154, !18, i64 8}
!156 = !{!"p1 _ZTSN2cv6detail8tracking24TrackerContribFeatureSetE", !17, i64 0}
!157 = !{!"_ZTSSt12__shared_ptrIN2cv6detail8tracking24TrackerContribFeatureSetELN9__gnu_cxx12_Lock_policyE2EE", !156, i64 0, !64, i64 8}
!158 = !{!"_ZTSSt10shared_ptrIN2cv6detail8tracking24TrackerContribFeatureSetEE", !157, i64 0}
!159 = !{!"_ZTSN2cv3PtrINS_6detail8tracking24TrackerContribFeatureSetEEE", !158, i64 0}
!160 = !{!"p1 _ZTSN2cv6detail8tracking21TrackerContribSamplerE", !17, i64 0}
!161 = !{!"_ZTSSt12__shared_ptrIN2cv6detail8tracking21TrackerContribSamplerELN9__gnu_cxx12_Lock_policyE2EE", !160, i64 0, !64, i64 8}
!162 = !{!"_ZTSSt10shared_ptrIN2cv6detail8tracking21TrackerContribSamplerEE", !161, i64 0}
!163 = !{!"_ZTSN2cv3PtrINS_6detail8tracking21TrackerContribSamplerEEE", !162, i64 0}
!164 = !{!"p1 _ZTSN2cv6detail8tracking12TrackerModelE", !17, i64 0}
end_hunk_1
