Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/box_filter.dispatch?download=true
inline.NumInlined: 2169
inline.NumDeleted: 1090
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 102
begin_hunk_0_@_ZSt20__throw_length_errorPKc
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #19

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #23, !inline_history !682
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthED0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25, !inline_history !683
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthED2Ev.exit

_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(64) %0) #23, !inline_history !683
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthEclEPPKhPhiii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthEclEPPKhPhiiiE25__cv_trace_location_fn464)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !61   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !59
  %i.g = fcmp une double %i.f, 1.000000e+00
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !136  ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !134  ; 7 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 1                   ; 4 uses
  %i.p = trunc i64 %i.o to i32
  %.not = icmp eq i32 %5, %i.p
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = sext i32 %5 to i64                       ; 4 uses
  %i.r = icmp ult i64 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = sub nuw nsw i64 %i.q, %i.o
  invoke void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.s)
          to label %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge unwind label %bb.f

._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge:    ; preds = %bb.c
  %.pre.pre = load ptr, ptr %i.h, align 8, !tbaa !134
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ugt i64 %i.o, %i.q
  br i1 %i.t, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.q ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.u
  br i1 %.not.i.i, label %.thread, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.u, ptr %i.i, align 8, !tbaa !136
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i, %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge
  %.pre = phi ptr [ %.pre.pre, %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge ], [ %i.k, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.v, align 8, !tbaa !60
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre105 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !60 ; 3 uses
  %i.x = icmp eq i32 %.pre105, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread, %bb.g
  %i.y = phi ptr [ %.pre, %.thread ], [ %i.k, %bb.g ] ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = sext i32 %5 to i64
  %i.ab = shl nsw i64 %i.aa, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.y, i8 0, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !43 ; 2 uses
  %i.ae = add nsw i32 %i.ad, -1                   ; 3 uses
  %i.af = load i32, ptr %i.z, align 8, !tbaa !60  ; 3 uses
  %i.ag = icmp slt i32 %i.af, %i.ae
  br i1 %i.ag, label %.lr.ph77, label %.loopexit73

.lr.ph77:                                         ; preds = %bb.h
  %i.ah = icmp sgt i32 %5, 0
  br i1 %i.ah, label %.lr.ph.us.preheader, label %.lr.ph77.split.preheader

.lr.ph77.split.preheader:                         ; preds = %.lr.ph77
  %i.ai = add i32 %i.ad, -2
  %i.aj = sub i32 %i.ai, %i.af
  %i.ak = zext i32 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = getelementptr i8, ptr %1, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.am, i64 8
  br label %..loopexit73_crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph77
  %wide.trip.count = zext nneg i32 %5 to i64      ; 9 uses
  %i.an = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %scevgep121 = getelementptr i8, ptr %i.y, i64 %i.an
  %min.iters.check = icmp ult i32 %5, 4
  %min.iters.check123 = icmp ult i32 %5, 16
  %i.ao = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  %n.vec127 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n132 = icmp eq i64 %n.vec127, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %i.ap = phi i32 [ %i.cd, %._crit_edge.us ], [ %i.af, %.lr.ph.us.preheader ]
  %.075.us = phi ptr [ %i.ce, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 2 uses
  %i.aq = load ptr, ptr %.075.us, align 8, !tbaa !110 ; 9 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep122 = getelementptr i8, ptr %i.aq, i64 %i.an
  %bound0 = icmp ult ptr %i.y, %scevgep122
  %bound1 = icmp ult ptr %i.aq, %scevgep121
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check123, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <8 x i16>, ptr %i.ar, align 2, !tbaa !129, !alias.scope !707
  %wide.load124 = load <8 x i16>, ptr %i.as, align 2, !tbaa !129, !alias.scope !707
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %index ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %wide.load125 = load <8 x i16>, ptr %i.at, align 2, !tbaa !129, !alias.scope !708, !noalias !707
  %wide.load126 = load <8 x i16>, ptr %i.au, align 2, !tbaa !129, !alias.scope !708, !noalias !707
  %i.av = add <8 x i16> %wide.load125, %wide.load
  %i.aw = add <8 x i16> %wide.load126, %wide.load124
  store <8 x i16> %i.av, ptr %i.at, align 2, !tbaa !129, !alias.scope !708, !noalias !707
  store <8 x i16> %i.aw, ptr %i.au, align 2, !tbaa !129, !alias.scope !708, !noalias !707
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !687

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !130

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index128 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next131, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %index128
  %wide.load129 = load <4 x i16>, ptr %i.ay, align 2, !tbaa !129, !alias.scope !707
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %index128 ; 2 uses
  %wide.load130 = load <4 x i16>, ptr %i.az, align 2, !tbaa !129, !alias.scope !708, !noalias !707
  %i.ba = add <4 x i16> %wide.load130, %wide.load129
  store <4 x i16> %i.ba, ptr %i.az, align 2, !tbaa !129, !alias.scope !708, !noalias !707
  %index.next131 = add nuw i64 %index128, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next131, %n.vec127
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !688

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n132, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec127, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.prol
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !129
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.prol ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !129
  %i.bg = add i16 %i.bf, %i.bd
  store i16 %i.bg, ptr %i.be, align 2, !tbaa !129
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !689

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bh = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %._crit_edge.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !129
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !129
  %i.bn = add i16 %i.bm, %i.bk
  store i16 %i.bn, ptr %i.bl, align 2, !tbaa !129
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.next
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !129
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.next ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !129
  %i.bs = add i16 %i.br, %i.bp
  store i16 %i.bs, ptr %i.bq, align 2, !tbaa !129
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.next.1
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !129
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.next.1 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !129
  %i.bx = add i16 %i.bw, %i.bu
  store i16 %i.bx, ptr %i.bv, align 2, !tbaa !129
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.next.2
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !129
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.next.2 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !129
  %i.cc = add i16 %i.cb, %i.bz
  store i16 %i.cc, ptr %i.ca, align 2, !tbaa !129
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !690

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cd = add nsw i32 %i.ap, 1                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.075.us, i64 8 ; 2 uses
  %exitcond93.not = icmp eq i32 %i.cd, %i.ae
  br i1 %exitcond93.not, label %..loopexit73_crit_edge, label %iter.check, !llvm.loop !691

bb.i:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !43
  %i.ch = add nsw i32 %i.cg, -1
  %i.ci = icmp eq i32 %.pre105, %i.ch
  br i1 %i.ci, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 503) #24
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !20
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.m ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ck, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.cq = sext i32 %.pre105 to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cq
  br label %.loopexit73

..loopexit73_crit_edge:                           ; preds = %._crit_edge.us, %.lr.ph77.split.preheader
  %.us-phi78 = phi ptr [ %scevgep, %.lr.ph77.split.preheader ], [ %i.ce, %._crit_edge.us ]
  store i32 %i.ae, ptr %i.z, align 8, !tbaa !60
  br label %.loopexit73

end_hunk_0
begin_hunk_1_@_ZNSt6vectorItSaItEE17_M_default_appendEm:bb.a
_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36: ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !134
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !136
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !135
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #23, !inline_history !721
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhED0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25, !inline_history !722
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhED2Ev.exit

_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(56) %0) #23, !inline_history !722
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhEclEPPKhPhiii(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhEclEPPKhPhiiiE25__cv_trace_location_fn196)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !69 ; 3 uses
  %i.c = fcmp une double %i.b, 1.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !139  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !137  ; 7 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 4 uses
  %i.l = trunc i64 %i.k to i32
  %.not = icmp eq i32 %5, %i.l
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %5 to i64                       ; 4 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.m, %i.k
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.o)
          to label %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge unwind label %bb.f

