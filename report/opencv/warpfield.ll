Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/warpfield?download=true
inline.NumInlined: 5076
inline.NumDeleted: 2014
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 77
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN2cv6dynafu9WarpField14subsampleIndexERNS_3MatERNS_5flann12GenericIndexIN7cvflann9L2_SimpleIfEEEERNS_10AutoBufferIbLm1032EEEfNS_3PtrIS9_EE:bb.a
  %i.ig = add nsw i32 %i.hx, -1
  store i32 %i.ig, ptr %i.hu, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.ih = atomicrmw volatile add ptr %i.hu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i = phi i32 [ %i.hx, %bb.bb ], [ %i.ih, %bb.bc ]
  %i.ii = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ii, label %bb.bd, label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #35
  br label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  %.not.i.i.i117 = icmp eq ptr %.sroa.0180.0, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorIfSaIfEED2Ev.exit119, label %bb.be

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ij = ptrtoint ptr %.sroa.11184.0 to i64
  %i.ik = sub i64 %i.ij, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.0, i64 noundef %i.ik) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit119

_ZNSt6vectorIfSaIfEED2Ev.exit119:                 ; preds = %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.be
  %.not.i.i.i120 = icmp eq ptr %.sroa.0187.0583601, null
  br i1 %.not.i.i.i120, label %_ZNSt6vectorIiSaIiEED2Ev.exit121, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit119
  %i.il = ptrtoint ptr %.sroa.15.0571602 to i64
  %i.im = sub i64 %i.il, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0187.0583601, i64 noundef %i.im) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit121

_ZNSt6vectorIiSaIiEED2Ev.exit121:                 ; preds = %._ZNSt6vectorIiSaIiEED2Ev.exit121_crit_edge, %bb.bf, %_ZNSt6vectorIfSaIfEED2Ev.exit119
  %indvars.iv.next.pre-phi = phi i64 [ %.pre553, %._ZNSt6vectorIiSaIiEED2Ev.exit121_crit_edge ], [ %i.bp, %bb.bf ], [ %i.bp, %_ZNSt6vectorIfSaIfEED2Ev.exit119 ] ; 2 uses
  %i.in = load i64, ptr %i.a, align 8, !tbaa !157
  %sext = shl i64 %i.in, 32
  %i.io = ashr exact i64 %sext, 32
  %i.ip = icmp slt i64 %indvars.iv.next.pre-phi, %i.io
  br i1 %i.ip, label %bb.b, label %._crit_edge395, !llvm.loop !603

bb.bg:                                            ; preds = %bb.av
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit124

_ZNSt6vectorIfSaIfEED2Ev.exit124:                 ; preds = %bb.bg, %.body98
  %.pn52 = phi { ptr, i32 } [ %i.iq, %bb.bg ], [ %.pn50, %.body98 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef 12) #36
  br label %.body96

.body96:                                          ; preds = %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i, %_ZNSt6vectorIfSaIfEED2Ev.exit124
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZNSt6vectorIfSaIfEED2Ev.exit124 ], [ %i.fx, %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i ] ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %.sroa.0149.0, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIfSaIfEED2Ev.exit127, label %bb.bh

bb.bh:                                            ; preds = %.body96
  %i.ir = ptrtoint ptr %.sroa.0149.0 to i64
  %i.is = sub i64 %.sroa.13.0, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0149.0, i64 noundef %i.is) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit127

_ZNSt6vectorIfSaIfEED2Ev.exit127:                 ; preds = %bb.bh, %.body96
  %.not.i.i.i128 = icmp eq ptr %.sroa.0157.0610625, null
  br i1 %.not.i.i.i128, label %_ZNSt6vectorIiSaIiEED2Ev.exit129, label %_ZNSt6vectorIfSaIfEED2Ev.exit127.thread

