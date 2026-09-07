Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/stringutil?download=true
inline.NumInlined: 555
inline.NumDeleted: 199
begin_hunk_0_@_ZN3gmx10countWordsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.111.i = phi i64 [ %.01013.i, %.lr.ph..loopexit_crit_edge.i ], [ %i.l, %.loopexit.loopexit.i ] ; 2 uses
  %i.m = icmp ult i64 %.pre-phi.i, %i.b
  br i1 %i.m, label %.lr.ph.i, label %_ZN3gmx10countWordsEPKc.exit, !llvm.loop !1

_ZN3gmx10countWordsEPKc.exit:                     ; preds = %.loopexit.i, %bb.a
  %.010.lcssa.i = phi i64 [ 0, %bb.a ], [ %.111.i, %.loopexit.i ]
  ret i64 %.010.lcssa.i
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN3gmx8endsWithEPKcS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN3gmxL13isNullOrEmptyEPKc.exit.thread, label %_ZN3gmxL13isNullOrEmptyEPKc.exit

_ZN3gmxL13isNullOrEmptyEPKc.exit:                 ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !15
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %_ZN3gmxL13isNullOrEmptyEPKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3gmxL13isNullOrEmptyEPKc.exit
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23 ; 2 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 2 uses
  %.not = icmp ult i64 %i.d, %i.e
  br i1 %.not, label %_ZN3gmxL13isNullOrEmptyEPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) %1) #23
  %i.i = icmp eq i32 %i.h, 0
  br label %_ZN3gmxL13isNullOrEmptyEPKc.exit.thread

_ZN3gmxL13isNullOrEmptyEPKc.exit.thread:          ; preds = %bb.a, %bb.b, %bb.c, %_ZN3gmxL13isNullOrEmptyEPKc.exit
  %.0 = phi i1 [ true, %_ZN3gmxL13isNullOrEmptyEPKc.exit ], [ false, %bb.b ], [ %i.i, %bb.c ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx20stripSuffixIfPresentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %..thread_crit_edge, label %bb.b

..thread_crit_edge:                               ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !22
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #23 ; 4 uses
  %.not11 = icmp eq i64 %i.c, 0
  %.pre16 = load ptr, ptr %1, align 8, !tbaa !22  ; 7 uses
  br i1 %.not11, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %2, align 1, !tbaa !15
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %_ZN3gmxL8endsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.pre16) #23 ; 2 uses
  %.not.i.i = icmp ult i64 %i.f, %i.c
  br i1 %.not.i.i, label %.thread, label %_ZN3gmxL8endsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit

_ZN3gmxL8endsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit: ; preds = %bb.d
  %i.g = sub nuw i64 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %.pre16, i64 %i.g
  %i.i = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(1) %2) #23
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN3gmxL8endsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread, label %.thread

