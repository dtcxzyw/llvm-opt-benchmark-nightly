Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/chessboard?download=true
inline.NumInlined: 4866
inline.NumDeleted: 1356
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2cv6detail20check_failed_MatTypeEiRKNS0_12CheckContextE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv7details5FastX10calcAnglesERKSt6vectorINS_3MatESaIS3_EERS2_INS_8KeyPointESaIS8_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %10 = alloca %"class.cv::Range", align 4        ; 6 uses
  %11 = alloca %"class.std::function", align 8    ; 9 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv7details5FastX10calcAnglesERKSt6vectorINS_3MatESaIS3_EERS2_INS_8KeyPointESaIS8_EE, ptr noundef nonnull @.str.1, i32 noundef 467) #32
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !71     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.n = load i64, ptr %i.l, align 8, !tbaa !72
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn25 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.ad

bb.g:                                             ; preds = %bb.m
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.038.043, i64 208 ; 2 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !88
  %.not = icmp eq ptr %i.p, %i.q
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !290

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.sroa.038.043 = phi ptr [ %i.p, %bb.g ], [ %i.e, %bb.a ] ; 3 uses
  %i.r = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.038.043)
  br i1 %i.r, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv7details5FastX10calcAnglesERKSt6vectorINS_3MatESaIS3_EERS2_INS_8KeyPointESaIS8_EE, ptr noundef nonnull @.str.1, i32 noundef 472) #32
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %6, align 8, !tbaa !71     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.l
  %i.x = load i64, ptr %i.v, align 8, !tbaa !72
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.k
  %.pn22 = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.t, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.ad

bb.m:                                             ; preds = %.lr.ph
  %i.z = load i32, ptr %.sroa.038.043, align 8, !tbaa !67
  %i.aa = and i32 %i.z, 4064
  %i.ab = icmp samesign ult i32 %i.aa, 96
  br i1 %i.ab, label %bb.n, label %bb.g

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv7details5FastX10calcAnglesERKSt6vectorINS_3MatESaIS3_EERS2_INS_8KeyPointESaIS8_EE, ptr noundef nonnull @.str.1, i32 noundef 474) #32
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.r:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %8, align 8, !tbaa !71    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.r
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !72
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.q
  %.pn20 = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.ad, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %2, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.aj = load i32, ptr %.pre, align 8, !tbaa !67
  %i.ak = lshr i32 %i.aj, 5
  %i.al = and i32 %i.ak, 127                      ; 2 uses
  %i.am = add nuw nsw i32 %i.al, 1                ; 2 uses
  store i32 %i.am, ptr %i.a, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i32 %i.al, ptr %i.b, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.an = uitofp nneg i32 %i.am to double
  %i.ao = fdiv double f0x400921FB54442D18, %i.an
  %i.ap = fptrunc double %i.ao to float
  store float %i.ap, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !89, !range !90, !noundef !91
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = uitofp i1 %i.as to float
  %i.au = fadd float %i.at, 1.000000e+00
  store float %i.au, ptr %i.d, align 4, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !94 ; 4 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !95    ; 2 uses
  %.not67 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not67, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 28
  invoke void @_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bb)
          to label %._ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit_crit_edge44 unwind label %bb.y

._ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit_crit_edge44: ; preds = %bb.s
  %.pre45 = load ptr, ptr %i.av, align 8, !tbaa !94
  %.pre46 = load ptr, ptr %3, align 8, !tbaa !95
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit:    ; preds = %._ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit_crit_edge44, %._crit_edge
  %12 = phi ptr [ %.pre46, %._ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit_crit_edge44 ], [ %i.aw, %._crit_edge ]
  %13 = phi ptr [ %.pre45, %._ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit_crit_edge44 ], [ %i.aw, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %14 = ptrtoint ptr %13 to i64
  %15 = ptrtoint ptr %12 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 28
  %18 = trunc i64 %17 to i32
  store i32 0, ptr %10, align 4, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %18, ptr %i.bc, align 4, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.be = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #35
          to label %bb.u unwind label %bb.t       ; 9 uses

bb.t:                                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %3, ptr %i.be, align 16, !tbaa !100
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !102
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !104
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !106
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %0, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !108
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr %i.b, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !110
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store ptr %i.a, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !110
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  store ptr %i.c, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !106
  store ptr %i.be, ptr %11, align 8, !tbaa !111
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNKS0_7details5FastX10calcAnglesERKSt6vectorINS0_3MatESaIS8_EERS7_INS0_8KeyPointESaISD_EEE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.bg, align 8, !tbaa !114
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNKS0_7details5FastX10calcAnglesERKSt6vectorINS0_3MatESaIS8_EERS7_INS0_8KeyPointESaISD_EEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation", ptr %i.bd, align 8, !tbaa !115
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef align 8 %11)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !115 ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = invoke noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void

bb.y:                                             ; preds = %bb.s
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !115 ; 2 uses
  %.not.i35 = icmp eq ptr %i.bn, null
  br i1 %.not.i35, label %.body, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = invoke noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body unwind label %bb.ab     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #36
  unreachable

.body:                                            ; preds = %bb.t, %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.t ], [ %i.bm, %bb.aa ], [ %i.bm, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ac

bb.ac:                                            ; preds = %.body, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bl, %bb.y ]
  call void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.pn.pn, %bb.ac ]
  resume { ptr, i32 } %.pn25.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 %1) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::ParallelLoopBodyLambdaWrapper", align 8 ; 14 uses
  %3 = alloca %"class.std::function", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !115  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread, label %bb.b

_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %2, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br label %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #36
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.d, %_ZNSt14_Function_baseD2Ev.exit8
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit8 ], [ %i.g, %bb.d ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit:    ; preds = %bb.b
  %i.l = load <2 x ptr>, ptr %i.b, align 8, !tbaa !111
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !115  ; 2 uses
  store <2 x ptr> %i.l, ptr %i.a, align 8, !tbaa !111
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %2, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %.not.i.i.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit
  %i.p = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = load <2 x ptr>, ptr %i.a, align 8, !tbaa !111
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !111
  br label %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !115  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef 3)
          to label %.body.i unwind label %bb.j    ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #36
  unreachable

.body.i:                                          ; preds = %bb.i, %bb.h
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %2) #33
  br label %.body

_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit: ; preds = %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread, %bb.g, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit
  %i.w = phi ptr [ %i.e, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread ], [ %i.o, %bb.g ], [ %i.o, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit ]
  %i.x = phi ptr [ %i.d, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread ], [ %i.n, %bb.g ], [ %i.n, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit ] ; 2 uses
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef -1.000000e+00)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %2, align 8, !tbaa !38
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !115  ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.y, null
  br i1 %.not.i.i5, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_0
begin_hunk_1_@_ZNK2cv7details10Chessboard5Board10getContourEv:bb.a
  br label %.body

