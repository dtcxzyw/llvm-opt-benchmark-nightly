Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/c_api_usage?download=true
inline.NumInlined: 382
inline.NumDeleted: 174
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z7usage_cv:bb.a
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.05674
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !57
  %i.ay = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i64 noundef %i.ax, i64 noundef %.05775) ; 0 uses
  %i.az = add nsw i64 %.05674, 1                  ; 2 uses
  %i.ba = load i64, ptr %i.as, align 8, !tbaa !57 ; 2 uses
  %i.bb = icmp slt i64 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph, label %.loopexit, !llvm.loop !54

._crit_edge:                                      ; preds = %.loopexit, %bb.m
  %puts67 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.bc = add nuw nsw i64 %.05977, 1              ; 2 uses
  %exitcond81.not = icmp eq i64 %i.bc, %i.x
  br i1 %exitcond81.not, label %._crit_edge80, label %.lr.ph79, !llvm.loop !55

._crit_edge80:                                    ; preds = %._crit_edge, %bb.i
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !57
  %i.be = call ptr @llvm.stacksave.p0()
  %i.bf = alloca ptr, i64 %i.bd, align 16         ; 3 uses
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !57
  %i.bh = alloca ptr, i64 %i.bg, align 16         ; 3 uses
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !57
  %i.bj = alloca i64, i64 %i.bi, align 16
  %i.bk = load i64, ptr %i.d, align 8, !tbaa !57
  %i.bl = alloca double, i64 %i.bk, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull align 16 dereferenceable(32) @__const._Z7usage_cv.x_val, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store double 5.000000e+00, ptr %i.f, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  call void @casadi_c_incref_id(i32 noundef %i.o)
  store ptr %i.e, ptr %i.bf, align 16, !tbaa !61
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.f, ptr %i.bm, align 8, !tbaa !61
  store ptr %i.g, ptr %i.bh, align 16, !tbaa !61
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.h, ptr %i.bn, align 8, !tbaa !61
  %i.bo = call i32 @casadi_c_checkout_id(i32 noundef %i.o) ; 2 uses
  %i.bp = call i32 @casadi_c_eval_id(i32 noundef %i.o, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bl, i32 noundef %i.bo)
  %.not66 = icmp eq i32 %i.bp, 0
  br i1 %.not66, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge80
  call void @casadi_c_release_id(i32 noundef %i.o, i32 noundef %i.bo)
  %i.bq = load double, ptr %i.g, align 8, !tbaa !59
  %i.br = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, double noundef %i.bq) ; 0 uses
  %i.bs = load double, ptr %i.h, align 16, !tbaa !59
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !59
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bw = load double, ptr %i.bv, align 16, !tbaa !59
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.by = load double, ptr %i.bx, align 8, !tbaa !59
  %i.bz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, double noundef %i.bs, double noundef %i.bu, double noundef %i.bw, double noundef %i.by) ; 0 uses
  call void @casadi_c_decref_id(i32 noundef %i.o)
  call void @casadi_c_pop()
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge80, %bb.p
  %.2 = phi i32 [ 0, %bb.p ], [ 1, %._crit_edge80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.stackrestore.p0(ptr %i.be)
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.q
  %.3 = phi i32 [ %.2, %bb.q ], [ 1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.f, %bb.h, %.critedge, %bb.d, %bb.b
  %.5 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.h ], [ %.3, %.critedge ]
  ret i32 %.5
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

declare i32 @casadi_c_int_width() local_unnamed_addr #2

declare i32 @casadi_c_real_width() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @casadi_c_push_file(ptr noundef) local_unnamed_addr #2

declare i32 @casadi_c_n_loaded() local_unnamed_addr #2

declare i32 @casadi_c_id(ptr noundef) local_unnamed_addr #2

declare i64 @casadi_c_n_in_id(i32 noundef) local_unnamed_addr #2

declare i64 @casadi_c_n_out_id(i32 noundef) local_unnamed_addr #2

declare i32 @casadi_c_work_id(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @casadi_c_sparsity_in_id(i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @casadi_c_sparsity_out_id(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @casadi_c_incref_id(i32 noundef) local_unnamed_addr #2

declare i32 @casadi_c_checkout_id(i32 noundef) local_unnamed_addr #2

declare i32 @casadi_c_eval_id(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @casadi_c_release_id(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @casadi_c_decref_id(i32 noundef) local_unnamed_addr #2

declare void @casadi_c_pop() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !21 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !22
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress norecurse uwtable
define noundef i32 @main() local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %1 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %2 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %3 = alloca %"class.casadi::Matrix", align 8    ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.casadi::Matrix", align 8    ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.casadi::Function", align 8  ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca [2 x %"class.casadi::Matrix"], align 8 ; 16 uses
  %10 = alloca [1 x %"class.casadi::Matrix"], align 8 ; 10 uses
  %11 = alloca %"class.std::map", align 8         ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::map", align 8         ; 12 uses
  %14 = alloca %"class.casadi::Function", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca [2 x %"class.casadi::Matrix"], align 8 ; 16 uses
  %17 = alloca [2 x %"class.casadi::Matrix"], align 8 ; 19 uses
  %18 = alloca %"class.casadi::Matrix", align 8   ; 12 uses
  %19 = alloca %"class.casadi::Matrix", align 8   ; 11 uses
  %20 = alloca %"class.casadi::Matrix", align 8   ; 10 uses
  %21 = alloca %"class.std::map", align 8         ; 12 uses
  %22 = alloca %"class.casadi::Function", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca [1 x %"class.casadi::Matrix"], align 8 ; 10 uses
  %25 = alloca [1 x %"class.casadi::Matrix"], align 8 ; 10 uses
  %26 = alloca %"class.std::map", align 8         ; 12 uses
  %27 = alloca %"class.casadi::FileSerializer", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::map", align 8         ; 14 uses
  %30 = alloca [1 x %"struct.std::pair"], align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %31 = alloca %"class.std::vector.30", align 8   ; 13 uses
  %32 = alloca [2 x %"class.casadi::Function"], align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !24
  store i8 120, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.d, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !66
  invoke void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %2, i64 noundef 2, i64 noundef 2)
          to label %.noexc108 unwind label %bb.bf, !noalias !66

.noexc108:                                        ; preds = %bb.a
  invoke void @_ZN6casadi6MatrixINS_6SXElemEE4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i unwind label %bb.c

_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i: ; preds = %.noexc108
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #23
  unreachable

bb.c:                                             ; preds = %.noexc108
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #23
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !66
  br label %.body

bb.e:                                             ; preds = %_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !66
  %i.j = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.b, align 8, !tbaa !22
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !24
  store i8 121, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.o, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.p, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21, !noalias !67
  invoke void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %1, i64 noundef 1, i64 noundef 1)
          to label %.noexc115 unwind label %bb.bg, !noalias !67

.noexc115:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  invoke void @_ZN6casadi6MatrixINS_6SXElemEE4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i114 unwind label %bb.g

_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i114: ; preds = %.noexc115
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i114
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #23
  unreachable

bb.g:                                             ; preds = %.noexc115
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i113 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i113: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21, !noalias !67
  br label %.body116

bb.i:                                             ; preds = %_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21, !noalias !67
  %i.v = load ptr, ptr %6, align 8, !tbaa !21     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.i
  %i.x = load i64, ptr %i.n, align 8, !tbaa !22
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i120: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.z, ptr %8, align 8, !tbaa !24
  store i8 102, ptr %i.z, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.aa, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.ab, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.j unwind label %.thread

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i120
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit335

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i120
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 40
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.k unwind label %.loopexit335.loopexit340

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZN6casadi6MatrixINS_6SXElemEE6binaryExRKS2_S4_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %10, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %_ZN6casadimlERKNS_6MatrixINS_6SXElemEEES4_.exit unwind label %bb.bh

_ZN6casadimlERKNS_6MatrixINS_6SXElemEEES4_.exit:  ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.ah, align 8, !tbaa !31
  invoke void @_ZN6casadi8FunctionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt16initializer_listINS_6MatrixINS_6SXElemEEEESD_RKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SF_EEE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull %9, i64 2, ptr nonnull %10, i64 1, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.l unwind label %.loopexit336.loopexit

bb.l:                                             ; preds = %_ZN6casadimlERKNS_6MatrixINS_6SXElemEEES4_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.aj)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.an, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.am, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.ar = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.an, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !37
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !47
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = ptrtoint ptr %i.jx to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef %i.kc) #22
  br label %.body255

_ZNSt6vectorIN6casadi8FunctionESaIS1_EEC2ESt16initializer_listIS1_ERKS2_.exit: ; preds = %_ZN6casadi8FunctionC2ERKS0_.exit254
  invoke void @_ZN6casadi14SerializerBase4packERKSt6vectorINS_8FunctionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(24) %31)
          to label %bb.ay unwind label %bb.bs

bb.ay:                                            ; preds = %_ZNSt6vectorIN6casadi8FunctionESaIS1_EEC2ESt16initializer_listIS1_ERKS2_.exit
  %i.kd = load ptr, ptr %31, align 8, !tbaa !46   ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !48 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.kd, %i.kf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi8FunctionES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ay, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.kg, %.lr.ph.i.i.i ], [ %i.kd, %bb.ay ] ; 2 uses
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #21
  %i.kg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i257 = icmp eq ptr %i.kg, %i.kf
  br i1 %.not.i.i.i257, label %_ZSt8_DestroyIPN6casadi8FunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN6casadi8FunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %31, align 8, !tbaa !46
  br label %_ZSt8_DestroyIPN6casadi8FunctionES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi8FunctionES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi8FunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.ay
  %i.kh = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi8FunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.kd, %bb.ay ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi8FunctionESaIS1_EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZSt8_DestroyIPN6casadi8FunctionES1_EvT_S3_RSaIT0_E.exit.i
  %i.ki = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !47
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.kh to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.km) #22
  br label %_ZNSt6vectorIN6casadi8FunctionESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi8FunctionESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6casadi8FunctionES1_EvT_S3_RSaIT0_E.exit.i, %bb.az
  %i.kn = getelementptr inbounds nuw i8, ptr %32, i64 8
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kn) #21
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @_ZN6casadi14FileSerializerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  %i.ko = invoke noundef i32 @_Z7usage_cv()
          to label %bb.ba unwind label %bb.bu     ; 0 uses