._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge:    ; preds = %bb.c
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !137
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.k, %i.m
  br i1 %i.p, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.m ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.q
  br i1 %.not.i.i, label %.thread, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.e, align 8, !tbaa !139
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge
  %.pre = phi ptr [ %.pre.pre, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge ], [ %i.g, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.r, align 8, !tbaa !70
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre189 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !70 ; 3 uses
  %i.t = icmp eq i32 %.pre189, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread, %bb.g
  %i.u = phi ptr [ %.pre, %.thread ], [ %i.g, %bb.g ] ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = sext i32 %5 to i64
  %i.x = shl nsw i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !43   ; 2 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 3 uses
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !70  ; 3 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %.lr.ph145, label %.loopexit141

.lr.ph145:                                        ; preds = %bb.h
  %i.ad = icmp sgt i32 %5, 0
  br i1 %i.ad, label %.lr.ph.us.preheader, label %.lr.ph145.split.preheader

.lr.ph145.split.preheader:                        ; preds = %.lr.ph145
  %i.ae = add i32 %i.z, -2
  %i.af = sub i32 %i.ae, %i.ab
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.ai, i64 8
  br label %..loopexit141_crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph145
  %wide.trip.count = zext nneg i32 %5 to i64      ; 6 uses
  %i.aj = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep206 = getelementptr i8, ptr %i.u, i64 %i.aj
  %min.iters.check = icmp ult i32 %5, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %i.ak = phi i32 [ %i.bu, %._crit_edge.us ], [ %i.ab, %.lr.ph.us.preheader ]
  %.0121143.us = phi ptr [ %i.bv, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 2 uses
  %i.al = load ptr, ptr %.0121143.us, align 8, !tbaa !110 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep207 = getelementptr i8, ptr %i.al, i64 %i.aj
  %bound0 = icmp ult ptr %i.u, %scevgep207
  %bound1 = icmp ult ptr %i.al, %scevgep206
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !41, !alias.scope !735
  %wide.load208 = load <2 x double>, ptr %i.an, align 8, !tbaa !41, !alias.scope !735
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load209 = load <2 x double>, ptr %i.ao, align 8, !tbaa !41, !alias.scope !736, !noalias !735
  %wide.load210 = load <2 x double>, ptr %i.ap, align 8, !tbaa !41, !alias.scope !736, !noalias !735
  %i.aq = fadd <2 x double> %wide.load, %wide.load209
  %i.ar = fadd <2 x double> %wide.load208, %wide.load210
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !41, !alias.scope !736, !noalias !735
  store <2 x double> %i.ar, ptr %i.ap, align 8, !tbaa !41, !alias.scope !736, !noalias !735
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !726

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.prol
  %i.au = load double, ptr %i.at, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.prol ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !41
  %i.ax = fadd double %i.au, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !41
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !727

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ay = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !41
  %i.be = fadd double %i.bb, %i.bd
  store double %i.be, ptr %i.bc, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !41
  %i.bj = fadd double %i.bg, %i.bi
  store double %i.bj, ptr %i.bh, align 8, !tbaa !41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.1
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.1 ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !41
  %i.bo = fadd double %i.bl, %i.bn
  store double %i.bo, ptr %i.bm, align 8, !tbaa !41
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.2 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !41
  %i.bt = fadd double %i.bq, %i.bs
  store double %i.bt, ptr %i.br, align 8, !tbaa !41
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !728

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bu = add nsw i32 %i.ak, 1                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0121143.us, i64 8 ; 2 uses
  %exitcond171.not = icmp eq i32 %i.bu, %i.aa
  br i1 %exitcond171.not, label %..loopexit141_crit_edge, label %.lr.ph.us, !llvm.loop !729

bb.i:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !43
  %i.by = add nsw i32 %i.bx, -1
  %i.bz = icmp eq i32 %.pre189, %i.by
  br i1 %i.bz, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 224) #24
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !20
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.m ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cb, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.ch = sext i32 %.pre189 to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ch
  br label %.loopexit141

..loopexit141_crit_edge:                          ; preds = %._crit_edge.us, %.lr.ph145.split.preheader
  %.us-phi146 = phi ptr [ %scevgep, %.lr.ph145.split.preheader ], [ %i.bv, %._crit_edge.us ]
  store i32 %i.aa, ptr %i.v, align 8, !tbaa !70
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.h, %..loopexit141_crit_edge, %bb.o
  %i.cj = phi ptr [ %i.g, %bb.o ], [ %i.u, %..loopexit141_crit_edge ], [ %i.u, %bb.h ] ; 4 uses
  %.1122 = phi ptr [ %i.ci, %bb.o ], [ %.us-phi146, %..loopexit141_crit_edge ], [ %1, %bb.h ] ; 2 uses
  %.not131158 = icmp eq i32 %4, 0
  br i1 %.not131158, label %._crit_edge, label %.lr.ph162

.lr.ph162:                                        ; preds = %.loopexit141
  %i.ck = add nsw i32 %4, -1                      ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cm = add nsw i32 %5, -2
  %.not132147 = icmp slt i32 %5, 2                ; 2 uses
  %i.cn = sext i32 %3 to i64                      ; 2 uses
  %i.co = zext nneg i32 %i.cm to i64              ; 2 uses
  %wide.trip.count186 = zext i32 %5 to i64        ; 2 uses
  br i1 %i.c, label %.preheader137.us.preheader, label %.preheader140

.preheader137.us.preheader:                       ; preds = %.lr.ph162
  %i.cp = insertelement <2 x double> poison, double %i.b, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader137.us

.preheader137.us:                                 ; preds = %.preheader137.us.preheader, %.loopexit.us
  %i.cr = phi i32 [ %i.en, %.loopexit.us ], [ %i.ck, %.preheader137.us.preheader ] ; 2 uses
  %.2123161.us = phi ptr [ %i.em, %.loopexit.us ], [ %.1122, %.preheader137.us.preheader ] ; 3 uses
  %.0125159.us = phi ptr [ %i.el, %.loopexit.us ], [ %2, %.preheader137.us.preheader ] ; 4 uses
  %i.cs = load ptr, ptr %.2123161.us, align 8, !tbaa !110 ; 2 uses
  %i.ct = load i32, ptr %i.cl, align 8, !tbaa !43
  %i.cu = sub nsw i32 1, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %.2123161.us, i64 %i.cv
end_hunk_1
begin_hunk_2_@_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIitEclEPPKhPhiii:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIitE5resetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((24, 28)) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.a, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #23, !inline_history !760
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtED0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25, !inline_history !761
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtED2Ev.exit

_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(56) %0) #23, !inline_history !761
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtEclEPPKhPhiii(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtEclEPPKhPhiiiE25__cv_trace_location_fn196)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !75 ; 3 uses
  %i.c = fcmp une double %i.b, 1.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !139  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !137  ; 7 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 4 uses
  %i.l = trunc i64 %i.k to i32
  %.not = icmp eq i32 %5, %i.l
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %5 to i64                       ; 4 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.m, %i.k
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.o)
          to label %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge unwind label %bb.f