_ZNSt6vectorIfSaIfEED2Ev.exit127.thread:          ; preds = %.loopexit.split-lp209, %.loopexit208, %_ZNSt6vectorIfSaIfEED2Ev.exit127
  %.pn52.pn.pn636 = phi { ptr, i32 } [ %.pn52.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit127 ], [ %lpad.loopexit.split-lp211, %.loopexit.split-lp209 ], [ %lpad.loopexit210, %.loopexit208 ]
  %.sroa.0157.0611633 = phi ptr [ %.sroa.0157.0610625, %_ZNSt6vectorIfSaIfEED2Ev.exit127 ], [ %i.fc, %.loopexit.split-lp209 ], [ %i.fc, %.loopexit208 ] ; 2 uses
  %.sroa.11161.0615632 = phi i64 [ %.sroa.11161.0616624, %_ZNSt6vectorIfSaIfEED2Ev.exit127 ], [ %i.fl, %.loopexit.split-lp209 ], [ %i.fl, %.loopexit208 ]
  %i.it = ptrtoint ptr %.sroa.0157.0611633 to i64
  %i.iu = sub i64 %.sroa.11161.0615632, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0157.0611633, i64 noundef %i.iu) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit129

_ZNSt6vectorIiSaIiEED2Ev.exit129:                 ; preds = %.loopexit203, %.loopexit.split-lp204, %_ZNSt6vectorIfSaIfEED2Ev.exit127, %_ZNSt6vectorIfSaIfEED2Ev.exit127.thread
  %.pn57 = phi { ptr, i32 } [ %.pn52.pn.pn636, %_ZNSt6vectorIfSaIfEED2Ev.exit127.thread ], [ %.pn52.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit127 ], [ %lpad.loopexit205, %.loopexit203 ], [ %lpad.loopexit.split-lp206, %.loopexit.split-lp204 ]
  call void @_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #35
  br label %.body75

.body75:                                          ; preds = %bb.z, %bb.s, %_ZNSt6vectorIiSaIiEED2Ev.exit129
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %_ZNSt6vectorIiSaIiEED2Ev.exit129 ], [ %i.di, %bb.s ], [ %i.ec, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  br label %bb.bi

bb.bi:                                            ; preds = %.body75, %bb.y
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %.body75 ], [ %.pn.pn.pn, %bb.y ] ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %.sroa.0180.0, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIfSaIfEED2Ev.exit132, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iv = ptrtoint ptr %.sroa.11184.0 to i64
  %i.iw = ptrtoint ptr %.sroa.0180.0 to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.0, i64 noundef %i.ix) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit132

_ZNSt6vectorIfSaIfEED2Ev.exit132:                 ; preds = %bb.bj, %bb.bi
  %.not.i.i.i133 = icmp eq ptr %.sroa.0187.0583601, null
  br i1 %.not.i.i.i133, label %_ZNSt6vectorIiSaIiEED2Ev.exit134, label %_ZNSt6vectorIfSaIfEED2Ev.exit132.thread

_ZNSt6vectorIfSaIfEED2Ev.exit132.thread:          ; preds = %.loopexit.split-lp199, %.loopexit198, %_ZNSt6vectorIfSaIfEED2Ev.exit132
  %.pn57.pn.pn.pn643 = phi { ptr, i32 } [ %.pn57.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit132 ], [ %lpad.loopexit.split-lp201, %.loopexit.split-lp199 ], [ %lpad.loopexit200, %.loopexit198 ]
  %.sroa.15.0572642 = phi ptr [ %.sroa.15.0571602, %_ZNSt6vectorIfSaIfEED2Ev.exit132 ], [ %i.bb, %.loopexit.split-lp199 ], [ %i.bb, %.loopexit198 ]
  %.sroa.0187.0584641 = phi ptr [ %.sroa.0187.0583601, %_ZNSt6vectorIfSaIfEED2Ev.exit132 ], [ %i.ba, %.loopexit.split-lp199 ], [ %i.ba, %.loopexit198 ] ; 2 uses
  %i.iy = ptrtoint ptr %.sroa.15.0572642 to i64
  %i.iz = ptrtoint ptr %.sroa.0187.0584641 to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0187.0584641, i64 noundef %i.ja) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit134

_ZNSt6vectorIiSaIiEED2Ev.exit134:                 ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt6vectorIfSaIfEED2Ev.exit132.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit132
  %.pn57.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn.pn643, %_ZNSt6vectorIfSaIfEED2Ev.exit132.thread ], [ %.pn57.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit132 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN2cv3PtrINS0_6dynafu8WarpNodeEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #35
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %16) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  resume { ptr, i32 } %.pn57.pn.pn.pn.pn

