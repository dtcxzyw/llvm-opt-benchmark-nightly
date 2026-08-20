inline.NumInlined: 596
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN13Domain_Filter6filterERKN2cv3MatERS1_ffi:bb.a
  invoke void @_ZN13Domain_Filter16compute_NCfilterERN2cv3MatES2_S2_f(ptr noundef nonnull align 8 dereferenceable(1664) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.cj, ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %15, float noundef %i.ds)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit78.2
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %17, ptr noundef nonnull align 8 dereferenceable(208) %i.cj)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.dx = load ptr, ptr %17, align 8, !tbaa !63   ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !70
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  invoke void %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull align 8 dereferenceable(688) %17, ptr noundef nonnull align 8 dereferenceable(208) %i.ci, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit79.2 unwind label %bb.ay, !inline_history !72

_ZN2cv3MataSERKNS_7MatExprE.exit79.2:             ; preds = %bb.as
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cn) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.co) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cp) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.be

bb.at:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit78.2, %_ZN2cv3MataSERKNS_7MatExprE.exit79.1, %_ZN2cv3MataSERKNS_7MatExprE.exit78.1, %_ZN2cv3MataSERKNS_7MatExprE.exit79, %_ZN2cv3MataSERKNS_7MatExprE.exit78, %.preheader
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.au:                                            ; preds = %bb.ap, %bb.al, %bb.ah
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.aq, %bb.am, %bb.ai
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %16) #16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn = phi { ptr, i32 } [ %i.ed, %bb.av ], [ %i.ec, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.ba

bb.ax:                                            ; preds = %bb.ar, %bb.an, %bb.aj
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.as, %bb.ao, %bb.ak
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %17) #16
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn51 = phi { ptr, i32 } [ %i.ef, %bb.ay ], [ %i.ee, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.aw, %bb.at
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %bb.az ], [ %i.eb, %bb.at ], [ %.pn, %bb.aw ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ag
  %.pn51.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %bb.ba ], [ %i.cv, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #16
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.af
  %.pn51.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn, %bb.bb ], [ %i.cu, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.body75
  %.pn51.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn, %bb.bc ], [ %i.cc, %.body75 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %common.resume

bb.be:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit73, %_ZN2cv3MataSERKNS_7MatExprE.exit79.2, %_ZN2cv3MataSERKNS_7MatExprE.exit74.2
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 832
  call void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %18, ptr noundef nonnull align 8 dereferenceable(208) %i.eg)
  %i.eh = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.bf unwind label %bb.bg     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  ret void

bb.bg:                                            ; preds = %bb.be
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %common.resume
}

declare void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13Domain_Filter13pencil_sketchERKN2cv3MatERS1_S4_fff(ptr noundef nonnull align 8 dereferenceable(1664) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.std::vector", align 8      ; 15 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %14 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %17 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %20 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %21 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %22 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %25 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %26 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %28 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %29 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %30 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  tail call void @_ZN13Domain_Filter4initERKN2cv3MatEiff(ptr noundef nonnull align 8 dereferenceable(1664) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 2, float noundef %4, float noundef %5)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.6, i32 noundef 109) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %7, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !22
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn93.pn.pn.pn.pn.pn, %bb.bh ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %bb.f, label %.thread.i103

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i32 %i.b, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23   ; 2 uses
  br i1 %.not.i, label %.thread137, label %bb.g

.thread.i103:                                     ; preds = %bb.e
  %i.m = icmp eq i32 %i.b, 0
  %i.n = zext i1 %i.m to i32                      ; 2 uses
  br label %.thread137

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load i32, ptr %i.o, align 8, !tbaa !23
  br label %.thread137

.thread137:                                       ; preds = %bb.f, %.thread.i103, %bb.g
  %i.q = phi i32 [ %i.l, %bb.g ], [ %i.n, %.thread.i103 ], [ 1, %bb.f ] ; 12 uses
  %i.r = phi i32 [ %i.p, %bb.g ], [ %i.n, %.thread.i103 ], [ %i.l, %bb.f ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef %i.q, i32 noundef %i.r, i32 noundef 69)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.t, align 4, !tbaa !56
  store i32 16842752, ptr %10, align 8, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.u, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.w, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !57
  store ptr %9, ptr %i.v, align 8, !tbaa !59
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 36, i32 noundef 0, i32 noundef 0)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %.thread137
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(208) %i.x)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #16
  %i.y = load ptr, ptr %14, align 8, !tbaa !63, !noalias !183 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(688) %14, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #16
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %14) #16
  br label %bb.q

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ad) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ae) #16
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.af) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef %i.q, i32 noundef %i.r, i32 noundef 5)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %17, i32 noundef %i.q, i32 noundef %i.r, i32 noundef 5)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #16
  %i.ag = load ptr, ptr %17, align 8, !tbaa !63, !noalias !186 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(688) %17, ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit112 unwind label %.body110

