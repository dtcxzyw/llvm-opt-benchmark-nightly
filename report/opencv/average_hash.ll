inline.NumInlined: 172
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_115AverageHashImpl7computeERKN2cv11_InputArrayERKNS1_12_OutputArrayE:bb.a

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_115AverageHashImpl7computeERKN2cv11_InputArrayERKNS1_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 27) #20
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %5, align 8, !tbaa !51     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !31
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.i, %bb.h ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ai

bb.j:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit, %_ZNK2cv11_InputArray6getMatEi.exit, %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !56
  store i32 16842752, ptr %7, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.r, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.u, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !57
  store ptr %i.s, ptr %i.t, align 8, !tbaa !40
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 34359738376, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 5)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.v = load i32, ptr %4, align 8, !tbaa !43
  %i.w = and i32 %i.v, 4064
  %.not56 = icmp eq i32 %i.w, 0
  br i1 %.not56, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !56
  store i32 16842752, ptr %9, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.s, ptr %i.z, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.ac, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !57
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !40
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 6, i32 noundef 0, i32 noundef 0)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ai

bb.o:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ai

bb.p:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ag = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.af, ptr noundef nonnull align 8 dereferenceable(208) %i.s)
          to label %bb.q unwind label %bb.d       ; 0 uses

bb.q:                                             ; preds = %bb.m, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.ai, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.aj, align 4, !tbaa !56
  store i32 16842752, ptr %12, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !40
  %i.al = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN2cv4meanERKNS_11_InputArrayES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.am = load <2 x double>, ptr %11, align 16
  %i.an = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.ao, align 8, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %i.ap, align 4, !tbaa !56
  store i32 16842752, ptr %13, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.ah, ptr %i.aq, align 8, !tbaa !40
  %i.ar = trunc i32 %i.an to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.as = uitofp i8 %i.ar to double
  store double %i.as, ptr %i.a, align 8, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 -1056833530, ptr %14, align 8, !tbaa !57
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.a, ptr %i.au, align 8, !tbaa !40
  store i64 4294967297, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.ax, align 8
  store i32 33619968, ptr %15, align 8, !tbaa !57
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !40
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 1)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.az, align 8
  store i32 33619968, ptr %3, align 8, !tbaa !57
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !40
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1, double noundef f0x3F70101010101010, double noundef 0.000000e+00)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1, i32 noundef 8, i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.ba = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.v
  %i.bb = icmp eq i32 %i.ba, 65536
  br i1 %i.bb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40, !noalias !60
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %i.bd)
          to label %_ZNK2cv11_InputArray6getMatEi.exit51 unwind label %bb.af

bb.x:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit51 unwind label %bb.af

_ZNK2cv11_InputArray6getMatEi.exit51:             ; preds = %bb.w, %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !63
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63 ; 5 uses
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt6bitsetILm8EE9referenceaSEb.exit.preheader, %_ZNK2cv11_InputArray6getMatEi.exit51
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6bitsetILm8EE9referenceaSEb.exit.preheader ], [ 8, %_ZNK2cv11_InputArray6getMatEi.exit51 ] ; 2 uses
  %.016 = phi i64 [ %indvars.iv, %_ZNSt6bitsetILm8EE9referenceaSEb.exit.preheader ], [ 0, %_ZNK2cv11_InputArray6getMatEi.exit51 ] ; 6 uses
  %.015 = phi i64 [ %i.ce, %_ZNSt6bitsetILm8EE9referenceaSEb.exit.preheader ], [ 0, %_ZNK2cv11_InputArray6getMatEi.exit51 ] ; 2 uses
  %i.bi = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.av)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %bb.y
  %.not = icmp eq i64 %.016, %i.bi
  br i1 %.not, label %bb.aa, label %_ZNSt6bitsetILm8EE9referenceaSEb.exit.preheader

_ZNSt6bitsetILm8EE9referenceaSEb.exit.preheader:  ; preds = %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.016
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !31
  %.not57 = icmp ne i8 %i.bk, 0
  %.sroa.0.2 = zext i1 %.not57 to i8              ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.016
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !31
  %.not57.1 = icmp eq i8 %i.bn, 0
  %i.bo = or disjoint i8 %.sroa.0.2, 2
  %.sroa.0.2.1 = select i1 %.not57.1, i8 %.sroa.0.2, i8 %i.bo ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.016
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !31
  %.not57.2 = icmp eq i8 %i.br, 0
  %i.bs = or disjoint i8 %.sroa.0.2.1, 4
  %.sroa.0.2.2 = select i1 %.not57.2, i8 %.sroa.0.2.1, i8 %i.bs ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.016
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !31
  %.not57.3 = icmp eq i8 %i.bv, 0
  %i.bw = or disjoint i8 %.sroa.0.2.2, 8
  %.sroa.0.2.3 = select i1 %.not57.3, i8 %.sroa.0.2.2, i8 %i.bw
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.016
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load <4 x i8>, ptr %i.by, align 1, !tbaa !31
  %i.ca = icmp eq <4 x i8> %i.bz, zeroinitializer
  %i.cb = select <4 x i1> %i.ca, <4 x i8> zeroinitializer, <4 x i8> <i8 16, i8 32, i8 64, i8 -128>
  %i.cc = call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.cb)
  %op.rdx = or disjoint i8 %i.cc, %.sroa.0.2.3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.015
  store i8 %op.rdx, ptr %i.cd, align 1, !tbaa !31
  %i.ce = add i64 %.015, 1
  %indvars.iv.next = add i64 %indvars.iv, 8
  br label %bb.y, !llvm.loop !64

bb.aa:                                            ; preds = %bb.z
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.ab:                                            ; preds = %bb.r, %bb.q
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ai

bb.ac:                                            ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.ai

bb.ad:                                            ; preds = %bb.t
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ae:                                            ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %bb.x, %bb.w, %bb.v
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn44 = phi { ptr, i32 } [ %i.ck, %bb.ag ], [ %i.cj, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.ah, %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %bb.o ], [ %i.h, %bb.d ], [ %i.ad, %bb.n ], [ %.pn44, %bb.ah ], [ %i.ci, %bb.ae ], [ %i.ch, %bb.ad ], [ %i.cg, %bb.ac ], [ %i.cf, %bb.ab ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn44.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115AverageHashImplD2Ev(ptr noundef nonnull align 8 dead_on_return(632) dereferenceable(632) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #19
  ret void
}

declare void @_ZN2cv8img_hash11ImgHashBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN2cv8img_hash11ImgHashBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8img_hash11AverageHashD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv8img_hash11ImgHashBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv9Algorithm5writeERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm4readERKNS_8FileNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv9Algorithm5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

declare void @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !32   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !66
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal noundef double @_ZNK12_GLOBAL__N_115AverageHashImpl7compareERKN2cv11_InputArrayES4_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.b = tail call noundef double @_ZN2cv4normERKNS_11_InputArrayES2_iS2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  ret double %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115AverageHashImplD0Ev(ptr noundef nonnull align 8 dereferenceable(632) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 632) #22
  ret void
}

declare noundef double @_ZN2cv4normERKNS_11_InputArrayES2_iS2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !67
  %i.c = icmp eq ptr %1, null
end_hunk_0
