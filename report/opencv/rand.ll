inline.NumInlined: 597
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN2cvL13randn_0_1_32fEPfiPm:bb.a
  %i.bg = fmul double %i.bf, f0x3FD2972A5390A0CD
  %i.bh = fptrunc double %i.bg to float           ; 4 uses
  %i.bi = fadd float %i.ax, f0x00800000
  %i.bj = tail call float @llvm.log.f32(float %i.bi) ; 2 uses
  %i.bk = fneg float %i.bj
  %i.bl = fsub float %i.bk, %i.bj
  %i.bm = fmul float %i.bh, %i.bh
  %i.bn = fcmp olt float %i.bl, %i.bm
  br i1 %i.bn, label %.preheader, label %bb.h, !llvm.loop !15

bb.h:                                             ; preds = %.preheader
  %i.bo = icmp sgt i32 %i.y, 0
  %i.bp = fadd float %i.bh, 3.442620e+00
  %i.bq = fsub float -3.442620e+00, %i.bh
  %i.br = select i1 %i.bo, float %i.bp, float %i.bq
  br label %select.unfold

bb.i:                                             ; preds = %bb.g
  %i.bs = trunc i64 %i.ac to i32
  %i.bt = uitofp i32 %i.bs to float
  %i.bu = fmul nnan float %i.bt, f0x2F800000
  %i.bv = and i64 %i.ac, 4294967295
  %i.bw = mul nuw i64 %i.bv, 4164903690
  %i.bx = lshr i64 %i.ac, 32
  %i.by = add nuw i64 %i.bw, %i.bx                ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @_ZZN2cvL13randn_0_1_32fEPfiPmE2fn, i64 %i.ae ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !8 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 -4
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !8
  %i.cd = fsub float %i.cc, %i.ca
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.cd, float %i.ca)
  %i.cf = fpext float %i.ce to double
  %i.cg = fpext float %i.ah to double             ; 2 uses
  %i.ch = fmul double %i.cg, -5.000000e-01
  %i.ci = fmul double %i.ch, %i.cg
  %i.cj = tail call double @exp(double noundef %i.ci) #19
  %i.ck = fcmp ogt double %i.cj, %i.cf
  br i1 %i.ck, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %bb.i, %bb.f, %bb.h
  %.3.ph = phi i64 [ %i.bb, %bb.h ], [ %i.by, %bb.i ], [ %i.ac, %bb.f ] ; 2 uses
  %.067.ph = phi float [ %i.br, %bb.h ], [ %i.ah, %bb.f ], [ %i.ah, %bb.i ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv99
  store float %.067.ph, ptr %i.cl, align 4, !tbaa !8
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader79, !llvm.loop !16

._crit_edge:                                      ; preds = %select.unfold, %bb.e
  %.071.lcssa = phi i64 [ %i.a, %bb.e ], [ %.3.ph, %select.unfold ]
  store i64 %.071.lcssa, ptr %2, align 8, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 29 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 23 uses
  %23 = alloca %"class.cv::AutoBuffer", align 8   ; 16 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator", align 1   ; 3 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator", align 1   ; 3 uses
  %28 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %29 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %30 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %31 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::allocator", align 1   ; 3 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %35 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %36 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %37 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %39 = alloca %"class.std::allocator", align 1   ; 3 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %41 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %42 = alloca %"class.cv::NAryMatIterator", align 8 ; 9 uses
  %i.c = alloca [1152 x float], align 16          ; 6 uses
  %i.d = tail call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b, ptr noundef nonnull @.str.1, i32 noundef 520) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %18, align 8, !tbaa !17    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !22
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn411 = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.fs

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.l = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !23
  %i.m = icmp eq i32 %i.l, 65536
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26, !noalias !23
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %i.o)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.p = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.q = icmp eq i32 %i.p, 65536
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26, !noalias !29
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.s)
          to label %_ZNK2cv11_InputArray6getMatEi.exit446 unwind label %bb.w

bb.k:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit446 unwind label %bb.w

_ZNK2cv11_InputArray6getMatEi.exit446:            ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.t = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc447 unwind label %bb.x

.noexc447:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit446
  %i.u = icmp eq i32 %i.t, 65536
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc447
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26, !noalias !32
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %i.w)
          to label %_ZNK2cv11_InputArray6getMatEi.exit450 unwind label %bb.x

