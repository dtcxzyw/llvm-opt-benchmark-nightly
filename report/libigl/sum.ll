Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/sum?download=true
inline.NumInlined: 330
inline.NumDeleted: 215
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll:bb.a
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #15 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !22
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !21
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @free(ptr noundef %i.i) #12
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #15 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !34
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !33
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, double noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38
  %i.c = icmp slt i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sitofp i64 %1 to double
  %i.e = fmul double %2, %i.d
  %i.f = fptosi double %i.e to i64
  %i.g = add nsw i64 %1, %i.f
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.g, i64 2147483647) ; 7 uses
  %i.h = icmp slt i64 %.sroa.speculated, %1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %.sroa.speculated, 2305843009213693951
  %i.k = shl nuw i64 %.sroa.speculated, 3
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #16 ; 3 uses
  %i.n = icmp ugt i64 %.sroa.speculated, 4611686018427387903
  %i.o = shl nuw i64 %.sroa.speculated, 2
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #16
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !70
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %.sroa.speculated) ; 3 uses
  %i.t = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !39  ; 3 uses
  br i1 %i.t, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !40
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.v, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #13
  resume { ptr, i32 } %i.w

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.x = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.v, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.y, align 8, !tbaa !40
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !38
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #13
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.e, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.aa = icmp eq ptr %.pre.i, null
  br i1 %i.aa, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #13
  br label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit: ; preds = %bb.f, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.ab, align 8, !tbaa !35
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen8internal17CompressedStorageIdiE15atWithInsertionElRKd(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35   ; 7 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZNK5Eigen8internal17CompressedStorageIdiE16searchLowerIndexElll.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.012.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.b ] ; 2 uses
  %.0911.i = phi i64 [ %i.b, %.lr.ph.i ], [ %.110.i, %bb.b ] ; 2 uses
  %i.f = add nuw nsw i64 %.0911.i, %.012.i
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !29
  %i.j = sext i32 %i.i to i64
  %i.k = icmp sgt i64 %1, %i.j                    ; 2 uses
  %i.l = add nuw nsw i64 %i.g, 1
  %.110.i = select i1 %i.k, i64 %.0911.i, i64 %i.g ; 2 uses
  %.1.i = select i1 %i.k, i64 %i.l, i64 %.012.i   ; 3 uses
  %i.m = icmp sgt i64 %.110.i, %.1.i
  br i1 %i.m, label %bb.b, label %_ZNK5Eigen8internal17CompressedStorageIdiE16searchLowerIndexElll.exit, !llvm.loop !71

_ZNK5Eigen8internal17CompressedStorageIdiE16searchLowerIndexElll.exit: ; preds = %bb.b, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.1.i, %bb.b ] ; 17 uses
  %.not = icmp slt i64 %.0.lcssa.i, %i.b
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZNK5Eigen8internal17CompressedStorageIdiE16searchLowerIndexElll.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.0.lcssa.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !29
  %i.r = sext i32 %i.q to i64
  %.not25 = icmp eq i64 %1, %i.r
  br i1 %.not25, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !25
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !38
  %.not26 = icmp sgt i64 %i.t, %i.b
  br i1 %.not26, label %_ZN5Eigen8internal13smart_memmoveIdEEvPKT_S4_PS2_.exit, label %bb.e

.thread:                                          ; preds = %_ZNK5Eigen8internal17CompressedStorageIdiE16searchLowerIndexElll.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !38
  %.not2642 = icmp sgt i64 %i.v, %i.b
  br i1 %.not2642, label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.w = phi ptr [ %i.u, %.thread ], [ %i.s, %bb.d ] ; 2 uses
  %i.x = shl i64 %i.b, 1
  %3 = add i64 %i.x, 2                            ; 3 uses
  store i64 %3, ptr %i.w, align 8, !tbaa !38
  %i.y = icmp ugt i64 %3, 2305843009213693951
  %i.z = shl nuw i64 %3, 3
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #16 ; 4 uses
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !38  ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, 4611686018427387903
  %i.ae = shl nuw i64 %i.ac, 2
  %i.af = select i1 %i.ad, i64 -1, i64 %i.ae
  %i.ag = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #16
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit31 ; 3 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit:     ; preds = %bb.e
  %i.ah = load ptr, ptr %0, align 8, !tbaa !25    ; 4 uses
  %.idx = shl nsw i64 %.0.lcssa.i, 3              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx
  %i.aj = icmp eq i64 %.0.lcssa.i, 0
  br i1 %i.aj, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.thread, label %bb.f

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.thread: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit

bb.f:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.ah, i64 %.idx, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26 ; 3 uses
  %.idx44 = shl nsw i64 %.0.lcssa.i, 2            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr align 4 %i.an, i64 %.idx44, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.thread, %bb.f
  %i.ap = phi ptr [ %i.al, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.thread ], [ %i.ao, %bb.f ]
  %i.aq = phi ptr [ %i.al, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.thread ], [ %i.an, %bb.f ] ; 2 uses
  %i.ar = phi ptr [ %i.ak, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.thread ], [ %i.am, %bb.f ]
  %i.as = load i64, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.at = icmp sgt i64 %i.as, %.0.lcssa.i
  br i1 %i.at, label %bb.g, label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit29

bb.g:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.0.lcssa.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = sub nsw i64 %i.as, %.0.lcssa.i          ; 2 uses
  %gepdiff.a = shl nuw nsw i64 %i.aw, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ai, i64 %gepdiff.a, i1 false)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.0.lcssa.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %gepdiff47 = shl nsw i64 %i.aw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 4 %i.ap, i64 %gepdiff47, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit29

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit31:   ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #13
  resume { ptr, i32 } %i.az

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit29: ; preds = %bb.g, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit
  store ptr %i.ab, ptr %0, align 8, !tbaa !39
  store ptr %i.ag, ptr %i.ar, align 8, !tbaa !40
  %i.ba = icmp eq ptr %i.aq, null
  br i1 %i.ba, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit30, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit29
  tail call void @_ZdaPv(ptr noundef nonnull %i.aq) #13
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit30

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit30:   ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit29, %bb.h
  %i.bb = icmp eq ptr %i.ah, null
  br i1 %i.bb, label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit30
  tail call void @_ZdaPv(ptr noundef nonnull %i.ah) #13
  br label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit

_ZN5Eigen8internal13smart_memmoveIdEEvPKT_S4_PS2_.exit: ; preds = %bb.d
  %i.bc = load ptr, ptr %0, align 8, !tbaa !25
  %.idx49 = shl nsw i64 %.0.lcssa.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx49 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = sub nsw i64 %i.b, %.0.lcssa.i
  %gepdiff50 = shl nuw nsw i64 %i.bf, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.bd, i64 %gepdiff50, i1 false)
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %.0.lcssa.i
  br i1 %i.bh, label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen8internal13smart_memmoveIdEEvPKT_S4_PS2_.exit
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !26
  %.idx52 = shl nsw i64 %.0.lcssa.i, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx52 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = sub nsw i64 %i.bg, %.0.lcssa.i
  %gepdiff53 = shl nsw i64 %i.bl, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 4 %i.bj, i64 %gepdiff53, i1 false)
  br label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit:     ; preds = %.thread, %bb.j, %_ZN5Eigen8internal13smart_memmoveIdEEvPKT_S4_PS2_.exit, %bb.i, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit30
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !35
  %i.bn = add nsw i64 %i.bm, 1
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !35
  %i.bo = trunc i64 %1 to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !26
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.0.lcssa.i
  store i32 %i.bo, ptr %i.br, align 4, !tbaa !29
  %i.bs = load double, ptr %2, align 8, !tbaa !24
  %i.bt = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.0.lcssa.i
  store double %i.bs, ptr %i.bu, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit
  %i.bv = phi ptr [ %.pre, %._crit_edge ], [ %i.bt, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.0.lcssa.i
  ret ptr %i.bw
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEE", !9, i64 0}
!11 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEE", !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"p1 double", !13, i64 0}
!16 = !{!"_ZTSN5Eigen8internal17CompressedStorageIdiEE", !15, i64 0, !14, i64 8, !12, i64 16, !12, i64 24}
!17 = !{!"_ZTSN5Eigen12SparseMatrixIdLi0EiEE", !11, i64 0, !12, i64 8, !12, i64 16, !14, i64 24, !14, i64 32, !16, i64 40}
!18 = !{!17, !12, i64 16}
!19 = !{!17, !12, i64 8}
!20 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !15, i64 0, !12, i64 8}
!21 = !{!20, !12, i64 8}
!22 = !{!20, !15, i64 0}
!23 = !{!"double", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!16, !15, i64 0}
!26 = !{!16, !14, i64 8}
!27 = !{!17, !14, i64 24}
!28 = !{!17, !14, i64 32}
!29 = !{!6, !6, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !14, i64 0, !12, i64 8}
!33 = !{!32, !12, i64 8}
!34 = !{!32, !14, i64 0}
!35 = !{!16, !12, i64 16}
!36 = !{!"vtable pointer", !4, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!16, !12, i64 24}
!39 = !{!15, !15, i64 0}
!40 = !{!14, !14, i64 0}
!41 = distinct !{!41, !30}
!42 = distinct !{!42, !30}
!43 = distinct !{!43, !31}
!44 = distinct !{!44, !31}
!45 = distinct !{!45, !30}
!46 = distinct !{!46, !30}
!47 = distinct !{!47, !31}
!48 = distinct !{!48, !31}
!49 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIbLi0EiEEEE", !9, i64 0}
!50 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEE", !49, i64 0}
!51 = !{!"p1 bool", !13, i64 0}
end_hunk_0
