Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/circlesgrid?download=true
inline.NumInlined: 3211
inline.NumDeleted: 1104
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv17CirclesGridFinder18isDetectionCorrectEv:bb.a
  %.019.lcssa28.i.i.i96 = phi ptr [ %.019.lcssa29.i.i.i106, %bb.s ], [ %.02024.i.i.i90, %._crit_edge.i.i.i95 ]
  %i.gy = icmp ult i64 %i.gx, %i.gw
  br i1 %i.gy, label %select.unfold.i.i102, label %bb.v

select.unfold.i.i102:                             ; preds = %bb.t, %._crit_edge.thread.i.i.i105
  %.sroa.4.0.i.ph.i.i103 = phi ptr [ %.019.lcssa29.i.i.i106, %._crit_edge.thread.i.i.i105 ], [ %.019.lcssa28.i.i.i96, %bb.t ] ; 3 uses
  %i.gz = icmp eq ptr %.sroa.4.0.i.ph.i.i103, %i.cr
  br i1 %i.gz, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i104, label %bb.u

bb.u:                                             ; preds = %select.unfold.i.i102
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i103, i64 32
  %i.hb = load i64, ptr %i.go, align 8, !tbaa !65
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !65
  %i.hd = icmp ult i64 %i.hb, %i.hc
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i104

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i104: ; preds = %bb.u, %select.unfold.i.i102
  %i.he = phi i1 [ %i.hd, %bb.u ], [ true, %select.unfold.i.i102 ]
  %i.hf = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %.noexc110 unwind label %.loopexit128 ; 2 uses

.noexc110:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i104
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hh = load i64, ptr %i.go, align 8, !tbaa !65
  store i64 %i.hh, ptr %i.hg, align 8, !tbaa !65
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.he, ptr noundef nonnull %i.hf, ptr noundef nonnull %.sroa.4.0.i.ph.i.i103, ptr noundef nonnull align 8 dereferenceable(32) %i.cr) #30
  %i.hi = load i64, ptr %i.cv, align 8, !tbaa !118
  %i.hj = add i64 %i.hi, 1                        ; 2 uses
  store i64 %i.hj, ptr %i.cv, align 8, !tbaa !118
  %.pre230 = load ptr, ptr %i.cl, align 8, !tbaa !177 ; 2 uses
  %.pre231 = load ptr, ptr %.pre230, align 8, !tbaa !146
  br label %bb.v

bb.v:                                             ; preds = %.noexc110, %bb.t
  %i.hk = phi i64 [ %i.hj, %.noexc110 ], [ %i.gc, %bb.t ]
  %i.hl = phi ptr [ %.pre231, %.noexc110 ], [ %i.gd, %bb.t ] ; 2 uses
  %i.hm = phi ptr [ %.pre230, %.noexc110 ], [ %i.ge, %bb.t ] ; 2 uses
  %i.hn = add nuw i64 %.041158, 1
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !147
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.hl to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = sdiv exact i64 %i.hs, 24                ; 2 uses
  %.not.i.i81 = icmp ult i64 %.052166, %i.ht
  br i1 %.not.i.i81, label %.lr.ph159, label %.preheader._crit_edge, !llvm.loop !456

.loopexit127.loopexit:                            ; preds = %.lr.ph159
  %.pre228 = load ptr, ptr %i.cf, align 8, !tbaa !176 ; 3 uses
  %.pre229 = load ptr, ptr %.pre228, align 8, !tbaa !146 ; 2 uses
  br label %.loopexit127

