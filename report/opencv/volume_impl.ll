Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/volume_impl?download=true
inline.NumInlined: 958
inline.NumDeleted: 399
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNSt23_Sp_counted_ptr_inplaceIN2cv14HashTsdfVolumeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(536) dereferenceable(536) %i.a) #25, !inline_history !230
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv14HashTsdfVolumeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(552) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv14HashTsdfVolumeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 552) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv14HashTsdfVolumeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv15ColorTsdfVolumeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(496) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 496) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv15ColorTsdfVolumeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(496) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(480) dereferenceable(480) %i.a) #25, !inline_history !231
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv15ColorTsdfVolumeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(496) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv15ColorTsdfVolumeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 496) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv15ColorTsdfVolumeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #4

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_10TsdfVolume5resetEvE3$_0EEvRKT0_EN21PixelOperationWrapperD0Ev"(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_10TsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapperclERKNS_5RangeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %union.Index, align 4               ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = add nsw i32 %i.d, -1                     ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !52
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %i.h = icmp ult i32 %i.f, %narrow.i
  br i1 %i.h, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.17, i32 noundef 97) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %7, align 8, !tbaa !29     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !22
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %eh.lpad-body, %_ZNSt6vectorIiSaIiEED2Ev.exit75 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.o = zext nneg i32 %i.f to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !23   ; 7 uses
  %i.s = icmp samesign ult i32 %i.d, 3
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.t = load i32, ptr %1, align 4, !tbaa !61     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !62   ; 2 uses
  %i.w = icmp slt i32 %i.t, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i.lr.ph, label %.loopexit

