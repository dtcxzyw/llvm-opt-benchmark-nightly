inline.NumInlined: 5241
inline.NumDeleted: 2566
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 146
begin_hunk_0_@_ZN3igl6opengl10ViewerData5clearEv:_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit62
  tail call void @free(ptr noundef %i.aw) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !66 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, %i.az
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit62, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.az, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit62 ] ; 3 uses
  %i.bc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !70
  %i.bg = add i64 %i.bf, 1
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, %i.bb
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !66
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit62, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !65 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !66 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.bl, %i.bj
  br i1 %.not.i.i63, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit71, label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i67
  %.05.i.i.i.i65 = phi ptr [ %i.br, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i67 ], [ %i.bj, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit ] ; 3 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i65, align 8, !tbaa !67 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i65, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i66: ; preds = %.lr.ph.i.i.i.i64
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !70
  %i.bq = add i64 %i.bp, 1
  tail call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i67

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i67: ; preds = %.lr.ph.i.i.i.i64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i66
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i65, i64 32 ; 2 uses
  %.not.i.i.i.i68 = icmp eq ptr %i.br, %i.bl
  br i1 %.not.i.i.i.i68, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i69, label %.lr.ph.i.i.i.i64, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i69: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i67
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !66
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit71

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit71: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i69
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !65 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !66 ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.bv, %i.bt
  br i1 %.not.i.i72, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit80, label %.lr.ph.i.i.i.i73

.lr.ph.i.i.i.i73:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit71, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i76
  %.05.i.i.i.i74 = phi ptr [ %i.cb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i76 ], [ %i.bt, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit71 ] ; 3 uses
  %i.bw = load ptr, ptr %.05.i.i.i.i74, align 8, !tbaa !67 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i74, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i75: ; preds = %.lr.ph.i.i.i.i73
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !70
  %i.ca = add i64 %i.bz, 1
  tail call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i76

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i76: ; preds = %.lr.ph.i.i.i.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i75
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i74, i64 32 ; 2 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.cb, %i.bv
  br i1 %.not.i.i.i.i77, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i78, label %.lr.ph.i.i.i.i73, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i78: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i76
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !66
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit80

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit80: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit71, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i78
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 580
  store i8 0, ptr %i.cc, align 4, !tbaa !48
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 581
  store i8 0, ptr %i.cd, align 1, !tbaa !49
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 582
  store i8 0, ptr %i.ce, align 2, !tbaa !50
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 612
  store i32 0, ptr %i.cf, align 4, !tbaa !54
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 620
  store i32 0, ptr %i.cg, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !65     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !67 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !70
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !71

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3igl6opengl10ViewerData14set_face_basedEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1488) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !48, !range !74, !noundef !75
  %i.c = zext i1 %1 to i8                         ; 2 uses
  %.not = icmp eq i8 %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %i.c, ptr %i.a, align 4, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i32 65535, ptr %i.d, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerData8set_meshERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.274", align 16 ; 5 uses
  %4 = alloca %"class.Eigen::Matrix.274", align 16 ; 5 uses
  %5 = alloca %"class.Eigen::Matrix.274", align 16 ; 5 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.420", align 8 ; 5 uses
  %7 = alloca %"struct.Eigen::internal::evaluator.491", align 8 ; 5 uses
  %8 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.496", align 8 ; 7 uses
  %9 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %10 = alloca %"class.Eigen::Matrix.3", align 8  ; 19 uses
  %11 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76   ; 8 uses
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.h = icmp sgt i64 %i.e, 3074457345618258602
  br i1 %i.h, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %12 = mul nsw i64 %i.e, 3
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread, label %bb.c

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  store i64 %i.e, ptr %i.f, align 8, !tbaa !77
  store i64 3, ptr %i.g, align 8, !tbaa !76
  br label %.loopexit

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %i.i = icmp sgt i64 %i.e, 0
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread165

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread165: ; preds = %bb.c
  store i64 %i.e, ptr %i.f, align 8, !tbaa !77
  store i64 3, ptr %i.g, align 8, !tbaa !76
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %12, 2305843009213693951
  br i1 %i.j, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.d
  %i.k = mul i64 %i.e, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #27 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.invoke, label %.loopexit.loopexit

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d, %bb.b
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !78
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit.loopexit:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.l, ptr %10, align 8, !tbaa !59
  store i64 %i.e, ptr %i.f, align 8, !tbaa !77
  store i64 3, ptr %i.g, align 8, !tbaa !76
  %.idx.i.i.i.i.i.i.i.i.i = mul i64 %i.e, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !80
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread165, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread, %.loopexit.loopexit
  %i.o = phi ptr [ null, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread ], [ %i.l, %.loopexit.loopexit ], [ null, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread165 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store ptr %i.o, ptr %11, align 8, !tbaa !82, !alias.scope !85
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.e, ptr %i.p, align 8, !tbaa !88, !alias.scope !85
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 2, ptr %i.q, align 8, !tbaa !88, !alias.scope !85
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %10, ptr %i.r, align 8, !tbaa !89, !alias.scope !85
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i64 %i.e, ptr %i.t, align 8, !tbaa !91, !alias.scope !85
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.u = load ptr, ptr %1, align 8, !tbaa !59
  store ptr %i.u, ptr %6, align 8, !tbaa !94
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.e, ptr %i.v, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.o, ptr %7, align 8, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.e, ptr %i.w, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %7, ptr %8, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.x, align 8, !tbaa !102
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %9, ptr %i.y, align 8, !tbaa !104
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %11, ptr %i.z, align 8, !tbaa !106
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

bb.f:                                             ; preds = %.invoke
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.g:                                             ; preds = %.loopexit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.an

bb.h:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %1, align 8, !tbaa !59    ; 8 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !77 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ai = or i64 %i.af, %i.b
  %or.cond.i.i.i.i.i.i.i.i22 = icmp eq i64 %i.ai, 0
  br i1 %or.cond.i.i.i.i.i.i.i.i22, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not8.i.i.i.i.i.i.i.i21 = icmp eq i64 %i.b, 0
  %.not.i.i.i.i.i.i.i.i20 = icmp eq i64 %i.af, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i23 = or i1 %.not8.i.i.i.i.i.i.i.i21, %.not.i.i.i.i.i.i.i.i20
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i23, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i24, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = sdiv i64 9223372036854775807, %i.b
  %i.ak = icmp sgt i64 %i.af, %i.aj
  br i1 %i.ak, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i24

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.j
  %i.al = tail call ptr @__cxa_allocate_exception(i64 8) #25
  br label %.invoke173

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i24: ; preds = %bb.j, %bb.i
  %i.am = mul nsw i64 %i.af, %i.b                 ; 9 uses
  %.not.i99 = icmp eq i64 %i.am, 0
  br i1 %.not.i99, label %._crit_edge.thread169, label %bb.k

._crit_edge.thread169:                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i24
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !77
  store i64 %i.b, ptr %i.ah, align 8, !tbaa !76
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i24
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %bb.l, label %._crit_edge.thread170

._crit_edge.thread170:                            ; preds = %bb.k
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !77
  store i64 %i.b, ptr %i.ah, align 8, !tbaa !76
  %.nonneg = sub i64 0, %i.am
  %i.ao = and i64 %.nonneg, -2
  %i.ap = sub i64 0, %i.ao
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp samesign ugt i64 %i.am, 2305843009213693951
  br i1 %i.aq, label %bb.m, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i102

bb.m:                                             ; preds = %bb.l
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 8) #25
  br label %.invoke173

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i102: ; preds = %bb.l
  %i.as = shl nuw i64 %i.am, 3
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.as) #27 ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.n, label %._crit_edge

