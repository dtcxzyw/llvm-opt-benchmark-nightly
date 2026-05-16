inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEEvOT_:bb.a
  store i8 %i.bs, ptr %i.cg, align 1, !tbaa !153
  %i.ch = icmp sgt i64 %i.by, 0
  br i1 %i.ch, label %bb.w, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.2

bb.w:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i.2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %i.bv, i64 %i.by, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.2

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.2: ; preds = %bb.w, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i.2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %.not.i17.i.i.i.i.i.i.2 = icmp eq ptr %i.bv, null
  br i1 %.not.i17.i.i.i.i.i.i.2, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.2, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.2
  tail call void @_ZdlPv(ptr noundef nonnull %i.bv) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.2

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.2: ; preds = %bb.x, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.2
  store ptr %i.cf, ptr %.sroa.0.0.copyload, align 8, !tbaa !2781
  store ptr %i.ci, ptr %i.ab, align 8, !tbaa !2783
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.cj, ptr %i.ac, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.2

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.2: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.2, %bb.t
  store ptr %.sroa.0.0.copyload, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEE4growEm(ptr noundef nonnull align 8 dereferenceable(532) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3940 ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3938 ; 4 uses
  %i.g = icmp slt i64 %spec.select, 0
  br i1 %i.g, label %bb.b, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit, !prof !88

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #51
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit:     ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #50 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !3941 ; 3 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d, !prof !470

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZSt18uninitialized_copyIPcS0_ET0_T_S2_S1_.exit

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit
  %i.l = icmp eq i64 %i.j, 1
  br i1 %i.l, label %bb.e, label %_ZSt18uninitialized_copyIPcS0_ET0_T_S2_S1_.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.f, align 1, !tbaa !153
  store i8 %i.m, ptr %i.h, align 1, !tbaa !153
  br label %_ZSt18uninitialized_copyIPcS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_copyIPcS0_ET0_T_S2_S1_.exit:  ; preds = %bb.c, %bb.d, %bb.e
  store ptr %i.h, ptr %i.e, align 8, !tbaa !3938
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !3940
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.f, %i.n
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt18uninitialized_copyIPcS0_ET0_T_S2_S1_.exit
  tail call void @_ZdlPv(ptr noundef %i.f) #49
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZSt18uninitialized_copyIPcS0_ET0_T_S2_S1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED0Ev(ptr noundef nonnull align 8 dereferenceable(532) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %0, align 8, !tbaa !413
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3938 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #49, !inline_history !3950
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %0) #49
  ret void
}

declare noundef signext i8 @_ZN10duckdb_fmt2v68internal18decimal_point_implIcEET_NS1_10locale_refE(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12float_writerIcEclIRSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 65280
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 8
  %i.e = and i32 %i.d, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !153   ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2783 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2788
  %.not.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.h, ptr %i.j, align 1, !tbaa !153
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !2783
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.n, ptr %i.i, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !2781 ; 4 uses
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 7 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775807
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.t = add i64 %.sroa.speculated.i.i.i.i.i, %i.r ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.r
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 9223372036854775807)
  %i.w = select i1 %i.u, i64 9223372036854775807, i64 %i.v ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.y = phi ptr [ %i.x, %bb.f ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.r ; 2 uses
  store i8 %i.h, ptr %i.z, align 1, !tbaa !153
  %i.aa = icmp sgt i64 %i.r, 0
  br i1 %i.aa, label %bb.g, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.g, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.h, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.y, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !2781
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !2783
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.c, %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8
  %i.ad = tail call ptr @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEET_SB_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr %.sroa.0.0.copyload)
  store ptr %i.ad, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEET_SB_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3946 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3947 ; 2 uses
  %i.e = add i32 %i.d, %i.b                       ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = and i32 %i.h, 255
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !3942
  %i.l = load i8, ptr %i.k, align 1, !tbaa !153   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2783 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2788
  %.not.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.l, ptr %i.n, align 1, !tbaa !153
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !2783
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  store ptr %i.r, ptr %i.m, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %1, align 8, !tbaa !2781   ; 4 uses
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 7 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775807
  br i1 %i.w, label %bb.e, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.x = add i64 %.sroa.speculated.i.i.i.i.i, %i.v ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.v
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 9223372036854775807)
  %i.aa = select i1 %i.y, i64 9223372036854775807, i64 %i.z ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ac = phi ptr [ %i.ab, %bb.f ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.v ; 2 uses
  store i8 %i.l, ptr %i.ad, align 1, !tbaa !153
  %i.ae = icmp sgt i64 %i.v, 0
  br i1 %i.ae, label %bb.g, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 1 %i.s, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.g, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.h, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.ac, ptr %1, align 8, !tbaa !2781
  store ptr %i.af, ptr %i.m, align 8, !tbaa !2783
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store ptr %i.ag, ptr %i.o, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit: ; preds = %bb.c, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i
  %i.ah = phi ptr [ %i.r, %bb.c ], [ %i.af, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i ] ; 4 uses
  %i.ai = load i32, ptr %i.f, align 8, !tbaa !3951
  %i.aj = load i32, ptr %i.a, align 8, !tbaa !3946 ; 2 uses
  %i.ak = sub nsw i32 %i.ai, %i.aj                ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  %i.am = load i32, ptr %i.g, align 4
  %i.an = and i32 %i.am, 536870912
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = select i1 %i.al, i1 %i.ao, i1 false     ; 2 uses
  %i.aq = icmp sgt i32 %i.aj, 1
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ap
  br i1 %or.cond, label %bb.i, label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit

bb.i:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.as = load ptr, ptr %i.o, align 8, !tbaa !2788
  %.not.i.i = icmp eq ptr %i.ah, %i.as
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load i8, ptr %i.ar, align 8, !tbaa !153
  store i8 %i.at, ptr %i.ah, align 1, !tbaa !153
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !2783
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  store ptr %i.av, ptr %i.m, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %1, align 8, !tbaa !2781  ; 4 uses
  %i.ax = ptrtoint ptr %i.ah to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 7 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775807
  br i1 %i.ba, label %bb.l, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.bb = add i64 %.sroa.speculated.i.i.i.i, %i.az ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775807)
  %i.be = select i1 %i.bc, i64 9223372036854775807, i64 %i.bd ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i: ; preds = %bb.m, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bg = phi ptr [ %i.bf, %bb.m ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.az ; 2 uses
  %i.bi = load i8, ptr %i.ar, align 8, !tbaa !153
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !153
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.n, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr align 1 %i.aw, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aw) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bg, ptr %1, align 8, !tbaa !2781
  store ptr %i.bk, ptr %i.m, align 8, !tbaa !2783
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store ptr %i.bl, ptr %i.o, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.j, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit
  %.pre.i = phi ptr [ %i.bk, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %i.av, %bb.j ], [ %i.ah, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit ] ; 2 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !3942  ; 2 uses
  %i.bn = load i32, ptr %i.a, align 8, !tbaa !3946 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %i.bm, i64 %i.bo
  %.not6.i.i = icmp eq i32 %i.bn, 1
  br i1 %.not6.i.i, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i, %.lr.ph.i.i
  %i.br = phi ptr [ %.pre.i, %.lr.ph.i.i ], [ %i.cl, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i ] ; 3 uses
  %.07.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %i.cm, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i ] ; 2 uses
  %i.bs = load i8, ptr %.07.i.i, align 1, !tbaa !153 ; 2 uses
  %i.bt = load ptr, ptr %i.o, align 8, !tbaa !2788
  %.not.i.i.i.i.i130 = icmp eq ptr %i.br, %i.bt
  br i1 %.not.i.i.i.i.i130, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !153
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !2783
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  store ptr %i.bv, ptr %i.m, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %1, align 8, !tbaa !2781  ; 4 uses
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 7 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775807
  br i1 %i.ca, label %bb.s, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.r
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.cb = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.bz ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.bz
  %i.cd = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 9223372036854775807)
  %i.ce = select i1 %i.cc, i64 9223372036854775807, i64 %i.cd ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.cf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.t, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.cg = phi ptr [ %i.cf, %bb.t ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bz ; 2 uses
  store i8 %i.bs, ptr %i.ch, align 1, !tbaa !153
  %i.ci = icmp sgt i64 %i.bz, 0
  br i1 %i.ci, label %bb.u, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.u:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr align 1 %i.bw, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.u, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bw) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.v, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.cg, ptr %1, align 8, !tbaa !2781
  store ptr %i.cj, ptr %i.m, align 8, !tbaa !2783
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store ptr %i.ck, ptr %i.o, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i, %bb.q
  %i.cl = phi ptr [ %i.cj, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i ], [ %i.bv, %bb.q ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1 ; 2 uses
  %.not.i.i131 = icmp eq ptr %i.cm, %i.bp
  br i1 %.not.i.i131, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit, label %bb.p, !llvm.loop !3578

_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit
  %.pre.i.i.i = phi ptr [ %.pre.i, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit ], [ %i.cl, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i ] ; 2 uses
  br i1 %i.ap, label %.lr.ph.i.i.i, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit

.lr.ph.i.i.i:                                     ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i
  %i.cn = phi ptr [ %i.dg, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i ], [ %.pre.i.i.i, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit ] ; 3 uses
  %.03.i.i.i = phi i32 [ %i.dh, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i ], [ %i.ak, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit ] ; 2 uses
  %i.co = load ptr, ptr %i.o, align 8, !tbaa !2788
  %.not.i.i.i.i.i132 = icmp eq ptr %i.cn, %i.co
  br i1 %.not.i.i.i.i.i132, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i
  store i8 48, ptr %i.cn, align 1, !tbaa !153
  %i.cp = load ptr, ptr %i.m, align 8, !tbaa !2783
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1 ; 2 uses
  store ptr %i.cq, ptr %i.m, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i.i
  %i.cr = load ptr, ptr %1, align 8, !tbaa !2781  ; 4 uses
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 7 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775807
  br i1 %i.cv, label %bb.y, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i133

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i133: ; preds = %bb.x
  %.sroa.speculated.i.i.i.i.i.i.i134 = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cw = add i64 %.sroa.speculated.i.i.i.i.i.i.i134, %i.cu ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cu
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 9223372036854775807)
  %i.cz = select i1 %i.cx, i64 9223372036854775807, i64 %i.cy ; 3 uses
  %.not.i.i.i.i.i.i.i135 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i.i.i.i.i135, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i136, label %bb.z