.lr.ph.i.i.i.lr.ph:                               ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.d to i64
  %9 = zext i32 %i.r to i64
  %.idx.i = shl nuw nsw i64 %9, 1                 ; 2 uses
  %i.ab = icmp sgt i32 %i.r, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.us.preheader, label %.loopexit

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph.i.i.i.lr.ph
  %i.ac = add nsw i32 %i.d, -1
  %i.ad = icmp ult i32 %i.ac, 3
  %lcmp.mod191 = icmp ne i32 %i.d, 0
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_10TsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us"
  %.034112.us = phi i32 [ %i.cn, %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_10TsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us" ], [ %i.t, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 %.034112.us, ptr %6, align 4, !tbaa !23
  store i32 0, ptr %i.x, align 4, !tbaa !23
  br i1 %i.ad, label %.epil.preheader183, label %.lr.ph.i.i.i.us.new

.lr.ph.i.i.i.us.new:                              ; preds = %.lr.ph.i.i.i.us, %.lr.ph.i.i.i.us.new
  %indvars.iv.i.i.i.us = phi i64 [ %indvars.iv.next.i.i.i.us.3, %.lr.ph.i.i.i.us.new ], [ 0, %.lr.ph.i.i.i.us ] ; 6 uses
  %.010.i.i.i.us = phi ptr [ %i.bf, %.lr.ph.i.i.i.us.new ], [ %i.z, %.lr.ph.i.i.i.us ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !23
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.us
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !31
  %i.aj = mul i64 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us, i64 %i.aj
  %indvars.iv.next.i.i.i.us = or disjoint i64 %indvars.iv.i.i.i.us, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us
  %i.am = load i32, ptr %i.al, align 4, !tbaa !23
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !31
  %i.aq = mul i64 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aq
  %indvars.iv.next.i.i.i.us.1 = or disjoint i64 %indvars.iv.i.i.i.us, 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.1
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us.1
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !31
  %i.ax = mul i64 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %indvars.iv.next.i.i.i.us.2 = or disjoint i64 %indvars.iv.i.i.i.us, 3 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.2
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !23
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us.2
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !31
  %i.be = mul i64 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.be
  %indvars.iv.next.i.i.i.us.3 = add nuw nsw i64 %indvars.iv.i.i.i.us, 4
  br label %.lr.ph.i.i.i.us.new, !llvm.loop !1

.epil.preheader183:                               ; preds = %.lr.ph.i.i.i.us
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader183
  %indvars.iv.i.i.i.us.epil = phi i64 [ 0, %.epil.preheader183 ], [ %indvars.iv.next.i.i.i.us.epil, %bb.f ] ; 3 uses
  %.010.i.i.i.us.epil = phi ptr [ %i.z, %.epil.preheader183 ], [ %i.bm, %bb.f ] ; 2 uses
  %epil.iter185 = phi i64 [ 0, %.epil.preheader183 ], [ %epil.iter185.next, %bb.f ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us.epil
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !23 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.us.epil
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !31 ; 2 uses
  %i.bl = mul i64 %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us.epil, i64 %i.bl ; 8 uses
  %indvars.iv.next.i.i.i.us.epil = add nuw nsw i64 %indvars.iv.i.i.i.us.epil, 1
  %epil.iter185.next = add i64 %epil.iter185, 1   ; 2 uses
  %epil.iter185.cmp.not = icmp eq i64 %epil.iter185.next, %wide.trip.count.i.i.i
  br i1 %epil.iter185.cmp.not, label %iter.check162.epilog-lcssa, label %bb.f, !llvm.loop !232

iter.check162.epilog-lcssa:                       ; preds = %bb.f
  %i.bn = ptrtoaddr ptr %.010.i.i.i.us.epil to i64 ; 3 uses
  %i.bo = sext i32 %i.bh to i64
  %i.bp = mul i64 %i.bk, %i.bo                    ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx.i
  %i.br = add i64 %.idx.i, %i.bn
  %i.bs = add i64 %i.br, %i.bp
  %i.bt = add i64 %i.bn, 2
  %i.bu = add i64 %i.bt, %i.bp
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bu)
  %i.bv = xor i64 %i.bp, -1
  %i.bw = add i64 %umax, %i.bv
  %i.bx = sub i64 %i.bw, %i.bn                    ; 3 uses
  %i.by = lshr i64 %i.bx, 1
  %i.bz = add nuw i64 %i.by, 1                    ; 5 uses
  %min.iters.check150 = icmp ult i64 %i.bx, 6
  br i1 %min.iters.check150, label %.lr.ph.i.us.preheader, label %vector.main.loop.iter.check151

vector.main.loop.iter.check151:                   ; preds = %iter.check162.epilog-lcssa
  %min.iters.check152 = icmp ult i64 %i.bx, 30
  br i1 %min.iters.check152, label %vec.epilog.ph166, label %vector.ph153

vector.ph153:                                     ; preds = %vector.main.loop.iter.check151
  %i.ca = and i64 %i.bz, 12
  %n.vec154 = and i64 %i.bz, -16                  ; 4 uses
  %i.cb = shl i64 %n.vec154, 1
  %i.cc = getelementptr i8, ptr %i.bm, i64 %i.cb
  br label %vector.body155

vector.body155:                                   ; preds = %vector.ph153, %vector.body155
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next159, %vector.body155 ] ; 2 uses
  %i.cd = shl i64 %index156, 1                    ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.bm, i64 %i.cd
  %i.ce = getelementptr i8, ptr %i.bm, i64 %i.cd
  %next.gep158 = getelementptr i8, ptr %i.ce, i64 16
  store <16 x i8> <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>, ptr %next.gep157, align 1, !tbaa !22
  store <16 x i8> <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>, ptr %next.gep158, align 1, !tbaa !22
  %index.next159 = add nuw i64 %index156, 16      ; 2 uses
  %i.cf = icmp eq i64 %index.next159, %n.vec154
  br i1 %i.cf, label %middle.block160, label %vector.body155, !llvm.loop !233

middle.block160:                                  ; preds = %vector.body155
  %cmp.n161 = icmp eq i64 %i.bz, %n.vec154
  br i1 %cmp.n161, label %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_10TsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", label %vec.epilog.iter.check163

vec.epilog.iter.check163:                         ; preds = %middle.block160
  %min.epilog.iters.check165 = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check165, label %.lr.ph.i.us.preheader, label %vec.epilog.ph166, !prof !113

vec.epilog.ph166:                                 ; preds = %vector.main.loop.iter.check151, %vec.epilog.iter.check163
  %vec.epilog.resume.val167 = phi i64 [ %n.vec154, %vec.epilog.iter.check163 ], [ 0, %vector.main.loop.iter.check151 ]
  %n.vec168 = and i64 %i.bz, -4                   ; 3 uses
  %i.cg = shl i64 %n.vec168, 1
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cg
  br label %vec.epilog.vector.body169

vec.epilog.vector.body169:                        ; preds = %vec.epilog.vector.body169, %vec.epilog.ph166
  %index170 = phi i64 [ %vec.epilog.resume.val167, %vec.epilog.ph166 ], [ %index.next172, %vec.epilog.vector.body169 ] ; 2 uses
  %i.ci = shl i64 %index170, 1
  %next.gep171 = getelementptr i8, ptr %i.bm, i64 %i.ci
  store <8 x i8> <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>, ptr %next.gep171, align 1, !tbaa !22
  %index.next172 = add nuw i64 %index170, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next172, %n.vec168
  br i1 %i.cj, label %vec.epilog.middle.block173, label %vec.epilog.vector.body169, !llvm.loop !234

vec.epilog.middle.block173:                       ; preds = %vec.epilog.vector.body169
  %cmp.n174 = icmp eq i64 %i.bz, %n.vec168
  br i1 %cmp.n174, label %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_10TsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %iter.check162.epilog-lcssa, %vec.epilog.iter.check163, %vec.epilog.middle.block173
  %.01.i.us.ph = phi ptr [ %i.bm, %iter.check162.epilog-lcssa ], [ %i.cc, %vec.epilog.iter.check163 ], [ %i.ch, %vec.epilog.middle.block173 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.01.i.us = phi ptr [ %i.ck, %.lr.ph.i.us ], [ %.01.i.us.ph, %.lr.ph.i.us.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 2 ; 2 uses
  store i8 -1, ptr %.01.i.us, align 1, !tbaa !115
  %i.cl = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 1
  store i8 0, ptr %i.cl, align 1, !tbaa !116
  %i.cm = icmp ult ptr %i.ck, %i.bq
  br i1 %i.cm, label %.lr.ph.i.us, label %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_10TsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", !llvm.loop !235

"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_10TsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us": ; preds = %.lr.ph.i.us, %vec.epilog.middle.block173, %middle.block160
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cn = add nsw i32 %.034112.us, 1              ; 2 uses
  %exitcond119.not = icmp eq i32 %i.cn, %i.v
  br i1 %exitcond119.not, label %.loopexit, label %.lr.ph.i.i.i.us, !llvm.loop !236

bb.g:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.co = zext nneg i32 %i.d to i64               ; 2 uses
  %i.cp = shl nuw nsw i64 %i.co, 2                ; 4 uses
  %i.cq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #23 ; 14 uses
  store i32 0, ptr %i.cq, align 4, !tbaa !23
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.cp, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cr, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !23
  %i.cs = load i32, ptr %1, align 4, !tbaa !61    ; 3 uses
  %i.ct = add nsw i32 %i.cs, -1
  %i.cu = add nsw i32 %i.d, -2                    ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cv ; 3 uses
  store i32 %i.ct, ptr %i.cw, align 4, !tbaa !23
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !62 ; 2 uses
  %i.cz = icmp slt i32 %i.cs, %i.cy
  br i1 %i.cz, label %.lr.ph93.split.us, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph93.split.us:                                ; preds = %bb.g
  %i.da = getelementptr [4 x i8], ptr %i.cq, i64 %i.co
  %i.db = getelementptr i8, ptr %i.da, i64 -4     ; 2 uses
  %i.dc = icmp sgt i32 %i.r, 0
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !67  ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 84
  %i.dg = zext nneg i32 %i.cu to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dg
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 128 ; 5 uses
  %i.dk = zext i32 %i.r to i64                    ; 5 uses
  %min.iters.check = icmp ult i32 %i.r, 4
  %min.iters.check141 = icmp ult i32 %i.r, 16
  %i.dl = and i64 %i.dk, 12
  %n.vec = and i64 %i.dk, 2147483632              ; 5 uses
  %i.dm = trunc nuw nsw i64 %n.vec to i32
  %i.dn = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.dk
end_hunk_0
begin_hunk_1_@"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_10TsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapperclERKNS_5RangeE":bb.a
  %i.gb = icmp eq i64 %index.next146, %n.vec143
  br i1 %i.gb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !240

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n147, label %.loopexit87.us, label %.lr.ph.i66.us.preheader

.lr.ph.i66.us.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i32 [ 0, %iter.check ], [ %i.dm, %vec.epilog.iter.check ], [ %i.do, %vec.epilog.middle.block ]
  %.01.i67.us.ph = phi ptr [ %.0.lcssa.i.i.i65.us, %iter.check ], [ %i.fv, %vec.epilog.iter.check ], [ %i.fz, %vec.epilog.middle.block ]
  br label %.lr.ph.i66.us

.lr.ph.i66.us:                                    ; preds = %.lr.ph.i66.us.preheader, %.lr.ph.i66.us
  %i.gc = phi i32 [ %i.gf, %.lr.ph.i66.us ], [ %.ph, %.lr.ph.i66.us.preheader ]
  %.01.i67.us = phi ptr [ %i.ge, %.lr.ph.i66.us ], [ %.01.i67.us.ph, %.lr.ph.i66.us.preheader ] ; 3 uses
  store i8 -1, ptr %.01.i67.us, align 1, !tbaa !115
  %i.gd = getelementptr inbounds nuw i8, ptr %.01.i67.us, i64 1
  store i8 0, ptr %i.gd, align 1, !tbaa !116
  %i.ge = getelementptr inbounds nuw i8, ptr %.01.i67.us, i64 2
  %i.gf = add nuw nsw i32 %i.gc, 1                ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.gf, %i.r
  br i1 %exitcond.not.i.us, label %.loopexit87.us, label %.lr.ph.i66.us, !llvm.loop !241

.loopexit87.us:                                   ; preds = %.lr.ph.i66.us, %middle.block, %vec.epilog.middle.block, %_ZN2cv3Mat2atINS_3VecIhLi2EEEEERT_PKi.exit.i64.us
  store i32 0, ptr %i.db, align 4, !tbaa !23
  %i.gg = add i32 %.03091.us, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.gg, %i.cy
  br i1 %exitcond.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.us, !llvm.loop !242

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit87.us, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cp) #24
  br label %.loopexit

.split.us:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc44 unwind label %bb.p

.noexc44:                                         ; preds = %.split.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.17, i32 noundef 97) #26
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc44
  unreachable

bb.m:                                             ; preds = %.noexc44
  %i.gh = landingpad { ptr, i32 }
          cleanup
  %i.gi = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41: ; preds = %bb.m
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !22
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit75

.split95.us:                                      ; preds = %_ZN2cv8MatShapeixEm.exit54.us
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc60 unwind label %bb.p

.noexc60:                                         ; preds = %.split95.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.17, i32 noundef 97) #26
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc60
  unreachable

