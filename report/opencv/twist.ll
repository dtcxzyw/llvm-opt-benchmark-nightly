Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/twist?download=true
inline.NumInlined: 197
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv6detail8tracking24computeInteractionMatrixERKNS_3MatES4_S4_RS2_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !16   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv6detail8tracking24computeInteractionMatrixERKNS_3MatES4_S4_RS2_, ptr noundef nonnull @.str.1, i32 noundef 14) #13
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !21
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.am

bb.g:                                             ; preds = %bb.a
  %i.n = load i32, ptr %1, align 8, !tbaa !22
  %i.o = and i32 %i.n, 4095
  %i.p = icmp eq i32 %i.o, 5
  br i1 %i.p, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv6detail8tracking24computeInteractionMatrixERKNS_3MatES4_S4_RS2_, ptr noundef nonnull @.str.1, i32 noundef 15) #13
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.l:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.l
  %i.v = load i64, ptr %i.t, align 8, !tbaa !21
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.k
  %.pn48 = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.r, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.am

bb.m:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !16
  %i.z = icmp eq i32 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.ab, 3
  %or.cond = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = load i32, ptr %2, align 8, !tbaa !22
  %i.ae = and i32 %i.ad, 4095
  %i.af = icmp eq i32 %i.ae, 5
  br i1 %i.af, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv6detail8tracking24computeInteractionMatrixERKNS_3MatES4_S4_RS2_, ptr noundef nonnull @.str.1, i32 noundef 16) #13
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.s:                                             ; preds = %bb.p
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.s
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !21
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.r
  %.pn50 = phi { ptr, i32 } [ %i.ag, %bb.r ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.ah, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.am

bb.t:                                             ; preds = %bb.n
  %i.an = shl nsw i32 %i.c, 1
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %i.an, i32 noundef 6, i32 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 -1056833530, ptr %10, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.a, ptr %i.ap, align 8, !tbaa !28
  store i64 4294967297, ptr %i.ao, align 8, !tbaa !35
  %i.aq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.ar = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.aq) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %11, i8 0, i64 36, i1 false), !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 -1040056315, ptr %12, align 8, !tbaa !27
  store ptr %11, ptr %i.as, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 12884901891, ptr %i.at, align 8, !tbaa !35
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.au = load float, ptr %11, align 8, !tbaa !37, !noalias !38 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 28
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !37, !noalias !38 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !37, !noalias !38 ; 3 uses
  %i.bc = load <2 x float>, ptr %i.aw, align 4, !tbaa !37, !noalias !38 ; 5 uses
  %i.bd = load <2 x float>, ptr %i.av, align 8, !tbaa !37, !noalias !38 ; 4 uses
  %i.be = fneg <2 x float> %i.bd                  ; 3 uses
  %i.bf = extractelement <2 x float> %i.be, i64 1 ; 2 uses
  %i.bg = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.bh = fmul float %i.bg, %i.bf
  %i.bi = extractelement <2 x float> %i.bd, i64 0
  %i.bj = extractelement <2 x float> %i.bc, i64 1 ; 2 uses
  %i.bk = call float @llvm.fmuladd.f32(float %i.bi, float %i.bj, float %i.bh)
  %i.bl = fmul float %i.bb, %i.bf
  %i.bm = call float @llvm.fmuladd.f32(float %i.az, float %i.bj, float %i.bl)
  %i.bn = fneg float %i.bm
  %i.bo = load <2 x float>, ptr %i.ax, align 4, !tbaa !37, !noalias !38 ; 5 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0
  %i.bq = fmul float %i.bp, %i.bn
  %i.br = call float @llvm.fmuladd.f32(float %i.au, float %i.bk, float %i.bq)
  %i.bs = extractelement <2 x float> %i.be, i64 0
  %i.bt = fmul float %i.bb, %i.bs
  %i.bu = call float @llvm.fmuladd.f32(float %i.az, float %i.bg, float %i.bt)
  %i.bv = extractelement <2 x float> %i.bo, i64 1
  %i.bw = call float @llvm.fmuladd.f32(float %i.bv, float %i.bu, float %i.br) ; 2 uses
  %i.bx = fcmp une float %i.bw, 0.000000e+00      ; 4 uses
  br i1 %i.bx, label %bb.v, label %_ZNK2cv4MatxIfLi3ELi3EE3invEiPb.exit

bb.v:                                             ; preds = %bb.u
  %i.by = fdiv float 1.000000e+00, %i.bw
  %i.bz = fneg <2 x float> %i.bc
  %i.ca = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cb = insertelement <2 x float> %i.ca, float %i.bb, i64 1 ; 2 uses
  %i.cc = fneg <2 x float> %i.cb
  %i.cd = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ce = insertelement <2 x float> %i.cd, float %i.au, i64 1 ; 2 uses
  %i.cf = fmul <2 x float> %i.ce, %i.be
  %i.cg = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ch = insertelement <2 x float> %i.cg, float %i.az, i64 1 ; 2 uses
  %i.ci = fmul <2 x float> %i.ch, %i.bz
  %i.cj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.cb, <2 x float> %i.ci)
  %i.ck = fmul <2 x float> %i.bo, %i.cc
  %i.cl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.bc, <2 x float> %i.ck)
  %i.cm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.ch, <2 x float> %i.cf)
  %i.cn = insertelement <2 x float> poison, float %i.by, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cp = fmul <2 x float> %i.cj, %i.co
  %i.cq = fmul <2 x float> %i.cl, %i.co
  %i.cr = fmul <2 x float> %i.cm, %i.co
  br label %_ZNK2cv4MatxIfLi3ELi3EE3invEiPb.exit