.body110:                                         ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #16
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %17) #16
  br label %bb.t

_ZNK2cv7MatExprcvNS_3MatEEv.exit112:              ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.al) #16
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.am) #16
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.an) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %18, i32 noundef %i.r, i32 noundef %i.q, i32 noundef 5)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %19) #16
  %i.ao = fpext float %4 to double
  %i.ap = fmul double %i.ao, f0x3FFBB67AE8584CAA
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %20, i64 432
  %i.at = getelementptr inbounds nuw i8, ptr %20, i64 224
  %i.au = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %21, i64 432
  %i.aw = getelementptr inbounds nuw i8, ptr %21, i64 224
  %i.ax = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %22, i64 432
  %i.az = getelementptr inbounds nuw i8, ptr %22, i64 224
  %i.ba = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.bb = icmp sgt i32 %i.q, 0
  %i.bc = icmp sgt i32 %i.r, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 128 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %19, i64 128 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 10 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %24, i64 20
  %i.bo = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.bv = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %29, i64 20
  %i.ca = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %30, i64 16
  %wide.trip.count184 = zext nneg i32 %i.q to i64
  %wide.trip.count = zext i32 %i.r to i64         ; 16 uses
  %wide.trip.count194 = zext nneg i32 %i.q to i64
  %wide.trip.count204 = zext nneg i32 %i.q to i64
  %wide.trip.count214 = zext nneg i32 %i.q to i64
  %wide.trip.count224 = zext nneg i32 %i.q to i64
  %wide.trip.count234 = zext nneg i32 %i.q to i64
  %wide.trip.count239 = zext nneg i32 %i.r to i64
  %i.cd = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ce = icmp eq i64 %i.cd, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod278 = trunc i32 %i.r to i1
  %xtraiter280 = and i64 %wide.trip.count, 1
  %i.cf = icmp eq i64 %i.cd, 0
  %unroll_iter283 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  %lcmp.mod282 = trunc i32 %i.r to i1
  %xtraiter286 = and i64 %wide.trip.count, 1
  %i.cg = icmp eq i64 %i.cd, 0
  %unroll_iter289 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  %lcmp.mod288 = trunc i32 %i.r to i1
  %xtraiter292 = and i64 %wide.trip.count, 1
  %i.ch = icmp eq i64 %i.cd, 0
  %unroll_iter295 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  %lcmp.mod294 = trunc i32 %i.r to i1
  %xtraiter298 = and i64 %wide.trip.count, 1
  %i.ci = icmp eq i64 %i.cd, 0
  %unroll_iter301 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod299.not = icmp eq i64 %xtraiter298, 0
  %lcmp.mod300 = trunc i32 %i.r to i1
  %min.iters.check = icmp ult i32 %i.r, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter303 = and i64 %wide.trip.count, 1
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  %i.cj = add nsw i64 %wide.trip.count, -1
  br label %bb.v

bb.m:                                             ; preds = %bb.ba
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.ck = load ptr, ptr %12, align 8, !tbaa !60   ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !74 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %i.ck, %bb.m ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #16
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cn, %i.cm
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !75

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.m
  %i.co = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ck, %bb.m ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !76
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #18
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  ret void

bb.o:                                             ; preds = %.thread137
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.bh