bb.m:                                             ; preds = %.noexc447
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %22, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit450 unwind label %bb.x

_ZNK2cv11_InputArray6getMatEi.exit450:            ; preds = %bb.l, %bb.m
  %i.x = load i32, ptr %20, align 8, !tbaa !35    ; 4 uses
  %i.y = and i32 %i.x, 31                         ; 12 uses
  %i.z = lshr i32 %i.x, 5                         ; 3 uses
  %i.aa = and i32 %i.z, 127                       ; 14 uses
  %i.ab = add nuw nsw i32 %i.aa, 1                ; 26 uses
  %i.ac = shl nuw nsw i32 %i.y, 2
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = lshr i64 1275511473185297, %i.ad        ; 2 uses
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.af, 15                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 9 uses
  store ptr %i.ah, ptr %23, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 7 uses
  store i64 136, ptr %i.ai, align 8, !tbaa !45
  %i.aj = load i32, ptr %21, align 8, !tbaa !35   ; 3 uses
  %i.ak = and i32 %i.aj, 4064
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit450
  %i.am = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !46 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 1
  %or.cond = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.as = add i32 %i.an, -1
  %i.at = add i32 %i.as, %i.aq                    ; 2 uses
  %i.au = icmp eq i32 %i.at, %i.ab
  %i.av = icmp eq i32 %i.at, 1
  %or.cond414 = or i1 %i.au, %i.av
  br i1 %or.cond414, label %.critedge416, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !47 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 3
  br i1 %i.ay, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %.noexc451 unwind label %bb.y

.noexc451:                                        ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.12, i32 noundef 109) #20
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc451
  unreachable

bb.s:                                             ; preds = %.noexc451
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !22
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %.body

bb.t:                                             ; preds = %bb.p
  %or.cond664.not = icmp eq i32 %i.ax, 2
  br i1 %or.cond664.not, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %21, i64 84
  %.sroa.gep609 = getelementptr inbounds nuw i8, ptr %21, i64 88
  %.sroa.gep609.val = load i32, ptr %.sroa.gep609, align 8
  %.val = load i32, ptr %i.bf, align 4
  %i.bg = icmp eq i32 %.sroa.gep609.val, 1
  %i.bh = icmp eq i32 %.val, 4
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %i.bi, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.bj = and i32 %i.aj, 31
  %i.bk = icmp eq i32 %i.bj, 6
  %i.bl = icmp samesign ult i32 %i.aa, 4
  %spec.select = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %spec.select, label %.critedge416, label %.critedge

bb.w:                                             ; preds = %bb.k, %bb.j, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.x:                                             ; preds = %bb.m, %bb.l, %_ZNK2cv11_InputArray6getMatEi.exit446
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.y:                                             ; preds = %bb.q
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge:                                        ; preds = %bb.t, %bb.n, %_ZNK2cv11_InputArray6getMatEi.exit450, %bb.u, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %.critedge
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b, ptr noundef nonnull @.str.1, i32 noundef 533) #20
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %.critedge
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454

bb.ac:                                            ; preds = %bb.z
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %24, align 8, !tbaa !17   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452: ; preds = %bb.ac
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !22
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.ab ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452 ], [ %i.bq, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %.body

.critedge416:                                     ; preds = %bb.o, %bb.v
  %i.bw = load i32, ptr %22, align 8, !tbaa !35
  %i.bx = and i32 %i.bw, 4064
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.ad, label %.critedge421

bb.ad:                                            ; preds = %.critedge416
  %i.bz = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !46 ; 3 uses
  %i.cb = icmp eq i32 %i.ca, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4            ; 3 uses
  %i.ce = icmp eq i32 %i.cd, 1
  %or.cond5 = select i1 %i.cb, i1 true, i1 %i.ce
  br i1 %or.cond5, label %bb.ae, label %.thread628

bb.ae:                                            ; preds = %bb.ad
  %i.cf = add i32 %i.ca, -1
  %i.cg = add i32 %i.cf, %i.cd                    ; 2 uses
  %i.ch = icmp eq i32 %i.cg, %i.ab
  %i.ci = icmp eq i32 %i.cg, 1
  %or.cond417 = or i1 %i.ch, %i.ci
  br i1 %or.cond417, label %.critedge423, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !47 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 3
  br i1 %i.cl, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc464 unwind label %bb.am

.noexc464:                                        ; preds = %bb.ag
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.12, i32 noundef 109) #20
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.noexc464
  unreachable