._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge:    ; preds = %bb.c
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !137
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.k, %i.m
  br i1 %i.p, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.m ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.q
  br i1 %.not.i.i, label %.thread, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.e, align 8, !tbaa !139
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge
  %.pre = phi ptr [ %.pre.pre, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge ], [ %i.g, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.r, align 8, !tbaa !76
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre189 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !76 ; 3 uses
  %i.t = icmp eq i32 %.pre189, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread, %bb.g
  %i.u = phi ptr [ %.pre, %.thread ], [ %i.g, %bb.g ] ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = sext i32 %5 to i64
  %i.x = shl nsw i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !43   ; 4 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 3 uses
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !76  ; 3 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %.lr.ph145, label %.loopexit141

.lr.ph145:                                        ; preds = %bb.h
  %i.ad = icmp sgt i32 %5, 0
  br i1 %i.ad, label %.lr.ph.us.preheader, label %.lr.ph145.split.preheader

.lr.ph145.split.preheader:                        ; preds = %.lr.ph145
  %i.ae = add i32 %i.z, -2
  %i.af = sub i32 %i.ae, %i.ab
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.ai, i64 8
  br label %..loopexit141_crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph145
  %wide.trip.count = zext nneg i32 %5 to i64      ; 6 uses
  %i.aj = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep206 = getelementptr i8, ptr %i.u, i64 %i.aj
  %min.iters.check = icmp ult i32 %5, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %i.ak = phi i32 [ %i.bu, %._crit_edge.us ], [ %i.ab, %.lr.ph.us.preheader ]
  %.0121143.us = phi ptr [ %i.bv, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 2 uses
  %i.al = load ptr, ptr %.0121143.us, align 8, !tbaa !110 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep207 = getelementptr i8, ptr %i.al, i64 %i.aj
  %bound0 = icmp ult ptr %i.u, %scevgep207
  %bound1 = icmp ult ptr %i.al, %scevgep206
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !41, !alias.scope !774
  %wide.load208 = load <2 x double>, ptr %i.an, align 8, !tbaa !41, !alias.scope !774
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load209 = load <2 x double>, ptr %i.ao, align 8, !tbaa !41, !alias.scope !775, !noalias !774
  %wide.load210 = load <2 x double>, ptr %i.ap, align 8, !tbaa !41, !alias.scope !775, !noalias !774
  %i.aq = fadd <2 x double> %wide.load, %wide.load209
  %i.ar = fadd <2 x double> %wide.load208, %wide.load210
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !41, !alias.scope !775, !noalias !774
  store <2 x double> %i.ar, ptr %i.ap, align 8, !tbaa !41, !alias.scope !775, !noalias !774
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !765

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.prol
  %i.au = load double, ptr %i.at, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.prol ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !41
  %i.ax = fadd double %i.au, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !41
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !766

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ay = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !41
  %i.be = fadd double %i.bb, %i.bd
  store double %i.be, ptr %i.bc, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !41
  %i.bj = fadd double %i.bg, %i.bi
  store double %i.bj, ptr %i.bh, align 8, !tbaa !41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.1
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.1 ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !41
  %i.bo = fadd double %i.bl, %i.bn
  store double %i.bo, ptr %i.bm, align 8, !tbaa !41
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.2 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !41
  %i.bt = fadd double %i.bq, %i.bs
  store double %i.bt, ptr %i.br, align 8, !tbaa !41
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !767

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bu = add nsw i32 %i.ak, 1                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0121143.us, i64 8 ; 2 uses
  %exitcond171.not = icmp eq i32 %i.bu, %i.aa
  br i1 %exitcond171.not, label %..loopexit141_crit_edge, label %.lr.ph.us, !llvm.loop !768

bb.i:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !43 ; 2 uses
  %i.by = add nsw i32 %i.bx, -1
  %i.bz = icmp eq i32 %.pre189, %i.by
  br i1 %i.bz, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 224) #24
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !20
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.m ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cb, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.ch = sext i32 %.pre189 to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ch
  br label %.loopexit141

..loopexit141_crit_edge:                          ; preds = %._crit_edge.us, %.lr.ph145.split.preheader
  %.us-phi146 = phi ptr [ %scevgep, %.lr.ph145.split.preheader ], [ %i.bv, %._crit_edge.us ]
  store i32 %i.aa, ptr %i.v, align 8, !tbaa !76
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.h, %..loopexit141_crit_edge, %bb.o
  %i.cj = phi ptr [ %i.g, %bb.o ], [ %i.u, %..loopexit141_crit_edge ], [ %i.u, %bb.h ] ; 4 uses
  %i.ck = phi i32 [ %i.bx, %bb.o ], [ %i.z, %..loopexit141_crit_edge ], [ %i.z, %bb.h ]
  %.1122 = phi ptr [ %i.ci, %bb.o ], [ %.us-phi146, %..loopexit141_crit_edge ], [ %1, %bb.h ] ; 2 uses
  %.not131158 = icmp eq i32 %4, 0
  br i1 %.not131158, label %._crit_edge, label %.lr.ph162

.lr.ph162:                                        ; preds = %.loopexit141
  %i.cl = add nsw i32 %4, -1                      ; 2 uses
  %i.cm = sub nsw i32 1, %i.ck
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = add nsw i32 %5, -2
  %.not132147 = icmp slt i32 %5, 2                ; 2 uses
  %i.cp = sext i32 %3 to i64                      ; 2 uses
  %i.cq = zext nneg i32 %i.co to i64              ; 2 uses
  %wide.trip.count186 = zext i32 %5 to i64        ; 2 uses
  br i1 %i.c, label %.preheader137.us.preheader, label %.preheader140

.preheader137.us.preheader:                       ; preds = %.lr.ph162
  %i.cr = insertelement <2 x double> poison, double %i.b, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader137.us

.preheader137.us:                                 ; preds = %.preheader137.us.preheader, %.loopexit.us
  %i.ct = phi i32 [ %i.em, %.loopexit.us ], [ %i.cl, %.preheader137.us.preheader ] ; 2 uses
  %.2123161.us = phi ptr [ %i.el, %.loopexit.us ], [ %.1122, %.preheader137.us.preheader ] ; 3 uses
  %.0125159.us = phi ptr [ %i.ek, %.loopexit.us ], [ %2, %.preheader137.us.preheader ] ; 4 uses
  %i.cu = load ptr, ptr %.2123161.us, align 8, !tbaa !110 ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %.2123161.us, i64 %i.cn
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !110 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNSt12__shared_ptrIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsEELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #23, !inline_history !799
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsED0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25, !inline_history !800
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsED2Ev.exit

_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(56) %0) #23, !inline_history !800
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsEclEPPKhPhiii(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsEclEPPKhPhiiiE25__cv_trace_location_fn196)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !81 ; 3 uses
  %i.c = fcmp une double %i.b, 1.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !139  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !137  ; 7 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 4 uses
  %i.l = trunc i64 %i.k to i32
  %.not = icmp eq i32 %5, %i.l
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %5 to i64                       ; 4 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.m, %i.k
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.o)
          to label %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge unwind label %bb.f