_ZNK2cv4MatxIfLi3ELi3EE3invEiPb.exit:             ; preds = %bb.u, %bb.v
  %i.cs = phi <2 x float> [ %i.cr, %bb.v ], [ zeroinitializer, %bb.u ]
  %i.ct = phi <2 x float> [ %i.cq, %bb.v ], [ zeroinitializer, %bb.u ]
  %i.cu = phi <2 x float> [ %i.cp, %bb.v ], [ zeroinitializer, %bb.u ]
  %18 = select i1 %i.bx, <2 x float> %i.cs, <2 x float> zeroinitializer
  %19 = select i1 %i.bx, <2 x float> %i.ct, <2 x float> zeroinitializer
  %20 = select i1 %i.bx, <2 x float> %i.cu, <2 x float> zeroinitializer
  %i.cv = load i32, ptr %i.b, align 4, !tbaa !16  ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv4MatxIfLi3ELi3EE3invEiPb.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.de = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.x

._crit_edge:                                      ; preds = %bb.ah, %_ZNK2cv4MatxIfLi3ELi3EE3invEiPb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  ret void

bb.w:                                             ; preds = %bb.t
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br label %bb.al

bb.x:                                             ; preds = %.lr.ph, %bb.ah
  %i.dm = phi i32 [ %i.cv, %.lr.ph ], [ %i.hf, %bb.ah ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ah ] ; 8 uses
  %i.dn = load i32, ptr %i.cx, align 4, !tbaa !39
  %i.do = icmp slt i32 %i.dn, 2
  br i1 %i.do, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dp = load ptr, ptr %i.cz, align 8, !tbaa !29
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atIfEERKT_i.exit

bb.z:                                             ; preds = %bb.x
  %i.dr = load i32, ptr %1, align 8, !tbaa !22
  %i.ds = and i32 %i.dr, 16384
  %i.dt = icmp ne i32 %i.ds, 0
  %i.du = load i32, ptr %i.cy, align 8
  %i.dv = icmp eq i32 %i.du, 1
  %or.cond.i = select i1 %i.dt, i1 true, i1 %i.dv
  br i1 %or.cond.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dw = load ptr, ptr %i.cz, align 8, !tbaa !29
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atIfEERKT_i.exit

bb.ab:                                            ; preds = %bb.z
  %i.dy = load i32, ptr %i.d, align 4, !tbaa !16  ; 4 uses
  %i.dz = icmp eq i32 %i.dy, 1
  br i1 %i.dz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ea = load ptr, ptr %i.cz, align 8, !tbaa !29
  %i.eb = load i64, ptr %i.da, align 8, !tbaa !30
  %i.ec = mul i64 %i.eb, %indvars.iv
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ec
  br label %_ZNK2cv3Mat2atIfEERKT_i.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ee = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ef = sdiv i32 %i.ee, %i.dy                   ; 2 uses
  %i.eg = mul nsw i32 %i.ef, %i.dy                ; 0 uses
  %.recomposed = srem i32 %i.ee, %i.dy
  %i.eh = load ptr, ptr %i.cz, align 8, !tbaa !29
  %i.ei = load i64, ptr %i.da, align 8, !tbaa !30
  %i.ej = sext i32 %i.ef to i64
  %i.ek = mul i64 %i.ei, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek
  %i.em = sext i32 %.recomposed to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.em
  br label %_ZNK2cv3Mat2atIfEERKT_i.exit