.loopexit127:                                     ; preds = %.loopexit127.loopexit, %.lr.ph._crit_edge
  %i.hu = phi i64 [ %i.gc, %.loopexit127.loopexit ], [ %.lcssa323, %.lr.ph._crit_edge ] ; 2 uses
  %i.hv = phi ptr [ %.pre229, %.loopexit127.loopexit ], [ %.lcssa320, %.lr.ph._crit_edge ]
  %i.hw = phi ptr [ %.pre228, %.loopexit127.loopexit ], [ %.lcssa317, %.lr.ph._crit_edge ]
  %i.hx = phi ptr [ %.pre229, %.loopexit127.loopexit ], [ %.lcssa314, %.lr.ph._crit_edge ] ; 2 uses
  %i.hy = phi ptr [ %.pre228, %.loopexit127.loopexit ], [ %.lcssa311, %.lr.ph._crit_edge ] ; 2 uses
  %i.hz = add nuw i64 %.052166, 1                 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !147 ; 2 uses
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.hx to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = sdiv exact i64 %i.ie, 24
  %.not59 = icmp ult i64 %i.hz, %i.if
  br i1 %.not59, label %.lr.ph168, label %.critedge70, !llvm.loop !457

bb.w:                                             ; preds = %.loopexit128, %.loopexit.split-lp, %.loopexit130, %.loopexit.split-lp131
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp133, %.loopexit.split-lp131 ], [ %lpad.loopexit132, %.loopexit130 ], [ %lpad.loopexit, %.loopexit128 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.ad

.critedge70:                                      ; preds = %.loopexit127, %bb.k
  %i.ig = phi i64 [ 0, %bb.k ], [ %i.hu, %.loopexit127 ]
  %i.ih = add i64 %i.cc, %i.ce
  %i.ii = mul i64 %i.ih, %i.bw
  %i.ij = icmp eq i64 %i.ig, %i.ii
  br label %.loopexit135

.loopexit135:                                     ; preds = %.lr.ph168, %bb.q, %.critedge70
  %.3 = phi i1 [ %i.ij, %.critedge70 ], [ false, %bb.q ], [ false, %.lr.ph168 ]
  %i.ik = load ptr, ptr %i.cs, align 8, !tbaa !115
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.ik)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %.loopexit135
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #34
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit:             ; preds = %.loopexit135
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.loopexit

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv17CirclesGridFinder18isDetectionCorrectEv, ptr noundef nonnull @.str.1, i32 noundef 792) #31
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.io = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ip = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !45
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.it) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ab
  %.pn66 = phi { ptr, i32 } [ %i.in, %bb.ab ], [ %i.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.io, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.ad

.loopexit:                                        ; preds = %.lr.ph173.split.split.us, %_ZNSt3setImSt4lessImESaImEED2Ev.exit, %bb.j, %.split.us, %.critedge, %bb.c
  %.5 = phi i1 [ false, %.split.us ], [ false, %bb.c ], [ %i.an, %.critedge ], [ false, %bb.j ], [ %.3, %_ZNSt3setImSt4lessImESaImEED2Ev.exit ], [ false, %.lr.ph173.split.split.us ]
  ret i1 %.5

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.w
  %.pn66.pn = phi { ptr, i32 } [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.w ]
  resume { ptr, i32 } %.pn66.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #34
  unreachable

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN2cv17CirclesGridFinder15findLongestPathERSt6vectorINS_5GraphESaIS2_EERNS_4PathE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(173) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.14", align 1 ; 3 uses
  %5 = alloca %"class.std::vector.69", align 8    ; 14 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %8 = alloca %"class.cv::Point_.8", align 4      ; 7 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %10 = alloca %"struct.cv::Path", align 8        ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.14", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33 ; 6 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !181
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.b, align 8, !tbaa !163
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 -1, ptr %i.f, align 4, !tbaa !164
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 -1, ptr %i.g, align 8, !tbaa !165
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  store ptr %i.c, ptr %i.h, align 8, !tbaa !182
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 20
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %20 = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %21 = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !156
  %i.k = load ptr, ptr %1, align 8, !tbaa !155    ; 2 uses
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %.preheader, label %.lr.ph405

..preheader_crit_edge:                            ; preds = %bb.aj
  %i.l = ptrtoint ptr %.sroa.12.2 to i64
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.noexc
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.0.1, %..preheader_crit_edge ], [ null, %.noexc ] ; 8 uses
  %.sroa.12.0.lcssa = phi i64 [ %i.l, %..preheader_crit_edge ], [ 0, %.noexc ]
  %.sroa.18.0.lcssa = phi ptr [ %.sroa.18.1, %..preheader_crit_edge ], [ null, %.noexc ] ; 2 uses
  %.061.lcssa = phi i64 [ %.162, %..preheader_crit_edge ], [ 0, %.noexc ] ; 2 uses
  %i.m = ptrtoint ptr %.sroa.0.0.lcssa to i64     ; 2 uses
  %i.n = sub i64 %.sroa.12.0.lcssa, %i.m
  %i.o = lshr exact i64 %i.n, 2                   ; 4 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph187.preheader, label %._crit_edge188.thread