bb.ct:                                            ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm
  %i.jv = phi ptr [ %i.ji, %bb.cm ], [ %i.jj, %bb.cn ], [ %i.jl, %bb.co ], [ %i.jn, %bb.cp ]
  %.04.in.i.i131 = phi ptr [ %i.ji, %bb.cm ], [ %i.jk, %bb.cn ], [ %i.jm, %bb.co ], [ %i.jo, %bb.cp ]
  %.04.i.i132 = load ptr, ptr %.04.in.i.i131, align 8, !tbaa !175
  %.not30 = icmp eq ptr %.04.i.i132, %.04.i.i
  br i1 %.not30, label %.critedge.loopexit, label %bb.ah, !llvm.loop !670

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i116, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i91, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i66, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.by, %bb.bk, %bb.aw, %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ek, ptr %0, align 8
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke, %bb.cq, %bb.cf, %bb.br, %bb.bd, %bb.ap
  %i.jw = phi ptr [ %i.ed, %bb.br ], [ %i.ed, %bb.bd ], [ %i.jb, %bb.cq ], [ %i.ed, %bb.ap ], [ %i.ed, %.invoke ], [ %i.ed, %bb.cf ]
  %i.jx = phi ptr [ %i.ek, %bb.br ], [ %i.ek, %bb.bd ], [ %i.jg, %bb.cq ], [ %i.ek, %bb.ap ], [ %i.ek, %.invoke ], [ %i.ek, %bb.cf ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge.loopexit:                               ; preds = %bb.ct
  store ptr %i.jg, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.ad, %bb.ac, %.critedge.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.cv

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i59
  %i.jy = phi ptr [ %i.jw, %.loopexit.split-lp ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109 ], [ %i.jb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i134 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i47 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i59 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i84 ], [ %i.ed, %.loopexit ]
  %i.jz = phi ptr [ %i.jx, %.loopexit.split-lp ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109 ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i134 ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i47 ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i59 ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i84 ], [ %i.ek, %.loopexit ] ; 3 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109 ], [ %i.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i134 ], [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i47 ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i59 ], [ %i.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i84 ], [ %lpad.loopexit, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %.not.i.i.i140 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %.body
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.kc) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %.body, %bb.cu
  resume { ptr, i32 } %.pn.pn.pn

bb.cv:                                            ; preds = %.critedge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv7details10Chessboard5Board9maskImageERKNS_17_InputOutputArrayERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::details::Chessboard::Board", align 8 ; 16 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 19 uses
  %6 = alloca %"class.std::vector.34", align 8    ; 8 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.std::vector.4", align 8     ; 11 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv7details10Chessboard5BoardE, i64 16), ptr %3, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN2cv7details10Chessboard5BoardaSERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %_ZN2cv7details10Chessboard5BoardC2ERKS2_.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !192  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN2cv6Point_IfEESaIS3_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !193
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #34
  br label %_ZNSt6vectorIPN2cv6Point_IfEESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPN2cv6Point_IfEESaIS3_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !194  ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i3.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPN2cv6Point_IfEESaIS3_EED2Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !195
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #34
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt6vectorIPN2cv6Point_IfEESaIS3_EED2Ev.exit.i, %bb.d, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %.pn14.pn.pn.pn, %bb.ab ], [ %i.c, %bb.d ], [ %i.c, %_ZNSt6vectorIPN2cv6Point_IfEESaIS3_EED2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op

_ZN2cv7details10Chessboard5BoardC2ERKS2_.exit:    ; preds = %bb.a
  invoke void @_ZN2cv7details10Chessboard5Board8growLeftEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %_ZN2cv7details10Chessboard5BoardC2ERKS2_.exit
  invoke void @_ZN2cv7details10Chessboard5Board9growRightEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv7details10Chessboard5Board7growTopEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv7details10Chessboard5Board10growBottomEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZNK2cv7details10Chessboard5Board10getContourEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.34") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  store i32 1124024357, ptr %5, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 1, ptr %i.q, align 4, !tbaa !139
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.r, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !214  ; 2 uses
  %i.v = load ptr, ptr %6, align 8, !tbaa !215    ; 9 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 3
  %i.aa = trunc i64 %i.z to i32
  store i32 %i.aa, ptr %i.s, align 4, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 153, ptr %i.ab, align 8, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.ag, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, i8 0, i64 72, i1 false), !tbaa !86
  %i.aj = load i32, ptr %i.s, align 4, !tbaa !74  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 84
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !48
  store i64 8, ptr %i.ah, align 8, !tbaa !86
  %i.al = icmp eq ptr %i.v, %i.u
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc
  store ptr %i.v, ptr %i.ac, align 8, !tbaa !66
  store ptr %i.v, ptr %i.ad, align 8, !tbaa !216
  %i.am = sext i32 %i.aj to i64
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.an ; 2 uses
  store ptr %i.ao, ptr %i.ae, align 8, !tbaa !81
  store ptr %i.ao, ptr %i.af, align 8, !tbaa !217
  br label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.aq, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !62
  store ptr %4, ptr %i.ap, align 8, !tbaa !63
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 4, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #33
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !218
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.au) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr null, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.aw, align 8, !tbaa !137
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.ax, align 4, !tbaa !138
  store i32 17104896, ptr %9, align 8, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %8, ptr %i.ay, align 8, !tbaa !63
  %i.az = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.o unwind label %bb.y

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv12drawContoursERKNS_17_InputOutputArrayERKNS_11_InputArrayEiRKNS_7Scalar_IdEEiiS5_iNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef -1, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i32 noundef 2147483647, i64 0)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.ba = load ptr, ptr %8, align 8, !tbaa !129   ; 3 uses
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !128 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %i.ba, %bb.p ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #33
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i.i.i21, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !129
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bd = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ba, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.be = load ptr, ptr %10, align 8, !tbaa !147
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #34
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN2cv7details10Chessboard5BoardD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.r:                                             ; preds = %bb.g, %bb.f, %bb.e, %_ZN2cv7details10Chessboard5BoardC2ERKS2_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.s:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit23

