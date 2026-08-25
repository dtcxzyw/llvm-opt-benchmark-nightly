Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectHelper?download=true
inline.NumInlined: 343
inline.NumDeleted: 184
begin_hunk_0_@_ZNK12SelectHelper11FDIsSetReadEi:bb.a
  %.0 = phi i1 [ %i.af, %bb.d ], [ false, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK12SelectHelper12FDIsSetWriteEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18, !noalias !38 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32, !noalias !38 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !33, !noalias !38 ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = mul i32 %1, 37
  %.01119.i.i.i = and i32 %i.g, %i.h              ; 3 uses
  %i.i = zext i32 %.01119.i.i.i to i64            ; 2 uses
  %i.j = lshr i64 %i.i, 5
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17, !noalias !47
  %i.m = and i32 %.01119.i.i.i, 31
  %i.n = lshr i32 %i.l, %i.m
  %i.o = trunc i32 %i.n to i1
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit.thread, !prof !35

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.p = add nuw i32 %.01120.i.i.i, 1
  %.011.i.i.i = and i32 %i.p, %i.g                ; 3 uses
  %i.q = zext i32 %.011.i.i.i to i64              ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17, !noalias !47
  %i.u = and i32 %.011.i.i.i, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit.thread, !prof !36

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.q, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %.01120.i.i.i = phi i32 [ %.011.i.i.i, %bb.c ], [ %.01119.i.i.i, %bb.b ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17, !noalias !47
  %i.aa = icmp eq i32 %1, %i.z
  br i1 %i.aa, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit, label %bb.c, !prof !37

_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit: ; preds = %.lr.ph.i.i.i
  %.pre = zext i32 %i.e to i64
  %i.ab = icmp samesign eq i64 %i.x, %.pre
  br i1 %i.ab, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit
  %.sink15.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink15.i.i, i64 4
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = and i8 %i.ad, 16
  %i.af = icmp ne i8 %i.ae, 0
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit.thread

_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit, %bb.d
  %.0 = phi i1 [ %i.af, %bb.d ], [ false, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK12SelectHelper12FDIsSetErrorEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18, !noalias !48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32, !noalias !48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !33, !noalias !48 ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = mul i32 %1, 37
  %.01119.i.i.i = and i32 %i.g, %i.h              ; 3 uses
  %i.i = zext i32 %.01119.i.i.i to i64            ; 2 uses
  %i.j = lshr i64 %i.i, 5
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17, !noalias !57
  %i.m = and i32 %.01119.i.i.i, 31
  %i.n = lshr i32 %i.l, %i.m
  %i.o = trunc i32 %i.n to i1
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit.thread, !prof !35

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.p = add nuw i32 %.01120.i.i.i, 1
  %.011.i.i.i = and i32 %i.p, %i.g                ; 3 uses
  %i.q = zext i32 %.011.i.i.i to i64              ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17, !noalias !57
  %i.u = and i32 %.011.i.i.i, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit.thread, !prof !36

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.q, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %.01120.i.i.i = phi i32 [ %.011.i.i.i, %bb.c ], [ %.01119.i.i.i, %bb.b ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17, !noalias !57
  %i.aa = icmp eq i32 %1, %i.z
  br i1 %i.aa, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit, label %bb.c, !prof !37

_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit: ; preds = %.lr.ph.i.i.i
  %.pre = zext i32 %i.e to i64
  %i.ab = icmp samesign eq i64 %i.x, %.pre
  br i1 %i.ab, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit
  %.sink15.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink15.i.i, i64 4
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = and i8 %i.ad, 32
  %i.af = icmp ne i8 %i.ae, 0
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit.thread

_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit, %bb.d
  %.0 = phi i1 [ %i.af, %bb.d ], [ false, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4findERKi.exit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12SelectHelper6SelectEv(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.lldb_private::Status", align 8 ; 29 uses
  %3 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %4 = alloca %struct.fd_set, align 8             ; 4 uses
  %5 = alloca %struct.fd_set, align 8             ; 4 uses
  %6 = alloca %struct.fd_set, align 8             ; 4 uses
  %7 = alloca %struct.timeval, align 8            ; 8 uses
  %8 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %i.a = load ptr, ptr %1, align 8, !tbaa !18, !noalias !58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32, !noalias !58 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !33, !noalias !58 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !61, !noalias !58
  %i.h = icmp eq i32 %i.g, 0
  %i.i = zext i32 %i.e to i64                     ; 4 uses
  %.idx392 = shl nuw nsw i64 %i.i, 3              ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.h, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i64 %i.i, 31
  %i.k = lshr i64 %i.j, 5                         ; 2 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !17, !noalias !62 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.n = icmp eq i64 %i.k, 1
  br i1 %i.n, label %.critedge.thread, label %.lr.ph435

.lr.ph.i.i.i:                                     ; preds = %.lr.ph435
  %i.o = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.k
  br i1 %i.p, label %.critedge.thread, label %.lr.ph435, !llvm.loop !65

.lr.ph435:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.q = phi i64 [ %i.o, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !17, !noalias !62 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !65

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph435
  %i.u = shl i64 %i.q, 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E5beginEv.exit: ; preds = %bb.b, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.l, %bb.b ], [ %i.s, %._crit_edge.i.loopexit.i.i ]
  %i.v = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.w = shl nuw nsw i32 %i.v, 3
  %.idx = zext nneg i32 %i.w to i64
  %i.x = or disjoint i64 %.012.lcssa.i.i.i, %.idx ; 2 uses
  %.not222252.not = icmp eq i64 %i.x, %.idx392
  br i1 %.not222252.not, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E5beginEv.exit
  %i.y = add nuw nsw i64 %i.i, 31
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm16DenseMapIteratorIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EELb0EEppEv.exit
  %.sroa.4198.0261 = phi i8 [ 0, %.lr.ph ], [ %.sroa.4198.1, %_ZN4llvm16DenseMapIteratorIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EELb0EEppEv.exit ]
  %.sroa.4194.0259 = phi i8 [ 0, %.lr.ph ], [ %.sroa.4194.1, %_ZN4llvm16DenseMapIteratorIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EELb0EEppEv.exit ]
  %.pn = phi i64 [ %i.x, %.lr.ph ], [ %i.bq, %_ZN4llvm16DenseMapIteratorIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.0184.0256 = phi i32 [ undef, %.lr.ph ], [ %storemerge.in.in.i109, %_ZN4llvm16DenseMapIteratorIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EELb0EEppEv.exit ]
  %.sroa.5186.0255 = phi i1 [ false, %.lr.ph ], [ true, %_ZN4llvm16DenseMapIteratorIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EELb0EEppEv.exit ]
  %.sroa.4190.0253 = phi i8 [ 0, %.lr.ph ], [ %.sroa.4190.1, %_ZN4llvm16DenseMapIteratorIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EELb0EEppEv.exit ]
  %.sroa.0181.0253 = getelementptr i8, ptr %i.a, i64 %.pn ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0181.0253, i64 4 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, -57
  store i8 %i.ac, ptr %i.aa, align 1
  %i.ad = load i32, ptr %.sroa.0181.0253, align 4, !tbaa !67 ; 4 uses
  %i.ae = icmp slt i32 %i.ad, 1024                ; 2 uses
  call void @_ZN12lldb_private12_lldb_assertEbPKcS1_S1_jRSt9once_flag(i1 noundef zeroext %i.ae, ptr noundef nonnull @.str, ptr noundef nonnull @__FUNCTION__._ZN12SelectHelper6SelectEv, ptr noundef nonnull @.str.1, i32 noundef 112, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN12SelectHelper6SelectEvE10_once_flag) #13
  br i1 %i.ae, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void (ptr, ptr, ...) @_ZN12lldb_private6Status25FromErrorStringWithFormatEPKcz(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %3, ptr noundef nonnull @.str.2, i32 noundef %i.ad) #13
  %i.af = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) #13 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.ag = load ptr, ptr %2, align 8, !tbaa !70
  store ptr %i.ag, ptr %0, align 8, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !73
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !76 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !78 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !76
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !79
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !79
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !78
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.as = load i8, ptr %i.aa, align 4             ; 3 uses
  %i.at = trunc i8 %i.as to i1
  %.sroa.4198.1 = select i1 %i.at, i8 1, i8 %.sroa.4198.0261 ; 2 uses
  %i.au = and i8 %i.as, 2
  %.not = icmp eq i8 %i.au, 0
  %.sroa.4194.1 = select i1 %.not, i8 %.sroa.4194.0259, i8 1 ; 2 uses
  %i.av = and i8 %i.as, 4
  %.not92 = icmp eq i8 %i.av, 0
  %.sroa.4190.1 = select i1 %.not92, i8 %.sroa.4190.0253, i8 1 ; 2 uses
  %.sroa.speculated.i108 = call i32 @llvm.smax.i32(i32 %.sroa.0184.0256, i32 range(i32 -2147483648, 1024) %i.ad)
  %storemerge.in.in.i109 = select i1 %.sroa.5186.0255, i32 %.sroa.speculated.i108, i32 %i.ad ; 2 uses
  %i.aw = add i64 %.pn, 8
  %i.ax = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.not.i.i = icmp ult i64 %i.ax, %i.i
  br i1 %.not.i.i, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ay = lshr i64 %i.ax, 5                       ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !17
  %i.bb = trunc nuw i64 %i.ax to i32
  %i.bc = and i32 %i.bb, 31
  %i.bd = shl nsw i32 -1, %i.bc
  %i.be = and i32 %i.ba, %i.bd                    ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EELb0EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.bg = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %i.z
  br i1 %i.bh, label %.critedge, label %.lr.ph436

.lr.ph.i.i:                                       ; preds = %.lr.ph436
  %i.bi = add i64 %i.bk, 1                        ; 2 uses
  %i.bj = icmp eq i64 %i.bi, %i.z
  br i1 %i.bj, label %.critedge, label %.lr.ph436, !llvm.loop !65

.lr.ph436:                                        ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.bk = phi i64 [ %i.bi, %.lr.ph.i.i ], [ %i.bg, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !17 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EELb0EEppEv.exit, !llvm.loop !65

_ZN4llvm16DenseMapIteratorIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EELb0EEppEv.exit: ; preds = %.lr.ph436, %bb.g
  %.012.lcssa.i.i = phi i64 [ %i.ay, %bb.g ], [ %i.bk, %.lr.ph436 ]
  %.0.lcssa.i.i = phi i32 [ %i.be, %bb.g ], [ %i.bm, %.lr.ph436 ]
  %i.bo = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = shl i64 %.012.lcssa.i.i, 8
  %i.bp = shl nuw nsw i32 %i.bo, 3
  %.idx393 = zext nneg i32 %i.bp to i64
  %i.bq = or disjoint i64 %.idx.i.i, %.idx393     ; 2 uses
  %.not222 = icmp eq i64 %i.bq, %.idx392
  br i1 %.not222, label %.critedge, label %bb.c

bb.h:                                             ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.br = phi i64 [ %i.ao, %bb.e ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !78
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !76
  store i64 0, ptr %i.bs, align 8, !tbaa !78
  store i8 0, ptr %i.al, align 8, !tbaa !79
  br label %bb.ao

.critedge:                                        ; preds = %bb.f, %_ZN4llvm16DenseMapIteratorIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EELb0EEppEv.exit, %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.bu = add i32 %storemerge.in.in.i109, 1
  %i.bv = trunc nuw i8 %.sroa.4194.1 to i1
  %i.bw = trunc nuw i8 %.sroa.4190.1 to i1
  %i.bx = trunc nuw i8 %.sroa.4198.1 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  br i1 %i.bx, label %.preheader227.preheader, label %.loopexit228

.critedge.thread:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader, %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E5beginEv.exit
  call void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef nonnull @.str.3)
  br label %bb.ao

.preheader227.preheader:                          ; preds = %.critedge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !16
  br label %.loopexit228

.loopexit228:                                     ; preds = %.preheader227.preheader, %.critedge
  %.072 = phi ptr [ null, %.critedge ], [ %4, %.preheader227.preheader ] ; 3 uses
  br i1 %i.bv, label %.preheader225.preheader, label %.loopexit226

.preheader225.preheader:                          ; preds = %.loopexit228
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false), !tbaa !16
  br label %.loopexit226

.loopexit226:                                     ; preds = %.preheader225.preheader, %.loopexit228
  %.073 = phi ptr [ null, %.loopexit228 ], [ %5, %.preheader225.preheader ] ; 3 uses
  br i1 %i.bw, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, i8 0, i64 128, i1 false), !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.loopexit226
  %.074 = phi ptr [ null, %.loopexit226 ], [ %6, %.preheader.preheader ] ; 3 uses
  %i.by = load ptr, ptr %1, align 8, !tbaa !18, !noalias !80
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !32, !noalias !80 ; 4 uses
  %i.ca = load i32, ptr %i.d, align 4, !tbaa !33, !noalias !80 ; 2 uses
  %i.cb = load i32, ptr %i.f, align 8, !tbaa !61, !noalias !80
  %i.cc = icmp eq i32 %i.cb, 0
  %i.cd = zext i32 %i.ca to i64                   ; 4 uses
  %.idx395 = shl nuw nsw i64 %i.cd, 3             ; 2 uses
  %.not.i.not.i.i112 = icmp eq i32 %i.ca, 0
  %or.cond220 = select i1 %i.cc, i1 true, i1 %.not.i.not.i.i112
  br i1 %or.cond220, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.ce = add nuw nsw i64 %i.cd, 31
  %i.cf = lshr i64 %i.ce, 5                       ; 2 uses
  %i.cg = load i32, ptr %i.bz, align 4, !tbaa !17, !noalias !83 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.i.i118.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E5beginEv.exit121

.lr.ph.i.i.i118.preheader:                        ; preds = %bb.i
  %i.ci = icmp eq i64 %i.cf, 1
  br i1 %i.ci, label %._crit_edge, label %.lr.ph444

.lr.ph.i.i.i118:                                  ; preds = %.lr.ph444
  %i.cj = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %i.ck = icmp eq i64 %i.cj, %i.cf
  br i1 %i.ck, label %._crit_edge, label %.lr.ph444, !llvm.loop !65

.lr.ph444:                                        ; preds = %.lr.ph.i.i.i118.preheader, %.lr.ph.i.i.i118
  %i.cl = phi i64 [ %i.cj, %.lr.ph.i.i.i118 ], [ 1, %.lr.ph.i.i.i118.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !17, !noalias !83 ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph.i.i.i118, label %._crit_edge.i.loopexit.i.i120, !llvm.loop !65

._crit_edge.i.loopexit.i.i120:                    ; preds = %.lr.ph444
  %i.cp = shl i64 %i.cl, 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E5beginEv.exit121

_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E5beginEv.exit121: ; preds = %bb.i, %._crit_edge.i.loopexit.i.i120
  %.012.lcssa.i.i.i114 = phi i64 [ 0, %bb.i ], [ %i.cp, %._crit_edge.i.loopexit.i.i120 ]
  %.0.lcssa.i.i.i115 = phi i32 [ %i.cg, %bb.i ], [ %i.cn, %._crit_edge.i.loopexit.i.i120 ]
  %i.cq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i115, i1 true)
  %i.cr = shl nuw nsw i32 %i.cq, 3
  %.idx394 = zext nneg i32 %i.cr to i64
  %i.cs = or disjoint i64 %.012.lcssa.i.i.i114, %.idx394 ; 2 uses
  %.not223269 = icmp eq i64 %i.cs, %.idx395
  br i1 %.not223269, label %._crit_edge, label %.lr.ph271

.lr.ph271:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E5beginEv.exit121
  %i.ct = add nuw nsw i64 %i.cd, 31
  %i.cu = lshr i64 %i.ct, 5                       ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %.lr.ph.i.i.i118, %bb.p, %_ZN4llvm16DenseMapIteratorIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EELb0EEppEv.exit130, %.lr.ph.i.i128.preheader, %.lr.ph.i.i128, %.lr.ph.i.i.i118.preheader, %.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E5beginEv.exit121
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.r

bb.j:                                             ; preds = %.lr.ph271, %_ZN4llvm16DenseMapIteratorIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EELb0EEppEv.exit130
  %.pn397 = phi i64 [ %i.cs, %.lr.ph271 ], [ %i.ey, %_ZN4llvm16DenseMapIteratorIiN12SelectHelper6FDInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EELb0EEppEv.exit130 ] ; 2 uses
  %.sroa.0172.0270 = getelementptr i8, ptr %i.by, i64 %.pn397 ; 2 uses
  %i.cy = load i32, ptr %.sroa.0172.0270, align 4, !tbaa !67 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0172.0270, i64 4 ; 3 uses
  %i.da = load i8, ptr %i.cz, align 4             ; 2 uses
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dc = srem i32 %i.cy, 64
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = shl nuw i64 1, %i.dd
  %i.df = sdiv i32 %i.cy, 64
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %.072, i64 %i.dg ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !16
  %i.dj = or i64 %i.di, %i.de
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !16
  %.pre298 = load i8, ptr %i.cz, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dk = phi i8 [ %.pre298, %bb.k ], [ %i.da, %bb.j ] ; 2 uses
  %i.dl = and i8 %i.dk, 2
  %.not98 = icmp eq i8 %i.dl, 0
  br i1 %.not98, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = srem i32 %i.cy, 64
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = sdiv i32 %i.cy, 64
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %.073, i64 %i.dq ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !16
  %i.dt = or i64 %i.ds, %i.do
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !16
  %.pre299 = load i8, ptr %i.cz, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.du = phi i8 [ %.pre299, %bb.m ], [ %i.dk, %bb.l ]
  %i.dv = and i8 %i.du, 4
  %.not99 = icmp eq i8 %i.dv, 0
  br i1 %.not99, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_0