._crit_edge188.thread:                            ; preds = %.preheader
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !182
  %i.s = load ptr, ptr %5, align 8, !tbaa !180
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 40
  br label %bb.an

.lr.ph187.preheader:                              ; preds = %.preheader
  %wide.trip.count248 = and i64 %i.o, 2147483647
  %i.x = add nsw i64 %wide.trip.count248, -1
  %xtraiter = and i64 %i.o, 3                     ; 3 uses
  %i.y = icmp ult i64 %i.x, 3
  br i1 %i.y, label %.lr.ph187.epil.preheader, label %.lr.ph187.preheader.new

.lr.ph187.preheader.new:                          ; preds = %.lr.ph187.preheader
  %unroll_iter = and i64 %i.o, 2147483644
  br label %.lr.ph187

.lr.ph405:                                        ; preds = %.noexc, %bb.aj
  %i.z = phi ptr [ %i.ey, %bb.aj ], [ %i.k, %.noexc ]
  %.060403 = phi i64 [ %i.ew, %bb.aj ], [ 0, %.noexc ] ; 5 uses
  %.061402 = phi i64 [ %.162, %bb.aj ], [ 0, %.noexc ]
  %.sroa.18.0401 = phi ptr [ %.sroa.18.1, %bb.aj ], [ null, %.noexc ] ; 5 uses
  %.sroa.12.0400 = phi ptr [ %.sroa.12.2, %bb.aj ], [ null, %.noexc ] ; 3 uses
  %.sroa.0.0399 = phi ptr [ %.sroa.0.1, %bb.aj ], [ null, %.noexc ] ; 9 uses
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %.060403 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #30
  invoke void @_ZNK2cv5Graph13floydWarshallERNS_3MatEi(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef -1)
          to label %bb.a unwind label %bb.g

