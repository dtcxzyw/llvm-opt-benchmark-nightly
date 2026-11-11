Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFPQ?download=true
inline.NumInlined: 3007
inline.NumDeleted: 508
loop-unroll.NumRuntimeUnrolled: 239
loop-unroll.NumUnrolled: 239
begin_hunk_0_@_ZN5faiss10IndexIVFPQ16precompute_tableEv:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = load i8, ptr %i.f, align 8, !tbaa !71, !range !72, !noundef !73
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !87, !range !72, !noundef !73
  %i.k = trunc nuw i8 %i.j to i1
  tail call void @_ZN5faiss34initialize_IVFPQ_precomputed_tableERiPKNS_5IndexERKNS_16ProductQuantizerERNS_12AlignedTableIfLi32EEEbb(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(224) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i1 noundef zeroext %i.h, i1 noundef zeroext %i.k)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss10IndexIVFPQ6encodeElPKfPh(ptr noundef nonnull align 8 dereferenceable(560) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i8, ptr %i.a, align 8, !tbaa !71, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !89   ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 3 uses
  %i.g = icmp slt i32 %i.e, 0
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #34
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %.noexc9

.noexc9:                                          ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #35 ; 5 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f ; 2 uses
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !90
  %i.k = add nsw i64 %i.f, -1                     ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc9
  %i.m = getelementptr i8, ptr %i.i, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !90
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc9, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc9 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.012.0 = phi ptr [ %i.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.i, %.noexc9 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(36) %i.o, ptr noundef %2, ptr noundef %.sroa.012.0, i64 noundef %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_ZNK5faiss16ProductQuantizer12compute_codeEPKfPh(ptr noundef nonnull align 8 dereferenceable(224) %i.s, ptr noundef %.sroa.012.0, ptr noundef %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %.sroa.012.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = ptrtoint ptr %.sroa.11.0 to i64
  %i.u = ptrtoint ptr %.sroa.012.0 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.012.0, i64 noundef %i.v) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.f:                                             ; preds = %bb.c, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i10 = icmp eq ptr %.sroa.012.0, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIfSaIfEED2Ev.exit11, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = ptrtoint ptr %.sroa.11.0 to i64
  %i.y = ptrtoint ptr %.sroa.012.0 to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.012.0, i64 noundef %i.z) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit11

_ZNSt6vectorIfSaIfEED2Ev.exit11:                  ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.w

bb.h:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @_ZNK5faiss16ProductQuantizer12compute_codeEPKfPh(ptr noundef nonnull align 8 dereferenceable(224) %i.aa, ptr noundef %2, ptr noundef %3)
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.e, %bb.d, %bb.h
  ret void
}