._crit_edge395:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit121, %bb.a
  %i.jb = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !205
  %.not.i135 = icmp eq i32 %i.jc, 0
  br i1 %.not.i135, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge395
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %16)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #37
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge395, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6dynafu9WarpField14initTransformsESt6vectorINS_3PtrINS0_8WarpNodeEEESaIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvflann::Matrix", align 8   ; 7 uses
  %3 = alloca %"class.cvflann::Matrix.56", align 8 ; 7 uses
  %4 = alloca %"class.cvflann::Matrix", align 8   ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %7 = alloca %"struct.cv::Ptr.13", align 16      ; 7 uses
  %8 = alloca %"struct.cvflann::SearchParams", align 8 ; 12 uses
  %9 = alloca %"class.std::vector.22", align 8    ; 12 uses
  %10 = alloca %"class.std::vector.34", align 8   ; 13 uses
  %11 = alloca %"class.cv::Affine3", align 8      ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i32, ptr %i.a, align 8, !tbaa !618  ; 3 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %_ZNK2cv8MatShapeclEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.12, i32 noundef 109) #33
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !113    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !114
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn42.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit97 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %common.resume

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.a
  %or.cond.not = icmp eq i32 %i.b, 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.k = load i32, ptr %i.j, align 4
  %12 = icmp eq i32 %i.k, 0
  %13 = icmp slt i32 %i.b, 0
  %14 = select i1 %or.cond.not, i1 %12, i1 %13
  br i1 %14, label %.loopexit170, label %bb.e

bb.e:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.l = load ptr, ptr %1, align 8, !tbaa !158    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !158  ; 2 uses
  %.not280 = icmp eq ptr %i.l, %i.n
  br i1 %.not280, label %.loopexit170, label %.lr.ph283

