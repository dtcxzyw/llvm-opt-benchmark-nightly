Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/out?download=true
inline.NumInlined: 750
inline.NumDeleted: 357
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZSt10_ConstructIN2cv13FormattedImplEJRA1_KcS4_RKNS0_3MatERKPcRKbSC_RKiEEvPT_DpOT0_:bb.a
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i16, label %._crit_edge.i.i15

.noexc.i16:                                       ; preds = %bb.d
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %bb.j   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i16
  store ptr %i.q, ptr %9, align 8, !tbaa !55
  %i.r = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.r, ptr %i.n, align 8, !tbaa !37
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %.noexc17, %bb.d
  %i.s = phi ptr [ %i.q, %.noexc17 ], [ %i.n, %bb.d ] ; 2 uses
  switch i64 %i.o, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i15
  %i.t = load i8, ptr %2, align 1, !tbaa !37
  store i8 %i.t, ptr %i.s, align 1, !tbaa !37
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %2, i64 %i.o, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i15
  %i.u = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !101
  %i.w = load ptr, ptr %9, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %4, align 8, !tbaa !104
  %i.z = load i8, ptr %5, align 1, !tbaa !93, !range !95, !noundef !8
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = load i8, ptr %6, align 1, !tbaa !93, !range !95, !noundef !8
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = load i32, ptr %7, align 4, !tbaa !14
  invoke void @_ZN2cv13FormattedImplC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_3MatEPcbbi(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 %10, ptr noundef %i.y, i1 noundef zeroext %i.aa, i1 noundef zeroext %i.ac, i32 noundef %i.ad)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #19
  %i.ae = load ptr, ptr %9, align 8, !tbaa !55    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.n
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ag = load i64, ptr %i.n, align 8, !tbaa !37
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ai = load ptr, ptr %8, align 8, !tbaa !55    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.c
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !37
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  ret void

bb.j:                                             ; preds = %.noexc.i16
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.k:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.l ], [ %i.an, %bb.k ] ; 2 uses
  %i.ap = load ptr, ptr %9, align 8, !tbaa !55    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.n
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.m
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !37
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn, %bb.m ]
  %i.at = load ptr, ptr %8, align 8, !tbaa !55    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.c
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.av = load i64, ptr %i.c, align 8, !tbaa !37
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CSVFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CSVFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CSVFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12CSVFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CSVFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !37
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #19
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
define linkonce_odr hidden void @_ZN2cv12CSVFormatterD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv12CSVFormatter6formatERKNS_3MatE(ptr dead_on_unwind noalias writable sret(%"struct.cv::Ptr.28") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !101
  store i8 0, ptr %i.e, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !105  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !100
  br i1 %i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i8 10, ptr %i.j, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.k, align 1, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.l, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %i.a, ptr %i.b, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.j, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %i.a, ptr %i.b, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.n = icmp eq i32 %i.h, 1
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !119
  %.not = icmp eq i32 %i.p, 0
  %i.q = zext i1 %.not to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i8 [ 1, %bb.b ], [ %i.q, %bb.c ]
  store i8 %i.r, ptr %i.c, align 1, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i8 0, ptr %i.d, align 1, !tbaa !93
  %i.s = load i32, ptr %2, align 8, !tbaa !28
  %i.t = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #18
          to label %.noexc17 unwind label %bb.e   ; 6 uses

.noexc17:                                         ; preds = %bb.d
  %i.u = and i32 %i.s, 31
  %i.v = icmp eq i32 %i.u, 6
  %.v = select i1 %i.v, i64 16, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 1, ptr %i.x, align 8, !tbaa !9, !noalias !137
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 1, ptr %i.y, align 4, !tbaa !11, !noalias !137
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv13FormattedImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.t, align 8, !tbaa !12, !noalias !137
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN2cv13FormattedImplEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKNS0_3MatERKPcRKbSH_RKiEEvPT_DpOT0_(ptr noundef nonnull %i.z, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
          to label %_ZNSt12__shared_ptrIN2cv13FormattedImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv13FormattedImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i.i, !noalias !137

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv13FormattedImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i.i: ; preds = %.noexc17
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 384) #21, !noalias !137
  %.pre = load ptr, ptr %4, align 8, !tbaa !55
  br label %.body

_ZNSt12__shared_ptrIN2cv13FormattedImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc17
  store ptr %i.z, ptr %0, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.ab, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.ac = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN2cv13FormattedImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !37
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #21
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt12__shared_ptrIN2cv13FormattedImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ah = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.e
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %.critedge
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !37
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.e:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv13FormattedImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i.i, %bb.e
  %5 = phi ptr [ %i.j, %bb.e ], [ %.pre, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv13FormattedImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i.i ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.e ], [ %i.aa, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv13FormattedImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = icmp eq ptr %5, %i.am
  br i1 %i.an, label %.critedge16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %.body
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !37
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %5, i64 noundef %i.ap) #21
  br label %.critedge16

.critedge16:                                      ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.aq = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.e
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.critedge16
  %i.as = load i64, ptr %i.e, align 8, !tbaa !37
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.critedge16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt10_ConstructIN2cv13FormattedImplEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKNS0_3MatERKPcRKbSH_RKiEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.c, ptr %8, align 8, !tbaa !100
  %i.d = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !101  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.f, ptr %i.b, align 8, !tbaa !49
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %8, align 8, !tbaa !55
  %i.i = load i64, ptr %i.b, align 8, !tbaa !49
  store i64 %i.i, ptr %i.c, align 8, !tbaa !37
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !37
  store i8 %i.k, ptr %i.j, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !101
  %i.n = load ptr, ptr %8, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.p, ptr %9, align 8, !tbaa !100
  %i.q = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !101  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.s, ptr %i.a, align 8, !tbaa !49
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i14, label %._crit_edge.i.i13

.noexc.i14:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i14
  store ptr %i.u, ptr %9, align 8, !tbaa !55
  %i.v = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.v, ptr %i.p, align 8, !tbaa !37
  br label %._crit_edge.i.i13

._crit_edge.i.i13:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = phi ptr [ %i.u, %.noexc ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i13
  %i.x = load i8, ptr %i.q, align 1, !tbaa !37
  store i8 %i.x, ptr %i.w, align 1, !tbaa !37
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i13
  %i.y = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !101
  %i.aa = load ptr, ptr %9, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %4, align 8, !tbaa !104
  %i.ad = load i8, ptr %5, align 1, !tbaa !93, !range !95, !noundef !8
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = load i8, ptr %6, align 1, !tbaa !93, !range !95, !noundef !8
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = load i32, ptr %7, align 4, !tbaa !14
  invoke void @_ZN2cv13FormattedImplC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_3MatEPcbbi(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 %10, ptr noundef %i.ac, i1 noundef zeroext %i.ae, i1 noundef zeroext %i.ag, i32 noundef %i.ah)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #19
  %i.ai = load ptr, ptr %9, align 8, !tbaa !55    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.p
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ak = load i64, ptr %i.p, align 8, !tbaa !37
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.am = load ptr, ptr %8, align 8, !tbaa !55    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.c
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !37
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  ret void

bb.i:                                             ; preds = %.noexc.i14
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.j:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.ar, %bb.j ] ; 2 uses
  %i.at = load ptr, ptr %9, align 8, !tbaa !55    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.p
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.l
  %i.av = load i64, ptr %i.p, align 8, !tbaa !37
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.i ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %.pn, %bb.l ]
  %i.ax = load ptr, ptr %8, align 8, !tbaa !55    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.c
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.az = load i64, ptr %i.c, align 8, !tbaa !37
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

end_hunk_0