declare void @_ZNK5faiss16ProductQuantizer12compute_codeEPKfPh(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss10IndexIVFPQ15encode_multipleEmPlPKfPhb(ptr noundef nonnull align 8 dereferenceable(560) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #2 align 2 {
bb.a:
  br i1 %5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(36) %i.b, i64 noundef %1, ptr noundef %3, ptr noundef %2, i64 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(560) %0, i64 noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %4, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss10IndexIVFPQ15decode_multipleEmPKlPKhPf(ptr noundef nonnull align 8 dereferenceable(560) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @_ZNK5faiss16ProductQuantizer6decodeEPKhPfm(ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef %3, ptr noundef %4, i64 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load i8, ptr %i.b, align 8, !tbaa !71, !range !72, !noundef !73
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !89   ; 3 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #34
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %.noexc21

.noexc21:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = shl nuw nsw i64 %i.g, 2
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #35 ; 5 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g ; 2 uses
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !90
  %i.l = add nsw i64 %i.g, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc21
  %i.n = getelementptr i8, ptr %i.j, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !90
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc21, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.k, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc21 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.024.0 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc21 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.d

._crit_edge32:                                    ; preds = %._crit_edge, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.024.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge32
  %i.p = ptrtoint ptr %.sroa.11.0 to i64
  %i.q = ptrtoint ptr %.sroa.024.0 to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.024.0, i64 noundef %i.r) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.d:                                             ; preds = %.lr.ph31, %._crit_edge
  %.01730 = phi i64 [ 0, %.lr.ph31 ], [ %i.aj, %._crit_edge ] ; 3 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !74   ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.01730
  %i.u = load i64, ptr %i.t, align 8, !tbaa !41
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(36) %i.s, i64 noundef %i.u, ptr noundef %.sroa.024.0)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.e, align 8, !tbaa !89   ; 4 uses
  %5 = zext nneg i32 %i.y to i64
  %i.z = mul i64 %.01730, %5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.z ; 2 uses
  %i.ab = icmp sgt i32 %i.y, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %i.y to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.y, 8
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.024.0, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <4 x float>, ptr %i.ac, align 4, !tbaa !90
  %wide.load39 = load <4 x float>, ptr %i.ad, align 4, !tbaa !90
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load40 = load <4 x float>, ptr %i.ae, align 4, !tbaa !90
  %wide.load41 = load <4 x float>, ptr %i.af, align 4, !tbaa !90
  %i.ag = fadd <4 x float> %wide.load, %wide.load40
  %i.ah = fadd <4 x float> %wide.load39, %wide.load41
  store <4 x float> %i.ag, ptr %i.ae, align 4, !tbaa !90
  store <4 x float> %i.ah, ptr %i.af, align 4, !tbaa !90
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !2623

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader42

.lr.ph.preheader42:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.e
  %i.aj = add nuw i64 %.01730, 1                  ; 2 uses
  %exitcond34.not = icmp eq i64 %i.aj, %1
  br i1 %exitcond34.not, label %._crit_edge32, label %bb.d, !llvm.loop !2624

bb.f:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i22 = icmp eq ptr %.sroa.024.0, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIfSaIfEED2Ev.exit23, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = ptrtoint ptr %.sroa.11.0 to i64
  %i.am = ptrtoint ptr %.sroa.024.0 to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.024.0, i64 noundef %i.an) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit23

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader42 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.024.0, i64 %indvars.iv
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !90
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !90
  %i.as = fadd float %i.ap, %i.ar
  store float %i.as, ptr %i.aq, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2625

_ZNSt6vectorIfSaIfEED2Ev.exit23:                  ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.ak

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.c, %._crit_edge32, %bb.a
  ret void
}