bb.a:                                             ; preds = %.lr.ph405
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !118
  %i.ad = trunc i64 %i.ac to i32
  invoke void @_ZN2cv24computePredecessorMatrixERKNS_3MatEiRS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store i32 0, ptr %8, align 4, !tbaa !67
  store i32 0, ptr %13, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store i32 0, ptr %14, align 8, !tbaa !36
  store i32 0, ptr %15, align 4, !tbaa !37
  store i32 16842752, ptr %9, align 8, !tbaa !70
  store ptr %6, ptr %16, align 8, !tbaa !71
  %i.ae = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv9minMaxLocERKNS_11_InputArrayEPdS3_PNS_6Point_IiEES6_S2_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.af = load double, ptr %i.a, align 8, !tbaa !76 ; 3 uses
  %i.ag = load ptr, ptr %5, align 8, !tbaa !180   ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !165
  %i.aj = sitofp i32 %i.ai to double
  %i.ak = fcmp ogt double %i.af, %i.aj
  %.pre250.a = load ptr, ptr %i.h, align 8, !tbaa !463 ; 3 uses
  br i1 %i.ak, label %bb.e, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq ptr %.pre250.a, %i.ag
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv4PathESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.as, %_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i.i.i ], [ %i.ag, %bb.e ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !149 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !150
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #32
  br label %_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i.i.i:       ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, %.pre250.a
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !14

_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i.i.i
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !182
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !463
  %.pre251.pre.pre = load double, ptr %i.a, align 8, !tbaa !76
  br label %_ZNSt6vectorIN2cv4PathESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv4PathESaIS1_EE5clearEv.exit:     ; preds = %bb.e, %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exit.i.i
  %.pre251.pre = phi double [ %i.af, %bb.e ], [ %.pre251.pre.pre, %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %.pre = phi ptr [ %i.ag, %bb.e ], [ %.pre.pre, %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %.not.i.i83 = icmp eq ptr %.sroa.12.0400, %.sroa.0.0399
  %spec.select = select i1 %.not.i.i83, ptr %.sroa.12.0400, ptr %.sroa.0.0399
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

bb.g:                                             ; preds = %.lr.ph405
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.h:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.ak

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorIN2cv4PathESaIS1_EE5clearEv.exit, %bb.d
  %.pre251 = phi double [ %i.af, %bb.d ], [ %.pre251.pre, %_ZNSt6vectorIN2cv4PathESaIS1_EE5clearEv.exit ] ; 2 uses
  %i.aw = phi ptr [ %.pre250.a, %bb.d ], [ %i.ag, %_ZNSt6vectorIN2cv4PathESaIS1_EE5clearEv.exit ]
  %i.ax = phi ptr [ %i.ag, %bb.d ], [ %.pre, %_ZNSt6vectorIN2cv4PathESaIS1_EE5clearEv.exit ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0400, %bb.d ], [ %spec.select, %_ZNSt6vectorIN2cv4PathESaIS1_EE5clearEv.exit ] ; 4 uses
  %.162 = phi i64 [ %.061402, %bb.d ], [ %.060403, %_ZNSt6vectorIN2cv4PathESaIS1_EE5clearEv.exit ] ; 3 uses
  %i.ay = icmp eq ptr %i.ax, %i.aw
  br i1 %i.ay, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !165
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = fcmp oeq double %.pre251, %i.bb
  %i.bd = icmp eq i64 %.060403, %.162
  %or.cond80 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond80, label %bb.k, label %bb.aj

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.be = load i32, ptr %8, align 4, !tbaa !67    ; 3 uses
  %i.bf = load i32, ptr %13, align 4, !tbaa !68   ; 3 uses
  %i.bg = insertelement <2 x double> poison, double %.pre251, i64 0
  %i.bh = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bg)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  store i32 %i.be, ptr %10, align 8, !tbaa !163
  store i32 %i.bf, ptr %18, align 4, !tbaa !164
  store i32 %i.bh, ptr %19, align 8, !tbaa !165
  %i.bi = icmp sgt i32 %i.be, -1
  %i.bj = icmp sgt i32 %i.bf, -1
  %or.cond = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv17CirclesGridFinder15findLongestPathERSt6vectorINS_5GraphESaIS2_EERNS_4PathE, ptr noundef nonnull @.str.1, i32 noundef 1315) #31
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %11, align 8, !tbaa !44   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !45
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn68 = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bl, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.body

bb.q:                                             ; preds = %bb.k
  %i.br = zext nneg i32 %i.be to i64
  %i.bs = zext nneg i32 %i.bf to i64
  invoke fastcc void @_ZN2cvL19computeShortestPathERNS_3MatEmmRSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(208) %7, i64 noundef %i.br, i64 noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.r unwind label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !182 ; 6 uses
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !181
  %.not.i = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 12, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bw = load ptr, ptr %20, align 8, !tbaa !166  ; 2 uses
  %i.bx = load ptr, ptr %17, align 8, !tbaa !149  ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i.i.i, label %.noexc85, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = icmp ugt i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !86

.noexc.i.i.i.i:                                   ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc84 unwind label %.loopexit.split-lp

end_hunk_0