_ZN3gmxL8endsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread: ; preds = %bb.c, %_ZN3gmxL8endsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %i.m = sub i64 %i.l, %i.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !24, !alias.scope !41
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %i.l) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !41
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !25, !noalias !41
  %i.o = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.o, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZN3gmxL8endsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !22, !alias.scope !41
  %i.q = load i64, ptr %i.b, align 8, !tbaa !25, !noalias !41
  store i64 %i.q, ptr %i.n, align 8, !tbaa !15, !alias.scope !41
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZN3gmxL8endsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread
  %i.r = phi ptr [ %i.p, %.noexc10.i.i ], [ %i.n, %_ZN3gmxL8endsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %.pre16, align 1, !tbaa !15
  store i8 %i.s, ptr %i.r, align 1, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %.pre16, i64 %spec.select.i.i.i, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.t = load i64, ptr %i.b, align 8, !tbaa !25, !noalias !41 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !23, !alias.scope !41
  %i.v = load ptr, ptr %0, align 8, !tbaa !22, !alias.scope !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !41
  br label %bb.j

.thread:                                          ; preds = %..thread_crit_edge, %bb.d, %bb.b, %_ZN3gmxL8endsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %i.x = phi ptr [ %.pre, %..thread_crit_edge ], [ %.pre16, %bb.d ], [ %.pre16, %bb.b ], [ %.pre16, %_ZN3gmxL8endsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !25
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.thread
  %i.ac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !22
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.thread
  %i.ae = phi ptr [ %i.ac, %.noexc.i ], [ %i.y, %.thread ] ; 2 uses
  switch i64 %i.aa, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.af = load i8, ptr %i.x, align 1, !tbaa !15
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !23
  %i.ai = load ptr, ptr %0, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx11stripStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !22     ; 5 uses
  %2 = ptrtoaddr ptr %i.b to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 %i.d     ; 4 uses
  %.not1618 = icmp samesign eq i64 %i.d, 0
  br i1 %.not1618, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.012.019 = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = load i8, ptr %.sroa.012.019, align 1, !tbaa !15
  %i.g = sext i8 %i.f to i32
  %i.h = tail call i32 @isspace(i32 noundef %i.g) #23
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.critedge.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.019, i64 1 ; 2 uses
  %.not16 = icmp eq ptr %i.i, %i.e
  br i1 %.not16, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !42

.critedge.loopexit:                               ; preds = %bb.b, %.lr.ph
  %.sroa.012.0.lcssa.ph = phi ptr [ %.sroa.012.019, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %.pre = ptrtoaddr ptr %.sroa.012.0.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.sroa.012.0.lcssa22.pre-phi = phi i64 [ %.pre, %.critedge.loopexit ], [ %2, %bb.a ]
  %.sroa.012.0.lcssa = phi ptr [ %.sroa.012.0.lcssa.ph, %.critedge.loopexit ], [ %i.b, %bb.a ] ; 5 uses
  %3 = sub i64 %.sroa.012.0.lcssa22.pre-phi, %2
  %scevgep = getelementptr i8, ptr %i.b, i64 %3   ; 2 uses
  %.not1724 = icmp eq ptr %.sroa.012.0.lcssa, %i.e
  br i1 %.not1724, label %.critedge2, label %.lr.ph26

bb.c:                                             ; preds = %.lr.ph26
  %.not17 = icmp eq ptr %.sroa.012.0.lcssa, %i.j
  br i1 %.not17, label %.critedge2, label %.lr.ph26, !llvm.loop !43

.lr.ph26:                                         ; preds = %.critedge, %bb.c
  %.sroa.08.025 = phi ptr [ %i.j, %bb.c ], [ %i.e, %.critedge ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.08.025, i64 -1 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15
  %i.l = sext i8 %i.k to i32
  %i.m = tail call i32 @isspace(i32 noundef %i.l) #23
  %.not6 = icmp eq i32 %i.m, 0
  br i1 %.not6, label %..critedge2_crit_edge27, label %bb.c, !llvm.loop !43

..critedge2_crit_edge27:                          ; preds = %.lr.ph26
  br label %.critedge2, !llvm.loop !43

.critedge2:                                       ; preds = %bb.c, %..critedge2_crit_edge27, %.critedge
  %.sroa.08.0.lcssa = phi ptr [ %scevgep, %.critedge ], [ %.sroa.08.025, %..critedge2_crit_edge27 ], [ %scevgep, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %4 = ptrtoint ptr %.sroa.08.0.lcssa to i64
  %i.p = ptrtoint ptr %.sroa.012.0.lcssa to i64
  %i.q = sub i64 %4, %i.p                         ; 4 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !25
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.critedge2
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !22
  %i.t = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.t, ptr %i.n, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.critedge2
  %i.u = phi ptr [ %i.s, %.noexc.i ], [ %i.n, %.critedge2 ] ; 2 uses
  switch i64 %i.q, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %.sroa.012.0.lcssa, align 1, !tbaa !15
  store i8 %i.v, ptr %i.u, align 1, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %.sroa.012.0.lcssa, i64 %i.q, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  store i64 %i.w, ptr %i.o, align 8, !tbaa !23
  %i.x = load ptr, ptr %0, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i8 0, ptr %i.y, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #7 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @_ZN3gmx13formatStringVB5cxx11EPKcP13__va_list_tag(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx13formatStringVB5cxx11EPKcP13__va_list_tag(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 9 uses
  %i.b = alloca [1024 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr %2)
  %i.c = call i32 @vsnprintf(ptr noundef nonnull %i.b, i64 noundef 1024, ptr noundef %1, ptr noundef nonnull %3) #24 ; 3 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %or.cond43 = icmp ult i32 %i.c, 1024
  br i1 %or.cond43, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !24
  br label %bb.c

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp sgt i32 %i.c, -1
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !24
  %i.g = icmp eq ptr %.sroa.029.1, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #26
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.h = phi ptr [ %i.d, %._crit_edge.thread ], [ %i.f, %._crit_edge ] ; 2 uses
  %.017.lcssa66 = phi ptr [ %i.b, %._crit_edge.thread ], [ %.sroa.029.1, %._crit_edge ] ; 3 uses
  %.sroa.029.0.lcssa64 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.029.1, %._crit_edge ] ; 4 uses
  %.sroa.15.0.lcssa62 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.15.1, %._crit_edge ] ; 2 uses
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.017.lcssa66) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.i, ptr %i.a, align 8, !tbaa !25
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc23 unwind label %bb.g   ; 2 uses

.noexc23:                                         ; preds = %.noexc.i
  store ptr %i.k, ptr %0, align 8, !tbaa !22
  %i.l = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.l, ptr %i.h, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc23, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc23 ], [ %i.h, %bb.c ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %.critedge
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %.017.lcssa66, align 1, !tbaa !15
  store i8 %i.n, ptr %i.m, align 1, !tbaa !15
  br label %.critedge

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %.017.lcssa66, i64 %i.i, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !23
  %i.q = load ptr, ptr %0, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not.i.i.i = icmp eq ptr %.sroa.029.0.lcssa64, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.s = ptrtoint ptr %.sroa.15.0.lcssa62 to i64
  %i.t = ptrtoint ptr %.sroa.029.0.lcssa64 to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0.lcssa64, i64 noundef %i.u) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.g:                                             ; preds = %.noexc.i, %bb.b
  %.sroa.029.0.lcssa65 = phi ptr [ %.sroa.029.0.lcssa64, %.noexc.i ], [ %.sroa.029.1, %bb.b ]
  %.sroa.15.0.lcssa63 = phi ptr [ %.sroa.15.0.lcssa62, %.noexc.i ], [ %.sroa.15.1, %bb.b ]
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %i.w = phi i1 [ %i.ba, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ %i.e, %.lr.ph.preheader ]
  %i.x = phi i32 [ %i.az, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ %i.c, %.lr.ph.preheader ]
  %.01847 = phi i32 [ %.119, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ 1024, %.lr.ph.preheader ]
  %.sroa.029.046 = phi ptr [ %.sroa.029.1, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ null, %.lr.ph.preheader ] ; 11 uses
  %.sroa.15.045 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ null, %.lr.ph.preheader ] ; 6 uses
  %.sroa.10.044 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ null, %.lr.ph.preheader ] ; 8 uses
  %i.y = add nuw nsw i32 %i.x, 1
  %i.z = shl nuw nsw i32 %.01847, 1
  %.119 = select i1 %i.w, i32 %i.y, i32 %i.z      ; 3 uses
  %i.aa = zext nneg i32 %.119 to i64              ; 6 uses
  %i.ab = ptrtoint ptr %.sroa.10.044 to i64       ; 2 uses
  %i.ac = ptrtoint ptr %.sroa.029.046 to i64      ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 8 uses
  %i.ae = icmp ult i64 %i.ad, %i.aa
  br i1 %i.ae, label %bb.h, label %bb.n

bb.h:                                             ; preds = %.lr.ph
  %i.af = sub nuw nsw i64 %i.aa, %i.ad            ; 5 uses
  %i.ag = ptrtoint ptr %.sroa.15.045 to i64       ; 2 uses
  %i.ah = sub i64 %i.ag, %i.ab                    ; 2 uses
  %i.ai = xor i64 %i.ad, 9223372036854775807
  %i.aj = icmp ule i64 %i.ah, %i.ai
  call void @llvm.assume(i1 %i.aj)
  %.not28.i = icmp ult i64 %i.ah, %i.af
  br i1 %.not28.i, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %.sroa.10.044, align 1, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.10.044, i64 1 ; 2 uses
  %i.al = add nsw i64 %i.af, -1                   ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr i8, ptr %.sroa.10.044, i64 %i.af
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 0, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.h
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.af)
  %i.ao = add nuw nsw i64 %.sroa.speculated.i.i, %i.ad ; 2 uses
end_hunk_0