bb.ai:                                            ; preds = %.noexc464
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %14, align 8, !tbaa !17   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i455

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i455: ; preds = %bb.ai
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !22
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #21
end_hunk_0
begin_hunk_1_@_ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b:bb.a

bb.ew:                                            ; preds = %bb.ev
  %i.tw = mul nsw i32 %i.ag, %i.dn                ; 2 uses
  %i.tx = mul nuw nsw i32 %i.ag, %i.ab            ; 2 uses
  %i.ty = icmp slt i32 %i.tw, %i.tx
  br i1 %i.ty, label %iter.check865, label %.loopexit668

iter.check865:                                    ; preds = %bb.ew
  %i.tz = sext i32 %i.tw to i64                   ; 8 uses
  %i.ua = zext nneg i32 %i.tx to i64              ; 2 uses
  %i.ub = sub nsw i64 %i.ua, %i.tz                ; 7 uses
  %min.iters.check852 = icmp ult i64 %i.ub, 8
  %i.uc = add nsw i64 %i.tz, -1
  %diff.check851 = icmp ult i64 %i.uc, 31
  %or.cond917 = select i1 %min.iters.check852, i1 true, i1 %diff.check851
  br i1 %or.cond917, label %.lr.ph673.preheader, label %vector.main.loop.iter.check853

vector.main.loop.iter.check853:                   ; preds = %iter.check865
  %min.iters.check854 = icmp ult i64 %i.ub, 32
  br i1 %min.iters.check854, label %vec.epilog.ph869, label %vector.ph855

vector.ph855:                                     ; preds = %vector.main.loop.iter.check853
  %i.ud = and i64 %i.ub, 24
  %n.vec856 = and i64 %i.ub, -32                  ; 4 uses
  %i.ue = add nsw i64 %n.vec856, %i.tz
  %invariant.gep946 = getelementptr i8, ptr %.0338, i64 %i.tz
  br label %vector.body857

vector.body857:                                   ; preds = %vector.body857, %vector.ph855
  %index858 = phi i64 [ 0, %vector.ph855 ], [ %index.next861, %vector.body857 ] ; 3 uses
  %i.uf = getelementptr inbounds i8, ptr %.0338, i64 %index858 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %wide.load859 = load <16 x i8>, ptr %i.uf, align 1, !tbaa !22
  %wide.load860 = load <16 x i8>, ptr %i.ug, align 1, !tbaa !22
  %gep947 = getelementptr i8, ptr %invariant.gep946, i64 %index858 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %gep947, i64 16
  store <16 x i8> %wide.load859, ptr %gep947, align 1, !tbaa !22
  store <16 x i8> %wide.load860, ptr %i.uh, align 1, !tbaa !22
  %index.next861 = add nuw i64 %index858, 32      ; 2 uses
  %i.ui = icmp eq i64 %index.next861, %n.vec856
  br i1 %i.ui, label %middle.block862, label %vector.body857, !llvm.loop !81

middle.block862:                                  ; preds = %vector.body857
  %cmp.n863 = icmp eq i64 %i.ub, %n.vec856
  br i1 %cmp.n863, label %.loopexit668, label %vec.epilog.iter.check867

vec.epilog.iter.check867:                         ; preds = %middle.block862
  %min.epilog.iters.check868 = icmp eq i64 %i.ud, 0
  br i1 %min.epilog.iters.check868, label %.lr.ph673.preheader, label %vec.epilog.ph869, !prof !78

vec.epilog.ph869:                                 ; preds = %vector.main.loop.iter.check853, %vec.epilog.iter.check867
  %vec.epilog.resume.val864 = phi i64 [ %n.vec856, %vec.epilog.iter.check867 ], [ 0, %vector.main.loop.iter.check853 ]
  %n.vec870 = and i64 %i.ub, -8                   ; 3 uses
  %i.uj = add nsw i64 %n.vec870, %i.tz
  %invariant.gep948 = getelementptr i8, ptr %.0338, i64 %i.tz
  br label %vec.epilog.vector.body871