bb.ba:                                            ; preds = %_ZNSt6vectorIN6casadi8FunctionESaIS1_EED2Ev.exit
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !35 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i.i259 = icmp eq ptr %i.kq, %i.ks
  br i1 %.not4.i.i.i.i259, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i265, label %.lr.ph.i.i.i.i260

.lr.ph.i.i.i.i260:                                ; preds = %bb.ba, %.lr.ph.i.i.i.i260
  %.05.i.i.i.i261 = phi ptr [ %i.kt, %.lr.ph.i.i.i.i260 ], [ %i.kq, %bb.ba ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i261) #21
  %i.kt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i261, i64 8 ; 2 uses
  %.not.i.i.i.i262 = icmp eq ptr %i.kt, %i.ks
  br i1 %.not.i.i.i.i262, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i263, label %.lr.ph.i.i.i.i260, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i263: ; preds = %.lr.ph.i.i.i.i260
  %.pr.i.i264 = load ptr, ptr %i.kp, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i265

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i265: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i263, %bb.ba
  %i.ku = phi ptr [ %.pr.i.i264, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i263 ], [ %i.kq, %bb.ba ] ; 3 uses
  %.not.i.i1.i.i266 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i1.i.i266, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i267, label %bb.bb

bb.bb:                                            ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i265
  %i.kv = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !37
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = ptrtoint ptr %i.ku to i64
  %i.kz = sub i64 %i.kx, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef %i.kz) #22
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i267

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i267: ; preds = %bb.bb, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i265
  %i.la = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.la)
          to label %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit269 unwind label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i267
  %i.lb = landingpad { ptr, i32 }
          catch ptr null
  %i.lc = extractvalue { ptr, i32 } %i.lb, 0
  call void @__clang_call_terminate(ptr %i.lc) #23
  unreachable