bb.z:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i133
  %i.da = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i136

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i136: ; preds = %bb.z, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i133
  %i.db = phi ptr [ %i.da, %bb.z ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i133 ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cu ; 2 uses
  store i8 48, ptr %i.dc, align 1, !tbaa !153
  %i.dd = icmp sgt i64 %i.cu, 0
  br i1 %i.dd, label %bb.aa, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i137

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i136
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.db, ptr align 1 %i.cr, i64 %i.cu, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i137

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i137: ; preds = %bb.aa, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i136
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i138 = icmp eq ptr %i.cr, null
  br i1 %.not.i17.i.i.i.i.i.i138, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i137
  tail call void @_ZdlPv(ptr noundef nonnull %i.cr) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ab, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i137
  store ptr %i.db, ptr %1, align 8, !tbaa !2781
  store ptr %i.de, ptr %i.m, align 8, !tbaa !2783
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cz
  store ptr %i.df, ptr %i.o, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i, %bb.w
  %i.dg = phi ptr [ %i.cq, %bb.w ], [ %i.de, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.dh = add nsw i32 %.03.i.i.i, -1
  %i.di = icmp sgt i32 %.03.i.i.i, 1
  br i1 %i.di, label %.lr.ph.i.i.i, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit, !llvm.loop !3952

_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit
  %i.dj = phi ptr [ %.pre.i.i.i, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit ], [ %i.dg, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i ] ; 3 uses
  %.shift126 = getelementptr inbounds nuw i8, ptr %0, i64 31
  %2 = load i8, ptr %.shift126, align 1
  %3 = trunc i8 %2 to i1
  %i.dk = select i1 %3, i8 69, i8 101             ; 2 uses
  %i.dl = load ptr, ptr %i.o, align 8, !tbaa !2788
  %.not.i.i.i140 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not.i.i.i140, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !153
  %i.dm = load ptr, ptr %i.m, align 8, !tbaa !2783
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  store ptr %i.dn, ptr %i.m, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit148

bb.ad:                                            ; preds = %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit
  %i.do = load ptr, ptr %1, align 8, !tbaa !2781  ; 4 uses
  %i.dp = ptrtoint ptr %i.dj to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 7 uses
  %i.ds = icmp eq i64 %i.dr, 9223372036854775807
  br i1 %i.ds, label %bb.ae, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i141

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i141: ; preds = %bb.ad
  %.sroa.speculated.i.i.i.i.i142 = tail call i64 @llvm.umax.i64(i64 %i.dr, i64 1)
  %i.dt = add i64 %.sroa.speculated.i.i.i.i.i142, %i.dr ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.dr
  %i.dv = tail call i64 @llvm.umin.i64(i64 %i.dt, i64 9223372036854775807)
  %i.dw = select i1 %i.du, i64 9223372036854775807, i64 %i.dv ; 3 uses
  %.not.i.i.i.i.i143 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.i.i143, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i144, label %bb.af

bb.af:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i141
  %i.dx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i144

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i144: ; preds = %bb.af, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i141
  %i.dy = phi ptr [ %i.dx, %bb.af ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i141 ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dr ; 2 uses
  store i8 %i.dk, ptr %i.dz, align 1, !tbaa !153
  %i.ea = icmp sgt i64 %i.dr, 0
  br i1 %i.ea, label %bb.ag, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i145

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr align 1 %i.do, i64 %i.dr, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i145

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i145: ; preds = %bb.ag, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i144
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %.not.i17.i.i.i.i146 = icmp eq ptr %i.do, null
  br i1 %.not.i17.i.i.i.i146, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i147, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i145
  tail call void @_ZdlPv(ptr noundef nonnull %i.do) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i147

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i147: ; preds = %bb.ah, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i145
  store ptr %i.dy, ptr %1, align 8, !tbaa !2781
  store ptr %i.eb, ptr %i.m, align 8, !tbaa !2783
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw
  store ptr %i.ec, ptr %i.o, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit148

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit148: ; preds = %bb.ac, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i147
  %i.ed = add nsw i32 %i.e, -1
  %i.ee = tail call ptr @_ZN10duckdb_fmt2v68internal14write_exponentIcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEET0_iS9_(i32 noundef %i.ed, ptr nonnull %1)
  br label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit325

bb.ai:                                            ; preds = %bb.a
  %.not120 = icmp slt i32 %i.d, 0
  br i1 %.not120, label %bb.cx, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ef = and i32 %i.h, 16711680
  %i.eg = icmp ne i32 %i.ef, 0
  %i.eh = icmp sgt i32 %i.e, 3
  %or.cond3 = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %or.cond3, label %bb.ak, label %bb.bn

bb.ak:                                            ; preds = %bb.aj
  %i.ei = urem i32 %i.e, 3                        ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  %spec.select = select i1 %i.ej, i32 3, i32 %i.ei
  %.shift125 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit186
  %.0100467 = phi i32 [ 0, %bb.ak ], [ %i.if, %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit186 ] ; 5 uses
  %storemerge466 = phi i32 [ %spec.select, %bb.ak ], [ 3, %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit186 ] ; 5 uses
  %i.em = icmp sgt i32 %.0100467, 0
  br i1 %i.em, label %bb.am, label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit158

bb.am:                                            ; preds = %bb.al
  %4 = load i16, ptr %.shift125, align 2
  %i.en = trunc i16 %4 to i8                      ; 2 uses
  %i.eo = load ptr, ptr %i.ek, align 8, !tbaa !2783 ; 3 uses
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !2788
  %.not.i.i150 = icmp eq ptr %i.eo, %i.ep
  br i1 %.not.i.i150, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !153
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !2783
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store ptr %i.er, ptr %i.ek, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit158

bb.ao:                                            ; preds = %bb.am
  %i.es = load ptr, ptr %1, align 8, !tbaa !2781  ; 4 uses
  %i.et = ptrtoint ptr %i.eo to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 7 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775807
  br i1 %i.ew, label %bb.ap, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i151

bb.ap:                                            ; preds = %bb.ao
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i151: ; preds = %bb.ao
  %.sroa.speculated.i.i.i.i152 = tail call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.ex = add i64 %.sroa.speculated.i.i.i.i152, %i.ev ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.ev
  %i.ez = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 9223372036854775807)
  %i.fa = select i1 %i.ey, i64 9223372036854775807, i64 %i.ez ; 3 uses
  %.not.i.i.i.i153 = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i.i.i153, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i154, label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i151
  %i.fb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i154

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i154: ; preds = %bb.aq, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i151
  %i.fc = phi ptr [ %i.fb, %bb.aq ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i151 ] ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ev ; 2 uses
  store i8 %i.en, ptr %i.fd, align 1, !tbaa !153
  %i.fe = icmp sgt i64 %i.ev, 0
  br i1 %i.fe, label %bb.ar, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i155

bb.ar:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i154
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fc, ptr align 1 %i.es, i64 %i.ev, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i155

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i155: ; preds = %bb.ar, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i154
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %.not.i17.i.i.i156 = icmp eq ptr %i.es, null
  br i1 %.not.i17.i.i.i156, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i157, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i155
  tail call void @_ZdlPv(ptr noundef nonnull %i.es) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i157

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i157: ; preds = %bb.as, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i155
  store ptr %i.fc, ptr %1, align 8, !tbaa !2781
  store ptr %i.ff, ptr %i.ek, align 8, !tbaa !2783
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fa
  store ptr %i.fg, ptr %i.el, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit158

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit158: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i157, %bb.an, %bb.al
  %i.fh = load i32, ptr %i.a, align 8, !tbaa !3946 ; 2 uses
  %i.fi = icmp slt i32 %.0100467, %i.fh
  br i1 %i.fi, label %.lr.ph.i.i160, label %.lr.ph.i.i.i187

.lr.ph.i.i160:                                    ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit158
  %i.fj = sub nsw i32 %i.fh, %.0100467            ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %storemerge466, i32 %i.fj) ; 2 uses
  %i.fk = load ptr, ptr %0, align 8, !tbaa !3942
  %i.fl = sext i32 %.0100467 to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 %i.fl ; 2 uses
  %i.fn = sext i32 %.sroa.speculated to i64
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 %i.fn
  %.pre.i161 = load ptr, ptr %i.ek, align 8, !tbaa !2783
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i164, %.lr.ph.i.i160
  %i.fp = phi ptr [ %.pre.i161, %.lr.ph.i.i160 ], [ %.pre.i.i.i175, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i164 ] ; 3 uses
  %.07.i.i162 = phi ptr [ %i.fm, %.lr.ph.i.i160 ], [ %i.gj, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i164 ] ; 2 uses
  %i.fq = load i8, ptr %.07.i.i162, align 1, !tbaa !153 ; 2 uses
  %i.fr = load ptr, ptr %i.el, align 8, !tbaa !2788
  %.not.i.i.i.i.i163 = icmp eq ptr %i.fp, %i.fr
  br i1 %.not.i.i.i.i.i163, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i8 %i.fq, ptr %i.fp, align 1, !tbaa !153
  %i.fs = load ptr, ptr %i.ek, align 8, !tbaa !2783
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1 ; 2 uses
  store ptr %i.ft, ptr %i.ek, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i164

bb.av:                                            ; preds = %bb.at
  %i.fu = load ptr, ptr %1, align 8, !tbaa !2781  ; 4 uses
  %i.fv = ptrtoint ptr %i.fp to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 7 uses
  %i.fy = icmp eq i64 %i.fx, 9223372036854775807
  br i1 %i.fy, label %bb.aw, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i166

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i166: ; preds = %bb.av
  %.sroa.speculated.i.i.i.i.i.i.i167 = tail call i64 @llvm.umax.i64(i64 %i.fx, i64 1)
  %i.fz = add i64 %.sroa.speculated.i.i.i.i.i.i.i167, %i.fx ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.fx
  %i.gb = tail call i64 @llvm.umin.i64(i64 %i.fz, i64 9223372036854775807)
  %i.gc = select i1 %i.ga, i64 9223372036854775807, i64 %i.gb ; 3 uses
  %.not.i.i.i.i.i.i.i168 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i.i.i.i.i.i168, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i169, label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i166
  %i.gd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i169

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i169: ; preds = %bb.ax, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i166
  %i.ge = phi ptr [ %i.gd, %bb.ax ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i166 ] ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fx ; 2 uses
  store i8 %i.fq, ptr %i.gf, align 1, !tbaa !153
  %i.gg = icmp sgt i64 %i.fx, 0
  br i1 %i.gg, label %bb.ay, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i170

bb.ay:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i169
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ge, ptr align 1 %i.fu, i64 %i.fx, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i170

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i170: ; preds = %bb.ay, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i169
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i171 = icmp eq ptr %i.fu, null
  br i1 %.not.i17.i.i.i.i.i.i171, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i172, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i170
  tail call void @_ZdlPv(ptr noundef nonnull %i.fu) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i172

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i172: ; preds = %bb.az, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i170
  store ptr %i.ge, ptr %1, align 8, !tbaa !2781
  store ptr %i.gh, ptr %i.ek, align 8, !tbaa !2783
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gc
  store ptr %i.gi, ptr %i.el, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i164

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i164: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i172, %bb.au
  %.pre.i.i.i175 = phi ptr [ %i.gh, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i172 ], [ %i.ft, %bb.au ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.07.i.i162, i64 1 ; 2 uses
  %.not.i.i165 = icmp eq ptr %i.gj, %i.fo
  br i1 %.not.i.i165, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit173, label %bb.at, !llvm.loop !3578

_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit173: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i164
  %i.gk = icmp slt i32 %i.fj, %storemerge466
  %i.gl = sub nsw i32 %storemerge466, %.sroa.speculated ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  %or.cond657 = select i1 %i.gk, i1 %i.gm, i1 false
  br i1 %or.cond657, label %.lr.ph.i.i.i174, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit186

.lr.ph.i.i.i174:                                  ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit173, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i178
  %i.gn = phi ptr [ %i.hg, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i178 ], [ %.pre.i.i.i175, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit173 ] ; 3 uses
  %.03.i.i.i176 = phi i32 [ %i.hh, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i178 ], [ %i.gl, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit173 ] ; 2 uses
  %i.go = load ptr, ptr %i.el, align 8, !tbaa !2788
  %.not.i.i.i.i.i177 = icmp eq ptr %i.gn, %i.go
  br i1 %.not.i.i.i.i.i177, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i174
  store i8 48, ptr %i.gn, align 1, !tbaa !153
  %i.gp = load ptr, ptr %i.ek, align 8, !tbaa !2783
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1 ; 2 uses
  store ptr %i.gq, ptr %i.ek, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i178

bb.bb:                                            ; preds = %.lr.ph.i.i.i174
  %i.gr = load ptr, ptr %1, align 8, !tbaa !2781  ; 4 uses
  %i.gs = ptrtoint ptr %i.gn to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt                    ; 7 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775807
  br i1 %i.gv, label %bb.bc, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i179

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i179: ; preds = %bb.bb
  %.sroa.speculated.i.i.i.i.i.i.i180 = tail call i64 @llvm.umax.i64(i64 %i.gu, i64 1)
  %i.gw = add i64 %.sroa.speculated.i.i.i.i.i.i.i180, %i.gu ; 2 uses
  %i.gx = icmp ult i64 %i.gw, %i.gu
  %i.gy = tail call i64 @llvm.umin.i64(i64 %i.gw, i64 9223372036854775807)
  %i.gz = select i1 %i.gx, i64 9223372036854775807, i64 %i.gy ; 3 uses
  %.not.i.i.i.i.i.i.i181 = icmp eq i64 %i.gz, 0
  br i1 %.not.i.i.i.i.i.i.i181, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i182, label %bb.bd

bb.bd:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i179
  %i.ha = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gz) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i182

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i182: ; preds = %bb.bd, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i179
end_hunk_0
begin_hunk_1_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEET_SB_:bb.a

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i230: ; preds = %bb.ce
  %.sroa.speculated.i.i.i.i231 = tail call i64 @llvm.umax.i64(i64 %i.kw, i64 1)
  %i.ky = add i64 %.sroa.speculated.i.i.i.i231, %i.kw ; 2 uses
  %i.kz = icmp ult i64 %i.ky, %i.kw
  %i.la = tail call i64 @llvm.umin.i64(i64 %i.ky, i64 9223372036854775807)
  %i.lb = select i1 %i.kz, i64 9223372036854775807, i64 %i.la ; 3 uses
  %.not.i.i.i.i232 = icmp eq i64 %i.lb, 0
  br i1 %.not.i.i.i.i232, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i233, label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i230
  %i.lc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i233

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i233: ; preds = %bb.cg, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i230
  %i.ld = phi ptr [ %i.lc, %bb.cg ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i230 ] ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.kw ; 2 uses
  %i.lf = load i8, ptr %i.kl, align 8, !tbaa !153
  store i8 %i.lf, ptr %i.le, align 1, !tbaa !153
  %i.lg = icmp sgt i64 %i.kw, 0
  br i1 %i.lg, label %bb.ch, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i234

bb.ch:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i233
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ld, ptr align 1 %i.kt, i64 %i.kw, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i234

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i234: ; preds = %bb.ch, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i233
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 1 ; 2 uses
  %.not.i17.i.i.i235 = icmp eq ptr %i.kt, null
  br i1 %.not.i17.i.i.i235, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i236, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i234
  tail call void @_ZdlPv(ptr noundef nonnull %i.kt) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i236

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i236: ; preds = %bb.ci, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i234
  store ptr %i.ld, ptr %1, align 8, !tbaa !2781
  store ptr %i.lh, ptr %i.km, align 8, !tbaa !2783
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lb
  store ptr %i.li, ptr %i.ko, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit237

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit237: ; preds = %bb.cd, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i236
  %.pre.i.i.i249 = phi ptr [ %i.ks, %bb.cd ], [ %i.lh, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i236 ] ; 4 uses
  %i.lj = load i32, ptr %i.f, align 8, !tbaa !3951
  %i.lk = sub nsw i32 %i.lj, %i.e                 ; 2 uses
  %i.ll = icmp sgt i32 %i.lk, 0
  br i1 %i.ll, label %.lr.ph.i.i.i248, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit237
  %i.lm = load i32, ptr %i.g, align 4
  %i.ln = and i32 %i.lm, 255
  %.not124 = icmp eq i32 %i.ln, 2
  br i1 %.not124, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit325, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lo = load ptr, ptr %i.ko, align 8, !tbaa !2788
  %.not.i.i.i239 = icmp eq ptr %.pre.i.i.i249, %i.lo
  br i1 %.not.i.i.i239, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store i8 48, ptr %.pre.i.i.i249, align 1, !tbaa !153
  %i.lp = load ptr, ptr %i.km, align 8, !tbaa !2783
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 1
  store ptr %i.lq, ptr %i.km, align 8, !tbaa !2783
  br label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit325

bb.cm:                                            ; preds = %bb.ck
  %i.lr = load ptr, ptr %1, align 8, !tbaa !2781  ; 4 uses
  %i.ls = ptrtoint ptr %.pre.i.i.i249 to i64
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = sub i64 %i.ls, %i.lt                    ; 7 uses
  %i.lv = icmp eq i64 %i.lu, 9223372036854775807
  br i1 %i.lv, label %bb.cn, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i240

bb.cn:                                            ; preds = %bb.cm
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i240: ; preds = %bb.cm
  %.sroa.speculated.i.i.i.i.i241 = tail call i64 @llvm.umax.i64(i64 %i.lu, i64 1)
  %i.lw = add i64 %.sroa.speculated.i.i.i.i.i241, %i.lu ; 2 uses
  %i.lx = icmp ult i64 %i.lw, %i.lu
  %i.ly = tail call i64 @llvm.umin.i64(i64 %i.lw, i64 9223372036854775807)
  %i.lz = select i1 %i.lx, i64 9223372036854775807, i64 %i.ly ; 3 uses
  %.not.i.i.i.i.i242 = icmp eq i64 %i.lz, 0
  br i1 %.not.i.i.i.i.i242, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i243, label %bb.co

bb.co:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i240
  %i.ma = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lz) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i243

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i243: ; preds = %bb.co, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i240
  %i.mb = phi ptr [ %i.ma, %bb.co ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i240 ] ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.lu ; 2 uses
  store i8 48, ptr %i.mc, align 1, !tbaa !153
  %i.md = icmp sgt i64 %i.lu, 0
  br i1 %i.md, label %bb.cp, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i244