vec.epilog.vector.body871:                        ; preds = %vec.epilog.vector.body871, %vec.epilog.ph869
  %index872 = phi i64 [ %vec.epilog.resume.val864, %vec.epilog.ph869 ], [ %index.next874, %vec.epilog.vector.body871 ] ; 3 uses
  %i.uk = getelementptr inbounds i8, ptr %.0338, i64 %index872
  %wide.load873 = load <8 x i8>, ptr %i.uk, align 1, !tbaa !22
  %gep949 = getelementptr i8, ptr %invariant.gep948, i64 %index872
  store <8 x i8> %wide.load873, ptr %gep949, align 1, !tbaa !22
  %index.next874 = add nuw i64 %index872, 8       ; 2 uses
  %i.ul = icmp eq i64 %index.next874, %n.vec870
  br i1 %i.ul, label %vec.epilog.middle.block875, label %vec.epilog.vector.body871, !llvm.loop !82

vec.epilog.middle.block875:                       ; preds = %vec.epilog.vector.body871
  %cmp.n876 = icmp eq i64 %i.ub, %n.vec870
  br i1 %cmp.n876, label %.loopexit668, label %.lr.ph673.preheader

.lr.ph673.preheader:                              ; preds = %iter.check865, %vec.epilog.iter.check867, %vec.epilog.middle.block875
  %indvars.iv714.ph = phi i64 [ %i.tz, %iter.check865 ], [ %i.ue, %vec.epilog.iter.check867 ], [ %i.uj, %vec.epilog.middle.block875 ]
  br label %.lr.ph673

.lr.ph673:                                        ; preds = %.lr.ph673.preheader, %.lr.ph673
  %indvars.iv714 = phi i64 [ %indvars.iv.next715, %.lr.ph673 ], [ %indvars.iv714.ph, %.lr.ph673.preheader ] ; 3 uses
  %i.um = sub nsw i64 %indvars.iv714, %i.tz
  %i.un = getelementptr inbounds i8, ptr %.0338, i64 %i.um
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !22
  %i.up = getelementptr inbounds i8, ptr %.0338, i64 %indvars.iv714
  store i8 %i.uo, ptr %i.up, align 1, !tbaa !22
  %indvars.iv.next715 = add nsw i64 %indvars.iv714, 1 ; 2 uses
  %i.uq = icmp slt i64 %indvars.iv.next715, %i.ua
  br i1 %i.uq, label %.lr.ph673, label %.loopexit668, !llvm.loop !83

.loopexit668:                                     ; preds = %.lr.ph673, %middle.block862, %vec.epilog.middle.block875, %bb.ew, %bb.ev
  %i.ur = icmp samesign ugt i32 %i.y, 12
  br i1 %i.ur, label %bb.ex, label %bb.fc

bb.ex:                                            ; preds = %.loopexit668
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %39)
          to label %bb.ey unwind label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @__func__._ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b, ptr noundef nonnull @.str.1, i32 noundef 713) #20
          to label %bb.ez unwind label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  unreachable

bb.fa:                                            ; preds = %bb.ex
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

bb.fb:                                            ; preds = %bb.ey
  %i.ut = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uu = load ptr, ptr %38, align 8, !tbaa !17   ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.uw = icmp eq ptr %i.uu, %i.uv
  br i1 %i.uw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540: ; preds = %bb.fb
  %i.ux = load i64, ptr %i.uv, align 8, !tbaa !22
  %i.uy = add i64 %i.ux, 1
  call void @_ZdlPvm(ptr noundef %i.uu, i64 noundef %i.uy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542: ; preds = %bb.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540, %bb.fa
  %.pn384 = phi { ptr, i32 } [ %i.us, %bb.fa ], [ %i.ut, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540 ], [ %i.ut, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  br label %.body

bb.fc:                                            ; preds = %.loopexit668
  %i.uz = zext nneg i32 %i.y to i64
  %i.va = getelementptr inbounds nuw [8 x i8], ptr @_ZN2cvL13randnScaleTabE, i64 %i.uz
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !76
  %i.vc = load i32, ptr %i.bz, align 8, !tbaa !46
  %i.vd = icmp eq i32 %i.vc, %i.ab
  %i.ve = load i32, ptr %i.cc, align 4
  %i.vf = icmp eq i32 %i.ve, %i.ab
  %i.vg = select i1 %i.vd, i1 %i.vf, i1 false
  %i.vh = select i1 %i.vg, i32 -2147483648, i32 0
  br label %bb.fi

bb.fd:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %41)
          to label %bb.fe unwind label %bb.fg

bb.fe:                                            ; preds = %bb.fd
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @__func__._ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b, ptr noundef nonnull @.str.1, i32 noundef 716) #20
          to label %bb.ff unwind label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  unreachable