bb.o:                                             ; preds = %.noexc60
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %bb.o
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !22
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit75

bb.p:                                             ; preds = %.split95.us, %.split.us
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit75

_ZNSt6vectorIiSaIiEED2Ev.exit75:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42
  %eh.lpad-body = phi { ptr, i32 } [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42 ], [ %i.gt, %bb.p ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cp) #24
  br label %common.resume

.loopexit:                                        ; preds = %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_10TsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", %.lr.ph.i.i.i.lr.ph, %bb.e, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52), i64 noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_14HashTsdfVolume5resetEvE3$_0EEvRKT0_EN21PixelOperationWrapperD0Ev"(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_14HashTsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapperclERKNS_5RangeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %union.Index.83, align 4            ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = add nsw i32 %i.d, -1                     ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !52
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %i.h = icmp ult i32 %i.f, %narrow.i
  br i1 %i.h, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.17, i32 noundef 97) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %7, align 8, !tbaa !29     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !22
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %eh.lpad-body, %_ZNSt6vectorIiSaIiEED2Ev.exit75 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.o = zext nneg i32 %i.f to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !23   ; 7 uses
  %i.s = icmp samesign ult i32 %i.d, 3
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.t = load i32, ptr %1, align 4, !tbaa !61     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !62   ; 2 uses
  %i.w = icmp slt i32 %i.t, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i.lr.ph, label %.loopexit