bb.cp:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i243
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mb, ptr align 1 %i.lr, i64 %i.lu, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i244

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i244: ; preds = %bb.cp, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i243
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 1
  %.not.i17.i.i.i.i245 = icmp eq ptr %i.lr, null
  br i1 %.not.i17.i.i.i.i245, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i246, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i244
  tail call void @_ZdlPv(ptr noundef nonnull %i.lr) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i246

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i246: ; preds = %bb.cq, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i244
  store ptr %i.mb, ptr %1, align 8, !tbaa !2781
  store ptr %i.me, ptr %i.km, align 8, !tbaa !2783
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.lz
  store ptr %i.mf, ptr %i.ko, align 8, !tbaa !2788
  br label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit325

.lr.ph.i.i.i248:                                  ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit237, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i252
  %i.mg = phi ptr [ %i.mz, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i252 ], [ %.pre.i.i.i249, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit237 ] ; 3 uses
  %.03.i.i.i250 = phi i32 [ %i.na, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i252 ], [ %i.lk, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit237 ] ; 2 uses
  %i.mh = load ptr, ptr %i.ko, align 8, !tbaa !2788
  %.not.i.i.i.i.i251 = icmp eq ptr %i.mg, %i.mh
  br i1 %.not.i.i.i.i.i251, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i.i.i248
  store i8 48, ptr %i.mg, align 1, !tbaa !153
  %i.mi = load ptr, ptr %i.km, align 8, !tbaa !2783
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 1 ; 2 uses
  store ptr %i.mj, ptr %i.km, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i252