bb.p:                                             ; preds = %bb.h
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.body, %bb.p
  %.pn70 = phi { ptr, i32 } [ %i.ac, %.body ], [ %i.cv, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.bf

bb.r:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.s:                                             ; preds = %bb.j
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.body110, %bb.s
  %.pn72 = phi { ptr, i32 } [ %i.ak, %.body110 ], [ %i.cx, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.bd

bb.u:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit112
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.v:                                             ; preds = %bb.l, %bb.ba
  %.045171 = phi i32 [ 0, %bb.l ], [ %i.cz, %bb.ba ] ; 3 uses
  %i.cz = add nuw nsw i32 %.045171, 1             ; 2 uses
  %i.da = sub nuw nsw i32 2, %.045171
  %i.db = uitofp nneg i32 %i.da to double
  %exp2 = call double @exp2(double %i.db)
  %i.dc = fmul double %i.ap, %exp2
  %i.dd = fdiv double %i.dc, f0x401FBFBF7EBC755F
  %i.de = fptrunc double %i.dd to float
  %i.df = fmul float %i.de, f0x3FDDB3D7           ; 2 uses
  invoke void @_ZN13Domain_Filter17compute_boxfilterERN2cv3MatES2_S2_f(ptr noundef nonnull align 8 dereferenceable(1664) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.aq, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %15, float noundef %i.df)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %20, ptr noundef nonnull align 8 dereferenceable(208) %i.aq)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.dg = load ptr, ptr %20, align 8, !tbaa !63   ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !70
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull align 8 dereferenceable(688) %20, ptr noundef nonnull align 8 dereferenceable(208) %i.ar, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.ad, !inline_history !72

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.x
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.as) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.at) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.au) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  invoke void @_ZN13Domain_Filter17compute_boxfilterERN2cv3MatES2_S2_f(ptr noundef nonnull align 8 dereferenceable(1664) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.ar, ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %18, float noundef %i.df)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %21, ptr noundef nonnull align 8 dereferenceable(208) %i.ar)
          to label %bb.z unwind label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.dk = load ptr, ptr %21, align 8, !tbaa !63   ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !70
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  invoke void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull align 8 dereferenceable(688) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.aq, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit113 unwind label %bb.ag, !inline_history !72

_ZN2cv3MataSERKNS_7MatExprE.exit113:              ; preds = %bb.z
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.av) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aw) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ax) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %22, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit113
  %i.do = load ptr, ptr %22, align 8, !tbaa !63   ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !70
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull align 8 dereferenceable(688) %22, ptr noundef nonnull align 8 dereferenceable(208) %19, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit114 unwind label %bb.aj, !inline_history !72

_ZN2cv3MataSERKNS_7MatExprE.exit114:              ; preds = %bb.aa
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ay) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.az) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ba) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  br i1 %i.bb, label %.preheader.lr.ph, label %._crit_edge150.split

.preheader.lr.ph:                                 ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit114
  %i.ds = load ptr, ptr %i.be, align 8            ; 21 uses
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %i.du = load i32, ptr %i.bg, align 4
  %.fr = freeze i32 %i.du
  %i.dv = icmp slt i32 %.fr, 2                    ; 2 uses
  %i.dw = load ptr, ptr %i.bh, align 8            ; 21 uses
  %i.dx = ptrtoaddr ptr %i.dw to i64
  %i.dy = load i32, ptr %i.bj, align 4
  %.fr173 = freeze i32 %i.dy
  %i.dz = icmp slt i32 %.fr173, 2                 ; 4 uses
  %i.ea = load ptr, ptr %i.bk, align 8            ; 21 uses
  %i.eb = ptrtoaddr ptr %i.ea to i64              ; 2 uses
  br i1 %i.bc, label %.preheader.lr.ph.split, label %._crit_edge150.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ec = load i32, ptr %i.bd, align 4
  %.fr172 = freeze i32 %i.ec
  %i.ed = icmp slt i32 %.fr172, 2
  br i1 %i.ed, label %.preheader.lr.ph.split.split.us, label %.preheader.lr.ph.split.split

.preheader.lr.ph.split.split.us:                  ; preds = %.preheader.lr.ph.split
  br i1 %i.dv, label %.preheader.lr.ph.split.split.us.split.us, label %.preheader.lr.ph.split.split.us.split

.preheader.lr.ph.split.split.us.split.us:         ; preds = %.preheader.lr.ph.split.split.us
  br i1 %i.dz, label %.preheader.us.us.us.preheader, label %.preheader.us.us

.preheader.us.us.us.preheader:                    ; preds = %.preheader.lr.ph.split.split.us.split.us
  %i.ee = sub i64 %i.dt, %i.eb
  %diff.check = icmp ugt i64 %i.ee, -32
  %i.ef = sub i64 %i.dx, %i.eb
  %diff.check268 = icmp ugt i64 %i.ef, -32
  %conflict.rdx = or i1 %diff.check, %diff.check268
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.preheader, %._crit_edge.split.us.us.split.us.split.us.us.us
  %.044149.us.us.us = phi i32 [ %i.fn, %._crit_edge.split.us.us.split.us.split.us.us.us ], [ 0, %.preheader.us.us.us.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us.us ] ; 4 uses
end_hunk_0