._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge:    ; preds = %bb.c
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !137
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.k, %i.m
  br i1 %i.p, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.m ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.q
  br i1 %.not.i.i, label %.thread, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.e, align 8, !tbaa !139
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge
  %.pre = phi ptr [ %.pre.pre, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge ], [ %i.g, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.r, align 8, !tbaa !82
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre189 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !82 ; 3 uses
  %i.t = icmp eq i32 %.pre189, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread, %bb.g
  %i.u = phi ptr [ %.pre, %.thread ], [ %i.g, %bb.g ] ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = sext i32 %5 to i64
  %i.x = shl nsw i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !43   ; 4 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 3 uses
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !82  ; 3 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %.lr.ph145, label %.loopexit141

.lr.ph145:                                        ; preds = %bb.h
  %i.ad = icmp sgt i32 %5, 0
  br i1 %i.ad, label %.lr.ph.us.preheader, label %.lr.ph145.split.preheader

.lr.ph145.split.preheader:                        ; preds = %.lr.ph145
  %i.ae = add i32 %i.z, -2
  %i.af = sub i32 %i.ae, %i.ab
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.ai, i64 8
  br label %..loopexit141_crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph145
  %wide.trip.count = zext nneg i32 %5 to i64      ; 6 uses
  %i.aj = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep206 = getelementptr i8, ptr %i.u, i64 %i.aj
  %min.iters.check = icmp ult i32 %5, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %i.ak = phi i32 [ %i.bu, %._crit_edge.us ], [ %i.ab, %.lr.ph.us.preheader ]
  %.0121143.us = phi ptr [ %i.bv, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 2 uses
  %i.al = load ptr, ptr %.0121143.us, align 8, !tbaa !110 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep207 = getelementptr i8, ptr %i.al, i64 %i.aj
  %bound0 = icmp ult ptr %i.u, %scevgep207
  %bound1 = icmp ult ptr %i.al, %scevgep206
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !41, !alias.scope !813
  %wide.load208 = load <2 x double>, ptr %i.an, align 8, !tbaa !41, !alias.scope !813
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load209 = load <2 x double>, ptr %i.ao, align 8, !tbaa !41, !alias.scope !814, !noalias !813
  %wide.load210 = load <2 x double>, ptr %i.ap, align 8, !tbaa !41, !alias.scope !814, !noalias !813
  %i.aq = fadd <2 x double> %wide.load, %wide.load209
  %i.ar = fadd <2 x double> %wide.load208, %wide.load210
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !41, !alias.scope !814, !noalias !813
  store <2 x double> %i.ar, ptr %i.ap, align 8, !tbaa !41, !alias.scope !814, !noalias !813
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !804

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.prol
  %i.au = load double, ptr %i.at, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.prol ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !41
  %i.ax = fadd double %i.au, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !41
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !805

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ay = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !41
  %i.be = fadd double %i.bb, %i.bd
  store double %i.be, ptr %i.bc, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !41
  %i.bj = fadd double %i.bg, %i.bi
  store double %i.bj, ptr %i.bh, align 8, !tbaa !41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.1
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.1 ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !41
  %i.bo = fadd double %i.bl, %i.bn
  store double %i.bo, ptr %i.bm, align 8, !tbaa !41
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.2 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !41
  %i.bt = fadd double %i.bq, %i.bs
  store double %i.bt, ptr %i.br, align 8, !tbaa !41
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !806

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bu = add nsw i32 %i.ak, 1                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0121143.us, i64 8 ; 2 uses
  %exitcond171.not = icmp eq i32 %i.bu, %i.aa
  br i1 %exitcond171.not, label %..loopexit141_crit_edge, label %.lr.ph.us, !llvm.loop !807

bb.i:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !43 ; 2 uses
  %i.by = add nsw i32 %i.bx, -1
  %i.bz = icmp eq i32 %.pre189, %i.by
  br i1 %i.bz, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 224) #24
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !20
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.m ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cb, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.ch = sext i32 %.pre189 to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ch
  br label %.loopexit141

..loopexit141_crit_edge:                          ; preds = %._crit_edge.us, %.lr.ph145.split.preheader
  %.us-phi146 = phi ptr [ %scevgep, %.lr.ph145.split.preheader ], [ %i.bv, %._crit_edge.us ]
  store i32 %i.aa, ptr %i.v, align 8, !tbaa !82
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.h, %..loopexit141_crit_edge, %bb.o
  %i.cj = phi ptr [ %i.g, %bb.o ], [ %i.u, %..loopexit141_crit_edge ], [ %i.u, %bb.h ] ; 4 uses
  %i.ck = phi i32 [ %i.bx, %bb.o ], [ %i.z, %..loopexit141_crit_edge ], [ %i.z, %bb.h ]
  %.1122 = phi ptr [ %i.ci, %bb.o ], [ %.us-phi146, %..loopexit141_crit_edge ], [ %1, %bb.h ] ; 2 uses
  %.not131158 = icmp eq i32 %4, 0
  br i1 %.not131158, label %._crit_edge, label %.lr.ph162

.lr.ph162:                                        ; preds = %.loopexit141
  %i.cl = add nsw i32 %4, -1                      ; 2 uses
  %i.cm = sub nsw i32 1, %i.ck
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = add nsw i32 %5, -2
  %.not132147 = icmp slt i32 %5, 2                ; 2 uses
  %i.cp = sext i32 %3 to i64                      ; 2 uses
  %i.cq = zext nneg i32 %i.co to i64              ; 2 uses
  %wide.trip.count186 = zext i32 %5 to i64        ; 2 uses
  br i1 %i.c, label %.preheader137.us.preheader, label %.preheader140

.preheader137.us.preheader:                       ; preds = %.lr.ph162
  %i.cr = insertelement <2 x double> poison, double %i.b, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader137.us

.preheader137.us:                                 ; preds = %.preheader137.us.preheader, %.loopexit.us
  %i.ct = phi i32 [ %i.em, %.loopexit.us ], [ %i.cl, %.preheader137.us.preheader ] ; 2 uses
  %.2123161.us = phi ptr [ %i.el, %.loopexit.us ], [ %.1122, %.preheader137.us.preheader ] ; 3 uses
  %.0125159.us = phi ptr [ %i.ek, %.loopexit.us ], [ %2, %.preheader137.us.preheader ] ; 4 uses
  %i.cu = load ptr, ptr %.2123161.us, align 8, !tbaa !110 ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %.2123161.us, i64 %i.cn
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !110 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNSt12__shared_ptrIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfEELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #23, !inline_history !873
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfED0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25, !inline_history !874
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfED2Ev.exit

_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(56) %0) #23, !inline_history !874
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfEclEPPKhPhiii(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdfEclEPPKhPhiiiE25__cv_trace_location_fn196)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !90 ; 8 uses
  %i.c = fcmp une double %i.b, 1.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !139  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !137  ; 7 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 4 uses
  %i.l = trunc i64 %i.k to i32
  %.not = icmp eq i32 %5, %i.l
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %5 to i64                       ; 4 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.m, %i.k
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.o)
          to label %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge unwind label %bb.f