bb.fg:                                            ; preds = %bb.fd
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545

bb.fh:                                            ; preds = %bb.fe
  %i.vj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vk = load ptr, ptr %40, align 8, !tbaa !17   ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.vm = icmp eq ptr %i.vk, %i.vl
  br i1 %i.vm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543: ; preds = %bb.fh
  %i.vn = load i64, ptr %i.vl, align 8, !tbaa !22
  %i.vo = add i64 %i.vn, 1
  call void @_ZdlPvm(ptr noundef %i.vk, i64 noundef %i.vo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543, %bb.fg
  %.pn374 = phi { ptr, i32 } [ %i.vi, %bb.fg ], [ %i.vj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543 ], [ %i.vj, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  br label %.body

bb.fi:                                            ; preds = %bb.dd, %bb.fc
  %.3352..0337 = phi i32 [ %i.vh, %bb.fc ], [ %.2351, %bb.dd ]
  %.1348 = phi ptr [ null, %bb.fc ], [ %.0347, %bb.dd ]
  %.0346 = phi ptr [ %i.vb, %bb.fc ], [ null, %bb.dd ]
  %.3345 = phi ptr [ null, %bb.fc ], [ %.2344, %bb.dd ]
  %.1341 = phi ptr [ %.0340, %bb.fc ], [ null, %bb.dd ]
  %.1339 = phi ptr [ %.0338, %bb.fc ], [ null, %bb.dd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %20, ptr %i.a, align 16, !tbaa !84
  %i.vp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.vp, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr null, ptr %i.b, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPPhi(ptr noundef nonnull align 8 dereferenceable(64) %42, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1)
          to label %bb.fj unwind label %bb.fm

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.vq = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !87
  %.fr = freeze i64 %i.vr
  %i.vs = trunc i64 %.fr to i32                   ; 8 uses
  %i.vt = or disjoint i32 %i.aa, 1024
  %i.vu = udiv i32 %i.vt, %i.ab
  %.sroa.speculated556 = call i32 @llvm.smin.i32(i32 %i.vu, i32 %i.vs) ; 2 uses
  %i.vv = and i64 %i.ae, 15
  %i.vw = zext nneg i32 %i.ab to i64
  %i.vx = mul nuw nsw i64 %i.vv, %i.vw            ; 2 uses
  %i.vy = load i32, ptr %20, align 8, !tbaa !35
  %i.vz = and i32 %i.vy, 4095
  %.0297 = or i32 %i.vz, %.3352..0337             ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %42, i64 32 ; 3 uses
  %i.wb = icmp sgt i32 %i.vs, 0
  br i1 %i.wb, label %.split693.us, label %.split693

.split693.us:                                     ; preds = %bb.fj
  %i.wc = or disjoint i32 %i.aa, 1024             ; 2 uses
  br i1 %i.do, label %.split693.us.split.us, label %.split693.us.split

.split693.us.split.us:                            ; preds = %.split693.us, %._crit_edge690.split.us.us.us
  %.0.us.us = phi i64 [ %i.wm, %._crit_edge690.split.us.us.us ], [ 0, %.split693.us ] ; 2 uses
  %i.wd = load i64, ptr %i.wa, align 8, !tbaa !92
  %i.we = icmp ult i64 %.0.us.us, %i.wd
  br i1 %i.we, label %.preheader.us.us, label %.split699.us

.preheader.us.us:                                 ; preds = %.split693.us.split.us, %bb.fk
  %indvars.iv754 = phi i64 [ %indvars.iv.next755, %bb.fk ], [ 0, %.split693.us.split.us ] ; 3 uses
  %i.wf = trunc nuw i64 %indvars.iv754 to i32
  %i.wg = sub nsw i32 %i.vs, %i.wf
  %.sroa.speculated.us.us.us = call i32 @llvm.smin.i32(i32 %.sroa.speculated556, i32 %i.wg)
  %i.wh = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.wi = mul nuw nsw i64 %i.vx, %indvars.iv754
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.wi
  invoke void %.1348(ptr noundef %i.wj, i32 noundef %.sroa.speculated.us.us.us, i32 noundef %i.ab, ptr noundef nonnull %0, ptr noundef %.3345, ptr noundef nonnull %i.c, i32 noundef %.0297)
          to label %bb.fk unwind label %.split692.us.split.us.split.us

bb.fk:                                            ; preds = %.preheader.us.us
  %43 = udiv i32 %i.wc, %i.ab
  %smin753 = call i32 @llvm.smin.i32(i32 %43, i32 %i.vs)
  %44 = zext nneg i32 %smin753 to i64
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, %44 ; 2 uses
  %i.wk = trunc nuw i64 %indvars.iv.next755 to i32
  %i.wl = icmp slt i32 %i.wk, %i.vs
  br i1 %i.wl, label %.preheader.us.us, label %._crit_edge690.split.us.us.us, !llvm.loop !93

._crit_edge690.split.us.us.us:                    ; preds = %bb.fk
  %i.wm = add nuw i64 %.0.us.us, 1
  %i.wn = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %42)
          to label %.split693.us.split.us unwind label %.split702.us.split.us, !llvm.loop !94 ; 0 uses

.split702.us.split.us:                            ; preds = %._crit_edge690.split.us.us.us
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %.split702.us

.split692.us.split.us.split.us:                   ; preds = %.preheader.us.us
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %.split702.us

.split693.us.split:                               ; preds = %.split693.us, %._crit_edge690.split.us696
  %.0.us = phi i64 [ %i.xa, %._crit_edge690.split.us696 ], [ 0, %.split693.us ] ; 2 uses
  %i.wq = load i64, ptr %i.wa, align 8, !tbaa !92
  %i.wr = icmp ult i64 %.0.us, %i.wq
  br i1 %i.wr, label %.preheader.us, label %.split699.us

.preheader.us:                                    ; preds = %.split693.us.split, %bb.fl
  %indvars.iv751 = phi i64 [ %indvars.iv.next752, %bb.fl ], [ 0, %.split693.us.split ] ; 3 uses
  %i.ws = trunc nuw i64 %indvars.iv751 to i32
  %i.wt = sub nsw i32 %i.vs, %i.ws
  %.sroa.speculated.us695 = call i32 @llvm.smin.i32(i32 %.sroa.speculated556, i32 %i.wt) ; 2 uses
  %i.wu = mul nsw i32 %.sroa.speculated.us695, %i.ab
  call fastcc void @_ZN2cvL13randn_0_1_32fEPfiPm(ptr noundef %i.c, i32 noundef %i.wu, ptr noundef %0)
  %i.wv = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.ww = mul nuw nsw i64 %i.vx, %indvars.iv751
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.ww
  invoke void %.0346(ptr noundef nonnull %i.c, ptr noundef %i.wx, i32 noundef %.sroa.speculated.us695, i32 noundef %i.ab, ptr noundef %.1341, ptr noundef %.1339, i32 noundef %.0297)
          to label %bb.fl unwind label %.split692.split.us

bb.fl:                                            ; preds = %.preheader.us
  %45 = udiv i32 %i.wc, %i.ab
  %smin = call i32 @llvm.smin.i32(i32 %45, i32 %i.vs)
  %46 = zext nneg i32 %smin to i64
  %indvars.iv.next752 = add nuw nsw i64 %indvars.iv751, %46 ; 2 uses
  %i.wy = trunc nuw i64 %indvars.iv.next752 to i32
  %i.wz = icmp slt i32 %i.wy, %i.vs
  br i1 %i.wz, label %.preheader.us, label %._crit_edge690.split.us696, !llvm.loop !93

._crit_edge690.split.us696:                       ; preds = %bb.fl
  %i.xa = add nuw i64 %.0.us, 1
  %i.xb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %42)
          to label %.split693.us.split unwind label %.split702.us.split, !llvm.loop !94 ; 0 uses

.split692.split.us:                               ; preds = %.preheader.us
  %i.xc = landingpad { ptr, i32 }
          cleanup
  br label %.split702.us

.split702.us.split:                               ; preds = %._crit_edge690.split.us696
  %i.xd = landingpad { ptr, i32 }
          cleanup
  br label %.split702.us

bb.fm:                                            ; preds = %bb.fi
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

.split693:                                        ; preds = %bb.fj, %.preheader
  %.0 = phi i64 [ %i.xh, %.preheader ], [ 0, %bb.fj ] ; 2 uses
  %i.xf = load i64, ptr %i.wa, align 8, !tbaa !92
  %i.xg = icmp ult i64 %.0, %i.xf
  br i1 %i.xg, label %.preheader, label %.split699.us

.preheader:                                       ; preds = %.split693
  %i.xh = add nuw i64 %.0, 1
  %i.xi = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %42)
          to label %.split693 unwind label %.split702, !llvm.loop !94 ; 0 uses

