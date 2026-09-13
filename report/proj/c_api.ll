Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/c_api?download=true
inline.NumInlined: 4392
inline.NumDeleted: 1779
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@proj_coordoperation_get_param:bb.a
bb.an:                                            ; preds = %bb.am, %bb.al
  %.not104 = icmp eq ptr %12, null                ; 2 uses
  br i1 %.not104, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store ptr null, ptr %12, align 8, !tbaa !122
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.not132 = icmp eq ptr %.sroa.0.0124, null
  br i1 %.not132, label %bb.bb, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bu = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5osgeo4proj9operation14ParameterValue4typeEv(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0124) #37
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !721
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.ar, label %bb.bb

bb.ar:                                            ; preds = %bb.aq
  %i.bx = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj9operation14ParameterValue5valueEv(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0124) #37
  %i.by = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common7Measure4unitEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bx) #37 ; 6 uses
  br i1 %.not100, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bz = tail call noundef double @_ZNK5osgeo4proj6common13UnitOfMeasure14conversionToSIEv(ptr noundef nonnull align 8 dereferenceable(24) %i.by) #37
  store double %i.bz, ptr %8, align 8, !tbaa !207
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %.not101, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ca = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common13UnitOfMeasure4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.by) #37
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !91
  store ptr %i.cb, ptr %9, align 8, !tbaa !122
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %.not102, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common13UnitOfMeasure9codeSpaceB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.by) #37
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !91
  store ptr %i.cd, ptr %10, align 8, !tbaa !122
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  br i1 %.not103, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ce = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common13UnitOfMeasure4codeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.by) #37
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !91
  store ptr %i.cf, ptr %11, align 8, !tbaa !122
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br i1 %.not104, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cg = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common13UnitOfMeasure4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.by) #37
  %i.ch = tail call noundef i32 @_ZNK5osgeo4proj6common13UnitOfMeasure4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.by) #37
  %i.ci = tail call fastcc noundef ptr @_ZL17get_unit_categoryRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5osgeo4proj6common13UnitOfMeasure4TypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i32 noundef %i.ch)
  store ptr %i.ci, ptr %12, align 8, !tbaa !122
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %bb.aq, %bb.ap
  %.not.i.i = icmp eq ptr %.sroa.15.0126, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.15.0126, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.cj, align 8, !tbaa !103
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.15.0126, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !104
  %i.co = load ptr, ptr %.sroa.15.0126, align 8, !tbaa !106
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0126) #33, !inline_history !64
  %i.cr = load ptr, ptr %.sroa.15.0126, align 8, !tbaa !106
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0126) #33, !inline_history !64
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.be:                                            ; preds = %bb.bc
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !92
  %.not.i.i.i105 = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i105, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i = phi i32 [ %i.cm, %bb.bf ], [ %i.cw, %bb.bg ]
  %i.cx = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cx, label %bb.bh, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !108

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0126) #33
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bd, %bb.bb, %.thread, %bb.i, %bb.d
  %.2 = phi i32 [ 0, %bb.d ], [ 0, %.thread ], [ 0, %bb.i ], [ 1, %bb.bb ], [ 1, %bb.bd ], [ 1, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ 1, %bb.bh ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation23OperationParameterValue14parameterValueEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5osgeo4proj9operation14ParameterValue4typeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj9operation14ParameterValue5valueEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj9operation14ParameterValue9valueFileB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj9operation14ParameterValue11stringValueB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common13UnitOfMeasure9codeSpaceB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common13UnitOfMeasure4codeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @proj_coordoperation_get_towgs84_values(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %5 = alloca %"class.std::vector.687", align 8   ; 10 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z18pj_get_default_ctxv()
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.020 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %.020, i32 noundef 4097)
  tail call fastcc void @_ZL14proj_log_errorP6pj_ctxPKcS2_(ptr noundef %.020, ptr noundef nonnull @__FUNCTION__.proj_coordoperation_get_towgs84_values, ptr noundef nonnull @.str.3)
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !126  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @__dynamic_cast(ptr nonnull %i.e, ptr nonnull @_ZTIN5osgeo4proj4util10BaseObjectE, ptr nonnull @_ZTIN5osgeo4proj9operation14TransformationE, i64 -1) #33 ; 2 uses
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.e, %bb.f
  %.not28 = icmp eq i32 %4, 0
  br i1 %.not28, label %bb.n, label %bb.g

bb.g:                                             ; preds = %.thread
  tail call fastcc void @_ZL14proj_log_errorP6pj_ctxPKcS2_(ptr noundef %.020, ptr noundef nonnull @__FUNCTION__.proj_coordoperation_get_towgs84_values, ptr noundef nonnull @.str.69)
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @_ZNK5osgeo4proj9operation14Transformation20getTOWGS84ParametersEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.687") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i1 noundef zeroext false)
  %i.h = load ptr, ptr %5, align 8, !tbaa !725    ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !725  ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %i.q = add nsw i64 %wide.trip.count, -1
  %i.r = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q)
  %6 = add nsw i64 %i.r, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %6, 7
  %i.s = sub i64 %i.n, %i.a
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.t = and i64 %6, 3                            ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.u, i64 4, i64 %i.t
  %n.vec = sub i64 %6, %i.v                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x double>, ptr %i.w, align 8, !tbaa !207
  %wide.load50 = load <2 x double>, ptr %i.x, align 8, !tbaa !207
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> %wide.load, ptr %i.y, align 8, !tbaa !207
  store <2 x double> %wide.load50, ptr %i.z, align 8, !tbaa !207
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %scalar.ph.preheader, label %vector.body, !llvm.loop !722

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %i.p
  br i1 %exitcond.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %scalar.ph
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !207
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.ac, ptr %i.ad, align 8, !tbaa !207
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond36.not, label %.critedge.thread, label %scalar.ph, !llvm.loop !723