._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge:    ; preds = %bb.c
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !137
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.k, %i.m
  br i1 %i.p, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.m ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.q
  br i1 %.not.i.i, label %.thread, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.e, align 8, !tbaa !139
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge
  %.pre = phi ptr [ %.pre.pre, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge ], [ %i.g, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.r, align 8, !tbaa !91
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre196 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !91 ; 3 uses
  %i.t = icmp eq i32 %.pre196, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread, %bb.g
  %i.u = phi ptr [ %.pre, %.thread ], [ %i.g, %bb.g ] ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = sext i32 %5 to i64
  %i.x = shl nsw i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !43   ; 4 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 3 uses
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !91  ; 3 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %.lr.ph141, label %.loopexit137

.lr.ph141:                                        ; preds = %bb.h
  %i.ad = icmp sgt i32 %5, 0
  br i1 %i.ad, label %.lr.ph.us.preheader, label %.lr.ph141.split.preheader

.lr.ph141.split.preheader:                        ; preds = %.lr.ph141
  %i.ae = add i32 %i.z, -2
  %i.af = sub i32 %i.ae, %i.ab
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.ai, i64 8
  br label %..loopexit137_crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph141
  %wide.trip.count = zext nneg i32 %5 to i64      ; 6 uses
  %i.aj = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep223 = getelementptr i8, ptr %i.u, i64 %i.aj
  %min.iters.check = icmp ult i32 %5, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %i.ak = phi i32 [ %i.bu, %._crit_edge.us ], [ %i.ab, %.lr.ph.us.preheader ]
  %.0139.us = phi ptr [ %i.bv, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 2 uses
  %i.al = load ptr, ptr %.0139.us, align 8, !tbaa !110 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep224 = getelementptr i8, ptr %i.al, i64 %i.aj
  %bound0 = icmp ult ptr %i.u, %scevgep224
  %bound1 = icmp ult ptr %i.al, %scevgep223
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !41, !alias.scope !909
  %wide.load225 = load <2 x double>, ptr %i.an, align 8, !tbaa !41, !alias.scope !909
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load226 = load <2 x double>, ptr %i.ao, align 8, !tbaa !41, !alias.scope !910, !noalias !909
  %wide.load227 = load <2 x double>, ptr %i.ap, align 8, !tbaa !41, !alias.scope !910, !noalias !909
  %i.aq = fadd <2 x double> %wide.load, %wide.load226
  %i.ar = fadd <2 x double> %wide.load225, %wide.load227
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !41, !alias.scope !910, !noalias !909
  store <2 x double> %i.ar, ptr %i.ap, align 8, !tbaa !41, !alias.scope !910, !noalias !909
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !878

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.prol
  %i.au = load double, ptr %i.at, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.prol ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !41
  %i.ax = fadd double %i.au, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !41
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !879

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ay = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !41
  %i.be = fadd double %i.bb, %i.bd
  store double %i.be, ptr %i.bc, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !41
  %i.bj = fadd double %i.bg, %i.bi
  store double %i.bj, ptr %i.bh, align 8, !tbaa !41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.1
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.1 ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !41
  %i.bo = fadd double %i.bl, %i.bn
  store double %i.bo, ptr %i.bm, align 8, !tbaa !41
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.2 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !41
  %i.bt = fadd double %i.bq, %i.bs
  store double %i.bt, ptr %i.br, align 8, !tbaa !41
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !880

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bu = add nsw i32 %i.ak, 1                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0139.us, i64 8 ; 2 uses
  %exitcond172.not = icmp eq i32 %i.bu, %i.aa
  br i1 %exitcond172.not, label %..loopexit137_crit_edge, label %.lr.ph.us, !llvm.loop !881

bb.i:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !43 ; 2 uses
  %i.by = add nsw i32 %i.bx, -1
  %i.bz = icmp eq i32 %.pre196, %i.by
  br i1 %i.bz, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 224) #24
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !20
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.m ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cb, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.ch = sext i32 %.pre196 to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ch
  br label %.loopexit137

..loopexit137_crit_edge:                          ; preds = %._crit_edge.us, %.lr.ph141.split.preheader
  %.us-phi142 = phi ptr [ %scevgep, %.lr.ph141.split.preheader ], [ %i.bv, %._crit_edge.us ]
  store i32 %i.aa, ptr %i.v, align 8, !tbaa !91
  br label %.loopexit137

.loopexit137:                                     ; preds = %bb.h, %..loopexit137_crit_edge, %bb.o
  %i.cj = phi ptr [ %i.g, %bb.o ], [ %i.u, %..loopexit137_crit_edge ], [ %i.u, %bb.h ] ; 26 uses
  %i.ck = phi i32 [ %i.bx, %bb.o ], [ %i.z, %..loopexit137_crit_edge ], [ %i.z, %bb.h ]
  %.1 = phi ptr [ %i.ci, %bb.o ], [ %.us-phi142, %..loopexit137_crit_edge ], [ %1, %bb.h ] ; 10 uses
  %i.cl = add i32 %4, -1                          ; 6 uses
  %.not130154 = icmp eq i32 %4, 0
  br i1 %.not130154, label %._crit_edge, label %.lr.ph158

.lr.ph158:                                        ; preds = %.loopexit137
  %i.cm = sub nsw i32 1, %i.ck
  %i.cn = sext i32 %i.cm to i64                   ; 8 uses
  %i.co = add i32 %5, -2                          ; 2 uses
  %i.cp = sext i32 %3 to i64                      ; 8 uses
  %.not132148 = icmp slt i32 %5, 2                ; 2 uses
  br i1 %i.c, label %.lr.ph158.split.us, label %.lr.ph158.split

.lr.ph158.split.us:                               ; preds = %.lr.ph158
  br i1 %.not132148, label %.lr.ph158.split.us.split.us, label %.preheader133.us.preheader

.preheader133.us.preheader:                       ; preds = %.lr.ph158.split.us
  %i.cq = zext i32 %i.co to i64                   ; 5 uses
  %i.cr = zext nneg i32 %5 to i64                 ; 3 uses
  %i.cs = and i64 %i.cq, 4294967294
  %i.ct = add nuw nsw i64 %i.cs, 3
  %umax290 = call i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cr)
  %i.cu = shl nuw nsw i64 %umax290, 3
  %i.cv = shl nuw nsw i64 %i.cq, 3
  %i.cw = and i64 %i.cv, 34359738352              ; 2 uses
  %i.cx = sub nsw i64 %i.cu, %i.cw
  %i.cy = add nuw nsw i64 %i.cw, 16               ; 3 uses
