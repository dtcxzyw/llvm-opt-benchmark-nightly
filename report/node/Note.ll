Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/Note?download=true
inline.NumInlined: 4190
inline.NumDeleted: 1542
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZNK4LIEF3ELF4Note7read_atItEENS_6resultIT_EEm:bb.a
  %i.n = or disjoint i64 %i.m, 4294967296
  br label %_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread

_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.n, %bb.b ], [ 1, %bb.a ]
  ret i64 %.sroa.3.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZNK4LIEF3ELF4Note7read_atIsEENS_6resultIT_EEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noalias !68 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !noalias !68
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ugt i64 %1, %i.g
  %i.i = add i64 %1, 2
  %i.j = icmp ugt i64 %i.i, %i.g
  %or.cond.i = or i1 %i.h, %i.j
  %.not = icmp eq ptr %i.b, null
  %or.cond = or i1 %.not, %or.cond.i
  br i1 %or.cond, label %_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %1
  %i.l = load i16, ptr %i.k, align 1
  %i.m = zext i16 %i.l to i64
  %i.n = or disjoint i64 %i.m, 4294967296
  br label %_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread

_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.n, %bb.b ], [ 1, %bb.a ]
  ret i64 %.sroa.3.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZNK4LIEF3ELF4Note7read_atIjEENS_6resultIT_EEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noalias !71 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !noalias !71
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ugt i64 %1, %i.g
  %i.i = add i64 %1, 4
  %i.j = icmp ugt i64 %i.i, %i.g
  %or.cond.i = or i1 %i.h, %i.j
  %.not = icmp eq ptr %i.b, null
  %or.cond = or i1 %.not, %or.cond.i
  br i1 %or.cond, label %_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %1
  %i.l = load i32, ptr %i.k, align 1
  %i.m = zext i32 %i.l to i64
  %i.n = or disjoint i64 %i.m, 4294967296
  br label %_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread

_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.n, %bb.b ], [ 1, %bb.a ]
  ret i64 %.sroa.3.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZNK4LIEF3ELF4Note7read_atIiEENS_6resultIT_EEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noalias !74 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !noalias !74
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ugt i64 %1, %i.g
  %i.i = add i64 %1, 4
  %i.j = icmp ugt i64 %i.i, %i.g
  %or.cond.i = or i1 %i.h, %i.j
  %.not = icmp eq ptr %i.b, null
  %or.cond = or i1 %.not, %or.cond.i
  br i1 %or.cond, label %_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %1
  %i.l = load i32, ptr %i.k, align 1
  %i.m = zext i32 %i.l to i64
  %i.n = or disjoint i64 %i.m, 4294967296
  br label %_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread

_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.n, %bb.b ], [ 1, %bb.a ]
  ret i64 %.sroa.3.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { i64, i8 } @_ZNK4LIEF3ELF4Note7read_atImEENS_6resultIT_EEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noalias !77 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !noalias !77
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ugt i64 %1, %i.g
  %i.i = add i64 %1, 8
  %i.j = icmp ugt i64 %i.i, %i.g
  %or.cond.i = or i1 %i.h, %i.j
  %.not = icmp eq ptr %i.b, null
  %or.cond = or i1 %.not, %or.cond.i
  br i1 %or.cond, label %_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %1
  %i.l = load i64, ptr %i.k, align 1
  br label %_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread

_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread: ; preds = %bb.b, %bb.a
  %.sroa.3.sroa.2.0.i.i = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.04.0.insert.insert.i.i = phi i64 [ %i.l, %bb.b ], [ 1, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.04.0.insert.insert.i.i, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.sroa.2.0.i.i, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { i64, i8 } @_ZNK4LIEF3ELF4Note7read_atIlEENS_6resultIT_EEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noalias !80 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !noalias !80
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ugt i64 %1, %i.g
  %i.i = add i64 %1, 8
  %i.j = icmp ugt i64 %i.i, %i.g
  %or.cond.i = or i1 %i.h, %i.j
  %.not = icmp eq ptr %i.b, null
  %or.cond = or i1 %.not, %or.cond.i
  br i1 %or.cond, label %_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %1
  %i.l = load i64, ptr %i.k, align 1
  br label %_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread

_ZNK4LIEF12BinaryStream7peek_inEPvmmm.exit.thread: ; preds = %bb.b, %bb.a
  %.sroa.3.sroa.2.0.i.i = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.04.0.insert.insert.i.i = phi i64 [ %i.l, %bb.b ], [ 1, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.04.0.insert.insert.i.i, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.sroa.2.0.i.i, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN4LIEF3ELF4Note8write_atIbEENS_10ok_error_tEmRKT_(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.LIEF::vector_iostream", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !39

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25
  %.pre = load ptr, ptr %i.a, align 8             ; 3 uses
  %.pre19 = load ptr, ptr %i.b, align 8           ; 2 uses
  %.pre20 = ptrtoint ptr %.pre19 to i64
  %.pre21 = ptrtoint ptr %.pre to i64
  %i.j = icmp eq ptr %.pre19, %.pre
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi22 = phi i64 [ %.pre21, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %.pre-phi = phi i64 [ %.pre20, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.not.i.i.i.i2 = phi i1 [ %i.j, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.i, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.m = sub i64 %.pre-phi, %.pre-phi22           ; 11 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  %i.o = icmp eq i64 %i.m, 1
  br i1 %i.o, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  store i8 0, ptr %i.r, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.f

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread:         ; preds = %bb.e
  %i.s = load i8, ptr %i.k, align 1
  store i8 %i.s, ptr %i.l, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  store i8 0, ptr %i.v, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread
  %i.w = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.m
  br label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.y = icmp slt i64 %i.m, 0
  br i1 %i.y, label %bb.g, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4, !prof !41

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4:     ; preds = %bb.f
  %i.z = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.m ; 2 uses
  %4 = icmp samesign ugt i64 %i.m, 1
  br i1 %4, label %bb.h, label %bb.j, !prof !42

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.l, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.ab = phi ptr [ %i.v, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.r, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ac = phi ptr [ %i.u, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.q, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ad = phi ptr [ %i.t, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.p, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ae = getelementptr inbounds i8, ptr null, i64 %i.m
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  %i.af = phi ptr [ %i.x, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.aa, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ag = phi ptr [ %i.w, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.z, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ] ; 2 uses
  %i.ah = phi ptr [ %i.v, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.r, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ai = phi ptr [ %i.u, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.q, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.aj = phi ptr [ %i.t, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.p, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ak = load i8, ptr %i.l, align 1
  store i8 %i.ak, ptr %i.ag, align 1
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5:               ; preds = %bb.i, %bb.h, %bb.j
  %i.al = phi ptr [ %i.r, %bb.h ], [ %i.ab, %bb.i ], [ %i.ah, %bb.j ]
  %i.am = phi ptr [ %i.q, %bb.h ], [ %i.ac, %bb.i ], [ %i.ai, %bb.j ] ; 3 uses
  %i.an = phi ptr [ %i.p, %bb.h ], [ %i.ad, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ao = phi ptr [ %i.aa, %bb.h ], [ %i.ae, %bb.i ], [ %i.af, %bb.j ] ; 3 uses
  %i.ap = phi ptr [ %i.z, %bb.h ], [ null, %bb.i ], [ %i.ag, %bb.j ] ; 6 uses
  %i.aq = icmp eq ptr %i.ap, %i.ao
  br i1 %i.aq, label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef %i.ap, i64 noundef %i.at) #26 ; 0 uses
  br label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5, %bb.k
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.ax) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 %1, ptr %i.ay, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.az = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %i.az, align 8
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = add i64 %1, 1                           ; 2 uses
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.m

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bi = sub nuw i64 %i.bg, %i.bf
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 noundef %i.bi)
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bj = load i8, ptr %i.al, align 8, !range !43, !noundef !44
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = load i8, ptr %2, align 1, !range !43, !noundef !44
  %i.bm = load ptr, ptr %i.am, align 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %1
  store i8 %i.bl, ptr %i.bo, align 1
  br label %_ZN4LIEF15vector_iostream5writeIbvEERS0_RKT_.exit

bb.o:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.am, align 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %1
  %i.bs = load i8, ptr %2, align 1
  store i8 %i.bs, ptr %i.br, align 1
  br label %_ZN4LIEF15vector_iostream5writeIbvEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeIbvEERS0_RKT_.exit: ; preds = %bb.n, %bb.o
  %i.bt = load i64, ptr %i.ay, align 8
  %i.bu = add nsw i64 %i.bt, 1
  store i64 %i.bu, ptr %i.ay, align 8
  %i.bv = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = load ptr, ptr %i.an, align 8
  store ptr %i.by, ptr %i.a, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cb = load <2 x ptr>, ptr %i.bz, align 8
  store <2 x ptr> %i.cb, ptr %i.b, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit: ; preds = %_ZN4LIEF15vector_iostream5writeIbvEERS0_RKT_.exit
  %i.cc = ptrtoint ptr %i.bx to i64
  %i.cd = ptrtoint ptr %i.bv to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ce) #27
  %.pr = load ptr, ptr %i.an, align 8             ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.cf = load ptr, ptr %i.ca, align 8
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %.pr to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ci) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZN4LIEF15vector_iostream5writeIbvEERS0_RKT_.exit, %bb.p, %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.cj = load ptr, ptr %3, align 8               ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cj, %i.cl
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cs, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.cj, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %i.cm = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cs, %i.cl
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.ct = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i ], [ %i.cj, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF15vector_iostreamD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #27
  br label %_ZN4LIEF15vector_iostreamD2Ev.exit

_ZN4LIEF15vector_iostreamD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i.i.i7 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIhSaIhEED2Ev.exit8, label %bb.s

bb.s:                                             ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit8

_ZNSt6vectorIhSaIhEED2Ev.exit8:                   ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit, %bb.s
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN4LIEF3ELF4Note8write_atIhEENS_10ok_error_tEmRKT_(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.LIEF::vector_iostream", align 8 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !39

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25
  %.pre = load ptr, ptr %i.b, align 8             ; 3 uses
  %.pre19 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.pre20 = ptrtoint ptr %.pre19 to i64
  %.pre21 = ptrtoint ptr %.pre to i64
  %i.k = icmp eq ptr %.pre19, %.pre
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi22 = phi i64 [ %.pre21, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ]
  %.pre-phi = phi i64 [ %.pre20, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %.not.i.i.i.i2 = phi i1 [ %i.k, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.j, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.n = sub i64 %.pre-phi, %.pre-phi22           ; 11 uses
  %i.o = icmp sgt i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  %i.p = icmp eq i64 %i.n, 1
  br i1 %i.p, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  store i8 0, ptr %i.s, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.f

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread:         ; preds = %bb.e
  %i.t = load i8, ptr %i.l, align 1
  store i8 %i.t, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  store i8 0, ptr %i.w, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n
  br label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.z = icmp slt i64 %i.n, 0
  br i1 %i.z, label %bb.g, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4, !prof !41

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4:     ; preds = %bb.f
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.n ; 2 uses
  %4 = icmp samesign ugt i64 %i.n, 1
  br i1 %4, label %bb.h, label %bb.j, !prof !42

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.ac = phi ptr [ %i.w, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.s, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ad = phi ptr [ %i.v, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.r, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ae = phi ptr [ %i.u, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.q, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.n
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  %i.ag = phi ptr [ %i.y, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.ab, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ah = phi ptr [ %i.x, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.aa, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ] ; 2 uses
  %i.ai = phi ptr [ %i.w, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.s, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.aj = phi ptr [ %i.v, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.r, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ak = phi ptr [ %i.u, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.q, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.al = load i8, ptr %i.m, align 1
  store i8 %i.al, ptr %i.ah, align 1
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5:               ; preds = %bb.i, %bb.h, %bb.j
  %i.am = phi ptr [ %i.s, %bb.h ], [ %i.ac, %bb.i ], [ %i.ai, %bb.j ]
  %i.an = phi ptr [ %i.r, %bb.h ], [ %i.ad, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ao = phi ptr [ %i.q, %bb.h ], [ %i.ae, %bb.i ], [ %i.ak, %bb.j ] ; 3 uses
  %i.ap = phi ptr [ %i.ab, %bb.h ], [ %i.af, %bb.i ], [ %i.ag, %bb.j ] ; 3 uses
  %i.aq = phi ptr [ %i.aa, %bb.h ], [ null, %bb.i ], [ %i.ah, %bb.j ] ; 6 uses
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef %i.aq, i64 noundef %i.au) #26 ; 0 uses
  br label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5, %bb.k
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ay) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 %1, ptr %i.az, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ba = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ba, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = add i64 %1, 1                           ; 2 uses
  %i.bi = icmp ult i64 %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.m

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bj = sub nuw i64 %i.bh, %i.bg
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.bj)
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bk = load i8, ptr %i.am, align 8, !range !43, !noundef !44
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bm = load i8, ptr %2, align 1
  store i8 %i.bm, ptr %i.a, align 1
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.a) #26
  %i.bn = load ptr, ptr %i.an, align 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %1
  %i.bq = load i8, ptr %i.a, align 1
  store i8 %i.bq, ptr %i.bp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit

bb.o:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.an, align 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %1
  %i.bu = load i8, ptr %2, align 1
  store i8 %i.bu, ptr %i.bt, align 1
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit: ; preds = %bb.n, %bb.o
  %i.bv = load i64, ptr %i.az, align 8
  %i.bw = add nsw i64 %i.bv, 1
  store i64 %i.bw, ptr %i.az, align 8
  %i.bx = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.ao, align 8
  store ptr %i.ca, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cd = load <2 x ptr>, ptr %i.cb, align 8
  store <2 x ptr> %i.cd, ptr %i.c, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit: ; preds = %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = ptrtoint ptr %i.bx to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cg) #27
  %.pr = load ptr, ptr %i.ao, align 8             ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.ch = load ptr, ptr %i.cc, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %.pr to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ck) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit, %bb.p, %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.cl = load ptr, ptr %3, align 8               ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cl, %i.cn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cu, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %i.co = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cu, %i.cn
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.cv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF15vector_iostreamD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #27
  br label %_ZN4LIEF15vector_iostreamD2Ev.exit

_ZN4LIEF15vector_iostreamD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i.i.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIhSaIhEED2Ev.exit8, label %bb.s

bb.s:                                             ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit8

_ZNSt6vectorIhSaIhEED2Ev.exit8:                   ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit, %bb.s
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN4LIEF3ELF4Note8write_atIaEENS_10ok_error_tEmRKT_(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.LIEF::vector_iostream", align 8 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !39

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25
  %.pre = load ptr, ptr %i.b, align 8             ; 3 uses
  %.pre19 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.pre20 = ptrtoint ptr %.pre19 to i64
  %.pre21 = ptrtoint ptr %.pre to i64
  %i.k = icmp eq ptr %.pre19, %.pre
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi22 = phi i64 [ %.pre21, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ]
  %.pre-phi = phi i64 [ %.pre20, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %.not.i.i.i.i2 = phi i1 [ %i.k, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.j, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.n = sub i64 %.pre-phi, %.pre-phi22           ; 11 uses
  %i.o = icmp sgt i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  %i.p = icmp eq i64 %i.n, 1
  br i1 %i.p, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  store i8 0, ptr %i.s, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.f

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread:         ; preds = %bb.e
  %i.t = load i8, ptr %i.l, align 1
  store i8 %i.t, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  store i8 0, ptr %i.w, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n
  br label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.z = icmp slt i64 %i.n, 0
  br i1 %i.z, label %bb.g, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4, !prof !41

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4:     ; preds = %bb.f
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.n ; 2 uses
  %4 = icmp samesign ugt i64 %i.n, 1
  br i1 %4, label %bb.h, label %bb.j, !prof !42

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.ac = phi ptr [ %i.w, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.s, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ad = phi ptr [ %i.v, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.r, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ae = phi ptr [ %i.u, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.q, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.n
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  %i.ag = phi ptr [ %i.y, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.ab, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ah = phi ptr [ %i.x, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.aa, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ] ; 2 uses
  %i.ai = phi ptr [ %i.w, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.s, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.aj = phi ptr [ %i.v, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.r, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ak = phi ptr [ %i.u, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.q, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.al = load i8, ptr %i.m, align 1
  store i8 %i.al, ptr %i.ah, align 1
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5:               ; preds = %bb.i, %bb.h, %bb.j
  %i.am = phi ptr [ %i.s, %bb.h ], [ %i.ac, %bb.i ], [ %i.ai, %bb.j ]
  %i.an = phi ptr [ %i.r, %bb.h ], [ %i.ad, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ao = phi ptr [ %i.q, %bb.h ], [ %i.ae, %bb.i ], [ %i.ak, %bb.j ] ; 3 uses
  %i.ap = phi ptr [ %i.ab, %bb.h ], [ %i.af, %bb.i ], [ %i.ag, %bb.j ] ; 3 uses
  %i.aq = phi ptr [ %i.aa, %bb.h ], [ null, %bb.i ], [ %i.ah, %bb.j ] ; 6 uses
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef %i.aq, i64 noundef %i.au) #26 ; 0 uses
  br label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5, %bb.k
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ay) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 %1, ptr %i.az, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ba = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ba, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = add i64 %1, 1                           ; 2 uses
  %i.bi = icmp ult i64 %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.m

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bj = sub nuw i64 %i.bh, %i.bg
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.bj)
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bk = load i8, ptr %i.am, align 8, !range !43, !noundef !44
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bm = load i8, ptr %2, align 1
  store i8 %i.bm, ptr %i.a, align 1
  call void @_ZN4LIEF11swap_endianIaEEvPT_(ptr noundef nonnull %i.a) #26
  %i.bn = load ptr, ptr %i.an, align 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %1
  %i.bq = load i8, ptr %i.a, align 1
  store i8 %i.bq, ptr %i.bp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN4LIEF15vector_iostream5writeIavEERS0_RKT_.exit

bb.o:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.an, align 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %1
  %i.bu = load i8, ptr %2, align 1
  store i8 %i.bu, ptr %i.bt, align 1
  br label %_ZN4LIEF15vector_iostream5writeIavEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeIavEERS0_RKT_.exit: ; preds = %bb.n, %bb.o
  %i.bv = load i64, ptr %i.az, align 8
  %i.bw = add nsw i64 %i.bv, 1
  store i64 %i.bw, ptr %i.az, align 8
  %i.bx = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.ao, align 8
  store ptr %i.ca, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cd = load <2 x ptr>, ptr %i.cb, align 8
  store <2 x ptr> %i.cd, ptr %i.c, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit: ; preds = %_ZN4LIEF15vector_iostream5writeIavEERS0_RKT_.exit
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = ptrtoint ptr %i.bx to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cg) #27
  %.pr = load ptr, ptr %i.ao, align 8             ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.ch = load ptr, ptr %i.cc, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %.pr to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ck) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZN4LIEF15vector_iostream5writeIavEERS0_RKT_.exit, %bb.p, %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.cl = load ptr, ptr %3, align 8               ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cl, %i.cn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cu, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %i.co = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cu, %i.cn
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.cv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF15vector_iostreamD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #27
  br label %_ZN4LIEF15vector_iostreamD2Ev.exit

_ZN4LIEF15vector_iostreamD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i.i.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIhSaIhEED2Ev.exit8, label %bb.s

bb.s:                                             ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit8

_ZNSt6vectorIhSaIhEED2Ev.exit8:                   ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit, %bb.s
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN4LIEF3ELF4Note8write_atItEENS_10ok_error_tEmRKT_(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %3 = alloca %"class.LIEF::vector_iostream", align 8 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !39

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25
  %.pre = load ptr, ptr %i.b, align 8             ; 3 uses
  %.pre19 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.pre20 = ptrtoint ptr %.pre19 to i64
  %.pre21 = ptrtoint ptr %.pre to i64
  %i.k = icmp eq ptr %.pre19, %.pre
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi22 = phi i64 [ %.pre21, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ]
  %.pre-phi = phi i64 [ %.pre20, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %.not.i.i.i.i2 = phi i1 [ %i.k, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.j, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.n = sub i64 %.pre-phi, %.pre-phi22           ; 11 uses
  %i.o = icmp sgt i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  %i.p = icmp eq i64 %i.n, 1
  br i1 %i.p, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  store i8 0, ptr %i.s, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.f

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread:         ; preds = %bb.e
  %i.t = load i8, ptr %i.l, align 1
  store i8 %i.t, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  store i8 0, ptr %i.w, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n
  br label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.z = icmp slt i64 %i.n, 0
  br i1 %i.z, label %bb.g, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4, !prof !41

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4:     ; preds = %bb.f
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.n ; 2 uses
  %4 = icmp samesign ugt i64 %i.n, 1
  br i1 %4, label %bb.h, label %bb.j, !prof !42

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.ac = phi ptr [ %i.w, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.s, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ad = phi ptr [ %i.v, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.r, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ae = phi ptr [ %i.u, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.q, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.n
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  %i.ag = phi ptr [ %i.y, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.ab, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ah = phi ptr [ %i.x, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.aa, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ] ; 2 uses
  %i.ai = phi ptr [ %i.w, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.s, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.aj = phi ptr [ %i.v, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.r, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ak = phi ptr [ %i.u, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.q, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.al = load i8, ptr %i.m, align 1
  store i8 %i.al, ptr %i.ah, align 1
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5:               ; preds = %bb.i, %bb.h, %bb.j
  %i.am = phi ptr [ %i.s, %bb.h ], [ %i.ac, %bb.i ], [ %i.ai, %bb.j ]
  %i.an = phi ptr [ %i.r, %bb.h ], [ %i.ad, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ao = phi ptr [ %i.q, %bb.h ], [ %i.ae, %bb.i ], [ %i.ak, %bb.j ] ; 3 uses
  %i.ap = phi ptr [ %i.ab, %bb.h ], [ %i.af, %bb.i ], [ %i.ag, %bb.j ] ; 3 uses
  %i.aq = phi ptr [ %i.aa, %bb.h ], [ null, %bb.i ], [ %i.ah, %bb.j ] ; 6 uses
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef %i.aq, i64 noundef %i.au) #26 ; 0 uses
  br label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5, %bb.k
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ay) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 %1, ptr %i.az, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ba = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ba, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = add i64 %1, 2                           ; 2 uses
  %i.bi = icmp ult i64 %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.m

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bj = sub nuw i64 %i.bh, %i.bg
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.bj)
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bk = load i8, ptr %i.am, align 8, !range !43, !noundef !44
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bm = load i16, ptr %2, align 2
  store i16 %i.bm, ptr %i.a, align 2
  call void @_ZN4LIEF11swap_endianItEEvPT_(ptr noundef nonnull %i.a) #26
  %i.bn = load ptr, ptr %i.an, align 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %1
  %i.bq = load i16, ptr %i.a, align 2
  store i16 %i.bq, ptr %i.bp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN4LIEF15vector_iostream5writeItvEERS0_RKT_.exit

bb.o:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.an, align 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %1
  %i.bu = load i16, ptr %2, align 2
  store i16 %i.bu, ptr %i.bt, align 1
  br label %_ZN4LIEF15vector_iostream5writeItvEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeItvEERS0_RKT_.exit: ; preds = %bb.n, %bb.o
  %i.bv = load i64, ptr %i.az, align 8
  %i.bw = add nsw i64 %i.bv, 2
  store i64 %i.bw, ptr %i.az, align 8
  %i.bx = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.ao, align 8
  store ptr %i.ca, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cd = load <2 x ptr>, ptr %i.cb, align 8
  store <2 x ptr> %i.cd, ptr %i.c, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit: ; preds = %_ZN4LIEF15vector_iostream5writeItvEERS0_RKT_.exit
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = ptrtoint ptr %i.bx to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cg) #27
  %.pr = load ptr, ptr %i.ao, align 8             ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.ch = load ptr, ptr %i.cc, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %.pr to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ck) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZN4LIEF15vector_iostream5writeItvEERS0_RKT_.exit, %bb.p, %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.cl = load ptr, ptr %3, align 8               ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cl, %i.cn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cu, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %i.co = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cu, %i.cn
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.cv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF15vector_iostreamD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #27
  br label %_ZN4LIEF15vector_iostreamD2Ev.exit

_ZN4LIEF15vector_iostreamD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i.i.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIhSaIhEED2Ev.exit8, label %bb.s

bb.s:                                             ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit8

_ZNSt6vectorIhSaIhEED2Ev.exit8:                   ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit, %bb.s
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN4LIEF3ELF4Note8write_atIsEENS_10ok_error_tEmRKT_(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %3 = alloca %"class.LIEF::vector_iostream", align 8 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !39

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25
  %.pre = load ptr, ptr %i.b, align 8             ; 3 uses
  %.pre19 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.pre20 = ptrtoint ptr %.pre19 to i64
  %.pre21 = ptrtoint ptr %.pre to i64
  %i.k = icmp eq ptr %.pre19, %.pre
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi22 = phi i64 [ %.pre21, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ]
  %.pre-phi = phi i64 [ %.pre20, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %.not.i.i.i.i2 = phi i1 [ %i.k, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.j, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.n = sub i64 %.pre-phi, %.pre-phi22           ; 11 uses
  %i.o = icmp sgt i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  %i.p = icmp eq i64 %i.n, 1
  br i1 %i.p, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  store i8 0, ptr %i.s, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.f

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread:         ; preds = %bb.e
  %i.t = load i8, ptr %i.l, align 1
  store i8 %i.t, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  store i8 0, ptr %i.w, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n
  br label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.z = icmp slt i64 %i.n, 0
  br i1 %i.z, label %bb.g, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4, !prof !41

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4:     ; preds = %bb.f
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.n ; 2 uses
  %4 = icmp samesign ugt i64 %i.n, 1
  br i1 %4, label %bb.h, label %bb.j, !prof !42

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.ac = phi ptr [ %i.w, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.s, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ad = phi ptr [ %i.v, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.r, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ae = phi ptr [ %i.u, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.q, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.n
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  %i.ag = phi ptr [ %i.y, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.ab, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ah = phi ptr [ %i.x, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.aa, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ] ; 2 uses
  %i.ai = phi ptr [ %i.w, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.s, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.aj = phi ptr [ %i.v, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.r, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ak = phi ptr [ %i.u, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.q, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.al = load i8, ptr %i.m, align 1
  store i8 %i.al, ptr %i.ah, align 1
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5:               ; preds = %bb.i, %bb.h, %bb.j
  %i.am = phi ptr [ %i.s, %bb.h ], [ %i.ac, %bb.i ], [ %i.ai, %bb.j ]
  %i.an = phi ptr [ %i.r, %bb.h ], [ %i.ad, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ao = phi ptr [ %i.q, %bb.h ], [ %i.ae, %bb.i ], [ %i.ak, %bb.j ] ; 3 uses
  %i.ap = phi ptr [ %i.ab, %bb.h ], [ %i.af, %bb.i ], [ %i.ag, %bb.j ] ; 3 uses
  %i.aq = phi ptr [ %i.aa, %bb.h ], [ null, %bb.i ], [ %i.ah, %bb.j ] ; 6 uses
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef %i.aq, i64 noundef %i.au) #26 ; 0 uses
  br label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5, %bb.k
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ay) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 %1, ptr %i.az, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ba = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ba, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = add i64 %1, 2                           ; 2 uses
  %i.bi = icmp ult i64 %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.m

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bj = sub nuw i64 %i.bh, %i.bg
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.bj)
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bk = load i8, ptr %i.am, align 8, !range !43, !noundef !44
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bm = load i16, ptr %2, align 2
  store i16 %i.bm, ptr %i.a, align 2
  call void @_ZN4LIEF11swap_endianIsEEvPT_(ptr noundef nonnull %i.a) #26
  %i.bn = load ptr, ptr %i.an, align 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %1
  %i.bq = load i16, ptr %i.a, align 2
  store i16 %i.bq, ptr %i.bp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN4LIEF15vector_iostream5writeIsvEERS0_RKT_.exit

bb.o:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.an, align 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %1
  %i.bu = load i16, ptr %2, align 2
  store i16 %i.bu, ptr %i.bt, align 1
  br label %_ZN4LIEF15vector_iostream5writeIsvEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeIsvEERS0_RKT_.exit: ; preds = %bb.n, %bb.o
  %i.bv = load i64, ptr %i.az, align 8
  %i.bw = add nsw i64 %i.bv, 2
  store i64 %i.bw, ptr %i.az, align 8
  %i.bx = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.ao, align 8
  store ptr %i.ca, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cd = load <2 x ptr>, ptr %i.cb, align 8
  store <2 x ptr> %i.cd, ptr %i.c, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit: ; preds = %_ZN4LIEF15vector_iostream5writeIsvEERS0_RKT_.exit
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = ptrtoint ptr %i.bx to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cg) #27
  %.pr = load ptr, ptr %i.ao, align 8             ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.ch = load ptr, ptr %i.cc, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %.pr to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ck) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZN4LIEF15vector_iostream5writeIsvEERS0_RKT_.exit, %bb.p, %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.cl = load ptr, ptr %3, align 8               ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cl, %i.cn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cu, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %i.co = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cu, %i.cn
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.cv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF15vector_iostreamD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #27
  br label %_ZN4LIEF15vector_iostreamD2Ev.exit

_ZN4LIEF15vector_iostreamD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i.i.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIhSaIhEED2Ev.exit8, label %bb.s

bb.s:                                             ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit8

_ZNSt6vectorIhSaIhEED2Ev.exit8:                   ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit, %bb.s
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN4LIEF3ELF4Note8write_atIjEENS_10ok_error_tEmRKT_(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.LIEF::vector_iostream", align 8 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !39

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25
  %.pre = load ptr, ptr %i.b, align 8             ; 3 uses
  %.pre19 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.pre20 = ptrtoint ptr %.pre19 to i64
  %.pre21 = ptrtoint ptr %.pre to i64
  %i.k = icmp eq ptr %.pre19, %.pre
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi22 = phi i64 [ %.pre21, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ]
  %.pre-phi = phi i64 [ %.pre20, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %.not.i.i.i.i2 = phi i1 [ %i.k, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.j, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.n = sub i64 %.pre-phi, %.pre-phi22           ; 11 uses
  %i.o = icmp sgt i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  %i.p = icmp eq i64 %i.n, 1
  br i1 %i.p, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  store i8 0, ptr %i.s, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.f

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread:         ; preds = %bb.e
  %i.t = load i8, ptr %i.l, align 1
  store i8 %i.t, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  store i8 0, ptr %i.w, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n
  br label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.z = icmp slt i64 %i.n, 0
  br i1 %i.z, label %bb.g, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4, !prof !41

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4:     ; preds = %bb.f
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.n ; 2 uses
  %4 = icmp samesign ugt i64 %i.n, 1
  br i1 %4, label %bb.h, label %bb.j, !prof !42

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.ac = phi ptr [ %i.w, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.s, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ad = phi ptr [ %i.v, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.r, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ae = phi ptr [ %i.u, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.q, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.n
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  %i.ag = phi ptr [ %i.y, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.ab, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ah = phi ptr [ %i.x, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.aa, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ] ; 2 uses
  %i.ai = phi ptr [ %i.w, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.s, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.aj = phi ptr [ %i.v, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.r, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ak = phi ptr [ %i.u, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.q, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.al = load i8, ptr %i.m, align 1
  store i8 %i.al, ptr %i.ah, align 1
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5:               ; preds = %bb.i, %bb.h, %bb.j
  %i.am = phi ptr [ %i.s, %bb.h ], [ %i.ac, %bb.i ], [ %i.ai, %bb.j ]
  %i.an = phi ptr [ %i.r, %bb.h ], [ %i.ad, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ao = phi ptr [ %i.q, %bb.h ], [ %i.ae, %bb.i ], [ %i.ak, %bb.j ] ; 3 uses
  %i.ap = phi ptr [ %i.ab, %bb.h ], [ %i.af, %bb.i ], [ %i.ag, %bb.j ] ; 3 uses
  %i.aq = phi ptr [ %i.aa, %bb.h ], [ null, %bb.i ], [ %i.ah, %bb.j ] ; 6 uses
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef %i.aq, i64 noundef %i.au) #26 ; 0 uses
  br label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5, %bb.k
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ay) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 %1, ptr %i.az, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ba = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ba, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = add i64 %1, 4                           ; 2 uses
  %i.bi = icmp ult i64 %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.m

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bj = sub nuw i64 %i.bh, %i.bg
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.bj)
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bk = load i8, ptr %i.am, align 8, !range !43, !noundef !44
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bm = load i32, ptr %2, align 4
  store i32 %i.bm, ptr %i.a, align 4
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #26
  %i.bn = load ptr, ptr %i.an, align 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %1
  %i.bq = load i32, ptr %i.a, align 4
  store i32 %i.bq, ptr %i.bp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN4LIEF15vector_iostream5writeIjvEERS0_RKT_.exit

bb.o:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.an, align 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %1
  %i.bu = load i32, ptr %2, align 4
  store i32 %i.bu, ptr %i.bt, align 1
  br label %_ZN4LIEF15vector_iostream5writeIjvEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeIjvEERS0_RKT_.exit: ; preds = %bb.n, %bb.o
  %i.bv = load i64, ptr %i.az, align 8
  %i.bw = add nsw i64 %i.bv, 4
  store i64 %i.bw, ptr %i.az, align 8
  %i.bx = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.ao, align 8
  store ptr %i.ca, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cd = load <2 x ptr>, ptr %i.cb, align 8
  store <2 x ptr> %i.cd, ptr %i.c, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit: ; preds = %_ZN4LIEF15vector_iostream5writeIjvEERS0_RKT_.exit
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = ptrtoint ptr %i.bx to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cg) #27
  %.pr = load ptr, ptr %i.ao, align 8             ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.ch = load ptr, ptr %i.cc, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %.pr to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ck) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZN4LIEF15vector_iostream5writeIjvEERS0_RKT_.exit, %bb.p, %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.cl = load ptr, ptr %3, align 8               ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cl, %i.cn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cu, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %i.co = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cu, %i.cn
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.cv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF15vector_iostreamD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #27
  br label %_ZN4LIEF15vector_iostreamD2Ev.exit

_ZN4LIEF15vector_iostreamD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i.i.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIhSaIhEED2Ev.exit8, label %bb.s

bb.s:                                             ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit8

_ZNSt6vectorIhSaIhEED2Ev.exit8:                   ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit, %bb.s
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN4LIEF3ELF4Note8write_atIiEENS_10ok_error_tEmRKT_(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.LIEF::vector_iostream", align 8 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !39

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25
  %.pre = load ptr, ptr %i.b, align 8             ; 3 uses
  %.pre19 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.pre20 = ptrtoint ptr %.pre19 to i64
  %.pre21 = ptrtoint ptr %.pre to i64
  %i.k = icmp eq ptr %.pre19, %.pre
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi22 = phi i64 [ %.pre21, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ]
  %.pre-phi = phi i64 [ %.pre20, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %.not.i.i.i.i2 = phi i1 [ %i.k, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.j, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.n = sub i64 %.pre-phi, %.pre-phi22           ; 11 uses
  %i.o = icmp sgt i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  %i.p = icmp eq i64 %i.n, 1
  br i1 %i.p, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  store i8 0, ptr %i.s, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.f

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread:         ; preds = %bb.e
  %i.t = load i8, ptr %i.l, align 1
  store i8 %i.t, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  store i8 0, ptr %i.w, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n
  br label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.z = icmp slt i64 %i.n, 0
  br i1 %i.z, label %bb.g, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4, !prof !41

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4:     ; preds = %bb.f
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.n ; 2 uses
  %4 = icmp samesign ugt i64 %i.n, 1
  br i1 %4, label %bb.h, label %bb.j, !prof !42

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.ac = phi ptr [ %i.w, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.s, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ad = phi ptr [ %i.v, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.r, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ae = phi ptr [ %i.u, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.q, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.n
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  %i.ag = phi ptr [ %i.y, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.ab, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ah = phi ptr [ %i.x, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.aa, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ] ; 2 uses
  %i.ai = phi ptr [ %i.w, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.s, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.aj = phi ptr [ %i.v, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.r, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ak = phi ptr [ %i.u, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.q, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.al = load i8, ptr %i.m, align 1
  store i8 %i.al, ptr %i.ah, align 1
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5:               ; preds = %bb.i, %bb.h, %bb.j
  %i.am = phi ptr [ %i.s, %bb.h ], [ %i.ac, %bb.i ], [ %i.ai, %bb.j ]
  %i.an = phi ptr [ %i.r, %bb.h ], [ %i.ad, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ao = phi ptr [ %i.q, %bb.h ], [ %i.ae, %bb.i ], [ %i.ak, %bb.j ] ; 3 uses
  %i.ap = phi ptr [ %i.ab, %bb.h ], [ %i.af, %bb.i ], [ %i.ag, %bb.j ] ; 3 uses
  %i.aq = phi ptr [ %i.aa, %bb.h ], [ null, %bb.i ], [ %i.ah, %bb.j ] ; 6 uses
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef %i.aq, i64 noundef %i.au) #26 ; 0 uses
  br label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5, %bb.k
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ay) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 %1, ptr %i.az, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ba = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ba, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = add i64 %1, 4                           ; 2 uses
  %i.bi = icmp ult i64 %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.m

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bj = sub nuw i64 %i.bh, %i.bg
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.bj)
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bk = load i8, ptr %i.am, align 8, !range !43, !noundef !44
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bm = load i32, ptr %2, align 4
  store i32 %i.bm, ptr %i.a, align 4
  call void @_ZN4LIEF11swap_endianIiEEvPT_(ptr noundef nonnull %i.a) #26
  %i.bn = load ptr, ptr %i.an, align 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %1
  %i.bq = load i32, ptr %i.a, align 4
  store i32 %i.bq, ptr %i.bp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN4LIEF15vector_iostream5writeIivEERS0_RKT_.exit

bb.o:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.an, align 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %1
  %i.bu = load i32, ptr %2, align 4
  store i32 %i.bu, ptr %i.bt, align 1
  br label %_ZN4LIEF15vector_iostream5writeIivEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeIivEERS0_RKT_.exit: ; preds = %bb.n, %bb.o
  %i.bv = load i64, ptr %i.az, align 8
  %i.bw = add nsw i64 %i.bv, 4
  store i64 %i.bw, ptr %i.az, align 8
  %i.bx = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.ao, align 8
  store ptr %i.ca, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cd = load <2 x ptr>, ptr %i.cb, align 8
  store <2 x ptr> %i.cd, ptr %i.c, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit: ; preds = %_ZN4LIEF15vector_iostream5writeIivEERS0_RKT_.exit
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = ptrtoint ptr %i.bx to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cg) #27
  %.pr = load ptr, ptr %i.ao, align 8             ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.ch = load ptr, ptr %i.cc, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %.pr to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ck) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZN4LIEF15vector_iostream5writeIivEERS0_RKT_.exit, %bb.p, %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.cl = load ptr, ptr %3, align 8               ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cl, %i.cn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cu, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %i.co = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cu, %i.cn
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.cv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF15vector_iostreamD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #27
  br label %_ZN4LIEF15vector_iostreamD2Ev.exit

_ZN4LIEF15vector_iostreamD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i.i.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIhSaIhEED2Ev.exit8, label %bb.s

bb.s:                                             ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit8

_ZNSt6vectorIhSaIhEED2Ev.exit8:                   ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit, %bb.s
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN4LIEF3ELF4Note8write_atImEENS_10ok_error_tEmRKT_(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.LIEF::vector_iostream", align 8 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !39

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25
  %.pre = load ptr, ptr %i.b, align 8             ; 3 uses
  %.pre19 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.pre20 = ptrtoint ptr %.pre19 to i64
  %.pre21 = ptrtoint ptr %.pre to i64
  %i.k = icmp eq ptr %.pre19, %.pre
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi22 = phi i64 [ %.pre21, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ]
  %.pre-phi = phi i64 [ %.pre20, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %.not.i.i.i.i2 = phi i1 [ %i.k, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.j, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.n = sub i64 %.pre-phi, %.pre-phi22           ; 11 uses
  %i.o = icmp sgt i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  %i.p = icmp eq i64 %i.n, 1
  br i1 %i.p, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  store i8 0, ptr %i.s, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.f

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread:         ; preds = %bb.e
  %i.t = load i8, ptr %i.l, align 1
  store i8 %i.t, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  store i8 0, ptr %i.w, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n
  br label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.z = icmp slt i64 %i.n, 0
  br i1 %i.z, label %bb.g, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4, !prof !41

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4:     ; preds = %bb.f
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.n ; 2 uses
  %4 = icmp samesign ugt i64 %i.n, 1
  br i1 %4, label %bb.h, label %bb.j, !prof !42

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.ac = phi ptr [ %i.w, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.s, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ad = phi ptr [ %i.v, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.r, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ae = phi ptr [ %i.u, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.q, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.n
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  %i.ag = phi ptr [ %i.y, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.ab, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ah = phi ptr [ %i.x, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.aa, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ] ; 2 uses
  %i.ai = phi ptr [ %i.w, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.s, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.aj = phi ptr [ %i.v, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.r, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ak = phi ptr [ %i.u, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.q, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.al = load i8, ptr %i.m, align 1
  store i8 %i.al, ptr %i.ah, align 1
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5:               ; preds = %bb.i, %bb.h, %bb.j
  %i.am = phi ptr [ %i.s, %bb.h ], [ %i.ac, %bb.i ], [ %i.ai, %bb.j ]
  %i.an = phi ptr [ %i.r, %bb.h ], [ %i.ad, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ao = phi ptr [ %i.q, %bb.h ], [ %i.ae, %bb.i ], [ %i.ak, %bb.j ] ; 3 uses
  %i.ap = phi ptr [ %i.ab, %bb.h ], [ %i.af, %bb.i ], [ %i.ag, %bb.j ] ; 3 uses
  %i.aq = phi ptr [ %i.aa, %bb.h ], [ null, %bb.i ], [ %i.ah, %bb.j ] ; 6 uses
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef %i.aq, i64 noundef %i.au) #26 ; 0 uses
  br label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5, %bb.k
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ay) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 %1, ptr %i.az, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ba = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ba, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = add i64 %1, 8                           ; 2 uses
  %i.bi = icmp ult i64 %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.m

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bj = sub nuw i64 %i.bh, %i.bg
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.bj)
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bk = load i8, ptr %i.am, align 8, !range !43, !noundef !44
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bm = load i64, ptr %2, align 8
  store i64 %i.bm, ptr %i.a, align 8
  call void @_ZN4LIEF11swap_endianImEEvPT_(ptr noundef nonnull %i.a) #26
  %i.bn = load ptr, ptr %i.an, align 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %1
  %i.bq = load i64, ptr %i.a, align 8
  store i64 %i.bq, ptr %i.bp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN4LIEF15vector_iostream5writeImvEERS0_RKT_.exit

bb.o:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.an, align 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %1
  %i.bu = load i64, ptr %2, align 8
  store i64 %i.bu, ptr %i.bt, align 1
  br label %_ZN4LIEF15vector_iostream5writeImvEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeImvEERS0_RKT_.exit: ; preds = %bb.n, %bb.o
  %i.bv = load i64, ptr %i.az, align 8
  %i.bw = add nsw i64 %i.bv, 8
  store i64 %i.bw, ptr %i.az, align 8
  %i.bx = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.ao, align 8
  store ptr %i.ca, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cd = load <2 x ptr>, ptr %i.cb, align 8
  store <2 x ptr> %i.cd, ptr %i.c, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit: ; preds = %_ZN4LIEF15vector_iostream5writeImvEERS0_RKT_.exit
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = ptrtoint ptr %i.bx to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cg) #27
  %.pr = load ptr, ptr %i.ao, align 8             ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.ch = load ptr, ptr %i.cc, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %.pr to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ck) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZN4LIEF15vector_iostream5writeImvEERS0_RKT_.exit, %bb.p, %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.cl = load ptr, ptr %3, align 8               ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cl, %i.cn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cu, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %i.co = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cu, %i.cn
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.cv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF15vector_iostreamD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #27
  br label %_ZN4LIEF15vector_iostreamD2Ev.exit

_ZN4LIEF15vector_iostreamD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i.i.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIhSaIhEED2Ev.exit8, label %bb.s

bb.s:                                             ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit8

_ZNSt6vectorIhSaIhEED2Ev.exit8:                   ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit, %bb.s
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN4LIEF3ELF4Note8write_atIlEENS_10ok_error_tEmRKT_(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.LIEF::vector_iostream", align 8 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !39

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25
  %.pre = load ptr, ptr %i.b, align 8             ; 3 uses
  %.pre19 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.pre20 = ptrtoint ptr %.pre19 to i64
  %.pre21 = ptrtoint ptr %.pre to i64
  %i.k = icmp eq ptr %.pre19, %.pre
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi22 = phi i64 [ %.pre21, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ]
  %.pre-phi = phi i64 [ %.pre20, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %.not.i.i.i.i2 = phi i1 [ %i.k, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.j, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.n = sub i64 %.pre-phi, %.pre-phi22           ; 11 uses
  %i.o = icmp sgt i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  %i.p = icmp eq i64 %i.n, 1
  br i1 %i.p, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  store i8 0, ptr %i.s, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.f

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread:         ; preds = %bb.e
  %i.t = load i8, ptr %i.l, align 1
  store i8 %i.t, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  store i8 0, ptr %i.w, align 8
  br i1 %.not.i.i.i.i2, label %bb.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n
  br label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.z = icmp slt i64 %i.n, 0
  br i1 %i.z, label %bb.g, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4, !prof !41

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4:     ; preds = %bb.f
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.n ; 2 uses
  %4 = icmp samesign ugt i64 %i.n, 1
  br i1 %4, label %bb.h, label %bb.j, !prof !42

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.ac = phi ptr [ %i.w, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.s, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ad = phi ptr [ %i.v, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.r, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ae = phi ptr [ %i.u, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.q, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.n
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  %i.ag = phi ptr [ %i.y, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.ab, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ah = phi ptr [ %i.x, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.aa, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ] ; 2 uses
  %i.ai = phi ptr [ %i.w, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.s, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.aj = phi ptr [ %i.v, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.r, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.ak = phi ptr [ %i.u, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4.thread ], [ %i.q, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4 ]
  %i.al = load i8, ptr %i.m, align 1
  store i8 %i.al, ptr %i.ah, align 1
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5:               ; preds = %bb.i, %bb.h, %bb.j
  %i.am = phi ptr [ %i.s, %bb.h ], [ %i.ac, %bb.i ], [ %i.ai, %bb.j ]
  %i.an = phi ptr [ %i.r, %bb.h ], [ %i.ad, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ao = phi ptr [ %i.q, %bb.h ], [ %i.ae, %bb.i ], [ %i.ak, %bb.j ] ; 3 uses
  %i.ap = phi ptr [ %i.ab, %bb.h ], [ %i.af, %bb.i ], [ %i.ag, %bb.j ] ; 3 uses
  %i.aq = phi ptr [ %i.aa, %bb.h ], [ null, %bb.i ], [ %i.ah, %bb.j ] ; 6 uses
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef %i.aq, i64 noundef %i.au) #26 ; 0 uses
  br label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5, %bb.k
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ay) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 %1, ptr %i.az, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ba = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ba, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = add i64 %1, 8                           ; 2 uses
  %i.bi = icmp ult i64 %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.m

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bj = sub nuw i64 %i.bh, %i.bg
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.bj)
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bk = load i8, ptr %i.am, align 8, !range !43, !noundef !44
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bm = load i64, ptr %2, align 8
  store i64 %i.bm, ptr %i.a, align 8
  call void @_ZN4LIEF11swap_endianIlEEvPT_(ptr noundef nonnull %i.a) #26
  %i.bn = load ptr, ptr %i.an, align 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %1
  %i.bq = load i64, ptr %i.a, align 8
  store i64 %i.bq, ptr %i.bp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN4LIEF15vector_iostream5writeIlvEERS0_RKT_.exit

bb.o:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.an, align 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %1
  %i.bu = load i64, ptr %2, align 8
  store i64 %i.bu, ptr %i.bt, align 1
  br label %_ZN4LIEF15vector_iostream5writeIlvEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeIlvEERS0_RKT_.exit: ; preds = %bb.n, %bb.o
  %i.bv = load i64, ptr %i.az, align 8
  %i.bw = add nsw i64 %i.bv, 8
  store i64 %i.bw, ptr %i.az, align 8
  %i.bx = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.ao, align 8
  store ptr %i.ca, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cd = load <2 x ptr>, ptr %i.cb, align 8
  store <2 x ptr> %i.cd, ptr %i.c, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit: ; preds = %_ZN4LIEF15vector_iostream5writeIlvEERS0_RKT_.exit
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = ptrtoint ptr %i.bx to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cg) #27
  %.pr = load ptr, ptr %i.ao, align 8             ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.ch = load ptr, ptr %i.cc, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %.pr to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ck) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZN4LIEF15vector_iostream5writeIlvEERS0_RKT_.exit, %bb.p, %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.cl = load ptr, ptr %3, align 8               ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cl, %i.cn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cu, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %i.co = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cu, %i.cn
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.cv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i ], [ %i.cl, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF15vector_iostreamD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #27
  br label %_ZN4LIEF15vector_iostreamD2Ev.exit

_ZN4LIEF15vector_iostreamD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i.i.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIhSaIhEED2Ev.exit8, label %bb.s

bb.s:                                             ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit8

_ZNSt6vectorIhSaIhEED2Ev.exit8:                   ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit, %bb.s
  ret i64 4294967296
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { ptr, i8 } @_ZN4LIEF3ELF4Note15type_to_sectionENS1_4TYPEE(i32 noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %.not.i.i.i.i.i.i = icmp sgt i32 %0, 8
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 41
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i.i.i.i.not = icmp eq i32 %0, 42
end_hunk_0
begin_hunk_1_@_ZN4LIEF6to_hexIN3tcb4spanIKhLm18446744073709551615EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_m:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !113
  store i64 0, ptr %i.m, align 8, !noalias !113
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.l, align 8, !noalias !113
  store ptr %i.n, ptr %4, align 8, !noalias !113
  store i64 500, ptr %i.k, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !113
  store ptr @.str.188, ptr %3, align 8, !noalias !113
  store i64 7, ptr %.sroa.2.0..sroa_idx.i14.i, align 8, !noalias !113
  store i32 0, ptr %i.o, align 8, !noalias !113
  store ptr %4, ptr %i.p, align 8, !noalias !113
  store i64 2, ptr %i.q, align 8, !noalias !113
  store ptr %5, ptr %.sroa.2.0..sroa_idx.i15.i, align 8, !noalias !113
  store ptr null, ptr %i.r, align 8, !noalias !113
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.188, i64 7, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !113
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.ab = load i64, ptr %i.m, align 8, !noalias !115 ; 6 uses
  %i.ac = icmp ult i64 %i.ab, 4611686018427387903
  call void @llvm.assume(i1 %i.ac)
  %i.ad = load ptr, ptr %4, align 8, !noalias !115 ; 3 uses
  store ptr %i.s, ptr %6, align 8, !alias.scope !115
  %i.ae = icmp eq ptr %i.ad, null
  %i.af = icmp ne i64 %i.ab, 0
  %or.cond.i.i.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !115
  store i64 %i.ab, ptr %i.a, align 8, !noalias !115
  %i.ag = icmp samesign ugt i64 %i.ab, 15
  br i1 %i.ag, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.ah, ptr %6, align 8, !alias.scope !115
  %i.ai = load i64, ptr %i.a, align 8, !noalias !115
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !115
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.aj = phi ptr [ %i.ah, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  switch i64 %i.ab, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = load i8, ptr %i.ad, align 1
  store i8 %i.ak, ptr %i.aj, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.ab, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i
  %i.al = load i64, ptr %i.a, align 8, !noalias !115 ; 2 uses
  store i64 %i.al, ptr %i.t, align 8, !alias.scope !115
  %i.am = load ptr, ptr %6, align 8, !alias.scope !115
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 0, ptr %i.an, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !115
  %i.ao = load ptr, ptr %4, align 8, !noalias !113 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %i.n
  br i1 %.not.i.i.i, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.ao) #26
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !112
  %i.ap = load i64, ptr %i.t, align 8             ; 2 uses
  %i.aq = load i64, ptr %i.i, align 8
  %i.ar = sub i64 4611686018427387903, %i.aq
  %i.as = icmp ult i64 %i.ar, %i.ap
  br i1 %i.as, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.j:                                             ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.190) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.at = load ptr, ptr %6, align 8
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.at, i64 noundef %i.ap) #26 ; 0 uses
  %i.av = load ptr, ptr %6, align 8               ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.s
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ax = load i64, ptr %i.s, align 8
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.az = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %.014
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !111

bb.k:                                             ; preds = %._crit_edge
  %i.ba = add i64 %i.w, -4611686018427387901
  %i.bb = icmp ult i64 %i.ba, 3
  br i1 %i.bb, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.190) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.k
  %i.bc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.189, i64 noundef 3) #26 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge
  %i.bd = add i64 %i.w, -1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bd, i64 noundef 1) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF3ELF4Note14read_string_atB5cxx11Emm(ptr dead_on_unwind noalias writable sret(%"class.LIEF::result.417") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.LIEF::result.39", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.b = load ptr, ptr %i.a, align 8, !noalias !118 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !noalias !118
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.h, align 8, !alias.scope !118
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %.sroa.5.8..sroa_idx.i, align 8, !alias.scope !118
  %.sroa.61.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 3, ptr %.sroa.61.8..sroa_idx.i, align 4, !alias.scope !118
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %4, align 8, !alias.scope !118
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.b, ptr %i.i, align 8, !alias.scope !118
  %.sroa.9.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.g, ptr %.sroa.9.24..sroa_idx.i, align 8, !alias.scope !118
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 1, ptr %i.j, align 8, !alias.scope !118
  %.not = icmp eq i64 %3, 0
  %. = select i1 %.not, i64 -1, i64 %3
  call void @_ZNK4LIEF12BinaryStream14peek_string_atB5cxx11Emm(ptr dead_on_unwind writable sret(%"class.LIEF::result.417") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %2, i64 noundef %.) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

declare void @_ZNK4LIEF12BinaryStream14peek_string_atB5cxx11Emm(ptr dead_on_unwind writable sret(%"class.LIEF::result.417") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN4LIEF3ELF4Note15write_string_atEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.LIEF::vector_iostream", align 8 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !39

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25
  %.pre = load ptr, ptr %i.a, align 8             ; 3 uses
  %.pre21 = load ptr, ptr %i.b, align 8           ; 2 uses
  %.pre22 = ptrtoint ptr %.pre21 to i64
  %.pre23 = ptrtoint ptr %.pre to i64
  %i.j = icmp eq ptr %.pre21, %.pre
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi24 = phi i64 [ %.pre23, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %.pre-phi = phi i64 [ %.pre22, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.not.i.i.i.i4 = phi i1 [ %i.j, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.i, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.m = sub i64 %.pre-phi, %.pre-phi24           ; 11 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  %i.o = icmp eq i64 %i.m, 1
  br i1 %i.o, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e
  %i.p = load ptr, ptr %2, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i8 0, ptr %i.s, align 8
  br i1 %.not.i.i.i.i4, label %bb.i, label %bb.f

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread:         ; preds = %bb.e
  %i.t = load i8, ptr %i.k, align 1
  store i8 %i.t, ptr %i.l, align 1
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %3, i8 0, i64 64, i1 false)
  store ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i8 0, ptr %i.x, align 8
  br i1 %.not.i.i.i.i4, label %bb.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i6.thread

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i6.thread: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread
  %i.y = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.m
  br label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.aa = icmp slt i64 %i.m, 0
  br i1 %i.aa, label %bb.g, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i6, !prof !41

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i6:     ; preds = %bb.f
  %i.ab = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.m ; 2 uses
  %4 = icmp samesign ugt i64 %i.m, 1
  br i1 %4, label %bb.h, label %bb.j, !prof !42

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.l, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit7

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.ad = phi ptr [ %i.v, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.q, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.ae = phi ptr [ %i.u, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit.thread ], [ %i.p, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ]
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.m
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit7

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i6.thread, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i6
  %i.ag = phi ptr [ %i.z, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i6.thread ], [ %i.ac, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i6 ]
  %i.ah = phi ptr [ %i.y, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i6.thread ], [ %i.ab, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i6 ] ; 2 uses
  %i.ai = phi ptr [ %i.v, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i6.thread ], [ %i.q, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i6 ]
  %i.aj = phi ptr [ %i.u, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i6.thread ], [ %i.p, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i6 ]
  %i.ak = load i8, ptr %i.l, align 1
  store i8 %i.ak, ptr %i.ah, align 1
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit7

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit7:               ; preds = %bb.i, %bb.h, %bb.j
  %i.al = phi ptr [ %i.q, %bb.h ], [ %i.ad, %bb.i ], [ %i.ai, %bb.j ] ; 3 uses
  %i.am = phi ptr [ %i.p, %bb.h ], [ %i.ae, %bb.i ], [ %i.aj, %bb.j ]
  %i.an = phi ptr [ %i.ac, %bb.h ], [ %i.af, %bb.i ], [ %i.ag, %bb.j ] ; 3 uses
  %i.ao = phi ptr [ %i.ab, %bb.h ], [ null, %bb.i ], [ %i.ah, %bb.j ] ; 6 uses
  %i.ap = icmp eq ptr %i.ao, %i.an
  br i1 %i.ap, label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit7
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef %i.ao, i64 noundef %i.as) #26 ; 0 uses
  br label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit7, %bb.k
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit
  %i.au = ptrtoint ptr %i.an to i64
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.aw) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef %i.am, i64 noundef %i.az) #26 ; 0 uses
  %i.bb = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.al, align 8
  store ptr %i.be, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bh = load <2 x ptr>, ptr %i.bf, align 8
  store <2 x ptr> %i.bh, ptr %i.b, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bi = ptrtoint ptr %i.bd to i64
  %i.bj = ptrtoint ptr %i.bb to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bk) #27
  %.pr = load ptr, ptr %i.al, align 8             ; 3 uses
  %.not.i.i.i.i8 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i8, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.bl = load ptr, ptr %i.bg, align 8
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %.pr to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.bo) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.m, %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.bp = load ptr, ptr %3, align 8               ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.by, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.bp, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %i.bs = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.by, %i.br
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.bz = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i ], [ %i.bp, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF15vector_iostreamD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #27
  br label %_ZN4LIEF15vector_iostreamD2Ev.exit

_ZN4LIEF15vector_iostreamD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i.i.i9 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIhSaIhEED2Ev.exit10, label %bb.p

bb.p:                                             ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit10

_ZNSt6vectorIhSaIhEED2Ev.exit10:                  ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit, %bb.p
  ret i64 4294967296
}

declare noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4LIEF6ObjecteqERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4LIEF6ObjectneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF3ELF4NoteD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4LIEF3ELF4NoteE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.r = load i64, ptr %i.p, align 8
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

end_hunk_1