bb.cs:                                            ; preds = %.lr.ph.i.i.i248
  %i.mk = load ptr, ptr %1, align 8, !tbaa !2781  ; 4 uses
  %i.ml = ptrtoint ptr %i.mg to i64
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = sub i64 %i.ml, %i.mm                    ; 7 uses
  %i.mo = icmp eq i64 %i.mn, 9223372036854775807
  br i1 %i.mo, label %bb.ct, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i253

bb.ct:                                            ; preds = %bb.cs
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i253: ; preds = %bb.cs
  %.sroa.speculated.i.i.i.i.i.i.i254 = tail call i64 @llvm.umax.i64(i64 %i.mn, i64 1)
  %i.mp = add i64 %.sroa.speculated.i.i.i.i.i.i.i254, %i.mn ; 2 uses
  %i.mq = icmp ult i64 %i.mp, %i.mn
  %i.mr = tail call i64 @llvm.umin.i64(i64 %i.mp, i64 9223372036854775807)
  %i.ms = select i1 %i.mq, i64 9223372036854775807, i64 %i.mr ; 3 uses
  %.not.i.i.i.i.i.i.i255 = icmp eq i64 %i.ms, 0
  br i1 %.not.i.i.i.i.i.i.i255, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i256, label %bb.cu

bb.cu:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i253
  %i.mt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ms) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i256

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i256: ; preds = %bb.cu, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i253
  %i.mu = phi ptr [ %i.mt, %bb.cu ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i253 ] ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mn ; 2 uses
  store i8 48, ptr %i.mv, align 1, !tbaa !153
  %i.mw = icmp sgt i64 %i.mn, 0
  br i1 %i.mw, label %bb.cv, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i257