.lr.ph283:                                        ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 40
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph283, %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.0163.0281 = phi ptr [ %i.l, %.lr.ph283 ], [ %i.hy, %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0163.0281, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !118 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %.sroa.0163.0281, align 8, !tbaa !134
  store <2 x ptr> %i.aq, ptr %7, align 16, !tbaa !134
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_6dynafu8WarpNodeEEC2ERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !124
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !124
  br label %_ZN2cv3PtrINS_6dynafu8WarpNodeEEC2ERKS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv3PtrINS_6dynafu8WarpNodeEEC2ERKS3_.exit

_ZN2cv3PtrINS_6dynafu8WarpNodeEEC2ERKS3_.exit:    ; preds = %bb.f, %bb.h, %bb.i
  %i.aw = load i32, ptr %0, align 8, !tbaa !99    ; 3 uses
  %i.ax = sext i32 %i.aw to i64                   ; 3 uses
  %i.ay = icmp slt i32 %i.aw, 0
  br i1 %i.ay, label %bb.j, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.j:                                             ; preds = %_ZN2cv3PtrINS_6dynafu8WarpNodeEEC2ERKS3_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #33
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN2cv3PtrINS_6dynafu8WarpNodeEEC2ERKS3_.exit
  %.not.i.i.i.i50 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i50, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.az = shl nuw nsw i64 %i.ax, 2
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #34
          to label %.noexc51 unwind label %.loopexit171.a ; 8 uses

.noexc51:                                         ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ax ; 5 uses
  store i32 0, ptr %i.ba, align 4, !tbaa !124
  %i.bc = getelementptr i8, ptr %i.ba, i64 4      ; 3 uses
  %i.bd = add nsw i64 %i.ax, -1                   ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc51
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bd, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bc, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !124
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc51
  %.0.i.i.i.i.i.ph = phi ptr [ %i.bc, %.noexc51 ], [ %i.bf, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 3 uses
  %.pr = load i32, ptr %0, align 8, !tbaa !99     ; 3 uses
  %i.bg = zext nneg i32 %.pr to i64               ; 3 uses
  %i.bh = icmp slt i32 %.pr, 0
  br i1 %i.bh, label %bb.l, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #33
          to label %.noexc55 unwind label %.loopexit.split-lp173

.noexc55:                                         ; preds = %bb.l
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.not.i.i.i.i52 = icmp eq i32 %.pr, 0
  br i1 %.not.i.i.i.i52, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bi = shl nuw nsw i64 %i.bg, 2
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #34
          to label %.noexc56 unwind label %.loopexit172 ; 5 uses

.noexc56:                                         ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bg ; 2 uses
  store float 0.000000e+00, ptr %i.bj, align 4, !tbaa !145
  %i.bl = getelementptr i8, ptr %i.bj, i64 4      ; 3 uses
  %i.bm = add nsw i64 %i.bg, -1                   ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc56
  %.idx.i.i.i.i.i.i.i53 = shl nuw nsw i64 %i.bm, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bl, i8 0, i64 %.idx.i.i.i.i.i.i.i53, i1 false), !tbaa !145
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i.i.i.i.i.i.i53
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc56, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.17160.0380399 = phi ptr [ %i.bb, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bb, %.noexc56 ], [ %i.bb, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0150.0386398 = phi ptr [ %i.ba, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ba, %.noexc56 ], [ %i.ba, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.0.i.i.i.i.i392397 = phi ptr [ %.0.i.i.i.i.i.ph, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %.0.i.i.i.i.i.ph, %.noexc56 ], [ %.0.i.i.i.i.i.ph, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.sroa.0143.0 = phi ptr [ %i.bj, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bj, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.11147.0 = phi ptr [ %i.bk, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bk, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.0.i.i.i.i.i54 = phi ptr [ %i.bo, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bl, %.noexc56 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.bp = load ptr, ptr %7, align 16, !tbaa !139  ; 13 uses
  %i.bq = load <2 x float>, ptr %i.bp, align 4, !tbaa !145
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !147
  %i.bt = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #34
          to label %bb.n unwind label %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i ; 5 uses

_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i:           ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  store <2 x float> %i.bq, ptr %i.bt, align 4
  %.sroa.6133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store float %i.bs, ptr %.sroa.6133.0..sroa_idx, align 4
  %i.bv = load ptr, ptr %i.p, align 8, !tbaa !159
  %i.bw = load i32, ptr %0, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  store i32 0, ptr %i.q, align 8, !tbaa !168
  store ptr null, ptr %i.r, align 8, !tbaa !164
  store ptr %i.q, ptr %i.s, align 8, !tbaa !169
  store ptr %i.q, ptr %i.t, align 8, !tbaa !170
  store i64 0, ptr %i.u, align 8, !tbaa !171
  invoke void @_ZN7cvflann12SearchParams4initEifbb(ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef 32, float noundef 0.000000e+00, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %_ZN7cvflann12SearchParamsC2Eifb.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body57

_ZN7cvflann12SearchParamsC2Eifb.exit:             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store i64 1, ptr %2, align 8, !tbaa !180
  store i64 3, ptr %i.v, align 8, !tbaa !181
  store ptr %i.bt, ptr %i.x, align 8, !tbaa !182
  store i64 3, ptr %i.w, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.by = ptrtoint ptr %.0.i.i.i.i.i392397 to i64
  %i.bz = ptrtoint ptr %.sroa.0150.0386398 to i64 ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = ashr exact i64 %i.ca, 2                 ; 10 uses
  store i64 1, ptr %3, align 8, !tbaa !189
  store i64 %i.cb, ptr %i.y, align 8, !tbaa !190
  store ptr %.sroa.0150.0386398, ptr %i.aa, align 8, !tbaa !191
  store i64 %i.cb, ptr %i.z, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.cc = ptrtoint ptr %.0.i.i.i.i.i54 to i64
  %i.cd = ptrtoint ptr %.sroa.0143.0 to i64       ; 2 uses
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2                 ; 2 uses
  store i64 1, ptr %4, align 8, !tbaa !180
  store i64 %i.cf, ptr %i.ab, align 8, !tbaa !181
  store ptr %.sroa.0143.0, ptr %i.ad, align 8, !tbaa !182
  store i64 %i.cf, ptr %i.ac, align 8, !tbaa !183
  %i.cg = invoke noundef i32 @_ZN7cvflann19flann_distance_typeEv()
end_hunk_0
begin_hunk_1_@_ZN7cvflann24search_with_ground_truthINS_9L2_SimpleIfEEEEfRNS_7NNIndexIT_EERKNS_6MatrixINS4_11ElementTypeEEESB_RKNS7_IiEEiiRfRNS4_10ResultTypeERKS4_i:bb.a
.lr.ph:                                           ; preds = %_ZN7cvflann14StartStopTimer5startEv.exit.preheader, %_ZN7cvflann21computeDistanceRaportINS_9L2_SimpleIfEEEENT_10ResultTypeERKNS_6MatrixINS3_11ElementTypeEEEPS6_PiSB_iiRKS3_.exit
  %.0149 = phi i64 [ %i.hf, %_ZN7cvflann21computeDistanceRaportINS_9L2_SimpleIfEEEENT_10ResultTypeERKNS_6MatrixINS3_11ElementTypeEEEPS6_PiSB_iiRKS3_.exit ], [ 0, %_ZN7cvflann14StartStopTimer5startEv.exit.preheader ] ; 2 uses
  store ptr %.sroa.0100.0114, ptr %i.n, align 8, !tbaa !506
  store ptr %.sroa.095.0, ptr %i.ak, align 8, !tbaa !507
  store i32 0, ptr %i.p, align 4, !tbaa !504
  store float f0x7F7FFFFF, ptr %i.q, align 8, !tbaa !505
  %i.gu = load i32, ptr %i.o, align 8, !tbaa !503
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr [4 x i8], ptr %.sroa.095.0, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.gw, i64 -4
  store float f0x7F7FFFFF, ptr %i.gx, align 4, !tbaa !145
  %i.gy = load ptr, ptr %i.al, align 8, !tbaa !182
  %i.gz = load i64, ptr %i.am, align 8, !tbaa !183
  %i.ha = mul i64 %i.gz, %.0149
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.ha
  %i.hc = load ptr, ptr %0, align 8, !tbaa !123
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 96
  %i.he = load ptr, ptr %i.hd, align 8
  invoke void %i.he(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.hb, ptr noundef nonnull align 8 dereferenceable(48) %13)
          to label %_ZN7cvflann21computeDistanceRaportINS_9L2_SimpleIfEEEENT_10ResultTypeERKNS_6MatrixINS3_11ElementTypeEEEPS6_PiSB_iiRKS3_.exit unwind label %.thread.split

_ZN7cvflann21computeDistanceRaportINS_9L2_SimpleIfEEEENT_10ResultTypeERKNS_6MatrixINS3_11ElementTypeEEEPS6_PiSB_iiRKS3_.exit: ; preds = %.lr.ph
  %i.hf = add nuw i64 %.0149, 1                   ; 2 uses
  %i.hg = load i64, ptr %2, align 8, !tbaa !180
  %i.hh = icmp ult i64 %i.hf, %i.hg
  br i1 %i.hh, label %.lr.ph, label %_ZN7cvflann14StartStopTimer5startEv.exit._crit_edge.split, !llvm.loop !1076

.thread.split:                                    ; preds = %.lr.ph
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.split158.us:                                     ; preds = %_ZN7cvflann14StartStopTimer4stopEv.exit, %_ZN7cvflann14StartStopTimer4stopEv.exit.us
  %.us-phi159 = phi double [ %i.gc, %_ZN7cvflann14StartStopTimer4stopEv.exit.us ], [ %i.gp, %_ZN7cvflann14StartStopTimer4stopEv.exit ]
  %.us-phi162 = phi i32 [ %i.av, %_ZN7cvflann14StartStopTimer4stopEv.exit.us ], [ %i.gg, %_ZN7cvflann14StartStopTimer4stopEv.exit ]
  %i.hj = phi <2 x float> [ %i.fv, %_ZN7cvflann14StartStopTimer4stopEv.exit.us ], [ zeroinitializer, %_ZN7cvflann14StartStopTimer4stopEv.exit ]
  %i.hk = uitofp nneg i32 %.us-phi162 to double
  %i.hl = fdiv double %.us-phi159, %i.hk
  %i.hm = fptrunc double %i.hl to float
  store float %i.hm, ptr %6, align 4, !tbaa !145
  %i.hn = load i64, ptr %2, align 8, !tbaa !180   ; 2 uses
  %i.ho = mul i64 %i.hn, %i.c
  %i.hp = uitofp i64 %i.ho to float
  %i.hq = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = fdiv <2 x float> %i.hj, %i.hr           ; 2 uses
  %i.ht = extractelement <2 x float> %i.hs, i64 1 ; 2 uses
  store float %i.ht, ptr %7, align 4, !tbaa !145
  %i.hu = extractelement <2 x float> %i.hs, i64 0 ; 2 uses
  %i.hv = fpext float %i.hu to double
  %i.hw = load float, ptr %6, align 4, !tbaa !145
  %i.hx = fpext float %i.hw to double             ; 2 uses
  %i.hy = fmul double %i.hx, 1.000000e+03
  %i.hz = uitofp i64 %i.hn to double
  %i.ia = fdiv double %i.hy, %i.hz
  %i.ib = fpext float %i.ht to double
  %i.ic = invoke noundef i32 (ptr, ...) @_ZN7cvflann6Logger4infoEPKcz(ptr noundef nonnull @.str.101, i32 noundef %5, double noundef %i.hv, double noundef %i.hx, double noundef %i.ia, double noundef %i.ib)
          to label %bb.v unwind label %bb.z       ; 0 uses

bb.v:                                             ; preds = %.split158.us
  %.not.i.i.i = icmp eq ptr %.sroa.095.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.id = ptrtoint ptr %.sroa.10.0 to i64
  %i.ie = ptrtoint ptr %.sroa.095.0 to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.0, i64 noundef %i.if) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.v, %bb.w
  %.not.i.i.i88 = icmp eq ptr %.sroa.0100.0114, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ig = ptrtoint ptr %.sroa.11.0110 to i64
  %i.ih = ptrtoint ptr %.sroa.0100.0114 to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.0114, i64 noundef %i.ii) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.x
  %i.ij = load ptr, ptr %i.s, align 8, !tbaa !164
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.ij)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #37
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  ret float %i.hu

bb.z:                                             ; preds = %.split158.us
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.split, %.split.us, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.im, %bb.z ], [ %i.gt, %.split ], [ %i.ge, %.split.us ] ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %.sroa.095.0, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorIfSaIfEED2Ev.exit90, label %.thread

.thread:                                          ; preds = %.thread.split, %.thread.split.us.split.us, %bb.aa
  %.pn.pn125 = phi { ptr, i32 } [ %.pn.pn, %bb.aa ], [ %i.hi, %.thread.split ], [ %i.gf, %.thread.split.us.split.us ]
  %i.in = ptrtoint ptr %.sroa.10.0 to i64
  %i.io = ptrtoint ptr %.sroa.095.0 to i64
  %i.ip = sub i64 %i.in, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.0, i64 noundef %i.ip) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit90

_ZNSt6vectorIfSaIfEED2Ev.exit90:                  ; preds = %.thread, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn125, %.thread ], [ %.pn.pn, %bb.aa ] ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %.sroa.0100.0114, null
  br i1 %.not.i.i.i91, label %.body, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit90.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit90
  %.pn.pn.pn133 = phi { ptr, i32 } [ %i.gs, %_ZNSt6vectorIfSaIfEED2Ev.exit90.thread ], [ %.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit90 ]
  %.sroa.11.0108132 = phi ptr [ %i.ab, %_ZNSt6vectorIfSaIfEED2Ev.exit90.thread ], [ %.sroa.11.0110, %_ZNSt6vectorIfSaIfEED2Ev.exit90 ]
  %.sroa.0100.0112131 = phi ptr [ %i.aa, %_ZNSt6vectorIfSaIfEED2Ev.exit90.thread ], [ %.sroa.0100.0114, %_ZNSt6vectorIfSaIfEED2Ev.exit90 ] ; 2 uses
  %i.iq = ptrtoint ptr %.sroa.11.0108132 to i64
  %i.ir = ptrtoint ptr %.sroa.0100.0112131 to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.0112131, i64 noundef %i.is) #36
  br label %.body

.body:                                            ; preds = %bb.u, %_ZNSt6vectorIfSaIfEED2Ev.exit90, %bb.ab, %bb.h
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.gr, %bb.u ], [ %.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit90 ], [ %.pn.pn.pn133, %bb.ab ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %13) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.ac