.lr.ph.i.i.i.lr.ph:                               ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.d to i64
  %9 = zext i32 %i.r to i64
  %.idx.i = shl nuw nsw i64 %9, 1                 ; 2 uses
  %i.ab = icmp sgt i32 %i.r, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.us.preheader, label %.loopexit

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph.i.i.i.lr.ph
  %i.ac = add nsw i32 %i.d, -1
  %i.ad = icmp ult i32 %i.ac, 3
  %lcmp.mod191 = icmp ne i32 %i.d, 0
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_14HashTsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us"
  %.034112.us = phi i32 [ %i.cn, %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_14HashTsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us" ], [ %i.t, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 %.034112.us, ptr %6, align 4, !tbaa !23
  store i32 0, ptr %i.x, align 4, !tbaa !23
  br i1 %i.ad, label %.epil.preheader183, label %.lr.ph.i.i.i.us.new

.lr.ph.i.i.i.us.new:                              ; preds = %.lr.ph.i.i.i.us, %.lr.ph.i.i.i.us.new
  %indvars.iv.i.i.i.us = phi i64 [ %indvars.iv.next.i.i.i.us.3, %.lr.ph.i.i.i.us.new ], [ 0, %.lr.ph.i.i.i.us ] ; 6 uses
  %.010.i.i.i.us = phi ptr [ %i.bf, %.lr.ph.i.i.i.us.new ], [ %i.z, %.lr.ph.i.i.i.us ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !23
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.us
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !31
  %i.aj = mul i64 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us, i64 %i.aj
  %indvars.iv.next.i.i.i.us = or disjoint i64 %indvars.iv.i.i.i.us, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us
  %i.am = load i32, ptr %i.al, align 4, !tbaa !23
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !31
  %i.aq = mul i64 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aq
  %indvars.iv.next.i.i.i.us.1 = or disjoint i64 %indvars.iv.i.i.i.us, 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.1
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us.1
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !31
  %i.ax = mul i64 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %indvars.iv.next.i.i.i.us.2 = or disjoint i64 %indvars.iv.i.i.i.us, 3 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.2
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !23
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us.2
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !31
  %i.be = mul i64 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.be
  %indvars.iv.next.i.i.i.us.3 = add nuw nsw i64 %indvars.iv.i.i.i.us, 4
  br label %.lr.ph.i.i.i.us.new, !llvm.loop !1

.epil.preheader183:                               ; preds = %.lr.ph.i.i.i.us
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader183
  %indvars.iv.i.i.i.us.epil = phi i64 [ 0, %.epil.preheader183 ], [ %indvars.iv.next.i.i.i.us.epil, %bb.f ] ; 3 uses
  %.010.i.i.i.us.epil = phi ptr [ %i.z, %.epil.preheader183 ], [ %i.bm, %bb.f ] ; 2 uses
  %epil.iter185 = phi i64 [ 0, %.epil.preheader183 ], [ %epil.iter185.next, %bb.f ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us.epil
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !23 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.us.epil
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !31 ; 2 uses
  %i.bl = mul i64 %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us.epil, i64 %i.bl ; 8 uses
  %indvars.iv.next.i.i.i.us.epil = add nuw nsw i64 %indvars.iv.i.i.i.us.epil, 1
  %epil.iter185.next = add i64 %epil.iter185, 1   ; 2 uses
  %epil.iter185.cmp.not = icmp eq i64 %epil.iter185.next, %wide.trip.count.i.i.i
  br i1 %epil.iter185.cmp.not, label %iter.check162.epilog-lcssa, label %bb.f, !llvm.loop !243

iter.check162.epilog-lcssa:                       ; preds = %bb.f
  %i.bn = ptrtoaddr ptr %.010.i.i.i.us.epil to i64 ; 3 uses
  %i.bo = sext i32 %i.bh to i64
  %i.bp = mul i64 %i.bk, %i.bo                    ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx.i
  %i.br = add i64 %.idx.i, %i.bn
  %i.bs = add i64 %i.br, %i.bp
  %i.bt = add i64 %i.bn, 2
  %i.bu = add i64 %i.bt, %i.bp
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bu)
  %i.bv = xor i64 %i.bp, -1
  %i.bw = add i64 %umax, %i.bv
  %i.bx = sub i64 %i.bw, %i.bn                    ; 3 uses
  %i.by = lshr i64 %i.bx, 1
  %i.bz = add nuw i64 %i.by, 1                    ; 5 uses
  %min.iters.check150 = icmp ult i64 %i.bx, 6
  br i1 %min.iters.check150, label %.lr.ph.i.us.preheader, label %vector.main.loop.iter.check151

vector.main.loop.iter.check151:                   ; preds = %iter.check162.epilog-lcssa
  %min.iters.check152 = icmp ult i64 %i.bx, 30
  br i1 %min.iters.check152, label %vec.epilog.ph166, label %vector.ph153

vector.ph153:                                     ; preds = %vector.main.loop.iter.check151
  %i.ca = and i64 %i.bz, 12
  %n.vec154 = and i64 %i.bz, -16                  ; 4 uses
  %i.cb = shl i64 %n.vec154, 1
  %i.cc = getelementptr i8, ptr %i.bm, i64 %i.cb
  br label %vector.body155

vector.body155:                                   ; preds = %vector.ph153, %vector.body155
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next159, %vector.body155 ] ; 2 uses
  %i.cd = shl i64 %index156, 1                    ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.bm, i64 %i.cd
  %i.ce = getelementptr i8, ptr %i.bm, i64 %i.cd
  %next.gep158 = getelementptr i8, ptr %i.ce, i64 16
  store <16 x i8> <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>, ptr %next.gep157, align 1, !tbaa !22
  store <16 x i8> <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>, ptr %next.gep158, align 1, !tbaa !22
  %index.next159 = add nuw i64 %index156, 16      ; 2 uses
  %i.cf = icmp eq i64 %index.next159, %n.vec154
  br i1 %i.cf, label %middle.block160, label %vector.body155, !llvm.loop !244

middle.block160:                                  ; preds = %vector.body155
  %cmp.n161 = icmp eq i64 %i.bz, %n.vec154
  br i1 %cmp.n161, label %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_14HashTsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", label %vec.epilog.iter.check163

vec.epilog.iter.check163:                         ; preds = %middle.block160
  %min.epilog.iters.check165 = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check165, label %.lr.ph.i.us.preheader, label %vec.epilog.ph166, !prof !113

vec.epilog.ph166:                                 ; preds = %vector.main.loop.iter.check151, %vec.epilog.iter.check163
  %vec.epilog.resume.val167 = phi i64 [ %n.vec154, %vec.epilog.iter.check163 ], [ 0, %vector.main.loop.iter.check151 ]
  %n.vec168 = and i64 %i.bz, -4                   ; 3 uses
  %i.cg = shl i64 %n.vec168, 1
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cg
  br label %vec.epilog.vector.body169

vec.epilog.vector.body169:                        ; preds = %vec.epilog.vector.body169, %vec.epilog.ph166
  %index170 = phi i64 [ %vec.epilog.resume.val167, %vec.epilog.ph166 ], [ %index.next172, %vec.epilog.vector.body169 ] ; 2 uses
  %i.ci = shl i64 %index170, 1
  %next.gep171 = getelementptr i8, ptr %i.bm, i64 %i.ci
  store <8 x i8> <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>, ptr %next.gep171, align 1, !tbaa !22
  %index.next172 = add nuw i64 %index170, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next172, %n.vec168
  br i1 %i.cj, label %vec.epilog.middle.block173, label %vec.epilog.vector.body169, !llvm.loop !245

vec.epilog.middle.block173:                       ; preds = %vec.epilog.vector.body169
  %cmp.n174 = icmp eq i64 %i.bz, %n.vec168
  br i1 %cmp.n174, label %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_14HashTsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %iter.check162.epilog-lcssa, %vec.epilog.iter.check163, %vec.epilog.middle.block173
  %.01.i.us.ph = phi ptr [ %i.bm, %iter.check162.epilog-lcssa ], [ %i.cc, %vec.epilog.iter.check163 ], [ %i.ch, %vec.epilog.middle.block173 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.01.i.us = phi ptr [ %i.ck, %.lr.ph.i.us ], [ %.01.i.us.ph, %.lr.ph.i.us.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 2 ; 2 uses
  store i8 -1, ptr %.01.i.us, align 1, !tbaa !115
  %i.cl = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 1
  store i8 0, ptr %i.cl, align 1, !tbaa !116
  %i.cm = icmp ult ptr %i.ck, %i.bq
  br i1 %i.cm, label %.lr.ph.i.us, label %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_14HashTsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", !llvm.loop !246

"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_14HashTsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us": ; preds = %.lr.ph.i.us, %vec.epilog.middle.block173, %middle.block160
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cn = add nsw i32 %.034112.us, 1              ; 2 uses
  %exitcond119.not = icmp eq i32 %i.cn, %i.v
  br i1 %exitcond119.not, label %.loopexit, label %.lr.ph.i.i.i.us, !llvm.loop !247

bb.g:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.co = zext nneg i32 %i.d to i64               ; 2 uses
  %i.cp = shl nuw nsw i64 %i.co, 2                ; 4 uses
  %i.cq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #23 ; 14 uses
  store i32 0, ptr %i.cq, align 4, !tbaa !23
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.cp, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cr, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !23
  %i.cs = load i32, ptr %1, align 4, !tbaa !61    ; 3 uses
  %i.ct = add nsw i32 %i.cs, -1
  %i.cu = add nsw i32 %i.d, -2                    ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cv ; 3 uses
  store i32 %i.ct, ptr %i.cw, align 4, !tbaa !23
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !62 ; 2 uses
  %i.cz = icmp slt i32 %i.cs, %i.cy
  br i1 %i.cz, label %.lr.ph93.split.us, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph93.split.us:                                ; preds = %bb.g
  %i.da = getelementptr [4 x i8], ptr %i.cq, i64 %i.co
  %i.db = getelementptr i8, ptr %i.da, i64 -4     ; 2 uses
  %i.dc = icmp sgt i32 %i.r, 0
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !98  ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 84
  %i.dg = zext nneg i32 %i.cu to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dg
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 128 ; 5 uses
  %i.dk = zext i32 %i.r to i64                    ; 5 uses
  %min.iters.check = icmp ult i32 %i.r, 4
  %min.iters.check141 = icmp ult i32 %i.r, 16
  %i.dl = and i64 %i.dk, 12
  %n.vec = and i64 %i.dk, 2147483632              ; 5 uses
  %i.dm = trunc nuw nsw i64 %n.vec to i32
  %i.dn = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.dk
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !254

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN2cv3VecIiLi3EEESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2cv3VecIiLi3EEESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12 ; 2 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i29
  %.015.i.i.i.i.i30 = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i29 ], [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %i.af = load <2 x i32>, ptr %.01214.i.i.i.i.i31, align 4, !tbaa !23
  store <2 x i32> %i.af, ptr %.015.i.i.i.i.i30, align 4, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 8
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 12 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29, !llvm.loop !254

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ak, %.lr.ph.i.i.i.i.i29 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN2cv3VecIiLi3EEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !102
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ao) #24
  br label %_ZNSt12_Vector_baseIN2cv3VecIiLi3EEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2cv3VecIiLi3EEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !103
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !102
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_INS_3VecIfLi4EEEEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !58
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 101
  store i32 %i.d, ptr %0, align 8, !tbaa !58
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !58     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 101
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !59
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 4, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863579, ptr %3, align 8, !tbaa !37
  store ptr %0, ptr %i.o, align 8, !tbaa !38
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 101, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIhLi8EEEZNS_15ColorTsdfVolume5resetEvE3$_0EEvRKT0_EN21PixelOperationWrapperD0Ev"(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIhLi8EEEZNS_15ColorTsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapperclERKNS_5RangeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %union.Index.88, align 4            ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = add nsw i32 %i.d, -1                     ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !52
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %i.h = icmp ult i32 %i.f, %narrow.i
  br i1 %i.h, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.17, i32 noundef 97) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %7, align 8, !tbaa !29     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !22
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %eh.lpad-body, %_ZNSt6vectorIiSaIiEED2Ev.exit63 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.o = zext nneg i32 %i.f to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !23   ; 4 uses
  %i.s = icmp samesign ult i32 %i.d, 3
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.t = load i32, ptr %1, align 4, !tbaa !61     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !62
  %i.w = icmp slt i32 %i.t, %i.v
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 4
  %9 = zext nneg i32 %i.r to i64
  %.idx.i = shl nuw nsw i64 %9, 3
  %i.y = icmp sgt i32 %i.r, 0
  br i1 %i.y, label %.lr.ph.split.us, label %.loopexit

.lr.ph.split.us:                                  ; preds = %.lr.ph, %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi8EEEZNS_15ColorTsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us"
  %.033110.us = phi i32 [ %i.bt, %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi8EEEZNS_15ColorTsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us" ], [ %i.t, %.lr.ph ] ; 2 uses
  %.val.us = load ptr, ptr %i.a, align 8, !tbaa !107 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 %.033110.us, ptr %6, align 4, !tbaa !23
  store i32 0, ptr %i.x, align 4, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %.val.us, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !59  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.us, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !57 ; 3 uses
  %i.ad = icmp sgt i32 %i.aa, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.us, label %_ZN2cv3Mat2atINS_3VecIhLi8EEEEERT_PKi.exit.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.us, i64 128 ; 5 uses
  %wide.trip.count.i.i.i.us = zext nneg i32 %i.aa to i64 ; 2 uses
  %xtraiter156 = and i64 %wide.trip.count.i.i.i.us, 3 ; 3 uses
  %i.af = icmp ult i32 %i.aa, 4
  br i1 %i.af, label %.epil.preheader155, label %.lr.ph.i.i.i.us.new

.lr.ph.i.i.i.us.new:                              ; preds = %.lr.ph.i.i.i.us
  %unroll_iter161 = and i64 %wide.trip.count.i.i.i.us, 2147483644
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.us.new
  %indvars.iv.i.i.i.us = phi i64 [ 0, %.lr.ph.i.i.i.us.new ], [ %indvars.iv.next.i.i.i.us.3, %bb.f ] ; 6 uses
  %.010.i.i.i.us = phi ptr [ %i.ac, %.lr.ph.i.i.i.us.new ], [ %i.bh, %bb.f ]
  %niter162 = phi i64 [ 0, %.lr.ph.i.i.i.us.new ], [ %niter162.next.3, %bb.f ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !23
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i.i.i.us
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.al = mul i64 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us, i64 %i.al
  %indvars.iv.next.i.i.i.us = or disjoint i64 %indvars.iv.i.i.i.us, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !23
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.i.i.i.us
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !31
  %i.as = mul i64 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.as
  %indvars.iv.next.i.i.i.us.1 = or disjoint i64 %indvars.iv.i.i.i.us, 2 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.1
  %i.av = load i32, ptr %i.au, align 4, !tbaa !23
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.i.i.i.us.1
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !31
  %i.az = mul i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.az
  %indvars.iv.next.i.i.i.us.2 = or disjoint i64 %indvars.iv.i.i.i.us, 3 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.2
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.i.i.i.us.2
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !31
  %i.bg = mul i64 %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bg ; 3 uses
  %indvars.iv.next.i.i.i.us.3 = add nuw nsw i64 %indvars.iv.i.i.i.us, 4 ; 2 uses
  %niter162.next.3 = add i64 %niter162, 4         ; 2 uses
  %niter162.ncmp.3 = icmp eq i64 %niter162.next.3, %unroll_iter161
  br i1 %niter162.ncmp.3, label %_ZN2cv3Mat2atINS_3VecIhLi8EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1

_ZN2cv3Mat2atINS_3VecIhLi8EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod158.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %_ZN2cv3Mat2atINS_3VecIhLi8EEEEERT_PKi.exit.i.us, label %.epil.preheader155

.epil.preheader155:                               ; preds = %_ZN2cv3Mat2atINS_3VecIhLi8EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa, %.lr.ph.i.i.i.us
  %indvars.iv.i.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %indvars.iv.next.i.i.i.us.3, %_ZN2cv3Mat2atINS_3VecIhLi8EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa ]
  %.010.i.i.i.us.epil.init = phi ptr [ %i.ac, %.lr.ph.i.i.i.us ], [ %i.bh, %_ZN2cv3Mat2atINS_3VecIhLi8EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa ]
  %lcmp.mod160 = icmp ne i64 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader155
  %indvars.iv.i.i.i.us.epil = phi i64 [ %indvars.iv.i.i.i.us.epil.init, %.epil.preheader155 ], [ %indvars.iv.next.i.i.i.us.epil, %bb.g ] ; 3 uses
  %.010.i.i.i.us.epil = phi ptr [ %.010.i.i.i.us.epil.init, %.epil.preheader155 ], [ %i.bo, %bb.g ]
  %epil.iter157 = phi i64 [ 0, %.epil.preheader155 ], [ %epil.iter157.next, %bb.g ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us.epil
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !23
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i.i.i.us.epil
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !31
  %i.bn = mul i64 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us.epil, i64 %i.bn ; 2 uses
  %indvars.iv.next.i.i.i.us.epil = add nuw nsw i64 %indvars.iv.i.i.i.us.epil, 1
  %epil.iter157.next = add i64 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i64 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %_ZN2cv3Mat2atINS_3VecIhLi8EEEEERT_PKi.exit.i.us, label %bb.g, !llvm.loop !255

_ZN2cv3Mat2atINS_3VecIhLi8EEEEERT_PKi.exit.i.us:  ; preds = %_ZN2cv3Mat2atINS_3VecIhLi8EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa, %bb.g, %.lr.ph.split.us
  %.0.lcssa.i.i.i.us = phi ptr [ %i.ac, %.lr.ph.split.us ], [ %i.bh, %_ZN2cv3Mat2atINS_3VecIhLi8EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa ], [ %i.bo, %bb.g ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.us, i64 %.idx.i
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us, %_ZN2cv3Mat2atINS_3VecIhLi8EEEEERT_PKi.exit.i.us
  %.01.i.us = phi ptr [ %i.bq, %.lr.ph.i.us ], [ %.0.lcssa.i.i.i.us, %_ZN2cv3Mat2atINS_3VecIhLi8EEEEERT_PKi.exit.i.us ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 8 ; 2 uses
  store i8 -1, ptr %.01.i.us, align 2, !tbaa !264
  %i.br = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.br, i8 0, i64 7, i1 false)
  %i.bs = icmp ult ptr %i.bq, %i.bp
  br i1 %i.bs, label %.lr.ph.i.us, label %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi8EEEZNS_15ColorTsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", !llvm.loop !256

"_ZZN2cv3Mat12forEach_implINS_3VecIhLi8EEEZNS_15ColorTsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us": ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bt = add nsw i32 %.033110.us, 1              ; 2 uses
  %i.bu = load i32, ptr %i.u, align 4, !tbaa !62
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !257

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.bw = zext nneg i32 %i.d to i64               ; 2 uses
  %i.bx = shl nuw nsw i64 %i.bw, 2                ; 4 uses
  %i.by = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #23 ; 14 uses
  store i32 0, ptr %i.by, align 4, !tbaa !23
  %i.bz = getelementptr i8, ptr %i.by, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.bx, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bz, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !23
  %i.ca = load i32, ptr %1, align 4, !tbaa !61    ; 3 uses
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = add nsw i32 %i.d, -2                    ; 2 uses
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cd ; 3 uses
  store i32 %i.cb, ptr %i.ce, align 4, !tbaa !23
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !62 ; 2 uses
  %i.ch = icmp slt i32 %i.ca, %i.cg
  br i1 %i.ch, label %.lr.ph.us.preheader, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph.us.preheader:                              ; preds = %bb.h
  %i.ci = getelementptr [4 x i8], ptr %i.by, i64 %i.bw
  %i.cj = getelementptr i8, ptr %i.ci, i64 -4     ; 4 uses
  %i.ck = icmp sgt i32 %i.r, 0
  %i.cl = zext nneg i32 %i.cc to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cl
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi8EEEZNS_15ColorTsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper7rowCallEPiii.exit.us"
  %i.cm = phi i32 [ %i.fd, %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi8EEEZNS_15ColorTsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper7rowCallEPiii.exit.us" ], [ %i.cg, %.lr.ph.us.preheader ]
  %.03088.us = phi i32 [ %i.fe, %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi8EEEZNS_15ColorTsdfVolume5resetEvE3$_0EEvRKT0_ENK21PixelOperationWrapper7rowCallEPiii.exit.us" ], [ %i.ca, %.lr.ph.us.preheader ]
  %i.cn = load i32, ptr %i.ce, align 4, !tbaa !23
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.ce, align 4, !tbaa !23
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !107 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 72 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 84
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.us, %_ZN2cv8MatShapeixEm.exit61.us
  %i.cs = phi i32 [ %.pre, %.lr.ph.us ], [ %i.dc, %_ZN2cv8MatShapeixEm.exit61.us ] ; 3 uses
  %indvars.iv = phi i64 [ %i.cl, %.lr.ph.us ], [ %indvars.iv.next, %_ZN2cv8MatShapeixEm.exit61.us ] ; 6 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv
  %i.cu = load i32, ptr %i.cq, align 4, !tbaa !52
  %narrow.i37.us = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 1)
  %i.cv = zext nneg i32 %narrow.i37.us to i64
  %i.cw = icmp ult i64 %indvars.iv, %i.cv
  br i1 %i.cw, label %bb.j, label %.split.us

bb.j:                                             ; preds = %bb.i
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !23 ; 2 uses
  %.not.us = icmp slt i32 %i.cs, %i.cy
  br i1 %.not.us, label %._crit_edge.us, label %_ZN2cv8MatShapeixEm.exit52.us

_ZN2cv8MatShapeixEm.exit52.us:                    ; preds = %bb.j
  %i.cz = sdiv i32 %i.cs, %i.cy
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !23
  %i.dc = add nsw i32 %i.db, %i.cz                ; 2 uses
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !23
  %i.dd = load i32, ptr %i.cq, align 4, !tbaa !52
  %narrow.i53.us = tail call i32 @llvm.smax.i32(i32 %i.dd, i32 1)
  %i.de = zext nneg i32 %narrow.i53.us to i64
  %i.df = icmp samesign ult i64 %indvars.iv, %i.de
  br i1 %i.df, label %_ZN2cv8MatShapeixEm.exit61.us, label %.split92.us

_ZN2cv8MatShapeixEm.exit61.us:                    ; preds = %_ZN2cv8MatShapeixEm.exit52.us
  %i.dg = load i32, ptr %i.cx, align 4, !tbaa !23
  %i.dh = srem i32 %i.cs, %i.dg
  store i32 %i.dh, ptr %i.ct, align 4, !tbaa !23
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge.us, label %bb.i, !llvm.loop !258

._crit_edge.us:                                   ; preds = %_ZN2cv8MatShapeixEm.exit61.us, %bb.j
  store i32 0, ptr %i.cj, align 4, !tbaa !23
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !59 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !57 ; 3 uses
  %i.dm = icmp sgt i32 %i.dj, 0
  br i1 %i.dm, label %.lr.ph.i.i.i68.us, label %_ZN2cv3Mat2atINS_3VecIhLi8EEEEERT_PKi.exit.i64.us

end_hunk_2