bb.j:                                             ; preds = %bb.h
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_ZL14proj_log_errorP6pj_ctxPKcS2_(ptr noundef %.020, ptr noundef nonnull @__FUNCTION__.proj_coordoperation_get_towgs84_values, ptr noundef nonnull @.str.70)
          to label %..critedge_crit_edge unwind label %bb.l

..critedge_crit_edge:                             ; preds = %bb.k
  %.pre = load ptr, ptr %5, align 8, !tbaa !729
  br label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %5, align 8, !tbaa !729   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !730
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #34
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %i.ae

.critedge:                                        ; preds = %scalar.ph, %..critedge_crit_edge, %.preheader, %bb.j
  %i.al = phi ptr [ %.pre, %..critedge_crit_edge ], [ %i.h, %bb.j ], [ %i.h, %.preheader ], [ %i.h, %scalar.ph ] ; 2 uses
  %.0 = phi i32 [ 0, %..critedge_crit_edge ], [ 0, %bb.j ], [ 1, %.preheader ], [ 1, %scalar.ph ] ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIdSaIdEED2Ev.exit31, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.i, %.critedge
  %.048 = phi i32 [ %.0, %.critedge ], [ 1, %bb.i ]
  %i.am = phi ptr [ %i.al, %.critedge ], [ %i.h, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !730
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #34
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit31

_ZNSt6vectorIdSaIdEED2Ev.exit31:                  ; preds = %.critedge, %.critedge.thread
  %.049 = phi i32 [ %.0, %.critedge ], [ %.048, %.critedge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit31, %bb.g, %.thread, %bb.d
  %.2 = phi i32 [ 0, %bb.d ], [ %.049, %_ZNSt6vectorIdSaIdEED2Ev.exit31 ], [ 0, %bb.g ], [ 0, %.thread ]
  ret i32 %.2
}

declare void @_ZNK5osgeo4proj9operation14Transformation20getTOWGS84ParametersEb(ptr dead_on_unwind writable sret(%"class.std::vector.687") align 8, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define i32 @proj_coordoperation_get_grid_used_count(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %3 = alloca %"class.std::set.700", align 8      ; 9 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z18pj_get_default_ctxv()
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.029 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]  ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %.029, i32 noundef 4097)
  tail call fastcc void @_ZL14proj_log_errorP6pj_ctxPKcS2_(ptr noundef %.029, ptr noundef nonnull @__FUNCTION__.proj_coordoperation_get_grid_used_count, ptr noundef nonnull @.str.3)
  br label %bb.ae

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call ptr @__dynamic_cast(ptr nonnull %i.d, ptr nonnull @_ZTIN5osgeo4proj4util10BaseObjectE, ptr nonnull @_ZTIN5osgeo4proj9operation19CoordinateOperationE, i64 0) #33 ; 3 uses
  %.not34 = icmp eq ptr %i.f, null
  br i1 %.not34, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.e, %bb.f
  tail call fastcc void @_ZL14proj_log_errorP6pj_ctxPKcS2_(ptr noundef %.029, ptr noundef nonnull @__FUNCTION__.proj_coordoperation_get_grid_used_count, ptr noundef nonnull @.str.66)
  br label %bb.ae

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call fastcc void @_ZL23getDBcontextNoExceptionP6pj_ctxPKc(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %.029, ptr noundef nonnull @__FUNCTION__.proj_coordoperation_get_grid_used_count)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !731, !range !153, !noundef !154
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.g, align 8, !tbaa !731
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.j = invoke i32 @proj_context_is_network_enabled(ptr noundef nonnull %.029)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.k = icmp ne i32 %i.j, 0
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::set.700") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %i.k)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !309  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not4344 = icmp eq ptr %i.p, %i.q
  br i1 %.not4344, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 784
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !308
  invoke void @_ZNSt8_Rb_treeIN5osgeo4proj9operation15GridDescriptionES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.v)
          to label %_ZNSt3setIN5osgeo4proj9operation15GridDescriptionESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #39
  unreachable

_ZNSt3setIN5osgeo4proj9operation15GridDescriptionESt4lessIS3_ESaIS3_EED2Ev.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.t

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.q

bb.m:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit
  %.sroa.039.045 = phi ptr [ %i.p, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.039.045, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !373 ; 3 uses
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !374
  %.not.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5osgeo4proj9operation15GridDescriptionC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(131) %i.aa, ptr noundef nonnull align 8 dereferenceable(131) %i.z)
end_hunk_0