_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit269:       ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !35 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i.i270 = icmp eq ptr %i.le, %i.lg
  br i1 %.not4.i.i.i.i270, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i276, label %.lr.ph.i.i.i.i271

.lr.ph.i.i.i.i271:                                ; preds = %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit269, %.lr.ph.i.i.i.i271
  %.05.i.i.i.i272 = phi ptr [ %i.lh, %.lr.ph.i.i.i.i271 ], [ %i.le, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit269 ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i272) #21
  %i.lh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i272, i64 8 ; 2 uses
  %.not.i.i.i.i273 = icmp eq ptr %i.lh, %i.lg
  br i1 %.not.i.i.i.i273, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i274, label %.lr.ph.i.i.i.i271, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i274: ; preds = %.lr.ph.i.i.i.i271
  %.pr.i.i275 = load ptr, ptr %i.ld, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i276

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i276: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i274, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit269
  %i.li = phi ptr [ %.pr.i.i275, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i274 ], [ %i.le, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit269 ] ; 3 uses
  %.not.i.i1.i.i277 = icmp eq ptr %i.li, null
  br i1 %.not.i.i1.i.i277, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i278, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i276
  %i.lj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !37
  %i.ll = ptrtoint ptr %i.lk to i64
  %i.lm = ptrtoint ptr %i.li to i64
  %i.ln = sub i64 %i.ll, %i.lm
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.ln) #22
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i278

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i278: ; preds = %bb.bd, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i276
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lo)
          to label %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit280 unwind label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i278
  %i.lp = landingpad { ptr, i32 }
          catch ptr null
  %i.lq = extractvalue { ptr, i32 } %i.lp, 0
  call void @__clang_call_terminate(ptr %i.lq) #23
  unreachable