bb.t:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.k
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #33
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.u ], [ %i.bk, %bb.t ] ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit23, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !218
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.bp) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit23

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit23:  ; preds = %bb.w, %bb.v, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.s ], [ %.pn.pn, %bb.v ], [ %.pn.pn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.aa

bb.x:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.o, %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn14.pn = phi { ptr, i32 } [ %i.br, %bb.y ], [ %i.bq, %bb.x ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit23
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %bb.z ], [ %.pn.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit23 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.r
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn, %bb.aa ], [ %i.bi, %bb.r ]
  call void @_ZN2cv7details10Chessboard5BoardD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume
}

declare void @_ZN2cv12drawContoursERKNS_17_InputOutputArrayERKNS_11_InputArrayEiRKNS_7Scalar_IdEEiiS5_iNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i64) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv7details10Chessboard5Board18estimateHomographyENS_5Rect_IiEEi(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i64 %2, i64 %3, i32 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.34", align 8    ; 9 uses
  %6 = alloca %"class.std::vector.34", align 8    ; 12 uses
  %7 = alloca %"class.std::vector.34", align 8    ; 12 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !223  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.d = load i32, ptr %i.c, align 4, !tbaa !222  ; 3 uses
  %i.e = icmp slt i32 %i.b, 3
  %i.f = icmp slt i32 %i.d, 3
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #33
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %.sroa.9.8.extract.shift = lshr i64 %3, 32
  %.sroa.9.8.extract.trunc = trunc nuw i64 %.sroa.9.8.extract.shift to i32 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %2, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 2 uses
  %.sroa.5.8.extract.trunc = trunc i64 %3 to i32  ; 2 uses
  %i.g = icmp slt i32 %.sroa.5.8.extract.trunc, 1
  %spec.select = select i1 %i.g, i32 %i.d, i32 %.sroa.5.8.extract.trunc
  %i.h = icmp slt i32 %.sroa.9.8.extract.trunc, 1
  %.sroa.9.0 = select i1 %i.h, i32 %i.b, i32 %.sroa.9.8.extract.trunc
  %i.i = add i32 %spec.select, %.sroa.0.0.extract.trunc
  %.sroa.speculated61 = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.i) ; 2 uses
  %i.j = add i32 %.sroa.9.0, %.sroa.3.0.extract.trunc
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.j) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @_ZNK2cv7details10Chessboard5Board10getCornersEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.34") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.k = icmp sgt i32 %.sroa.speculated, %.sroa.3.0.extract.trunc
  br i1 %i.k, label %.preheader.lr.ph, label %._crit_edge74.split

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.l = icmp sgt i32 %.sroa.speculated61, %.sroa.0.0.extract.trunc
  %i.m = load ptr, ptr %5, align 8
  %i.n = sitofp i32 %4 to float                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  br i1 %i.l, label %.preheader.preheader, label %._crit_edge74.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %sext = shl i64 %2, 32
  %i.s = ashr exact i64 %sext, 32
  %i.t = ashr i64 %2, 32
  %i.u = zext nneg i32 %i.b to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.v = phi ptr [ null, %.preheader.preheader ], [ %i.cp, %._crit_edge ]
  %i.w = phi ptr [ null, %.preheader.preheader ], [ %i.cq, %._crit_edge ]
  %i.x = phi ptr [ null, %.preheader.preheader ], [ %i.cr, %._crit_edge ]
  %i.y = phi ptr [ null, %.preheader.preheader ], [ %i.cs, %._crit_edge ]
  %i.z = phi ptr [ null, %.preheader.preheader ], [ %i.ct, %._crit_edge ]
  %i.aa = phi ptr [ null, %.preheader.preheader ], [ %i.cu, %._crit_edge ]
  %indvars.iv78 = phi i64 [ %i.t, %.preheader.preheader ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %i.ab = mul nsw i64 %indvars.iv78, %i.u
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.ac = trunc i64 %indvars.iv.next79 to i32     ; 2 uses
  %i.ad = sitofp i32 %i.ac to float
  %i.ae = fmul nnan float %i.n, %i.ad             ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.m, i64 %i.ab
  br label %bb.d

._crit_edge74.split.loopexit:                     ; preds = %._crit_edge
  %i.af = ptrtoint ptr %i.cr to i64
  %i.ag = ptrtoint ptr %i.cu to i64
  %i.ah = ptrtoint ptr %i.cs to i64
  br label %._crit_edge74.split

._crit_edge74.split:                              ; preds = %._crit_edge74.split.loopexit, %.preheader.lr.ph, %bb.c
  %i.ai = phi i64 [ %i.ah, %._crit_edge74.split.loopexit ], [ 0, %.preheader.lr.ph ], [ 0, %bb.c ]
  %i.aj = phi i64 [ %i.ag, %._crit_edge74.split.loopexit ], [ 0, %.preheader.lr.ph ], [ 0, %bb.c ]
  %i.ak = phi ptr [ %i.cp, %._crit_edge74.split.loopexit ], [ null, %.preheader.lr.ph ], [ null, %bb.c ] ; 3 uses
  %i.al = phi i64 [ %i.af, %._crit_edge74.split.loopexit ], [ 0, %.preheader.lr.ph ], [ 0, %bb.c ]
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 4
  br i1 %i.ap, label %bb.l, label %bb.m

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit
  %exitcond82.not = icmp eq i32 %.sroa.speculated, %i.ac
  br i1 %exitcond82.not, label %._crit_edge74.split.loopexit, label %.preheader, !llvm.loop !679

bb.d:                                             ; preds = %.preheader, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit
  %i.aq = phi ptr [ %i.v, %.preheader ], [ %i.cp, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit ] ; 8 uses
  %i.ar = phi ptr [ %i.w, %.preheader ], [ %i.cq, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit ] ; 6 uses
  %i.as = phi ptr [ %i.x, %.preheader ], [ %i.cr, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %i.at = phi ptr [ %i.y, %.preheader ], [ %i.cs, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %i.au = phi ptr [ %i.z, %.preheader ], [ %i.ct, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit ] ; 6 uses
  %i.av = phi ptr [ %i.aa, %.preheader ], [ %i.cu, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %indvars.iv = phi i64 [ %i.s, %.preheader ], [ %.pre85, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.aw = load float, ptr %gep, align 4, !tbaa !164
  %i.ax = fcmp uno float %i.aw, 0.000000e+00
  %.pre85 = add nsw i64 %indvars.iv, 1            ; 2 uses
  %.pre86 = trunc i64 %.pre85 to i32              ; 2 uses
  br i1 %i.ax, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit, label %bb.e
end_hunk_1