end_hunk_4
begin_hunk_5_@_ZNSt12__shared_ptrIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #23, !inline_history !985
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddED0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25, !inline_history !986
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddED2Ev.exit

_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(56) %0) #23, !inline_history !986
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEclEPPKhPhiii(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEclEPPKhPhiiiE25__cv_trace_location_fn196)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !96 ; 8 uses
  %i.c = fcmp une double %i.b, 1.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !139  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !137  ; 7 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 4 uses
  %i.l = trunc i64 %i.k to i32
  %.not = icmp eq i32 %5, %i.l
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %5 to i64                       ; 4 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.m, %i.k
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.o)
          to label %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge unwind label %bb.f

._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge:    ; preds = %bb.c
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !137
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.k, %i.m
  br i1 %i.p, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.m ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.q
  br i1 %.not.i.i, label %.thread, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.e, align 8, !tbaa !139
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge
  %.pre = phi ptr [ %.pre.pre, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge ], [ %i.g, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.r, align 8, !tbaa !97
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre196 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !97 ; 3 uses
  %i.t = icmp eq i32 %.pre196, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread, %bb.g
  %i.u = phi ptr [ %.pre, %.thread ], [ %i.g, %bb.g ] ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = sext i32 %5 to i64
  %i.x = shl nsw i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !43   ; 4 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 3 uses
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !97  ; 3 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %.lr.ph141, label %.loopexit137

.lr.ph141:                                        ; preds = %bb.h
  %i.ad = icmp sgt i32 %5, 0
  br i1 %i.ad, label %.lr.ph.us.preheader, label %.lr.ph141.split.preheader

.lr.ph141.split.preheader:                        ; preds = %.lr.ph141
  %i.ae = add i32 %i.z, -2
  %i.af = sub i32 %i.ae, %i.ab
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.ai, i64 8
  br label %..loopexit137_crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph141
  %wide.trip.count = zext nneg i32 %5 to i64      ; 6 uses
  %i.aj = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep223 = getelementptr i8, ptr %i.u, i64 %i.aj
  %min.iters.check = icmp ult i32 %5, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %i.ak = phi i32 [ %i.bu, %._crit_edge.us ], [ %i.ab, %.lr.ph.us.preheader ]
  %.0139.us = phi ptr [ %i.bv, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 2 uses
  %i.al = load ptr, ptr %.0139.us, align 8, !tbaa !110 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep224 = getelementptr i8, ptr %i.al, i64 %i.aj
  %bound0 = icmp ult ptr %i.u, %scevgep224
  %bound1 = icmp ult ptr %i.al, %scevgep223
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !41, !alias.scope !1023
  %wide.load225 = load <2 x double>, ptr %i.an, align 8, !tbaa !41, !alias.scope !1023
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load226 = load <2 x double>, ptr %i.ao, align 8, !tbaa !41, !alias.scope !1024, !noalias !1023
  %wide.load227 = load <2 x double>, ptr %i.ap, align 8, !tbaa !41, !alias.scope !1024, !noalias !1023
  %i.aq = fadd <2 x double> %wide.load, %wide.load226
  %i.ar = fadd <2 x double> %wide.load225, %wide.load227
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !41, !alias.scope !1024, !noalias !1023
  store <2 x double> %i.ar, ptr %i.ap, align 8, !tbaa !41, !alias.scope !1024, !noalias !1023
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !990

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.prol
  %i.au = load double, ptr %i.at, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.prol ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !41
  %i.ax = fadd double %i.au, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !41
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !991

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ay = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !41
  %i.be = fadd double %i.bb, %i.bd
  store double %i.be, ptr %i.bc, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !41
  %i.bj = fadd double %i.bg, %i.bi
  store double %i.bj, ptr %i.bh, align 8, !tbaa !41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.1
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.1 ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !41
  %i.bo = fadd double %i.bl, %i.bn
  store double %i.bo, ptr %i.bm, align 8, !tbaa !41
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.2 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !41
  %i.bt = fadd double %i.bq, %i.bs
  store double %i.bt, ptr %i.br, align 8, !tbaa !41
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !992

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bu = add nsw i32 %i.ak, 1                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0139.us, i64 8 ; 2 uses
  %exitcond172.not = icmp eq i32 %i.bu, %i.aa
  br i1 %exitcond172.not, label %..loopexit137_crit_edge, label %.lr.ph.us, !llvm.loop !993

bb.i:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !43 ; 2 uses
  %i.by = add nsw i32 %i.bx, -1
  %i.bz = icmp eq i32 %.pre196, %i.by
  br i1 %i.bz, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 224) #24
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !20
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.m ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cb, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.ch = sext i32 %.pre196 to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ch
  br label %.loopexit137

..loopexit137_crit_edge:                          ; preds = %._crit_edge.us, %.lr.ph141.split.preheader
  %.us-phi142 = phi ptr [ %scevgep, %.lr.ph141.split.preheader ], [ %i.bv, %._crit_edge.us ]
  store i32 %i.aa, ptr %i.v, align 8, !tbaa !97
  br label %.loopexit137

.loopexit137:                                     ; preds = %bb.h, %..loopexit137_crit_edge, %bb.o
  %i.cj = phi ptr [ %i.g, %bb.o ], [ %i.u, %..loopexit137_crit_edge ], [ %i.u, %bb.h ] ; 30 uses
  %i.ck = phi i32 [ %i.bx, %bb.o ], [ %i.z, %..loopexit137_crit_edge ], [ %i.z, %bb.h ]
  %.1 = phi ptr [ %i.ci, %bb.o ], [ %.us-phi142, %..loopexit137_crit_edge ], [ %1, %bb.h ] ; 10 uses
  %i.cl = add i32 %4, -1                          ; 8 uses
  %.not130154 = icmp eq i32 %4, 0
  br i1 %.not130154, label %._crit_edge, label %.lr.ph158

.lr.ph158:                                        ; preds = %.loopexit137
  %i.cm = sub nsw i32 1, %i.ck
  %i.cn = sext i32 %i.cm to i64                   ; 8 uses
  %i.co = add i32 %5, -2                          ; 4 uses
  %i.cp = sext i32 %3 to i64                      ; 12 uses
  %.not132148 = icmp slt i32 %5, 2                ; 2 uses
  br i1 %i.c, label %.lr.ph158.split.us, label %.lr.ph158.split

.lr.ph158.split.us:                               ; preds = %.lr.ph158
  br i1 %.not132148, label %.lr.ph158.split.us.split.us, label %.preheader133.us.preheader

.preheader133.us.preheader:                       ; preds = %.lr.ph158.split.us
  %i.cq = zext i32 %i.co to i64                   ; 5 uses
  %i.cr = zext nneg i32 %5 to i64                 ; 3 uses
  %i.cs = and i64 %i.cq, 4294967294
  %i.ct = add nuw nsw i64 %i.cs, 3
  %umax318 = call i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cr)
  %i.cu = shl nuw nsw i64 %umax318, 3
  %i.cv = lshr i64 %i.cq, 1                       ; 3 uses
  %i.cw = shl nuw nsw i64 %i.cv, 4                ; 3 uses
  %i.cx = sub nsw i64 %i.cu, %i.cw                ; 2 uses
  %i.cy = zext i32 %i.cl to i64
end_hunk_5