_ZNK2cv3Mat2atIfEERKT_i.exit:                     ; preds = %bb.y, %bb.aa, %bb.ac, %bb.ad
  %.0.i = phi ptr [ %i.dq, %bb.y ], [ %i.dx, %bb.aa ], [ %i.ed, %bb.ac ], [ %i.en, %bb.ad ]
  %i.eo = load float, ptr %.0.i, align 4, !tbaa !37 ; 3 uses
  %i.ep = call noundef float @llvm.fabs.f32(float %i.eo)
  %i.eq = fcmp olt float %i.ep, 1.000000e-03
  br i1 %i.eq, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %_ZNK2cv3Mat2atIfEERKT_i.exit
  %i.er = load i32, ptr %i.db, align 4, !tbaa !39
  %i.es = load ptr, ptr %i.dc, align 8, !tbaa !29 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv
  %i.eu = load float, ptr %i.et, align 4, !tbaa !37
  %i.ev = icmp slt i32 %i.er, 2
  %i.ew = load i64, ptr %i.dd, align 8
  %.sink.idx.i = select i1 %i.ev, i64 0, i64 %i.ew
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.es, i64 %.sink.idx.i
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.ez = load <2 x float>, ptr %i.ay, align 4, !tbaa !37 ; 3 uses
  %i.fa = load <1 x float>, ptr %i.av, align 8
  %i.fb = load <2 x float>, ptr %11, align 8, !tbaa !37 ; 4 uses
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fd = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fe = shufflevector <2 x float> %i.fb, <2 x float> %i.ez, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.ff = shufflevector <2 x float> %i.fb, <2 x float> %i.ez, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.fg = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %i.fh, <2 x float> zeroinitializer)
  %i.fj = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %i.fk, <2 x float> %i.fi)
  %i.fm = fadd <2 x float> %18, %i.fl             ; 6 uses
  %i.fn = extractelement <2 x float> %i.fm, i64 0 ; 3 uses
  %i.fo = fdiv float %i.fn, %i.eo                 ; 2 uses
  %i.fp = extractelement <2 x float> %i.fm, i64 1 ; 2 uses
  %i.fq = fmul float %i.fn, %i.fp                 ; 2 uses
  %i.fr = insertelement <2 x float> %i.fm, float -1.000000e+00, i64 0
  %i.fs = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = fdiv <2 x float> %i.fr, %i.ft           ; 2 uses
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.fw = insertelement <4 x float> %i.fv, float 0.000000e+00, i64 1
  %i.fx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fm, <2 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.fy = extractelement <2 x float> %i.fx, i64 0
  %i.fz = fneg float %i.fy                        ; 2 uses
  %i.ga = fneg float %i.fn                        ; 3 uses
  %i.gb = fmul float %i.fp, %i.ga                 ; 2 uses
  %i.gc = insertelement <4 x float> %i.fw, float %i.fo, i64 2
  %i.gd = insertelement <4 x float> %i.gc, float %i.fq, i64 3
  %i.ge = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.fv, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gf = shufflevector <2 x float> %i.fx, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x float> %i.ge, <4 x float> %i.gf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gh = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> zeroinitializer
  %i.gi = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.gj = insertelement <4 x float> %i.gi, float %i.fq, i64 1
  %i.gk = insertelement <4 x float> %i.gj, float %i.fz, i64 2
  %i.gl = shufflevector <2 x float> %i.fm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gm = shufflevector <4 x float> %i.gk, <4 x float> %i.gl, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gh, <4 x float> %i.gm, <4 x float> zeroinitializer)
  %i.go = shufflevector <1 x float> %i.fa, <1 x float> poison, <4 x i32> zeroinitializer
  %i.gp = shufflevector <2 x float> %i.fu, <2 x float> %i.fx, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.gq = insertelement <4 x float> %i.gp, float %i.gb, i64 2
  %i.gr = insertelement <4 x float> %i.gq, float %i.ga, i64 3
  %i.gs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %i.gr, <4 x float> %i.gn)
  %i.gt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> %i.gd, <4 x float> zeroinitializer)
  %i.gu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %i.gg, <4 x float> %i.gt)
  %i.gv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fz, i64 0
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> %i.fv, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> %i.gl, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.gx, <4 x float> zeroinitializer)
  %i.gz = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.gb, i64 0
  %i.ha = insertelement <4 x float> %i.gz, float %i.ga, i64 2
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.hc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> %i.hb, <4 x float> %i.gy)
  store <4 x float> %i.gu, ptr %13, align 16
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.hd, ptr %i.de, align 16
  store <4 x float> %i.gs, ptr %i.df, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef 2, i32 noundef 6, i32 noundef 5, ptr noundef nonnull %13, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  store i32 0, ptr %17, align 4, !tbaa !41
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.he = shl nuw i32 %indvars.iv.tr, 1
  store i32 %i.he, ptr %i.dg, align 4, !tbaa !42
  store i32 6, ptr %i.dh, align 4, !tbaa !43
  store i32 2, ptr %i.di, align 4, !tbaa !44
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(16) %17)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  store i64 0, ptr %i.dk, align 8
  store i32 -1040121856, ptr %15, align 8, !tbaa !27
  store ptr %16, ptr %i.dj, align 8, !tbaa !28
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %.pre = load i32, ptr %i.b, align 4, !tbaa !16
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK2cv3Mat2atIfEERKT_i.exit, %bb.ag
  %i.hf = phi i32 [ %i.dm, %_ZNK2cv3Mat2atIfEERKT_i.exit ], [ %.pre, %bb.ag ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = icmp slt i64 %indvars.iv.next, %i.hg
  br i1 %i.hh, label %bb.x, label %._crit_edge, !llvm.loop !34

bb.ai:                                            ; preds = %bb.ae
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #12
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn52.pn = phi { ptr, i32 } [ %i.hj, %bb.aj ], [ %i.hi, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.w
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %bb.ak ], [ %i.dl, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn, %bb.al ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  resume { ptr, i32 } %.pn52.pn.pn.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !46
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.d, ptr %i.a, align 8, !tbaa !30
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !20
  %i.g = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.g, ptr %i.b, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !21
  store i8 %i.i, ptr %i.h, align 1, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !47
  %i.l = load ptr, ptr %0, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #4

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

end_hunk_0