.split699.us:                                     ; preds = %.split693, %.split693.us.split, %.split693.us.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.xj = load ptr, ptr %23, align 8, !tbaa !42   ; 3 uses
  %.not.i.i547 = icmp eq ptr %i.xj, %i.ah
  %i.xk = icmp eq ptr %i.xj, null
  %or.cond.i = or i1 %.not.i.i547, %i.xk
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit, label %bb.fn

bb.fn:                                            ; preds = %.split699.us
  call void @_ZdaPv(ptr noundef nonnull %i.xj) #21
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit

_ZN2cv10AutoBufferIdLm136EED2Ev.exit:             ; preds = %.split699.us, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  ret void

.split702:                                        ; preds = %.preheader
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %.split702.us

.split702.us:                                     ; preds = %.split702, %.split702.us.split.us, %.split702.us.split, %.split692.split.us, %.split692.us.split.us.split.us
  %.pn403 = phi { ptr, i32 } [ %i.wp, %.split692.us.split.us.split.us ], [ %i.xc, %.split692.split.us ], [ %i.xl, %.split702 ], [ %i.xd, %.split702.us.split ], [ %i.wo, %.split702.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.fo

bb.fo:                                            ; preds = %.split702.us, %bb.fm
  %.pn403.pn = phi { ptr, i32 } [ %.pn403, %.split702.us ], [ %i.xe, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.body

.body:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i456, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bl, %.body524, %.body537, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, %.body483, %.body496, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508, %bb.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454
  %.pn403.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn376.pn, %.body524 ], [ %.pn372, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470 ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454 ], [ %i.gs, %bb.bl ], [ %.pn403.pn, %bb.fo ], [ %.pn374, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545 ], [ %i.gt, %bb.bm ], [ %.pn389.pn, %.body483 ], [ %.pn400, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508 ], [ %.pn394.pn, %.body496 ], [ %.pn384, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542 ], [ %.pn380.pn, %.body537 ], [ %i.bo, %bb.y ], [ %i.dc, %bb.am ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i456 ]
  %i.xm = load ptr, ptr %23, align 8, !tbaa !42   ; 3 uses
  %.not.i.i550 = icmp eq ptr %i.xm, %i.ah
  %i.xn = icmp eq ptr %i.xm, null
  %or.cond.i551 = or i1 %.not.i.i550, %i.xn
  br i1 %or.cond.i551, label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit553, label %bb.fp

bb.fp:                                            ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.xm) #21
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit553

_ZN2cv10AutoBufferIdLm136EED2Ev.exit553:          ; preds = %.body, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #19
  br label %bb.fq

bb.fq:                                            ; preds = %_ZN2cv10AutoBufferIdLm136EED2Ev.exit553, %bb.x
  %.pn403.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn403.pn.pn.pn.pn, %_ZN2cv10AutoBufferIdLm136EED2Ev.exit553 ], [ %i.bn, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.w
  %.pn403.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn403.pn.pn.pn.pn.pn, %bb.fq ], [ %i.bm, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn411.pn = phi { ptr, i32 } [ %.pn411, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn403.pn.pn.pn.pn.pn.pn, %bb.fr ]
  resume { ptr, i32 } %.pn411.pn
}

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !95
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !10
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !17
  %i.g = load i64, ptr %i.a, align 8, !tbaa !10
  store i64 %i.g, ptr %i.b, align 8, !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !22
  store i8 %i.i, ptr %i.h, align 1, !tbaa !22
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !96
  %i.l = load ptr, ptr %0, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #3

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

declare void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPPhi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN2cv14getCoreTlsDataEv()
  ret ptr %i.a
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN2cv14getCoreTlsDataEv() local_unnamed_addr #3
end_hunk_1