declare void @_ZNK5faiss16ProductQuantizer6decodeEPKhPfm(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss10IndexIVFPQ10add_core_oElPKfPKlPfS4_Pv(ptr noundef nonnull align 8 dereferenceable(560) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"class.std::unique_ptr.67", align 8 ; 7 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"struct.faiss::DirectMapAdd", align 8 ; 7 uses
  %i.h = alloca [100 x i8], align 16              ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !41
  store ptr %3, ptr %i.b, align 8, !tbaa !178
  store ptr %4, ptr %i.c, align 8, !tbaa !43
  store ptr %6, ptr %i.d, align 8, !tbaa !257
  %i.i = load i32, ptr @_ZN5faiss25index_ivfpq_add_core_o_bsE, align 4, !tbaa !200
  %i.j = sext i32 %i.i to i64                     ; 6 uses
  %i.k = icmp sgt i64 %1, %i.j
  br i1 %i.k, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.a
  %i.l = icmp sgt i64 %1, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not61 = icmp eq ptr %3, null
  %.not62 = icmp eq ptr %4, null                  ; 2 uses
  %.not63 = icmp eq ptr %5, null                  ; 3 uses
  br i1 %.not61, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.04487.us = phi i64 [ %i.o, %bb.c ], [ 0, %.lr.ph ] ; 5 uses
  %i.o = add nsw i64 %.04487.us, %i.j             ; 3 uses
  %.sroa.speculated.us = tail call i64 @llvm.smin.i64(i64 %1, i64 %i.o) ; 2 uses
  %i.p = load i8, ptr %i.m, align 8, !tbaa !87, !range !72, !noundef !73
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i64 noundef %.04487.us, i64 noundef %.sroa.speculated.us, i64 noundef %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %i.s = sub nsw i64 %.sroa.speculated.us, %.04487.us
  %i.t = load i32, ptr %i.n, align 8, !tbaa !89
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %.04487.us, %i.u             ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %2, i64 %i.v
  %i.x = getelementptr inbounds [4 x i8], ptr %4, i64 %i.v
  %spec.select.us = select i1 %.not62, ptr null, ptr %i.x
  %i.y = getelementptr inbounds [8 x i8], ptr %5, i64 %.04487.us
  %i.z = select i1 %.not63, ptr null, ptr %i.y
  tail call void @_ZN5faiss10IndexIVFPQ10add_core_oElPKfPKlPfS4_Pv(ptr noundef nonnull align 8 dereferenceable(560) %0, i64 noundef %i.s, ptr noundef %i.w, ptr noundef null, ptr noundef %spec.select.us, ptr noundef %i.z, ptr noundef %6)
  %i.aa = icmp slt i64 %i.o, %1
  br i1 %i.aa, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !2626

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not62, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %.not63, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.04487.us88.us = phi i64 [ %i.ab, %bb.e ], [ 0, %.lr.ph.split.split.us ] ; 5 uses
  %i.ab = add nsw i64 %.04487.us88.us, %i.j       ; 3 uses
  %.sroa.speculated.us89.us = tail call i64 @llvm.smin.i64(i64 %1, i64 %i.ab) ; 2 uses
  %i.ac = load i8, ptr %i.m, align 8, !tbaa !87, !range !72, !noundef !73
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.split.us.split.us
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i64 noundef %.04487.us88.us, i64 noundef %.sroa.speculated.us89.us, i64 noundef %1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.split.us.split.us
  %i.af = sub nsw i64 %.sroa.speculated.us89.us, %.04487.us88.us
  %i.ag = load i32, ptr %i.n, align 8, !tbaa !89
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i64 %.04487.us88.us, %i.ah
  %i.aj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %3, i64 %.04487.us88.us
  tail call void @_ZN5faiss10IndexIVFPQ10add_core_oElPKfPKlPfS4_Pv(ptr noundef nonnull align 8 dereferenceable(560) %0, i64 noundef %i.af, ptr noundef %i.aj, ptr noundef nonnull %i.ak, ptr noundef null, ptr noundef null, ptr noundef %6)
  %i.al = icmp slt i64 %i.ab, %1
  br i1 %i.al, label %.lr.ph.split.split.us.split.us, label %.loopexit, !llvm.loop !2626

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.g
  %.04487.us88 = phi i64 [ %i.am, %bb.g ], [ 0, %.lr.ph.split.split.us ] ; 6 uses
  %i.am = add nsw i64 %.04487.us88, %i.j          ; 3 uses
  %.sroa.speculated.us89 = tail call i64 @llvm.smin.i64(i64 %1, i64 %i.am) ; 2 uses
  %i.an = load i8, ptr %i.m, align 8, !tbaa !87, !range !72, !noundef !73
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.split.us.split
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i64 noundef %.04487.us88, i64 noundef %.sroa.speculated.us89, i64 noundef %1) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.split.us.split
  %i.aq = sub nsw i64 %.sroa.speculated.us89, %.04487.us88
  %i.ar = load i32, ptr %i.n, align 8, !tbaa !89
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %.04487.us88, %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %2, i64 %i.at
  %i.av = getelementptr inbounds [8 x i8], ptr %3, i64 %.04487.us88
  %i.aw = getelementptr inbounds [8 x i8], ptr %5, i64 %.04487.us88
  tail call void @_ZN5faiss10IndexIVFPQ10add_core_oElPKfPKlPfS4_Pv(ptr noundef nonnull align 8 dereferenceable(560) %0, i64 noundef %i.aq, ptr noundef %i.au, ptr noundef nonnull %i.av, ptr noundef null, ptr noundef nonnull %i.aw, ptr noundef %6)
  %i.ax = icmp slt i64 %i.am, %1
  br i1 %i.ax, label %.lr.ph.split.split.us.split, label %.loopexit, !llvm.loop !2626

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not63, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %bb.i
  %.04487.us91 = phi i64 [ %i.ay, %bb.i ], [ 0, %.lr.ph.split.split ] ; 5 uses
  %i.ay = add nsw i64 %.04487.us91, %i.j          ; 3 uses
end_hunk_0