bb.ac:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn72.pn = phi { ptr, i32 } [ %.pn72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %.pn72.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7cvflann9ResultSetIfED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7cvflann12KNNResultSetIfED0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7cvflann12KNNResultSetIfE4fullEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !504
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !503
  %i.e = icmp eq i32 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7cvflann12KNNResultSetIfE8addPointEfi(ptr noundef nonnull align 8 dereferenceable(36) %0, float noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !505
  %i.c = fcmp ult float %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !504  ; 7 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.critedge28

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !507  ; 2 uses
  %i.i = zext nneg i32 %i.e to i64
  %i.j = zext nneg i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv40 = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next41, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.k = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.l = getelementptr i8, ptr %i.k, i64 -4
  %i.m = load float, ptr %i.l, align 4, !tbaa !145
  %i.n = fcmp ugt float %i.m, %1
  br i1 %i.n, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.e
  %indvars.iv43 = phi i64 [ %indvars.iv40, %.preheader ], [ %indvars.iv.next44, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv43
  %i.r = load float, ptr %i.q, align 4, !tbaa !145
  %i.s = fcmp une float %i.r, %1
  %i.t = icmp eq i64 %indvars.iv43, 0
  %or.cond = or i1 %i.t, %i.s
  br i1 %or.cond, label %.critedge28, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, -1 ; 2 uses
  %3 = load ptr, ptr %i.p, align 8, !tbaa !506
  %i.u = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !124
  %i.w = icmp eq i32 %i.v, %2
  br i1 %i.w, label %.critedge, label %bb.d, !llvm.loop !1077

bb.f:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.x = icmp sgt i64 %indvars.iv, 1
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, -1
  br i1 %i.x, label %bb.c, label %.critedge28, !llvm.loop !1078

.critedge28:                                      ; preds = %bb.f, %bb.d, %bb.b
  %.02531 = phi i32 [ %i.o, %bb.d ], [ %i.e, %bb.b ], [ 0, %bb.f ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !503
  %i.aa = icmp slt i32 %i.e, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge28
  %i.ab = add nsw i32 %i.e, 1                     ; 2 uses
  store i32 %i.ab, ptr %i.d, align 4, !tbaa !504
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge28
  %i.ac = phi i32 [ %i.ab, %bb.g ], [ %i.e, %.critedge28 ] ; 2 uses
  %.033 = add nsw i32 %i.ac, -1
  %i.ad = icmp sgt i32 %.033, %.02531
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !507 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !506 ; 5 uses
  br i1 %i.ad, label %.lr.ph36, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.h
  %.pre55 = sext i32 %.02531 to i64
  br label %._crit_edge

.lr.ph36:                                         ; preds = %bb.h
  %i.ai = sext i32 %i.ac to i64                   ; 5 uses
  %i.aj = add nsw i64 %i.ai, -1                   ; 3 uses
  %i.ak = sext i32 %.02531 to i64                 ; 4 uses
  %i.al = xor i64 %i.ak, -1
  %i.am = add nsw i64 %i.al, %i.ai                ; 3 uses
  %min.iters.check = icmp ult i64 %i.am, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph36
  %n.vec = and i64 %i.am, -8                      ; 4 uses
  %i.an = sub nsw i64 %i.ai, %n.vec
  %i.ao = sub nsw i64 %i.aj, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = sub i64 %i.ai, %index
  %i.aq = sub i64 %i.aj, %index                   ; 2 uses
  %i.ar = add nsw i64 %i.ap, -2                   ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -12
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -28
  %wide.load = load <4 x float>, ptr %i.at, align 4, !tbaa !145
  %wide.load64 = load <4 x float>, ptr %i.au, align 4, !tbaa !145
  %i.av = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.aq ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -12
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -28
  store <4 x float> %wide.load, ptr %i.aw, align 4, !tbaa !145
  store <4 x float> %wide.load64, ptr %i.ax, align 4, !tbaa !145
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ar ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -12
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -28
  %wide.load65 = load <4 x i32>, ptr %i.az, align 4, !tbaa !124
  %wide.load66 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !124
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.aq ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -12
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -28
  store <4 x i32> %wide.load65, ptr %i.bc, align 4, !tbaa !124
  store <4 x i32> %wide.load66, ptr %i.bd, align 4, !tbaa !124
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1079

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph36, %middle.block
  %indvars.iv48.ph = phi i64 [ %i.ai, %.lr.ph36 ], [ %i.an, %middle.block ]
  %indvars.iv46.ph = phi i64 [ %i.aj, %.lr.ph36 ], [ %i.ao, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre55, %.._crit_edge_crit_edge ], [ %i.ak, %middle.block ], [ %i.ak, %scalar.ph ] ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.af, i64 %.pre-phi
  store float %1, ptr %i.bf, align 4, !tbaa !145
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %.pre-phi
  store i32 %2, ptr %i.bg, align 4, !tbaa !124
  %i.bh = load i32, ptr %i.y, align 8, !tbaa !503
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr [4 x i8], ptr %i.af, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !145
  store float %i.bl, ptr %i.a, align 8, !tbaa !505
  br label %.critedge

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %scalar.ph ], [ %indvars.iv48.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %scalar.ph ], [ %indvars.iv46.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bm = add nsw i64 %indvars.iv48, -2           ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !145
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.af, i64 %indvars.iv46
  store float %i.bo, ptr %i.bp, align 4, !tbaa !145
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.bm
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !124
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv46
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !124
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, -1 ; 2 uses
  %i.bt = icmp sgt i64 %indvars.iv.next47, %i.ak
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, -1
  br i1 %i.bt, label %scalar.ph, label %._crit_edge, !llvm.loop !1080

.critedge:                                        ; preds = %bb.e, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK7cvflann12KNNResultSetIfE9worstDistEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load float, ptr %i.a, align 8, !tbaa !505
  ret float %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann14AutotunedIndexINS_9L2_SimpleIfEEE15evaluate_kdtreeERNS3_8CostDataE(ptr noundef nonnull align 8 dereferenceable(265) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.cvflann::KDTreeIndex", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.54, i64 5, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.d, align 8, !tbaa !117
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.e, align 1, !tbaa !114
  %i.f = invoke noundef i32 @_ZN7cvflann9get_paramIiEET_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessIS8_ESaISt4pairIKS8_S9_EEERSD_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.g

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.g = invoke noundef i32 (ptr, ...) @_ZN7cvflann6Logger4infoEPKcz(ptr noundef nonnull @.str.103, i32 noundef %i.f)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !113    ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.c
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.c, align 8, !tbaa !114
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  call void @_ZN7cvflann11KDTreeIndexINS_9L2_SimpleIfEEEC2ERKNS_6MatrixIfEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3anyESt4lessISE_ESaISt4pairIKSE_SF_EEES2_(ptr noundef nonnull align 8 dereferenceable(201) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.m = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %_ZN7cvflann14StartStopTimer5startEv.exit unwind label %.loopexit.split-lp

_ZN7cvflann14StartStopTimer5startEv.exit:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !290
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %_ZN7cvflann11KDTreeIndexINS_9L2_SimpleIfEEE10buildIndexEv.exit

.lr.ph.i:                                         ; preds = %_ZN7cvflann14StartStopTimer5startEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 152
  br label %bb.c

bb.c:                                             ; preds = %.noexc24, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc24 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store i64 0, ptr %i.s, align 8
  store i32 -2096955388, ptr %2, align 8, !tbaa !195
  store ptr %i.q, ptr %i.r, align 8, !tbaa !150
  invoke void @_ZN2cv11randShuffleERKNS_17_InputOutputArrayEdPNS_3RNGE(ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef 1.000000e+00, ptr noundef null)
end_hunk_1