bb.cv:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i256
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mu, ptr align 1 %i.mk, i64 %i.mn, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i257

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i257: ; preds = %bb.cv, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i256
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i258 = icmp eq ptr %i.mk, null
  br i1 %.not.i17.i.i.i.i.i.i258, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i259, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i257
  tail call void @_ZdlPv(ptr noundef nonnull %i.mk) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i259

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i259: ; preds = %bb.cw, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i257
  store ptr %i.mu, ptr %1, align 8, !tbaa !2781
  store ptr %i.mx, ptr %i.km, align 8, !tbaa !2783
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.ms
  store ptr %i.my, ptr %i.ko, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i252

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i252: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i259, %bb.cr
  %i.mz = phi ptr [ %i.mj, %bb.cr ], [ %i.mx, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i259 ]
  %i.na = add nsw i32 %.03.i.i.i250, -1
  %i.nb = icmp sgt i32 %.03.i.i.i250, 1
  br i1 %i.nb, label %.lr.ph.i.i.i248, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit325, !llvm.loop !3952

bb.cx:                                            ; preds = %bb.ai
  %i.nc = icmp sgt i32 %i.e, 0
  br i1 %i.nc, label %bb.cy, label %bb.fi

bb.cy:                                            ; preds = %bb.cx
  %i.nd = and i32 %i.h, 16711680
  %i.ne = icmp ne i32 %i.nd, 0
  %i.nf = icmp samesign ugt i32 %i.e, 3
  %or.cond5 = select i1 %i.ne, i1 %i.nf, i1 false
  br i1 %or.cond5, label %bb.cz, label %.lr.ph.i.i287

bb.cz:                                            ; preds = %bb.cy
  %i.ng = urem i32 %i.e, 3                        ; 2 uses
  %i.nh = icmp eq i32 %i.ng, 0
  %spec.select126 = select i1 %i.nh, i32 3, i32 %i.ng
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 30
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.pre.i274.pre.pre = load ptr, ptr %5, align 8, !tbaa !2783
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit285
  %.pre.i273.pre = phi ptr [ %.pre.i274.pre.pre, %bb.cz ], [ %i.pb, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit285 ] ; 4 uses
  %.0101469 = phi i32 [ %spec.select126, %bb.cz ], [ 3, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit285 ] ; 2 uses
  %.0104468 = phi i32 [ 0, %bb.cz ], [ %i.pd, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit285 ] ; 3 uses
  %i.ni = icmp sgt i32 %.0104468, 0
  br i1 %i.ni, label %bb.db, label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit270