_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit280:       ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i278
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i32 0

bb.bf:                                            ; preds = %bb.a
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i, %bb.bf
  %eh.lpad-body = phi { ptr, i32 } [ %i.lr, %bb.bf ], [ %i.g, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i ]
  %i.ls = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.b
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281: ; preds = %.body
  %i.lu = load i64, ptr %i.b, align 8, !tbaa !22
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.cb

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %.body116

.body116:                                         ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i113, %bb.bg
  %eh.lpad-body117 = phi { ptr, i32 } [ %i.lw, %bb.bg ], [ %i.s, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i113 ]
  %i.lx = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.n
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284: ; preds = %.body116
  %i.lz = load i64, ptr %i.n, align 8, !tbaa !22
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286: ; preds = %.body116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ca

.loopexit335.loopexit340:                         ; preds = %bb.j
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit335.sink.split

bb.bh:                                            ; preds = %bb.k
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit336

.loopexit336.loopexit:                            ; preds = %_ZN6casadimlERKNS_6MatrixINS_6SXElemEEES4_.exit
  %i.md = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #21
  br label %.loopexit336

.loopexit336:                                     ; preds = %.loopexit336.loopexit, %bb.bh
  %.pn74 = phi { ptr, i32 } [ %i.mc, %bb.bh ], [ %i.md, %.loopexit336.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.me = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.me) #21
  br label %.loopexit335.sink.split

.loopexit335.sink.split:                          ; preds = %.loopexit336, %.loopexit335.loopexit340
  %.pn74.pn.ph = phi { ptr, i32 } [ %i.mb, %.loopexit335.loopexit340 ], [ %.pn74, %.loopexit336 ]
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #21
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit335.sink.split, %.thread
  %.pn74.pn = phi { ptr, i32 } [ %i.ac, %.thread ], [ %.pn74.pn.ph, %.loopexit335.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.mf = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.z
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287: ; preds = %.loopexit335
  %i.mh = load i64, ptr %i.z, align 8, !tbaa !22
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289: ; preds = %.loopexit335, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.bz

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i138
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.mk = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.ce
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %bb.bi
  %i.mm = load i64, ptr %i.ce, align 8, !tbaa !22
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.by

.loopexit331.loopexit339:                         ; preds = %bb.u
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit331.sink.split

.thread314:                                       ; preds = %bb.v
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit332.sink.split

.thread320:                                       ; preds = %_ZN6casadi4sqrtERKNS_6MatrixINS_6SXElemEEE.exit
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #21
  br label %.loopexit332.sink.split

bb.bj:                                            ; preds = %bb.w
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bk:                                            ; preds = %_ZN6casadimiERKNS_6MatrixINS_6SXElemEEES4_.exit
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %_ZN6casadi3sinERKNS_6MatrixINS_6SXElemEEE.exit
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit333

.loopexit333.loopexit:                            ; preds = %_ZN6casadimiERKNS_6MatrixINS_6SXElemEEES4_.exit156
  %i.mu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.mv = getelementptr inbounds nuw i8, ptr %17, i64 40
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.mv) #21
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #21
  br label %.loopexit333