bb.n:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i102
  %i.av = tail call ptr @__cxa_allocate_exception(i64 8) #25
  br label %.invoke173

.invoke173:                                       ; preds = %.noexc.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i41, %.noexc.i.i.i.i.i.i.i57, %.noexc.i.i.i.i.i.i.i74, %.noexc.i.i.i.i.i.i.i91, %bb.m, %bb.n
  %.sink = phi ptr [ %i.al, %.noexc.i.i.i.i.i.i.i ], [ %i.df, %.noexc.i.i.i.i.i.i.i41 ], [ %i.fn, %.noexc.i.i.i.i.i.i.i57 ], [ %i.ij, %.noexc.i.i.i.i.i.i.i74 ], [ %i.ks, %.noexc.i.i.i.i.i.i.i91 ], [ %i.ar, %bb.m ], [ %i.av, %bb.n ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %.sink, align 8, !tbaa !78
  invoke void @__cxa_throw(ptr nonnull %.sink, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont174 unwind label %bb.o

.cont174:                                         ; preds = %.invoke173
  unreachable

._crit_edge:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i102
  store ptr %i.at, ptr %10, align 8, !tbaa !59
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !77
  store i64 %i.b, ptr %i.ah, align 8, !tbaa !76
  %i.aw = and i64 %i.am, 2305843009213693950      ; 3 uses
  %.not = icmp eq i64 %i.am, 1
  br i1 %.not, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %._crit_edge.thread170, %._crit_edge.thread169, %._crit_edge
  %i.ax = phi i64 [ 0, %._crit_edge.thread169 ], [ %i.ap, %._crit_edge.thread170 ], [ %i.aw, %._crit_edge ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ay = phi ptr [ null, %._crit_edge.thread169 ], [ null, %._crit_edge.thread170 ], [ %i.at, %._crit_edge ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i ] ; 7 uses
  %.pre-phi168 = phi i64 [ 0, %._crit_edge.thread169 ], [ %i.am, %._crit_edge.thread170 ], [ 1, %._crit_edge ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.az = icmp slt i64 %i.ax, %.pre-phi168
  br i1 %i.az, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ba = ptrtoaddr ptr %i.ay to i64
  %i.bb = sub i64 %.pre-phi168, %i.ax             ; 3 uses
  %min.iters.check = icmp ult i64 %i.bb, 8
  %i.bc = sub i64 %i.ad, %i.ba
  %diff.check = icmp ugt i64 %i.bc, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader240, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bb, -4                      ; 3 uses
  %i.bd = add i64 %i.ax, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = add i64 %i.ax, %index                   ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.be ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <2 x double>, ptr %i.bg, align 8, !tbaa !80
  %wide.load175 = load <2 x double>, ptr %i.bh, align 8, !tbaa !80
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x double> %wide.load, ptr %i.bf, align 8, !tbaa !80
  store <2 x double> %wide.load175, ptr %i.bi, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
end_hunk_0
begin_hunk_1_@_ZN3igl6opengl10ViewerData12set_colormapERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE:bb.a
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !80
  %i.dx = fmul double %i.dw, 2.550000e+02
  %i.dy = fptoui double %i.dx to i8
  store i8 %i.dy, ptr %i.du, align 1, !tbaa !70
  %i.dz = add nuw nsw i64 %.05.i.i.i.i.i.i.i30, 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dz
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dz
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !80
  %i.ed = fmul double %i.ec, 2.550000e+02
  %i.ee = fptoui double %i.ed to i8
  store i8 %i.ee, ptr %i.ea, align 1, !tbaa !70
  %i.ef = add nuw nsw i64 %.05.i.i.i.i.i.i.i30, 2 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ef
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.ef
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !80
  %i.ej = fmul double %i.ei, 2.550000e+02
  %i.ek = fptoui double %i.ej to i8
  store i8 %i.ek, ptr %i.eg, align 1, !tbaa !70
  %i.el = add nuw nsw i64 %.05.i.i.i.i.i.i.i30, 3 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.el
  %i.eo = load double, ptr %i.en, align 8, !tbaa !80
  %i.ep = fmul double %i.eo, 2.550000e+02
  %i.eq = fptoui double %i.ep to i8
  store i8 %i.eq, ptr %i.em, align 1, !tbaa !70
  %i.er = add nuw nsw i64 %.05.i.i.i.i.i.i.i30, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i31.3 = icmp eq i64 %i.er, %i.c
  br i1 %exitcond.not.i.i.i.i.i.i.i31.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i29, !llvm.loop !466

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdhEEKNS_13CwiseBinaryOpINS6_17scalar_product_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit.sink.split.i.i27: ; preds = %bb.a
  store i64 %i.c, ptr %i.d, align 8, !tbaa !175
  store i64 1, ptr %i.e, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i64 0, ptr %3, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.c, ptr %i.es, align 8, !tbaa !175
  store i64 1, ptr %i.et, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i64 0, ptr %4, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.c, ptr %i.eu, align 8, !tbaa !175
  store i64 1, ptr %i.ev, align 8, !tbaa !176
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body33

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i29.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i29, %middle.block164, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdhEEKNS_13CwiseBinaryOpINS6_17scalar_product_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit.sink.split.i.i27
  %i.ex = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdhEEKNS_13CwiseBinaryOpINS6_17scalar_product_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit.sink.split.i.i27 ], [ %i.cx, %middle.block164 ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i29 ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i29.prol.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ey = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #27 ; 4 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.loopexit
  %i.fa = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fa, align 8, !tbaa !78
  invoke void @__cxa_throw(ptr nonnull %i.fa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.noexc.i.i36 unwind label %bb.h

.noexc.i.i36:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body37

bb.i:                                             ; preds = %.loopexit
  store ptr %i.ey, ptr %5, align 8, !tbaa !59
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.fd, align 8, !tbaa !77
  store i64 3, ptr %i.fc, align 8, !tbaa !76
  store <2 x double> splat (double 1.000000e+00), ptr %i.ey, align 8, !tbaa !80
  %invariant.gep.i.2.i.i.i.i.i.i = getelementptr i8, ptr %i.ey, i64 16
  store double 1.000000e+00, ptr %invariant.gep.i.2.i.i.i.i.i.i, align 8, !tbaa !80
  invoke void @_ZN3igl6opengl10ViewerData10set_colorsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.fe = load ptr, ptr %5, align 8, !tbaa !59
  call void @free(ptr noundef %i.fe) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  invoke void @_ZN3igl6opengl10ViewerData11set_textureERKN5Eigen6MatrixIhLin1ELin1ELi0ELin1ELin1EEES6_S6_(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 612
  store i32 -1, ptr %i.ff, align 4, !tbaa !54
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 9728, ptr %i.fg, align 4, !tbaa !467
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 33071, ptr %i.fh, align 8, !tbaa !468
  %i.fi = load ptr, ptr %4, align 8, !tbaa !60
  call void @free(ptr noundef %i.fi) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.fj = load ptr, ptr %3, align 8, !tbaa !60
  call void @free(ptr noundef %i.fj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.fk = load ptr, ptr %2, align 8, !tbaa !60
  call void @free(ptr noundef %i.fk) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.l:                                             ; preds = %bb.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  %i.fm = load ptr, ptr %5, align 8, !tbaa !59
  call void @free(ptr noundef %i.fm) #25
  br label %.body37

.body37:                                          ; preds = %bb.h, %bb.l
  %.pn14 = phi { ptr, i32 } [ %i.fl, %bb.l ], [ %i.fb, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %4, align 8, !tbaa !60
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.body37
  %i.fo = phi ptr [ %.pre, %bb.m ], [ %i.ex, %.body37 ]
  %.pn16 = phi { ptr, i32 } [ %i.fn, %bb.m ], [ %.pn14, %.body37 ]
  call void @free(ptr noundef %i.fo) #25
  %.pre123 = load ptr, ptr %3, align 8, !tbaa !60
  br label %.body33

.body33:                                          ; preds = %bb.f, %bb.n
  %i.fp = phi ptr [ %.pre123, %bb.n ], [ %i.ba, %bb.f ]
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %bb.n ], [ %i.ew, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @free(ptr noundef %i.fp) #25
  %.pre124 = load ptr, ptr %2, align 8, !tbaa !60
  br label %.body

.body:                                            ; preds = %bb.d, %.body33
  %i.fq = phi ptr [ %.pre124, %.body33 ], [ %i.g, %bb.d ]
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn16.pn, %.body33 ], [ %i.cv, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @free(ptr noundef %i.fq) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn16.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerData10set_pointsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.d = load i64, ptr %i.c, align 8, !tbaa !76
  %i.e = mul nsw i64 %i.d, %i.b
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.g) #25
  store ptr null, ptr %i.f, align 8, !tbaa !59
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @_ZN3igl6opengl10ViewerData10add_pointsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerData10add_pointsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.420", align 8 ; 5 uses
  %4 = alloca %"struct.Eigen::internal::evaluator.491", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.496", align 8 ; 7 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix.3", align 8   ; 16 uses
  %8 = alloca %"class.Eigen::Block", align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76   ; 8 uses
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.h = icmp sgt i64 %i.e, 3074457345618258602
  br i1 %i.h, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %9 = mul nsw i64 %i.e, 3
  %.not.i40 = icmp eq i64 %i.e, 0
  br i1 %.not.i40, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread, label %bb.c

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  store i64 %i.e, ptr %i.f, align 8, !tbaa !77
  store i64 3, ptr %i.g, align 8, !tbaa !76
  br label %.loopexit

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %i.i = icmp sgt i64 %i.e, 0
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread85

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread85: ; preds = %bb.c
  store i64 %i.e, ptr %i.f, align 8, !tbaa !77
  store i64 3, ptr %i.g, align 8, !tbaa !76
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %9, 2305843009213693951
  br i1 %i.j, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.d
  %i.k = mul i64 %i.e, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #27 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.invoke, label %.loopexit.loopexit

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d, %bb.b
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !78
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit.loopexit:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.l, ptr %7, align 8, !tbaa !59
  store i64 %i.e, ptr %i.f, align 8, !tbaa !77
  store i64 3, ptr %i.g, align 8, !tbaa !76
  %.idx.i.i.i.i.i.i.i.i.i = mul i64 %i.e, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !80
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread85, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread, %.loopexit.loopexit
  %i.o = phi ptr [ null, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread ], [ %i.l, %.loopexit.loopexit ], [ null, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread85 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %i.o, ptr %8, align 8, !tbaa !82, !alias.scope !469
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.e, ptr %i.p, align 8, !tbaa !88, !alias.scope !469
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 2, ptr %i.q, align 8, !tbaa !88, !alias.scope !469
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.r, align 8, !tbaa !89, !alias.scope !469
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i64 %i.e, ptr %i.t, align 8, !tbaa !91, !alias.scope !469
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.u = load ptr, ptr %1, align 8, !tbaa !59
  store ptr %i.u, ptr %3, align 8, !tbaa !94
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.v, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.o, ptr %4, align 8, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.e, ptr %i.w, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %4, ptr %5, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.x, align 8, !tbaa !102
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %6, ptr %i.y, align 8, !tbaa !104
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %8, ptr %i.z, align 8, !tbaa !106
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

bb.f:                                             ; preds = %.invoke
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %.loopexit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.p

bb.h:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %1, align 8, !tbaa !59    ; 8 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !77 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ai = or i64 %i.af, %i.b
  %or.cond.i.i.i.i.i.i.i.i32 = icmp eq i64 %i.ai, 0
  br i1 %or.cond.i.i.i.i.i.i.i.i32, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not8.i.i.i.i.i.i.i.i31 = icmp eq i64 %i.b, 0
  %.not.i.i.i.i.i.i.i.i30 = icmp eq i64 %i.af, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i33 = or i1 %.not8.i.i.i.i.i.i.i.i31, %.not.i.i.i.i.i.i.i.i30
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i33, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i34, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = sdiv i64 9223372036854775807, %i.b
  %i.ak = icmp sgt i64 %i.af, %i.aj
  br i1 %i.ak, label %.invoke93, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i34

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i34: ; preds = %bb.j, %bb.i
  %i.al = mul nsw i64 %i.af, %i.b                 ; 9 uses
  %.not.i43 = icmp eq i64 %i.al, 0
  br i1 %.not.i43, label %._crit_edge.thread89, label %bb.k

._crit_edge.thread89:                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i34
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !77
  store i64 %i.b, ptr %i.ah, align 8, !tbaa !76
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i34
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %bb.l, label %._crit_edge.thread90

._crit_edge.thread90:                             ; preds = %bb.k
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !77
  store i64 %i.b, ptr %i.ah, align 8, !tbaa !76
  %.nonneg = sub i64 0, %i.al
  %i.an = and i64 %.nonneg, -2
  %i.ao = sub i64 0, %i.an
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp samesign ugt i64 %i.al, 2305843009213693951
  br i1 %i.ap, label %.invoke93, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i46

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i46: ; preds = %bb.l
  %i.aq = shl nuw i64 %i.al, 3
  %i.ar = tail call noalias ptr @malloc(i64 noundef %i.aq) #27 ; 5 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.invoke93, label %._crit_edge

.invoke93:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i46, %bb.l, %bb.j
  %i.at = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !78
  invoke void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont94 unwind label %bb.m

.cont94:                                          ; preds = %.invoke93
  unreachable

._crit_edge:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i46
  store ptr %i.ar, ptr %7, align 8, !tbaa !59
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !77
  store i64 %i.b, ptr %i.ah, align 8, !tbaa !76
  %i.au = and i64 %i.al, 2305843009213693950      ; 3 uses
  %.not = icmp eq i64 %i.al, 1
  br i1 %.not, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %._crit_edge.thread90, %._crit_edge.thread89, %._crit_edge
  %i.av = phi i64 [ 0, %._crit_edge.thread89 ], [ %i.ao, %._crit_edge.thread90 ], [ %i.au, %._crit_edge ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.aw = phi ptr [ null, %._crit_edge.thread89 ], [ null, %._crit_edge.thread90 ], [ %i.ar, %._crit_edge ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ] ; 7 uses
  %.pre-phi88 = phi i64 [ 0, %._crit_edge.thread89 ], [ %i.al, %._crit_edge.thread90 ], [ 1, %._crit_edge ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ax = icmp slt i64 %i.av, %.pre-phi88
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ay = ptrtoaddr ptr %i.aw to i64
  %i.az = sub i64 %.pre-phi88, %i.av              ; 3 uses
  %min.iters.check = icmp ult i64 %i.az, 8
  %i.ba = sub i64 %i.ad, %i.ay
  %diff.check = icmp ugt i64 %i.ba, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader133, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.az, -4                      ; 3 uses
  %i.bb = add i64 %i.av, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = add i64 %i.av, %index                   ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bc ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <2 x double>, ptr %i.be, align 8, !tbaa !80
  %wide.load95 = load <2 x double>, ptr %i.bf, align 8, !tbaa !80
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x double> %wide.load, ptr %i.bd, align 8, !tbaa !80
  store <2 x double> %wide.load95, ptr %i.bg, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !472

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader133

.lr.ph.i.i.i.i.i.i.i.i.i.preheader133:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ] ; 4 uses
  %i.bi = sub i64 %.pre-phi88, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.bi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader133, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader133 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader133 ]
end_hunk_1
begin_hunk_2_@_ZN3igl6opengl10ViewerData9set_edgesERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEES6_:bb.a
  %i.kh = getelementptr [4 x i8], ptr %i.iy, i64 %i.g
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !120
  %i.kj = sext i32 %i.ki to i64                   ; 2 uses
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.kj ; 6 uses
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.gj
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %.mux191 ; 6 uses
  %brmerge316 = select i1 %min.iters.check, i1 true, i1 %i.gp
  br i1 %brmerge316, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.preheader291, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.preheader
  %i.kn = shl nsw i64 %i.kj, 3
  %i.ko = add i64 %i.gn, %i.gu
  %i.kp = add i64 %i.kn, %i.gh
  %i.kq = sub i64 %i.kp, %i.ko
  %diff.check = icmp ugt i64 %i.kq, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.preheader291, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.km, i64 %index ; 2 uses
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %index ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %wide.load = load <2 x double>, ptr %i.ks, align 8, !tbaa !80
  %wide.load211 = load <2 x double>, ptr %i.kt, align 8, !tbaa !80
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store <2 x double> %wide.load, ptr %i.kr, align 8, !tbaa !80
  store <2 x double> %wide.load211, ptr %i.ku, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kv = icmp eq i64 %index.next, %n.vec
  br i1 %i.kv, label %middle.block, label %vector.body, !llvm.loop !523

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i57.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.preheader291

.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.preheader291:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.preheader, %vector.memcheck, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i59.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.preheader ] ; 3 uses
  br i1 %lcmp.mod303.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.preheader291, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i59.prol = phi i64 [ %i.lb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.preheader291 ] ; 3 uses
  %prol.iter304 = phi i64 [ %prol.iter304.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.preheader291 ]
  %i.kw = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i59.prol, %i.af
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.kw
  %i.ky = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i59.prol, %i.ae
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !80
  store double %i.la, ptr %i.kx, align 8, !tbaa !80
  %i.lb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i59.prol, 1 ; 2 uses
  %prol.iter304.next = add i64 %prol.iter304, 1   ; 2 uses
  %prol.iter304.cmp.not = icmp eq i64 %prol.iter304.next, %xtraiter302
  br i1 %prol.iter304.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol, !llvm.loop !524

.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.preheader291
  %.05.i.i.i.i.i.i.i.i.i.i.i59.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.preheader291 ], [ %i.lb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol ]
  %i.lc = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i59.ph, %i.s
  %i.ld = icmp ugt i64 %i.lc, -4
  br i1 %i.ld, label %._crit_edge.i57.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58

.lr.ph.i.i.i.i.i.i.i.i.i.i.i58:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58
  %.05.i.i.i.i.i.i.i.i.i.i.i59 = phi i64 [ %i.mb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i59.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol.loopexit ] ; 6 uses
  %i.le = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i59, %i.af
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.le
  %i.lg = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i59, %i.ae
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.lg
  %i.li = load double, ptr %i.lh, align 8, !tbaa !80
  store double %i.li, ptr %i.lf, align 8, !tbaa !80
  %i.lj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i59, 1 ; 2 uses
  %i.lk = mul nsw i64 %i.lj, %i.af
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.lk
  %i.lm = mul nsw i64 %i.lj, %i.ae
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.lm
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !80
  store double %i.lo, ptr %i.ll, align 8, !tbaa !80
  %i.lp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i59, 2 ; 2 uses
  %i.lq = mul nsw i64 %i.lp, %i.af
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.lq
  %i.ls = mul nsw i64 %i.lp, %i.ae
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.ls
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !80
  store double %i.lu, ptr %i.lr, align 8, !tbaa !80
  %i.lv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i59, 3 ; 2 uses
  %i.lw = mul nsw i64 %i.lv, %i.af
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.lw
  %i.ly = mul nsw i64 %i.lv, %i.ae
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.ly
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !80
  store double %i.ma, ptr %i.lx, align 8, !tbaa !80
  %i.mb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i59, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i60.3 = icmp eq i64 %i.mb, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i60.3, label %._crit_edge.i57.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58, !llvm.loop !525

._crit_edge.i57.thread:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58, %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEElsINS1_IdLin1ELin1ELi0ELin1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit, %middle.block
  %i.mc = phi i64 [ %spec.select204, %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEElsINS1_IdLin1ELin1ELi0ELin1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit ], [ %.mux164192, %middle.block ], [ %.mux164192, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58 ], [ %.mux164192, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol.loopexit ]
  %.sroa.6.0149 = phi i64 [ %spec.select205, %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEElsINS1_IdLin1ELin1ELi0ELin1ELin1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit ], [ %.mux191, %middle.block ], [ %.mux191, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58 ], [ %.mux191, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i58.prol.loopexit ]
  %i.md = add nsw i64 %i.s, %i.mc                 ; 2 uses
  %i.me = icmp eq i64 %i.md, %i.ab                ; 2 uses
  %spec.select = select i1 %i.me, i64 0, i64 %i.md
  %i.mf = zext i1 %i.me to i64
  %i.mg = mul nsw i64 %spec.select, %i.af
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.mg
  %i.mi = getelementptr [8 x i8], ptr %i.mh, i64 %.sroa.6.0149
  %i.mj = getelementptr [8 x i8], ptr %i.mi, i64 %i.mf ; 3 uses
  %i.mk = load double, ptr %4, align 8, !tbaa !80
  store double %i.mk, ptr %i.mj, align 8, !tbaa !80
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.af
  %i.mm = load double, ptr %i.v, align 8, !tbaa !80
  store double %i.mm, ptr %i.ml, align 8, !tbaa !80
  %i.mn = getelementptr inbounds i8, ptr %i.mj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i68
  %i.mo = load double, ptr %i.w, align 8, !tbaa !80
  store double %i.mo, ptr %i.mn, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !501
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerData27set_edges_from_vector_fieldERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_S6_(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.708", align 8 ; 7 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.491", align 8 ; 5 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.712", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block", align 8      ; 10 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.420", align 8 ; 5 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.491", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.496", align 8 ; 7 uses
  %12 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %13 = alloca %"class.Eigen::Block", align 8     ; 9 uses
  %14 = alloca %"class.Eigen::Matrix.12", align 8 ; 8 uses
  %15 = alloca %"class.Eigen::Matrix.3", align 8  ; 7 uses
  %16 = alloca %"class.Eigen::Matrix.3", align 8  ; 13 uses
  %17 = alloca %"class.Eigen::Matrix.3", align 8  ; 6 uses
  %18 = alloca %"class.Eigen::Replicate.241", align 8 ; 5 uses
  %19 = alloca %"class.Eigen::Matrix.3", align 8  ; 8 uses
  %20 = alloca %"class.Eigen::Replicate.241", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !77   ; 18 uses
  store i64 0, ptr %14, align 8
  %i.c = icmp sgt i64 %i.b, 4611686018427387903
  br i1 %i.c, label %.noexc.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.not.i42 = icmp eq i64 %i.b, 0
  br i1 %.not.i42, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.g = icmp sgt i64 %i.b, 0
  br i1 %i.g, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %.not = icmp samesign ult i64 %i.b, 2305843009213693952
  br i1 %.not, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, label %.noexc

.noexc:                                           ; preds = %bb.c
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #27 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.noexc43, label %.sink.split.i

.noexc43:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.b
  %.sink.i = phi ptr [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.b ] ; 2 uses
  store ptr %.sink.i, ptr %14, align 8, !tbaa !61
  br label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit: ; preds = %.sink.split.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.m = phi ptr [ %.sink.i, %.sink.split.i ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ] ; 8 uses
  store i64 %i.b, ptr %i.e, align 8, !tbaa !115
  store i64 2, ptr %i.f, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !77
  %i.p = add nsw i64 %i.o, %i.b                   ; 8 uses
  store i64 0, ptr %16, align 8
  %i.q = icmp sgt i64 %i.p, 3074457345618258602
  br i1 %i.q, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit
  %21 = mul nsw i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %.not.i44 = icmp eq i64 %i.p, 0
  br i1 %.not.i44, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.t = icmp sgt i64 %i.p, 0
  br i1 %i.t, label %bb.e, label %.sink.split.i45

bb.e:                                             ; preds = %bb.d
  %i.u = icmp samesign ugt i64 %21, 2305843009213693951
  br i1 %i.u, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.v = mul i64 %i.p, 24
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #27 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.invoke, label %.sink.split.i45

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.e, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IliEERKT_RKT0_.exit
  %i.y = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.y, align 8, !tbaa !78
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i45:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i46 = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ] ; 2 uses
  store ptr %.sink.i46, ptr %16, align 8, !tbaa !59
  br label %bb.g

bb.f:                                             ; preds = %.invoke
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %.sink.split.i45
  %i.aa = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ], [ %.sink.i46, %.sink.split.i45 ] ; 2 uses
  store i64 %i.p, ptr %i.r, align 8, !tbaa !77
  store i64 3, ptr %i.s, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !76, !noalias !526 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !526
  store ptr %i.aa, ptr %13, align 8, !tbaa !82, !alias.scope !529, !noalias !526
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.b, ptr %i.ad, align 8, !tbaa !88, !alias.scope !529, !noalias !526
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !88, !alias.scope !529, !noalias !526
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %16, ptr %i.af, align 8, !tbaa !89, !alias.scope !529, !noalias !526
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false), !noalias !526
  store i64 %i.p, ptr %i.ah, align 8, !tbaa !91, !alias.scope !529, !noalias !526
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !526
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !526
  %i.ai = load ptr, ptr %1, align 8, !tbaa !59, !noalias !526
  store ptr %i.ai, ptr %9, align 8, !tbaa !94, !noalias !526
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.b, ptr %i.aj, align 8, !tbaa !96, !noalias !526
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !526
  store ptr %i.aa, ptr %10, align 8, !tbaa !97, !noalias !526
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.p, ptr %i.ak, align 8, !tbaa !88, !noalias !526
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !526
  store ptr %10, ptr %11, align 8, !tbaa !100, !noalias !526
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.al, align 8, !tbaa !102, !noalias !526
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %12, ptr %i.am, align 8, !tbaa !104, !noalias !526
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %13, ptr %i.an, align 8, !tbaa !106, !noalias !526
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !526
  %i.ao = load i64, ptr %i.s, align 8, !tbaa !76
  %i.ap = icmp eq i64 %i.ac, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !76 ; 3 uses
  br i1 %i.ap, label %bb.i, label %._crit_edge11.i

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %bb.i
  %i.as = load i64, ptr %i.n, align 8, !tbaa !77
  %.not8.i = icmp eq i64 %i.as, %i.b
  br i1 %.not8.i, label %._crit_edge11.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i, %bb.j
  br label %._crit_edge11.i

._crit_edge11.i:                                  ; preds = %._crit_edge.i, %bb.j, %bb.h
  %.sroa.6.0 = phi i64 [ 0, %bb.j ], [ %i.b, %._crit_edge.i ], [ 0, %bb.h ] ; 2 uses
  %i.at = phi i64 [ 0, %bb.j ], [ %i.ar, %._crit_edge.i ], [ %i.ar, %bb.h ]
  %i.au = phi i64 [ %i.ac, %bb.j ], [ 0, %._crit_edge.i ], [ %i.ac, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.av = load i64, ptr %i.n, align 8, !tbaa !77  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.aw = load ptr, ptr %16, align 8, !tbaa !59, !noalias !532
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %.sroa.6.0
  %i.ay = load i64, ptr %i.r, align 8, !tbaa !77, !noalias !532 ; 3 uses
  %i.az = mul nsw i64 %i.ay, %i.au
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.az ; 2 uses
  store ptr %i.ba, ptr %8, align 8, !tbaa !82, !alias.scope !532
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.av, ptr %i.bb, align 8, !tbaa !88, !alias.scope !532
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.at, ptr %i.bc, align 8, !tbaa !88, !alias.scope !532
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %16, ptr %i.bd, align 8, !tbaa !89, !alias.scope !532
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %.sroa.6.0, ptr %i.be, align 8, !tbaa !88, !alias.scope !532
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %i.au, ptr %i.bf, align 8, !tbaa !88, !alias.scope !532
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 %i.ay, ptr %i.bg, align 8, !tbaa !91, !alias.scope !532
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = load ptr, ptr %1, align 8, !tbaa !59
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !77
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !94
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !96
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bm = load ptr, ptr %2, align 8, !tbaa !59
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !94
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.av, ptr %i.bn, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.ba, ptr %5, align 8, !tbaa !97
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.ay, ptr %i.bo, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %5, ptr %6, align 8, !tbaa !100
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.bp, align 8, !tbaa !535
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.bq, align 8, !tbaa !104
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %8, ptr %i.br, align 8, !tbaa !106
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS6_SC_EEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSH_(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %._crit_edge11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit unwind label %bb.m

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit: ; preds = %bb.k
  %i.bs = load ptr, ptr %16, align 8, !tbaa !59
  call void @free(ptr noundef %i.bs) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !77  ; 8 uses
  %i.bu = icmp sgt i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  %i.bv = trunc i64 %i.bt to i32                  ; 6 uses
  %min.iters.check = icmp ult i64 %i.bt, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bw = shl i64 %i.b, 2
  %i.bx = add i64 %i.bw, -1
  %diff.check = icmp ult i64 %i.bx, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bt, 9223372036854775800     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.by = getelementptr [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  store <4 x i32> %vec.ind, ptr %i.by, align 4, !tbaa !120
  store <4 x i32> %step.add, ptr %i.bz, align 4, !tbaa !120
  %i.ca = getelementptr [4 x i8], ptr %i.by, i64 %i.b ; 2 uses
  %i.cb = add <4 x i32> %vec.ind, %broadcast.splat
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.cc = getelementptr i8, ptr %i.ca, i64 16
  store <4 x i32> %i.cb, ptr %i.ca, align 4, !tbaa !120
  store <4 x i32> %.reass, ptr %i.cc, align 4, !tbaa !120
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !537

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader
end_hunk_2
begin_hunk_3_@_ZN3igl6opengl10ViewerData27set_edges_from_vector_fieldERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_S6_:bb.a
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ce = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv.prol ; 2 uses
  %i.cf = trunc nuw nsw i64 %indvars.iv.prol to i32 ; 2 uses
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !120
  %i.cg = getelementptr [4 x i8], ptr %i.ce, i64 %i.b
  %i.ch = add i32 %i.cf, %i.bv
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !120
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !538

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ci = sub nsw i64 %indvars.iv.ph, %i.bt
  %i.cj = icmp ugt i64 %i.ci, -4
  br i1 %i.cj, label %._crit_edge, label %scalar.ph

bb.l:                                             ; preds = %bb.g
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %._crit_edge11.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.m ], [ %i.ck, %bb.l ]
  %i.cm = load ptr, ptr %16, align 8, !tbaa !59
  call void @free(ptr noundef %i.cm) #25
  br label %.body

.body:                                            ; preds = %bb.f, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.z, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %common.resume

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cn = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.co = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !120
  %i.cp = getelementptr [4 x i8], ptr %i.cn, i64 %i.b
  %i.cq = add i32 %i.co, %i.bv
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !120
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv.next ; 2 uses
  %i.cs = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !120
  %i.ct = getelementptr [4 x i8], ptr %i.cr, i64 %i.b
  %i.cu = add i32 %i.cs, %i.bv
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !120
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv.next.1 ; 2 uses
  %i.cw = trunc nuw nsw i64 %indvars.iv.next.1 to i32 ; 2 uses
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !120
  %i.cx = getelementptr [4 x i8], ptr %i.cv, i64 %i.b
  %i.cy = add i32 %i.cw, %i.bv
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !120
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cz = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv.next.2 ; 2 uses
  %i.da = trunc nuw nsw i64 %indvars.iv.next.2 to i32 ; 2 uses
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !120
  %i.db = getelementptr [4 x i8], ptr %i.cz, i64 %i.b
  %i.dc = add i32 %i.da, %i.bv
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !120
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.bt
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !539

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  store ptr %3, ptr %18, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_9ReplicateIS2_Li2ELi1EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateIS1_Li2ELi1EEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.r

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateIS1_Li2ELi1EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !77
  %i.df = icmp eq i64 %i.de, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  br i1 %i.df, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateIS1_Li2ELi1EEEEERKNS_9EigenBaseIT_EE.exit
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit40 unwind label %bb.s

bb.p:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateIS1_Li2ELi1EEEEERKNS_9EigenBaseIT_EE.exit
  store ptr %3, ptr %20, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_9ReplicateIS2_Li2ELi1EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit40 unwind label %bb.t

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit40: ; preds = %bb.p, %bb.o
  invoke void @_ZN3igl6opengl10ViewerData9set_edgesERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEES6_(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit40
  %i.dg = load ptr, ptr %19, align 8, !tbaa !59
  call void @free(ptr noundef %i.dg) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.dh = load ptr, ptr %17, align 8, !tbaa !59
  call void @free(ptr noundef %i.dh) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.di = load ptr, ptr %15, align 8, !tbaa !59
  call void @free(ptr noundef %i.di) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @free(ptr noundef %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  ret void

bb.r:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.x

bb.s:                                             ; preds = %bb.o
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.t:                                             ; preds = %bb.p
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit40
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = load ptr, ptr %19, align 8, !tbaa !59
  call void @free(ptr noundef %i.dn) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn31 = phi { ptr, i32 } [ %i.dm, %bb.u ], [ %i.dl, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %bb.v ], [ %i.dk, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.do = load ptr, ptr %17, align 8, !tbaa !59
  call void @free(ptr noundef %i.do) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %bb.w ], [ %i.dj, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.dp = load ptr, ptr %15, align 8, !tbaa !59
  call void @free(ptr noundef %i.dp) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.x, %.body
  %.pn35.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %bb.x ], [ %.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @free(ptr noundef %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  resume { ptr, i32 } %.pn35.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerData9add_edgesERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_S6_(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.420", align 8 ; 5 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.491", align 8 ; 5 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.496", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.420", align 8 ; 5 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.491", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.496", align 8 ; 7 uses
  %11 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %12 = alloca %"class.Eigen::Matrix.3", align 8  ; 18 uses
  %13 = alloca %"class.Eigen::Matrix.3", align 8  ; 20 uses
  %14 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  %15 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76   ; 8 uses
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.h = icmp sgt i64 %i.e, 3074457345618258602
  br i1 %i.h, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %16 = mul nsw i64 %i.e, 3
  %.not.i90 = icmp eq i64 %i.e, 0
  br i1 %.not.i90, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread, label %bb.c

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  store i64 %i.e, ptr %i.f, align 8, !tbaa !77
  store i64 3, ptr %i.g, align 8, !tbaa !76
  br label %.loopexit150

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %i.i = icmp sgt i64 %i.e, 0
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread188

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread188: ; preds = %bb.c
  store ptr null, ptr %12, align 8, !tbaa !59
  store i64 %i.e, ptr %i.f, align 8, !tbaa !77
  store i64 3, ptr %i.g, align 8, !tbaa !76
  br label %.loopexit150

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %16, 2305843009213693951
  br i1 %i.j, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.d
  %i.k = mul i64 %i.e, 24
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #27 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.invoke, label %.loopexit150.loopexit

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d, %bb.b
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !78
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont unwind label %bb.j

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit150.loopexit:                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.l, ptr %12, align 8, !tbaa !59
  store i64 %i.e, ptr %i.f, align 8, !tbaa !77
  store i64 3, ptr %i.g, align 8, !tbaa !76
  %.idx.i.i.i.i.i.i.i.i.i = mul i64 %i.e, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !80
  br label %.loopexit150

.loopexit150:                                     ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread188, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread, %.loopexit150.loopexit
  %i.o = phi ptr [ null, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread ], [ %i.l, %.loopexit150.loopexit ], [ null, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread188 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store ptr %i.o, ptr %14, align 8, !tbaa !82, !alias.scope !540
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.e, ptr %i.p, align 8, !tbaa !88, !alias.scope !540
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 2, ptr %i.q, align 8, !tbaa !88, !alias.scope !540
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %12, ptr %i.r, align 8, !tbaa !89, !alias.scope !540
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i64 %i.e, ptr %i.t, align 8, !tbaa !91, !alias.scope !540
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.u = load ptr, ptr %1, align 8, !tbaa !59
  store ptr %i.u, ptr %8, align 8, !tbaa !94
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.e, ptr %i.v, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %i.o, ptr %9, align 8, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.e, ptr %i.w, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %9, ptr %10, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %8, ptr %i.x, align 8, !tbaa !102
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %11, ptr %i.y, align 8, !tbaa !104
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %14, ptr %i.z, align 8, !tbaa !106
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %.loopexit150
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !77 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %.not.i.i.i.i.i.i.i.i39 = icmp eq i64 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %.not8.i.i.i.i.i.i.i.i40 = icmp eq i64 %i.ae, 3
  %or.cond.i.i.i.i.i.i.i.i41 = select i1 %.not.i.i.i.i.i.i.i.i39, i1 %.not8.i.i.i.i.i.i.i.i40, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i41, label %.loopexit149, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp sgt i64 %i.ab, 3074457345618258602
  br i1 %i.af, label %.invoke199, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i43

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i43: ; preds = %bb.f
  %17 = mul nsw i64 %i.ab, 3
  %.not.i93 = icmp eq i64 %i.ab, 0
  br i1 %.not.i93, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i46.thread190, label %bb.g

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i46.thread190: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i43
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !77
  store i64 3, ptr %i.ad, align 8, !tbaa !76
  br label %.loopexit149

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i43
  %i.ag = icmp sgt i64 %i.ab, 0
  br i1 %i.ag, label %bb.h, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i46.thread191

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i46.thread191: ; preds = %bb.g
  store ptr null, ptr %13, align 8, !tbaa !59
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !77
  store i64 3, ptr %i.ad, align 8, !tbaa !76
  br label %.loopexit149

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp samesign ugt i64 %17, 2305843009213693951
  br i1 %i.ah, label %.invoke199, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i96

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i96: ; preds = %bb.h
  %i.ai = mul i64 %i.ab, 24
  %i.aj = call noalias ptr @malloc(i64 noundef %i.ai) #27 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.invoke199, label %.loopexit149.loopexit

.invoke199:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i96, %bb.h, %bb.f
  %i.al = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.al, align 8, !tbaa !78
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont200 unwind label %bb.l

.cont200:                                         ; preds = %.invoke199
  unreachable

.loopexit149.loopexit:                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i96
  store ptr %i.aj, ptr %13, align 8, !tbaa !59
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !77
  store i64 3, ptr %i.ad, align 8, !tbaa !76
  %.idx.i.i.i.i.i.i.i.i.i47 = mul i64 %i.ab, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aj, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i47, i1 false), !tbaa !80
  br label %.loopexit149

.loopexit149:                                     ; preds = %bb.e, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i46.thread191, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i46.thread190, %.loopexit149.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.am = load ptr, ptr %13, align 8, !tbaa !59, !noalias !543 ; 2 uses
  %i.an = load i64, ptr %i.ac, align 8, !tbaa !77, !noalias !543 ; 2 uses
  store ptr %i.am, ptr %15, align 8, !tbaa !82, !alias.scope !543
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ab, ptr %i.ao, align 8, !tbaa !88, !alias.scope !543
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 2, ptr %i.ap, align 8, !tbaa !88, !alias.scope !543
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %13, ptr %i.aq, align 8, !tbaa !89, !alias.scope !543
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  store i64 %i.an, ptr %i.as, align 8, !tbaa !91, !alias.scope !543
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.at = load ptr, ptr %2, align 8, !tbaa !59
  store ptr %i.at, ptr %4, align 8, !tbaa !94
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ab, ptr %i.au, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.am, ptr %5, align 8, !tbaa !97
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.an, ptr %i.av, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %5, ptr %6, align 8, !tbaa !100
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.aw, align 8, !tbaa !102
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.ax, align 8, !tbaa !104
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %15, ptr %i.ay, align 8, !tbaa !106
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %.loopexit149
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit80

bb.j:                                             ; preds = %.invoke
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.k:                                             ; preds = %.loopexit150
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ac

bb.l:                                             ; preds = %.invoke199
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.m:                                             ; preds = %.loopexit149
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.ac

bb.n:                                             ; preds = %bb.a
  %i.bd = load ptr, ptr %1, align 8, !tbaa !59    ; 8 uses
  %i.be = ptrtoaddr ptr %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !77 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.bj = or i64 %i.bg, %i.b
  %or.cond.i.i.i.i.i.i.i.i58 = icmp eq i64 %i.bj, 0
  br i1 %or.cond.i.i.i.i.i.i.i.i58, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not8.i.i.i.i.i.i.i.i57 = icmp eq i64 %i.b, 0
  %.not.i.i.i.i.i.i.i.i56 = icmp eq i64 %i.bg, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i59 = or i1 %.not8.i.i.i.i.i.i.i.i57, %.not.i.i.i.i.i.i.i.i56
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i59, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i60, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = sdiv i64 9223372036854775807, %i.b
  %i.bl = icmp sgt i64 %i.bg, %i.bk
  br i1 %i.bl, label %.invoke201, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i60

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i60: ; preds = %bb.p, %bb.o
  %i.bm = mul nsw i64 %i.bg, %i.b                 ; 9 uses
  %.not.i100 = icmp eq i64 %i.bm, 0
  br i1 %.not.i100, label %._crit_edge.thread195, label %bb.q

._crit_edge.thread195:                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i60
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !77
  store i64 %i.b, ptr %i.bi, align 8, !tbaa !76
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i60
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %bb.r, label %._crit_edge.thread196

._crit_edge.thread196:                            ; preds = %bb.q
  store ptr null, ptr %12, align 8, !tbaa !59
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !77
  store i64 %i.b, ptr %i.bi, align 8, !tbaa !76
  %.nonneg = sub i64 0, %i.bm
  %i.bo = and i64 %.nonneg, -2
  %i.bp = sub i64 0, %i.bo
  br label %._crit_edge.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bq = icmp samesign ugt i64 %i.bm, 2305843009213693951
  br i1 %i.bq, label %.invoke201, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i103

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i103: ; preds = %bb.r
  %i.br = shl nuw i64 %i.bm, 3
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.br) #27 ; 5 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.invoke201, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i103
  store ptr %i.bs, ptr %12, align 8, !tbaa !59
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !77
  store i64 %i.b, ptr %i.bi, align 8, !tbaa !76
  %i.bu = and i64 %i.bm, 2305843009213693950      ; 3 uses
  %.not = icmp eq i64 %i.bm, 1
  br i1 %.not, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %._crit_edge.thread196, %._crit_edge.thread195, %._crit_edge
  %i.bv = phi i64 [ 0, %._crit_edge.thread195 ], [ %i.bp, %._crit_edge.thread196 ], [ %i.bu, %._crit_edge ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bw = phi ptr [ null, %._crit_edge.thread195 ], [ null, %._crit_edge.thread196 ], [ %i.bs, %._crit_edge ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i ] ; 7 uses
  %.pre-phi194 = phi i64 [ 0, %._crit_edge.thread195 ], [ %i.bm, %._crit_edge.thread196 ], [ 1, %._crit_edge ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bx = icmp slt i64 %i.bv, %.pre-phi194
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.by = ptrtoaddr ptr %i.bw to i64
  %i.bz = sub i64 %.pre-phi194, %i.bv             ; 3 uses
  %min.iters.check = icmp ult i64 %i.bz, 8
  %i.ca = sub i64 %i.be, %i.by
  %diff.check = icmp ugt i64 %i.ca, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader276, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bz, -4                      ; 3 uses
  %i.cb = add i64 %i.bv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = add i64 %i.bv, %index                   ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.cc ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load = load <2 x double>, ptr %i.ce, align 8, !tbaa !80
  %wide.load203 = load <2 x double>, ptr %i.cf, align 8, !tbaa !80
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x double> %wide.load, ptr %i.cd, align 8, !tbaa !80
  store <2 x double> %wide.load203, ptr %i.cg, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !546

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader276

.lr.ph.i.i.i.i.i.i.i.i.i.preheader276:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cb, %middle.block ] ; 4 uses
  %i.ci = sub i64 %.pre-phi194, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ci, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_3