bb.db:                                            ; preds = %bb.da
  %7 = load i16, ptr %.shift, align 2
  %i.nj = trunc i16 %7 to i8                      ; 2 uses
  %i.nk = load ptr, ptr %6, align 8, !tbaa !2788
  %.not.i.i262 = icmp eq ptr %.pre.i273.pre, %i.nk
  br i1 %.not.i.i262, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i8 %i.nj, ptr %.pre.i273.pre, align 1, !tbaa !153
  %i.nl = load ptr, ptr %5, align 8, !tbaa !2783
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 1 ; 2 uses
  store ptr %i.nm, ptr %5, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit270

bb.dd:                                            ; preds = %bb.db
  %i.nn = load ptr, ptr %1, align 8, !tbaa !2781  ; 4 uses
  %i.no = ptrtoint ptr %.pre.i273.pre to i64
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = sub i64 %i.no, %i.np                    ; 7 uses
  %i.nr = icmp eq i64 %i.nq, 9223372036854775807
  br i1 %i.nr, label %bb.de, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i263

bb.de:                                            ; preds = %bb.dd
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i263: ; preds = %bb.dd
  %.sroa.speculated.i.i.i.i264 = tail call i64 @llvm.umax.i64(i64 %i.nq, i64 1)
  %i.ns = add i64 %.sroa.speculated.i.i.i.i264, %i.nq ; 2 uses
  %i.nt = icmp ult i64 %i.ns, %i.nq
  %i.nu = tail call i64 @llvm.umin.i64(i64 %i.ns, i64 9223372036854775807)
  %i.nv = select i1 %i.nt, i64 9223372036854775807, i64 %i.nu ; 3 uses
  %.not.i.i.i.i265 = icmp eq i64 %i.nv, 0
  br i1 %.not.i.i.i.i265, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i266, label %bb.df

bb.df:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i263
  %i.nw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nv) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i266

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i266: ; preds = %bb.df, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i263
  %i.nx = phi ptr [ %i.nw, %bb.df ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i263 ] ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.nq ; 2 uses
  store i8 %i.nj, ptr %i.ny, align 1, !tbaa !153
  %i.nz = icmp sgt i64 %i.nq, 0
  br i1 %i.nz, label %bb.dg, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i267

bb.dg:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i266
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.nx, ptr align 1 %i.nn, i64 %i.nq, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i267

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i267: ; preds = %bb.dg, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i266
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 1 ; 2 uses
  %.not.i17.i.i.i268 = icmp eq ptr %i.nn, null
  br i1 %.not.i17.i.i.i268, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i269, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i267
  tail call void @_ZdlPv(ptr noundef nonnull %i.nn) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i269

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i269: ; preds = %bb.dh, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i267
  store ptr %i.nx, ptr %1, align 8, !tbaa !2781
  store ptr %i.oa, ptr %5, align 8, !tbaa !2783
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.nv
  store ptr %i.ob, ptr %6, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit270

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit270: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i269, %bb.dc, %bb.da
  %.pre.i273 = phi ptr [ %i.oa, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i269 ], [ %i.nm, %bb.dc ], [ %.pre.i273.pre, %bb.da ]
  %i.oc = load ptr, ptr %0, align 8, !tbaa !3942
  %i.od = sext i32 %.0104468 to i64
  %i.oe = getelementptr inbounds i8, ptr %i.oc, i64 %i.od ; 2 uses
  %i.of = zext nneg i32 %.0101469 to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.of
  br label %bb.di

bb.di:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i276, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit270
  %i.oh = phi ptr [ %.pre.i273, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit270 ], [ %i.pb, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i276 ] ; 3 uses
  %.07.i.i274 = phi ptr [ %i.oe, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit270 ], [ %i.pc, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i276 ] ; 2 uses
  %i.oi = load i8, ptr %.07.i.i274, align 1, !tbaa !153 ; 2 uses
  %i.oj = load ptr, ptr %6, align 8, !tbaa !2788
  %.not.i.i.i.i.i275 = icmp eq ptr %i.oh, %i.oj
  br i1 %.not.i.i.i.i.i275, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  store i8 %i.oi, ptr %i.oh, align 1, !tbaa !153
  %i.ok = load ptr, ptr %5, align 8, !tbaa !2783
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 1 ; 2 uses
  store ptr %i.ol, ptr %5, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i276

bb.dk:                                            ; preds = %bb.di
  %i.om = load ptr, ptr %1, align 8, !tbaa !2781  ; 4 uses
  %i.on = ptrtoint ptr %i.oh to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo                    ; 7 uses
  %i.oq = icmp eq i64 %i.op, 9223372036854775807
  br i1 %i.oq, label %bb.dl, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i278

bb.dl:                                            ; preds = %bb.dk
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i278: ; preds = %bb.dk
  %.sroa.speculated.i.i.i.i.i.i.i279 = tail call i64 @llvm.umax.i64(i64 %i.op, i64 1)
  %i.or = add i64 %.sroa.speculated.i.i.i.i.i.i.i279, %i.op ; 2 uses
  %i.os = icmp ult i64 %i.or, %i.op
  %i.ot = tail call i64 @llvm.umin.i64(i64 %i.or, i64 9223372036854775807)
  %i.ou = select i1 %i.os, i64 9223372036854775807, i64 %i.ot ; 3 uses
  %.not.i.i.i.i.i.i.i280 = icmp eq i64 %i.ou, 0
  br i1 %.not.i.i.i.i.i.i.i280, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i281, label %bb.dm

bb.dm:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i278
  %i.ov = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ou) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i281

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i281: ; preds = %bb.dm, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i278
  %i.ow = phi ptr [ %i.ov, %bb.dm ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i278 ] ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.op ; 2 uses
  store i8 %i.oi, ptr %i.ox, align 1, !tbaa !153
  %i.oy = icmp sgt i64 %i.op, 0
  br i1 %i.oy, label %bb.dn, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i282

bb.dn:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i281
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ow, ptr align 1 %i.om, i64 %i.op, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i282

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i282: ; preds = %bb.dn, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i281
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i283 = icmp eq ptr %i.om, null
  br i1 %.not.i17.i.i.i.i.i.i283, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i284, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i282
  tail call void @_ZdlPv(ptr noundef nonnull %i.om) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i284

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i284: ; preds = %bb.do, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i282
  store ptr %i.ow, ptr %1, align 8, !tbaa !2781
  store ptr %i.oz, ptr %5, align 8, !tbaa !2783
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ou
  store ptr %i.pa, ptr %6, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i276

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i276: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i284, %bb.dj
  %i.pb = phi ptr [ %i.oz, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i284 ], [ %i.ol, %bb.dj ] ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.07.i.i274, i64 1 ; 2 uses
  %.not.i.i277 = icmp eq ptr %i.pc, %i.og
  br i1 %.not.i.i277, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit285, label %bb.di, !llvm.loop !3578