.loopexit333:                                     ; preds = %.loopexit333.loopexit, %bb.bl
  %i.mw = phi i1 [ false, %bb.bl ], [ true, %.loopexit333.loopexit ]
  %.pn80 = phi { ptr, i32 } [ %i.mt, %bb.bl ], [ %i.mu, %.loopexit333.loopexit ]
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #21
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit333, %bb.bk
  %.167 = phi i1 [ %i.mw, %.loopexit333 ], [ false, %bb.bk ]
  %.pn80.pn = phi { ptr, i32 } [ %.pn80, %.loopexit333 ], [ %i.ms, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bj, %bb.bm
  %.268 = phi i1 [ %.167, %bb.bm ], [ false, %bb.bj ]
  %.063 = phi ptr [ %i.cy, %bb.bm ], [ %17, %bb.bj ] ; 2 uses
  %.pn80.pn.pn = phi { ptr, i32 } [ %.pn80.pn, %bb.bm ], [ %i.mr, %bb.bj ] ; 2 uses
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.mx = icmp eq ptr %17, %.063
  %or.cond = select i1 %.268, i1 true, i1 %i.mx
  br i1 %or.cond, label %.loopexit332, label %.preheader

.preheader:                                       ; preds = %bb.bn, %.preheader
  %i.my = phi ptr [ %i.mz, %.preheader ], [ %.063, %bb.bn ]
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 -40 ; 3 uses
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.mz) #21
  %i.na = icmp eq ptr %i.mz, %17
  br i1 %i.na, label %.loopexit332, label %.preheader

.loopexit332.sink.split:                          ; preds = %.thread314, %.thread320
  %.pn80.pn.pn.pn.pn319.ph = phi { ptr, i32 } [ %i.mq, %.thread320 ], [ %i.mp, %.thread314 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %.loopexit332

.loopexit332:                                     ; preds = %.preheader, %.loopexit332.sink.split, %bb.bn
  %.pn80.pn.pn.pn.pn319 = phi { ptr, i32 } [ %.pn80.pn.pn, %bb.bn ], [ %.pn80.pn.pn.pn.pn319.ph, %.loopexit332.sink.split ], [ %.pn80.pn.pn, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.nb = getelementptr inbounds nuw i8, ptr %16, i64 40
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.nb) #21
  br label %.loopexit331.sink.split

.loopexit331.sink.split:                          ; preds = %.loopexit332, %.loopexit331.loopexit339
  %.pn80.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.mo, %.loopexit331.loopexit339 ], [ %.pn80.pn.pn.pn.pn319, %.loopexit332 ]
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #21
  br label %.loopexit331

.loopexit331:                                     ; preds = %.loopexit331.sink.split, %.thread312
  %.pn80.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cw, %.thread312 ], [ %.pn80.pn.pn.pn.pn.pn.ph, %.loopexit331.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.nc = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.nd = icmp eq ptr %i.nc, %i.ct
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %.loopexit331
  %i.ne = load i64, ptr %i.ct, align 8, !tbaa !22
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.nf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295: ; preds = %.loopexit331, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.bx

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i209
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit329

bb.bp:                                            ; preds = %bb.al
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit330

.loopexit330.loopexit:                            ; preds = %_ZN6casadimlERKNS_6MatrixINS_6SXElemEEES4_.exit216
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %25) #21
  br label %.loopexit330

.loopexit330:                                     ; preds = %.loopexit330.loopexit, %bb.bp
  %.pn88 = phi { ptr, i32 } [ %i.nh, %bb.bp ], [ %i.ni, %.loopexit330.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %24) #21
  br label %.loopexit329

.loopexit329:                                     ; preds = %.loopexit330, %bb.bo
  %.pn88.pn = phi { ptr, i32 } [ %i.ng, %bb.bo ], [ %.pn88, %.loopexit330 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  %i.nj = load ptr, ptr %23, align 8, !tbaa !21   ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.hb
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296: ; preds = %.loopexit329
  %i.nl = load i64, ptr %i.hb, align 8, !tbaa !22
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298: ; preds = %.loopexit329, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %bb.bw

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i239
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit328

bb.br:                                            ; preds = %.noexc.i245
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %29) #21
  br label %.body246