_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit285: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i276
  %i.pd = add nsw i32 %.0101469, %.0104468        ; 2 uses
  %i.pe = icmp slt i32 %i.pd, %i.e
  br i1 %i.pe, label %bb.da, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit300, !llvm.loop !3954

.lr.ph.i.i287:                                    ; preds = %bb.cy
  %i.pf = load ptr, ptr %0, align 8, !tbaa !3942  ; 2 uses
  %i.pg = zext nneg i32 %i.e to i64
  %8 = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pg
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.pre.i289 = load ptr, ptr %9, align 8, !tbaa !2783
  br label %bb.dp

bb.dp:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i291, %.lr.ph.i.i287
  %i.pi = phi ptr [ %.pre.i289, %.lr.ph.i.i287 ], [ %i.qc, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i291 ] ; 3 uses
  %.07.i.i289 = phi ptr [ %i.pf, %.lr.ph.i.i287 ], [ %i.qd, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i291 ] ; 2 uses
  %i.pj = load i8, ptr %.07.i.i289, align 1, !tbaa !153 ; 2 uses
  %i.pk = load ptr, ptr %i.ph, align 8, !tbaa !2788
  %.not.i.i.i.i.i290 = icmp eq ptr %i.pi, %i.pk
  br i1 %.not.i.i.i.i.i290, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store i8 %i.pj, ptr %i.pi, align 1, !tbaa !153
  %i.pl = load ptr, ptr %9, align 8, !tbaa !2783
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 1 ; 2 uses
  store ptr %i.pm, ptr %9, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i291

bb.dr:                                            ; preds = %bb.dp
  %i.pn = load ptr, ptr %1, align 8, !tbaa !2781  ; 4 uses
  %i.po = ptrtoint ptr %i.pi to i64
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = sub i64 %i.po, %i.pp                    ; 7 uses
  %i.pr = icmp eq i64 %i.pq, 9223372036854775807
  br i1 %i.pr, label %bb.ds, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i293

bb.ds:                                            ; preds = %bb.dr
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i293: ; preds = %bb.dr
  %.sroa.speculated.i.i.i.i.i.i.i294 = tail call i64 @llvm.umax.i64(i64 %i.pq, i64 1)
  %i.ps = add i64 %.sroa.speculated.i.i.i.i.i.i.i294, %i.pq ; 2 uses
  %i.pt = icmp ult i64 %i.ps, %i.pq
  %i.pu = tail call i64 @llvm.umin.i64(i64 %i.ps, i64 9223372036854775807)
  %i.pv = select i1 %i.pt, i64 9223372036854775807, i64 %i.pu ; 3 uses
  %.not.i.i.i.i.i.i.i295 = icmp eq i64 %i.pv, 0
  br i1 %.not.i.i.i.i.i.i.i295, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i296, label %bb.dt

bb.dt:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i293
  %i.pw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pv) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i296

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i296: ; preds = %bb.dt, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i293
  %i.px = phi ptr [ %i.pw, %bb.dt ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i293 ] ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.pq ; 2 uses
  store i8 %i.pj, ptr %i.py, align 1, !tbaa !153
  %i.pz = icmp sgt i64 %i.pq, 0
  br i1 %i.pz, label %bb.du, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i297

bb.du:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i296
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.px, ptr align 1 %i.pn, i64 %i.pq, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i297

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i297: ; preds = %bb.du, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i296
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i298 = icmp eq ptr %i.pn, null
  br i1 %.not.i17.i.i.i.i.i.i298, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i299, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i297
  tail call void @_ZdlPv(ptr noundef nonnull %i.pn) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i299

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i299: ; preds = %bb.dv, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i297
  store ptr %i.px, ptr %1, align 8, !tbaa !2781
  store ptr %i.qa, ptr %9, align 8, !tbaa !2783
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.pv
  store ptr %i.qb, ptr %i.ph, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i291

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i291: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i299, %bb.dq
  %i.qc = phi ptr [ %i.qa, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i299 ], [ %i.pm, %bb.dq ] ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.07.i.i289, i64 1 ; 2 uses
  %.not.i.i292 = icmp eq ptr %i.qd, %8
  br i1 %.not.i.i292, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit300, label %bb.dp, !llvm.loop !3578

_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit300: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i291, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit285
  %i.qe = phi ptr [ %i.pb, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit285 ], [ %i.qc, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i291 ] ; 6 uses
  %i.qf = load i32, ptr %i.g, align 4
  %i.qg = and i32 %i.qf, 536870912
  %.not = icmp eq i32 %i.qg, 0
  br i1 %.not, label %bb.dw, label %bb.en

bb.dw:                                            ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit300
  %i.qh = load i32, ptr %i.a, align 8, !tbaa !3946 ; 3 uses
  %i.qi = icmp sgt i32 %i.qh, %i.e
  br i1 %i.qi, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.dw
  %i.qj = load ptr, ptr %0, align 8, !tbaa !3942
  %i.qk = zext nneg i32 %i.qh to i64
  %i.ql = zext nneg i32 %i.e to i64
  br label %bb.dx

bb.dx:                                            ; preds = %.lr.ph, %bb.dy
  %indvars.iv = phi i64 [ %i.qk, %.lr.ph ], [ %indvars.iv.next, %bb.dy ] ; 3 uses
  %i.qm = getelementptr i8, ptr %i.qj, i64 %indvars.iv
  %i.qn = getelementptr i8, ptr %i.qm, i64 -1
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !153
  %i.qp = icmp eq i8 %i.qo, 48
  br i1 %i.qp, label %bb.dy, label %.critedge.loopexit

bb.dy:                                            ; preds = %bb.dx
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.qq = icmp sgt i64 %indvars.iv.next, %i.ql
  br i1 %i.qq, label %bb.dx, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit325, !llvm.loop !3955

.critedge.loopexit:                               ; preds = %bb.dx
  %i.qr = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.dw
  %.0105.lcssa = phi i32 [ %i.qh, %bb.dw ], [ %i.qr, %.critedge.loopexit ] ; 2 uses
  %.not122 = icmp eq i32 %.0105.lcssa, %i.e
  br i1 %.not122, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit325, label %bb.dz

bb.dz:                                            ; preds = %.critedge
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !2788
  %.not.i.i302 = icmp eq ptr %i.qe, %i.qv
  br i1 %.not.i.i302, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.qw = load i8, ptr %i.qs, align 8, !tbaa !153
  store i8 %i.qw, ptr %i.qe, align 1, !tbaa !153
  %i.qx = load ptr, ptr %i.qt, align 8, !tbaa !2783
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 1 ; 2 uses
  store ptr %i.qy, ptr %i.qt, align 8, !tbaa !2783
  br label %.lr.ph.i.i312