.body246:                                         ; preds = %bb.as, %bb.br
  %.pn92 = phi { ptr, i32 } [ %i.no, %bb.br ], [ %i.jb, %bb.as ]
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %30) #21
  br label %.loopexit328

.loopexit328:                                     ; preds = %.body246, %bb.bq
  %.pn92.pn = phi { ptr, i32 } [ %i.nn, %bb.bq ], [ %.pn92, %.body246 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  %i.np = load ptr, ptr %28, align 8, !tbaa !21   ; 2 uses
  %i.nq = icmp eq ptr %i.np, %i.is
  br i1 %i.nq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299: ; preds = %.loopexit328
  %i.nr = load i64, ptr %i.is, align 8, !tbaa !22
  %i.ns = add i64 %i.nr, 1
  call void @_ZdlPvm(ptr noundef %i.np, i64 noundef %i.ns) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301: ; preds = %.loopexit328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  br label %bb.bt

.loopexit.loopexit338:                            ; preds = %_ZN6casadi8FunctionC2ERKS0_.exit
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.sink.split

bb.bs:                                            ; preds = %_ZNSt6vectorIN6casadi8FunctionESaIS1_EEC2ESt16initializer_listIS1_ERKS2_.exit
  %i.nu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi8FunctionESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #21
  br label %.body255

.body255:                                         ; preds = %bb.ax, %bb.aw, %bb.bs
  %.pn96 = phi { ptr, i32 } [ %i.nu, %bb.bs ], [ %i.jw, %bb.aw ], [ %i.jw, %bb.ax ]
  %i.nv = getelementptr inbounds nuw i8, ptr %32, i64 8
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.nv) #21
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.body255, %.loopexit.loopexit338
  %.pn96.pn.ph = phi { ptr, i32 } [ %i.nt, %.loopexit.loopexit338 ], [ %.pn96, %.body255 ]
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #21
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.thread325
  %.pn96.pn = phi { ptr, i32 } [ %i.js, %.thread325 ], [ %.pn96.pn.ph, %.loopexit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @_ZN6casadi14FileSerializerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #21
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301
  %.pn96.pn.pn = phi { ptr, i32 } [ %.pn96.pn, %.loopexit ], [ %.pn92.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br label %bb.bv

bb.bu:                                            ; preds = %_ZNSt6vectorIN6casadi8FunctionESaIS1_EED2Ev.exit
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn100 = phi { ptr, i32 } [ %i.nw, %bb.bu ], [ %.pn96.pn.pn, %bb.bt ]
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #21
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %bb.bv ], [ %.pn88.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #21
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295
  %.pn100.pn.pn = phi { ptr, i32 } [ %.pn100.pn, %bb.bw ], [ %.pn80.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292
  %.pn100.pn.pn.pn = phi { ptr, i32 } [ %.pn100.pn.pn, %bb.bx ], [ %i.mj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ]
  call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289
  %.pn100.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn100.pn.pn.pn, %bb.by ], [ %.pn74.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #21
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286
  %.pn100.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn100.pn.pn.pn.pn, %bb.bz ], [ %eh.lpad-body117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #21
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283
  %.pn100.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn100.pn.pn.pn.pn.pn, %bb.ca ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn100.pn.pn.pn.pn.pn.pn
}

declare void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #21
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #22
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #23
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @_ZN6casadi8FunctionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt16initializer_listINS_6MatrixINS_6SXElemEEEESD_RKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SF_EEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, ptr, i64, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare void @_ZNK6casadi8Function4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SA_EEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN6casadi6MatrixINS_6SXElemEEC1Ed(ptr noundef nonnull align 8 dereferenceable(40), double noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEEC2IRA6_KcbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !24
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.c, ptr %i.a, align 8, !tbaa !49
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !21
  %i.f = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.f, ptr %i.b, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !22
  store i8 %i.h, ptr %i.g, align 1, !tbaa !22
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !25
  %i.k = load ptr, ptr %0, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i8, ptr %2, align 1, !tbaa !39, !range !71, !noundef !50
  %i.o = trunc nuw i8 %i.n to i1
  invoke void @_ZN6casadi11GenericTypeC1Eb(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i1 noundef zeroext %i.o)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  ret void

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.s = load i64, ptr %i.b, align 8, !tbaa !22
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_1