bb.eb:                                            ; preds = %bb.dz
  %i.qz = load ptr, ptr %1, align 8, !tbaa !2781  ; 4 uses
  %i.ra = ptrtoint ptr %i.qe to i64
  %i.rb = ptrtoint ptr %i.qz to i64
  %i.rc = sub i64 %i.ra, %i.rb                    ; 7 uses
  %i.rd = icmp eq i64 %i.rc, 9223372036854775807
  br i1 %i.rd, label %bb.ec, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i303

bb.ec:                                            ; preds = %bb.eb
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i303: ; preds = %bb.eb
  %.sroa.speculated.i.i.i.i304 = tail call i64 @llvm.umax.i64(i64 %i.rc, i64 1)
  %i.re = add i64 %.sroa.speculated.i.i.i.i304, %i.rc ; 2 uses
  %i.rf = icmp ult i64 %i.re, %i.rc
  %i.rg = tail call i64 @llvm.umin.i64(i64 %i.re, i64 9223372036854775807)
  %i.rh = select i1 %i.rf, i64 9223372036854775807, i64 %i.rg ; 3 uses
  %.not.i.i.i.i305 = icmp eq i64 %i.rh, 0
  br i1 %.not.i.i.i.i305, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i306, label %bb.ed

bb.ed:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i303
  %i.ri = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rh) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i306

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i306: ; preds = %bb.ed, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i303
  %i.rj = phi ptr [ %i.ri, %bb.ed ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i303 ] ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rc ; 2 uses
  %i.rl = load i8, ptr %i.qs, align 8, !tbaa !153
  store i8 %i.rl, ptr %i.rk, align 1, !tbaa !153
  %i.rm = icmp sgt i64 %i.rc, 0
  br i1 %i.rm, label %bb.ee, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i307

bb.ee:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i306
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.rj, ptr align 1 %i.qz, i64 %i.rc, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i307

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i307: ; preds = %bb.ee, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i306
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 1 ; 2 uses
  %.not.i17.i.i.i308 = icmp eq ptr %i.qz, null
  br i1 %.not.i17.i.i.i308, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i309, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i307
  tail call void @_ZdlPv(ptr noundef nonnull %i.qz) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i309

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i309: ; preds = %bb.ef, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i307
  store ptr %i.rj, ptr %1, align 8, !tbaa !2781
  store ptr %i.rn, ptr %i.qt, align 8, !tbaa !2783
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rh
  store ptr %i.ro, ptr %i.qu, align 8, !tbaa !2788
  br label %.lr.ph.i.i312

.lr.ph.i.i312:                                    ; preds = %bb.ea, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i309
  %.pre.i313 = phi ptr [ %i.rn, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i309 ], [ %i.qy, %bb.ea ]
  %i.rp = load ptr, ptr %0, align 8, !tbaa !3942  ; 2 uses
  %i.rq = sext i32 %.0105.lcssa to i64
  %i.rr = getelementptr inbounds i8, ptr %i.rp, i64 %i.rq
  %i.rs = zext nneg i32 %i.e to i64
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rs
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.eg

bb.eg:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i316, %.lr.ph.i.i312
  %i.rw = phi ptr [ %.pre.i313, %.lr.ph.i.i312 ], [ %i.sq, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i316 ] ; 3 uses
  %.07.i.i314 = phi ptr [ %i.rt, %.lr.ph.i.i312 ], [ %i.sr, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i316 ] ; 2 uses
  %i.rx = load i8, ptr %.07.i.i314, align 1, !tbaa !153 ; 2 uses
  %i.ry = load ptr, ptr %i.rv, align 8, !tbaa !2788
  %.not.i.i.i.i.i315 = icmp eq ptr %i.rw, %i.ry
  br i1 %.not.i.i.i.i.i315, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  store i8 %i.rx, ptr %i.rw, align 1, !tbaa !153
  %i.rz = load ptr, ptr %i.ru, align 8, !tbaa !2783
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 1 ; 2 uses
  store ptr %i.sa, ptr %i.ru, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i316

bb.ei:                                            ; preds = %bb.eg
  %i.sb = load ptr, ptr %1, align 8, !tbaa !2781  ; 4 uses
  %i.sc = ptrtoint ptr %i.rw to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd                    ; 7 uses
  %i.sf = icmp eq i64 %i.se, 9223372036854775807
  br i1 %i.sf, label %bb.ej, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i318

bb.ej:                                            ; preds = %bb.ei
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #51
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i318: ; preds = %bb.ei
  %.sroa.speculated.i.i.i.i.i.i.i319 = tail call i64 @llvm.umax.i64(i64 %i.se, i64 1)
  %i.sg = add i64 %.sroa.speculated.i.i.i.i.i.i.i319, %i.se ; 2 uses
  %i.sh = icmp ult i64 %i.sg, %i.se
  %i.si = tail call i64 @llvm.umin.i64(i64 %i.sg, i64 9223372036854775807)
  %i.sj = select i1 %i.sh, i64 9223372036854775807, i64 %i.si ; 3 uses
  %.not.i.i.i.i.i.i.i320 = icmp eq i64 %i.sj, 0
  br i1 %.not.i.i.i.i.i.i.i320, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i321, label %bb.ek

bb.ek:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i318
  %i.sk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sj) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i321

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i321: ; preds = %bb.ek, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i318
  %i.sl = phi ptr [ %i.sk, %bb.ek ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i318 ] ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.se ; 2 uses
  store i8 %i.rx, ptr %i.sm, align 1, !tbaa !153
  %i.sn = icmp sgt i64 %i.se, 0
  br i1 %i.sn, label %bb.el, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i322

bb.el:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i321
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.sl, ptr align 1 %i.sb, i64 %i.se, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i322

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i322: ; preds = %bb.el, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i321
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i323 = icmp eq ptr %i.sb, null
  br i1 %.not.i17.i.i.i.i.i.i323, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i324, label %bb.em

bb.em:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i322
  tail call void @_ZdlPv(ptr noundef nonnull %i.sb) #49
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i324

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i324: ; preds = %bb.em, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i322
  store ptr %i.sl, ptr %1, align 8, !tbaa !2781
  store ptr %i.so, ptr %i.ru, align 8, !tbaa !2783
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sj
  store ptr %i.sp, ptr %i.rv, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i316

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i316: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i324, %bb.eh
  %i.sq = phi ptr [ %i.so, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i324 ], [ %i.sa, %bb.eh ]
  %i.sr = getelementptr inbounds nuw i8, ptr %.07.i.i314, i64 1 ; 2 uses
  %.not.i.i317 = icmp eq ptr %i.sr, %i.rr
  br i1 %.not.i.i317, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit325, label %bb.eg, !llvm.loop !3578

bb.en:                                            ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit300
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !2788
end_hunk_1
