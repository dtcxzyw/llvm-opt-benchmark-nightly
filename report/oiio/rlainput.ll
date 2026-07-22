inline.NumInlined: 3418
inline.NumDeleted: 1025
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN11OpenImageIO4v3_18RLAInput16get_month_numberENS0_17basic_string_viewIcSt11char_traitsIcEEE:bb.a

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.7: ; preds = %bb.p, %bb.o
  %i.ax = phi i64 [ %i.aw, %bb.p ], [ 0, %bb.o ]
  store i64 %i.ax, ptr %i.c, align 8, !tbaa !28
  %i.ay = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
  br i1 %i.ay, label %bb.y, label %bb.q

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.7
  %i.az = load ptr, ptr %1, align 8, !tbaa !26
  store ptr %i.az, ptr %2, align 8, !tbaa !26
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !28
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !28
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_18RLAInput16get_month_numberENS0_17basic_string_viewIcSt11char_traitsIcEEEE6months, i64 72), align 8, !tbaa !171 ; 3 uses
  store ptr %i.bb, ptr %3, align 8, !tbaa !26
  %.not.i.8 = icmp eq ptr %i.bb, null
  br i1 %.not.i.8, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.8, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #28
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.8

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.8: ; preds = %bb.r, %bb.q
  %i.bd = phi i64 [ %i.bc, %bb.r ], [ 0, %bb.q ]
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !28
  %i.be = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
  br i1 %i.be, label %bb.y, label %bb.s

bb.s:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.8
  %i.bf = load ptr, ptr %1, align 8, !tbaa !26
  store ptr %i.bf, ptr %2, align 8, !tbaa !26
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !28
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !28
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_18RLAInput16get_month_numberENS0_17basic_string_viewIcSt11char_traitsIcEEEE6months, i64 80), align 16, !tbaa !171 ; 3 uses
  store ptr %i.bh, ptr %3, align 8, !tbaa !26
  %.not.i.9 = icmp eq ptr %i.bh, null
  br i1 %.not.i.9, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.9, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bh) #28
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.9

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.9: ; preds = %bb.t, %bb.s
  %i.bj = phi i64 [ %i.bi, %bb.t ], [ 0, %bb.s ]
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !28
  %i.bk = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
  br i1 %i.bk, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.9
  %i.bl = load ptr, ptr %1, align 8, !tbaa !26
  store ptr %i.bl, ptr %2, align 8, !tbaa !26
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !28
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !28
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_18RLAInput16get_month_numberENS0_17basic_string_viewIcSt11char_traitsIcEEEE6months, i64 88), align 8, !tbaa !171 ; 3 uses
  store ptr %i.bn, ptr %3, align 8, !tbaa !26
  %.not.i.10 = icmp eq ptr %i.bn, null
  br i1 %.not.i.10, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.10, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bn) #28
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.10

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.10: ; preds = %bb.v, %bb.u
  %i.bp = phi i64 [ %i.bo, %bb.v ], [ 0, %bb.u ]
  store i64 %i.bp, ptr %i.c, align 8, !tbaa !28
  %i.bq = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
  br i1 %i.bq, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.10
  %i.br = load ptr, ptr %1, align 8, !tbaa !26
  store ptr %i.br, ptr %2, align 8, !tbaa !26
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !28
  store i64 %i.bs, ptr %i.a, align 8, !tbaa !28
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11OpenImageIO4v3_18RLAInput16get_month_numberENS0_17basic_string_viewIcSt11char_traitsIcEEEE6months, i64 96), align 16, !tbaa !171 ; 3 uses
  store ptr %i.bt, ptr %3, align 8, !tbaa !26
  %.not.i.11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.11, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.11, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bt) #28
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.11

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.11: ; preds = %bb.x, %bb.w
  %i.bv = phi i64 [ %i.bu, %bb.x ], [ 0, %bb.w ]
  store i64 %i.bv, ptr %i.c, align 8, !tbaa !28
  %i.bw = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
  %spec.select = select i1 %i.bw, i32 12, i32 -1
  br label %bb.y

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.11, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.10, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.9, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.8, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.7, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.6, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.5, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.4, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.3, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.2, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.1, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %i.bx = phi i32 [ 1, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit ], [ 7, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.6 ], [ 2, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.1 ], [ %spec.select, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.11 ], [ 3, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.2 ], [ 9, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.8 ], [ 4, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.3 ], [ 11, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.10 ], [ 5, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.4 ], [ 8, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.7 ], [ 6, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.5 ], [ 10, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.9 ]
  ret i32 %i.bx
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA37_cJRiS5_S5_S5_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(37) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #6 {
bb.a:
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.108", align 16 ; 8 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !172
  store i32 %i.b, ptr %7, align 16, !tbaa !16, !alias.scope !172
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !3, !noalias !172
  store i32 %i.d, ptr %i.c, align 16, !tbaa !16, !alias.scope !172
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.f = load i32, ptr %4, align 4, !tbaa !3, !noalias !172
  store i32 %i.f, ptr %i.e, align 16, !tbaa !16, !alias.scope !172
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.h = load i32, ptr %5, align 4, !tbaa !3, !noalias !172
  store i32 %i.h, ptr %i.g, align 16, !tbaa !16, !alias.scope !172
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.j = load i32, ptr %6, align 4, !tbaa !3, !noalias !172
  store i32 %i.j, ptr %i.i, align 16, !tbaa !16, !alias.scope !172
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %1, i64 %i.a, i64 69905, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void
}

declare void @_ZN11OpenImageIO4v3_127set_colorspace_rec709_gammaERNS0_9ImageSpecEf(ptr noundef nonnull align 8 dereferenceable(160), float noundef) local_unnamed_addr #1

declare noundef float @_ZN11OpenImageIO4v3_17Strutil4stofEPKcPm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil11scan_valuesENS0_17basic_string_viewIcSt11char_traitsIcEEES5_NS0_4spanIfLm18446744073709551615EEES5_S5_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr %2, i64 %3, ptr noundef dead_on_return %4, ptr noundef dead_on_return %5) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  store ptr %i.a, ptr %6, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28
  store i64 %i.d, ptr %i.b, align 8, !tbaa !28
  %i.e = load ptr, ptr %1, align 8, !tbaa !26
  store ptr %i.e, ptr %7, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  store i64 %i.h, ptr %i.f, align 8, !tbaa !28
  %i.i = load ptr, ptr %4, align 8, !tbaa !26
  store ptr %i.i, ptr %8, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28
  store i64 %i.l, ptr %i.j, align 8, !tbaa !28
  %i.m = load ptr, ptr %5, align 8, !tbaa !26
  store ptr %i.m, ptr %9, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  store i64 %i.p, ptr %i.n, align 8, !tbaa !28
  %i.q = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12parse_valuesERNS0_17basic_string_viewIcSt11char_traitsIcEEES5_NS0_4spanIfLm18446744073709551615EEES5_S5_b(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull dead_on_return %7, ptr %2, i64 %3, ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9, i1 noundef zeroext true) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret i1 %i.q
}

declare void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18RLAInput5closeEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_110ImageInput13ioproxy_clearEv(ptr noundef nonnull align 8 dereferenceable(1024) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %.not.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_18RLAInput4initEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !19
  br label %_ZN11OpenImageIO4v3_18RLAInput4initEv.exit

_ZN11OpenImageIO4v3_18RLAInput4initEv.exit:       ; preds = %bb.a, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  %i.b = icmp ne i64 %5, 0
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph68, label %._crit_edge

.lr.ph68:                                         ; preds = %bb.a
  %i.d = sext i32 %3 to i64                       ; 10 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph68, %.loopexit
  %.03867 = phi i64 [ 0, %.lr.ph68 ], [ %.2, %.loopexit ] ; 3 uses
  %.04066 = phi ptr [ %1, %.lr.ph68 ], [ %.3, %.loopexit ] ; 5 uses
  %.04365 = phi i32 [ %2, %.lr.ph68 ], [ %.346, %.loopexit ] ; 6 uses
  %i.e = add nuw i64 %.03867, 1                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %.03867
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16    ; 3 uses
  %6 = sext i8 %i.g to i32
  %i.h = icmp sgt i8 %i.g, -1
  %i.i = icmp ult i64 %i.e, %5                    ; 2 uses
  br i1 %i.h, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.b
  br i1 %i.i, label %.lr.ph61, label %.critedge

.lr.ph61:                                         ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %i.e
  %i.k = add nsw i32 %.04365, -1
  %umin = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %6) ; 2 uses
  %.pre = load i8, ptr %i.j, align 1, !tbaa !16   ; 9 uses
  %i.l = add nuw nsw i32 %umin, 1                 ; 2 uses
  %xtraiter = and i32 %i.l, 7                     ; 3 uses
  %i.m = icmp ult i32 %umin, 7
  br i1 %i.m, label %.epil.preheader, label %.lr.ph61.new

.lr.ph61.new:                                     ; preds = %.lr.ph61
  %unroll_iter = and i32 %i.l, 248
  br label %bb.d

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph61
  %.14159.epil.init = phi ptr [ %.04066, %.lr.ph61 ], [ %i.x, %.critedge.loopexit.unr-lcssa ]
  %.14458.epil.init = phi i32 [ %.04365, %.lr.ph61 ], [ %i.y, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod93 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod93)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.14159.epil = phi ptr [ %.14159.epil.init, %.epil.preheader ], [ %i.n, %bb.c ] ; 2 uses
  %.14458.epil = phi i32 [ %.14458.epil.init, %.epil.preheader ], [ %i.o, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  store i8 %.pre, ptr %.14159.epil, align 1, !tbaa !16
  %i.n = getelementptr inbounds i8, ptr %.14159.epil, i64 %i.d ; 2 uses
  %i.o = add nsw i32 %.14458.epil, -1             ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %bb.c, !llvm.loop !175

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %bb.c, %.preheader
  %.144.lcssa = phi i32 [ %.04365, %.preheader ], [ %i.y, %.critedge.loopexit.unr-lcssa ], [ %i.o, %bb.c ]
  %.141.lcssa = phi ptr [ %.04066, %.preheader ], [ %i.x, %.critedge.loopexit.unr-lcssa ], [ %i.n, %bb.c ]
  %i.p = add i64 %.03867, 2
  br label %.loopexit

bb.d:                                             ; preds = %bb.d, %.lr.ph61.new
  %.14159 = phi ptr [ %.04066, %.lr.ph61.new ], [ %i.x, %bb.d ] ; 2 uses
  %.14458 = phi i32 [ %.04365, %.lr.ph61.new ], [ %i.y, %bb.d ]
  %niter = phi i32 [ 0, %.lr.ph61.new ], [ %niter.next.7, %bb.d ]
  store i8 %.pre, ptr %.14159, align 1, !tbaa !16
  %i.q = getelementptr inbounds i8, ptr %.14159, i64 %i.d ; 2 uses
  store i8 %.pre, ptr %i.q, align 1, !tbaa !16
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.d ; 2 uses
  store i8 %.pre, ptr %i.r, align 1, !tbaa !16
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.d ; 2 uses
  store i8 %.pre, ptr %i.s, align 1, !tbaa !16
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.d ; 2 uses
  store i8 %.pre, ptr %i.t, align 1, !tbaa !16
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.d ; 2 uses
  store i8 %.pre, ptr %i.u, align 1, !tbaa !16
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.d ; 2 uses
  store i8 %.pre, ptr %i.v, align 1, !tbaa !16
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.d ; 2 uses
  store i8 %.pre, ptr %i.w, align 1, !tbaa !16
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.d ; 3 uses
  %i.y = add nsw i32 %.14458, -8                  ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.critedge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !177

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.z = sub i8 0, %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03755 = phi i8 [ %i.ad, %.lr.ph ], [ %i.z, %.lr.ph.preheader ]
  %.154 = phi i64 [ %i.aa, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.24253 = phi ptr [ %i.ae, %.lr.ph ], [ %.04066, %.lr.ph.preheader ] ; 2 uses
  %.24552 = phi i32 [ %i.af, %.lr.ph ], [ %.04365, %.lr.ph.preheader ]
  %i.aa = add nuw i64 %.154, 1                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %.154
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16
  store i8 %i.ac, ptr %.24253, align 1, !tbaa !16
  %i.ad = add i8 %.03755, -1                      ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.24253, i64 %i.d ; 2 uses
  %i.af = add nsw i32 %.24552, -1                 ; 3 uses
  %i.ag = icmp ne i8 %i.ad, 0
  %i.ah = icmp ne i32 %i.af, 0
  %or.cond3 = select i1 %i.ag, i1 %i.ah, i1 false
  %i.ai = icmp ult i64 %i.aa, %5
  %i.aj = select i1 %or.cond3, i1 %i.ai, i1 false
  br i1 %i.aj, label %.lr.ph, label %.loopexit, !llvm.loop !178

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %.critedge
  %.346 = phi i32 [ %.144.lcssa, %.critedge ], [ %.04365, %bb.e ], [ %i.af, %.lr.ph ] ; 3 uses
  %.3 = phi ptr [ %.141.lcssa, %.critedge ], [ %.04066, %bb.e ], [ %i.ae, %.lr.ph ]
  %.2 = phi i64 [ %i.p, %.critedge ], [ %i.e, %bb.e ], [ %i.aa, %.lr.ph ] ; 3 uses
  %i.ak = icmp sgt i32 %.346, 0
  %i.al = icmp ult i64 %.2, %5
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %bb.b, label %._crit_edge, !llvm.loop !179

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.043.lcssa = phi i32 [ %2, %bb.a ], [ %.346, %.loopexit ]
  %.038.lcssa = phi i64 [ 0, %bb.a ], [ %.2, %.loopexit ]
  %.not = icmp eq i32 %.043.lcssa, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.34)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.039 = phi i64 [ 0, %bb.f ], [ %.038.lcssa, %._crit_edge ]
  ret i64 %.039
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18RLAInput20decode_channel_groupEissi(ptr noundef nonnull align 8 dereferenceable(1024) %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i16, align 2                      ; 7 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !102  ; 2 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  store i64 %i.k, ptr %5, align 8
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.m, i32 1)
  %i.n = lshr i64 %i.k, 8
  %i.o = and i64 %i.n, 255
  %i.p = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %5) #28
  %i.q = mul i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = mul i32 %narrow.i, %i.r                  ; 3 uses
  %i.t = mul nsw i32 %i.s, %1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !122
  %i.w = mul nsw i32 %i.s, %i.v
  br label %.loopexit311

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = sext i32 %1 to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 4             ; 3 uses
  store i64 %i.aa, ptr %5, align 8
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %narrow.i190 = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ad = lshr i64 %i.aa, 8
  %i.ae = and i64 %i.ad, 255
  %i.af = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %5) #28
  %i.ag = mul i64 %i.af, %i.ae
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = mul i32 %narrow.i190, %i.ah             ; 2 uses
  %i.aj = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.x, i1 noundef zeroext true) #28
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = icmp sgt i32 %1, 0
  br i1 %i.al, label %.lr.ph.preheader, label %.loopexit311

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0146352 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ax, %.lr.ph ]
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !99
  %narrow.i192 = call i32 @llvm.smax.i32(i32 %i.ap, i32 1)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !100
  %i.as = zext i8 %i.ar to i64
  %i.at = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.an) #28
  %i.au = mul i64 %i.at, %i.as
  %i.av = trunc i64 %i.au to i32
  %i.aw = mul i32 %narrow.i192, %i.av
  %i.ax = add i32 %i.aw, %.0146352                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit311, label %.lr.ph, !llvm.loop !180

.loopexit311:                                     ; preds = %.lr.ph, %bb.c, %bb.b
  %.0150 = phi i32 [ %i.w, %bb.b ], [ %i.ak, %bb.c ], [ %i.ak, %.lr.ph ] ; 12 uses
  %.1147 = phi i32 [ %i.t, %bb.b ], [ 0, %bb.c ], [ %i.ax, %.lr.ph ] ; 10 uses
  %.0143 = phi i32 [ %i.s, %bb.b ], [ %i.ai, %bb.c ], [ %i.ai, %.lr.ph ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.ay = sext i16 %2 to i32                      ; 13 uses
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %.not187363 = icmp sgt i16 %2, 0                ; 7 uses
  br i1 %.not187363, label %.lr.ph367, label %._crit_edge

end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18RLAInput20decode_channel_groupEissi:bb.a
  br i1 %.not28.i.i, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %.sroa.11.0365, align 1, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.11.0365, i64 1 ; 2 uses
  %i.bq = add nsw i64 %i.bk, -1                   ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr i8, ptr %.sroa.11.0365, i64 %i.bk
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bp, i8 0, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 %i.bk)
  %i.bt = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.bi ; 2 uses
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #32
          to label %.noexc195 unwind label %.loopexit306 ; 5 uses

.noexc195:                                        ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bi ; 2 uses
  store i8 0, ptr %i.bv, align 1, !tbaa !16
  %i.bw = add nsw i64 %i.bk, -1                   ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i, label %bb.h

bb.h:                                             ; preds = %.noexc195
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.by, i8 0, i64 %i.bw, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i: ; preds = %bb.h, %.noexc195
  %.not35.i.i = icmp eq ptr %.sroa.11.0365, %.sroa.0.0366
  br i1 %.not35.i.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr align 1 %.sroa.0.0366, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i: ; preds = %bb.i, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i
  %.not.i33.i.i = icmp eq ptr %.sroa.0.0366, null
  br i1 %.not.i33.i.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  %i.bz = sub i64 %i.bl, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0366, i64 noundef %i.bz) #29
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i: ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bf
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.k:                                             ; preds = %.lr.ph.i.i.preheader
  %i.cc = icmp ugt i64 %i.bi, %i.bf
  br i1 %i.cc, label %bb.l, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0366, i64 %i.bf ; 2 uses
  %.not.i4.i = icmp eq ptr %.sroa.11.0365, %i.cd
  %spec.select = select i1 %.not.i4.i, ptr %.sroa.11.0365, ptr %i.cd
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %bb.l, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i, %bb.g, %bb.f
  %.sroa.15.7 = phi ptr [ %i.cb, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i ], [ %.sroa.15.0364, %bb.k ], [ %.sroa.15.0364, %bb.l ], [ %.sroa.15.0364, %bb.f ], [ %.sroa.15.0364, %bb.g ] ; 11 uses
  %.sroa.11.2 = phi ptr [ %i.ca, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i ], [ %.sroa.11.0365, %bb.k ], [ %spec.select, %bb.l ], [ %i.bp, %bb.f ], [ %i.bs, %bb.g ]
  %.sroa.0.7 = phi ptr [ %i.bu, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i ], [ %.sroa.0.0366, %bb.k ], [ %.sroa.0.0366, %bb.l ], [ %.sroa.0.0366, %bb.f ], [ %.sroa.0.0366, %bb.g ] ; 17 uses
  %.not179 = icmp eq i16 %.promoted, 0
  br i1 %.not179, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %i.ce = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %.sroa.0.7, i64 noundef 1, i64 noundef %i.bf)
          to label %_ZN11OpenImageIO4v3_18RLAInput4readIcEEbPT_m.exit unwind label %.loopexit306

_ZN11OpenImageIO4v3_18RLAInput4readIcEEbPT_m.exit: ; preds = %bb.m
  br i1 %i.ce, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_18RLAInput4readIcEEbPT_m.exit, %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.36)
          to label %_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit.thread unwind label %.loopexit.split-lp307

.loopexit306:                                     ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i, %bb.m
  %.sroa.15.1.ph = phi ptr [ %.sroa.15.7, %bb.m ], [ %.sroa.15.0364, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.7, %bb.m ], [ %.sroa.0.0366, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit308 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp307:                            ; preds = %bb.n, %bb.q
  %lpad.loopexit.split-lp309 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_18RLAInput4readIcEEbPT_m.exit
  %i.cf = load i8, ptr %5, align 8, !tbaa !123
  %i.cg = icmp eq i8 %i.cf, 11
  %i.ch = load i8, ptr %i.d, align 1
  %i.ci = icmp eq i8 %i.ch, 1
  %or.cond.i = select i1 %i.cg, i1 %i.ci, i1 false
  %i.cj = load i32, ptr %i.e, align 4
  %.not.i = icmp eq i32 %i.cj, 0
  %or.cond288 = select i1 %or.cond.i, i1 %.not.i, i1 false
  br i1 %or.cond288, label %bb.p, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.preheader

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.preheader: ; preds = %bb.o
  br i1 %i.az, label %.loopexit303, label %.lr.ph357

.lr.ph357:                                        ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.preheader
  %i.ck = load i32, ptr %i.ba, align 4, !tbaa !181 ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph68.i, label %.lr.ph357.split.us

.lr.ph357.split.us:                               ; preds = %.lr.ph357
  %.not.i197.us = icmp eq i32 %i.ck, 0
  br i1 %.not.i197.us, label %_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit.thread, label %.split.us

bb.p:                                             ; preds = %bb.o
  %i.cm = load i32, ptr %i.ba, align 4, !tbaa !181 ; 5 uses
  %i.cn = mul nsw i32 %i.cm, %.0143
  %i.co = sext i32 %i.cn to i64
  %.not184 = icmp eq i64 %i.bf, %i.co
  br i1 %.not184, label %.preheader302, label %bb.q

.preheader302:                                    ; preds = %bb.p
  %i.cp = icmp sgt i32 %i.cm, 0
  br i1 %i.cp, label %.lr.ph362, label %.loopexit303

.lr.ph362:                                        ; preds = %.preheader302
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !3
  %i.cr = mul nsw i32 %i.cq, %.0143
  %invariant.op = add i32 %.1147, %i.cr           ; 3 uses
  %i.cs = load ptr, ptr %i.bb, align 8, !tbaa !17 ; 3 uses
  %wide.trip.count450 = zext nneg i32 %i.cm to i64 ; 2 uses
  %xtraiter809 = and i64 %wide.trip.count450, 1
  %i.ct = icmp eq i32 %i.cm, 1
  br i1 %i.ct, label %.epil.preheader808, label %.lr.ph362.new

.lr.ph362.new:                                    ; preds = %.lr.ph362
  %unroll_iter813 = and i64 %wide.trip.count450, 2147483646
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.37, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit.thread unwind label %.loopexit.split-lp307

bb.r:                                             ; preds = %bb.r, %.lr.ph362.new
  %indvars.iv447 = phi i64 [ 0, %.lr.ph362.new ], [ %indvars.iv.next448.1, %bb.r ] ; 4 uses
  %niter814 = phi i64 [ 0, %.lr.ph362.new ], [ %niter814.next.1, %bb.r ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.7, i64 %indvars.iv447
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !140
  %i.cw = trunc i64 %indvars.iv447 to i32
  %i.cx = mul i32 %.0150, %i.cw
  %.reass = add i32 %i.cx, %invariant.op
  %i.cy = sext i32 %.reass to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cy
  store float %i.cv, ptr %i.cz, align 4, !tbaa !140
  %indvars.iv.next448 = or disjoint i64 %indvars.iv447, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.7, i64 %indvars.iv.next448
  %i.db = load float, ptr %i.da, align 4, !tbaa !140
  %i.dc = trunc i64 %indvars.iv.next448 to i32
  %i.dd = mul i32 %.0150, %i.dc
  %.reass.1 = add i32 %i.dd, %invariant.op
  %i.de = sext i32 %.reass.1 to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.de
  store float %i.db, ptr %i.df, align 4, !tbaa !140
  %indvars.iv.next448.1 = add nuw nsw i64 %indvars.iv447, 2 ; 2 uses
  %niter814.next.1 = add i64 %niter814, 2         ; 2 uses
  %niter814.ncmp.1 = icmp eq i64 %niter814.next.1, %unroll_iter813
  br i1 %niter814.ncmp.1, label %.loopexit303.loopexit.unr-lcssa, label %bb.r, !llvm.loop !182

.lr.ph357.splitthread-pre-split:                  ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  %i.dg = add i64 %.2.i, %.0161355659             ; 2 uses
  %.pr = load i32, ptr %i.ba, align 4, !tbaa !181 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.7, i64 %i.dg
  %i.di = icmp sgt i32 %.pr, 0
  br i1 %i.di, label %.lr.ph68.i, label %._crit_edge.i.thread

.lr.ph68.i:                                       ; preds = %.lr.ph357, %.lr.ph357.splitthread-pre-split
  %i.dj = phi ptr [ %i.dh, %.lr.ph357.splitthread-pre-split ], [ %.sroa.0.7, %.lr.ph357 ] ; 3 uses
  %.0164354660 = phi i64 [ %i.fb, %.lr.ph357.splitthread-pre-split ], [ %i.bf, %.lr.ph357 ] ; 4 uses
  %.0161355659 = phi i64 [ %i.dg, %.lr.ph357.splitthread-pre-split ], [ 0, %.lr.ph357 ]
  %.0160356658 = phi i32 [ %i.fc, %.lr.ph357.splitthread-pre-split ], [ 0, %.lr.ph357 ] ; 2 uses
  %i.dk = phi i32 [ %.pr, %.lr.ph357.splitthread-pre-split ], [ %i.ck, %.lr.ph357 ]
  %i.dl = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !3
  %i.dn = mul nsw i32 %i.dm, %.0143
  %i.do = add i32 %.0160356658, %.1147
  %i.dp = add i32 %i.do, %i.dn
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dq
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.i, %.lr.ph68.i
  %.03867.i = phi i64 [ 0, %.lr.ph68.i ], [ %.2.i, %.loopexit.i ] ; 3 uses
  %.04066.i = phi ptr [ %i.dr, %.lr.ph68.i ], [ %.3.i, %.loopexit.i ] ; 5 uses
  %.04365.i = phi i32 [ %i.dk, %.lr.ph68.i ], [ %.346.i, %.loopexit.i ] ; 4 uses
  %i.ds = add nuw i64 %.03867.i, 1                ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.03867.i
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !16  ; 3 uses
  %6 = sext i8 %i.du to i32
  %i.dv = icmp sgt i8 %i.du, -1
  %i.dw = icmp ult i64 %i.ds, %.0164354660        ; 2 uses
  br i1 %i.dv, label %.preheader.i, label %bb.v

.preheader.i:                                     ; preds = %bb.s
  br i1 %i.dw, label %.lr.ph61.i, label %.critedge.i

.lr.ph61.i:                                       ; preds = %.preheader.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ds
  %i.dy = add nsw i32 %.04365.i, -1               ; 2 uses
  %umin.i = call i32 @llvm.umin.i32(i32 %i.dy, i32 %6) ; 3 uses
  %.pre.i = load i8, ptr %i.dx, align 1, !tbaa !16 ; 9 uses
  %i.dz = add nuw nsw i32 %umin.i, 1              ; 2 uses
  %xtraiter = and i32 %i.dz, 7                    ; 3 uses
  %i.ea = icmp ult i32 %umin.i, 7
  br i1 %i.ea, label %.epil.preheader, label %.lr.ph61.i.new

.lr.ph61.i.new:                                   ; preds = %.lr.ph61.i
  %unroll_iter = and i32 %i.dz, 248
  br label %bb.u

.critedge.i.loopexit.unr-lcssa:                   ; preds = %bb.u
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.i.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.i.loopexit.unr-lcssa, %.lr.ph61.i
  %.14159.i.epil.init = phi ptr [ %.04066.i, %.lr.ph61.i ], [ %i.el, %.critedge.i.loopexit.unr-lcssa ]
  %lcmp.mod807 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod807)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %.14159.i.epil = phi ptr [ %.14159.i.epil.init, %.epil.preheader ], [ %i.eb, %bb.t ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.t ]
  store i8 %.pre.i, ptr %.14159.i.epil, align 1, !tbaa !16
  %i.eb = getelementptr inbounds i8, ptr %.14159.i.epil, i64 %i.bc ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.i.loopexit, label %bb.t, !llvm.loop !183

.critedge.i.loopexit:                             ; preds = %bb.t, %.critedge.i.loopexit.unr-lcssa
  %.lcssa766 = phi ptr [ %i.el, %.critedge.i.loopexit.unr-lcssa ], [ %i.eb, %bb.t ]
  %i.ec = sub nsw i32 %i.dy, %umin.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.preheader.i
  %.144.lcssa.i = phi i32 [ %.04365.i, %.preheader.i ], [ %i.ec, %.critedge.i.loopexit ]
  %.141.lcssa.i = phi ptr [ %.04066.i, %.preheader.i ], [ %.lcssa766, %.critedge.i.loopexit ]
  %i.ed = add i64 %.03867.i, 2
  br label %.loopexit.i

bb.u:                                             ; preds = %bb.u, %.lr.ph61.i.new
  %.14159.i = phi ptr [ %.04066.i, %.lr.ph61.i.new ], [ %i.el, %bb.u ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph61.i.new ], [ %niter.next.7, %bb.u ]
  store i8 %.pre.i, ptr %.14159.i, align 1, !tbaa !16
  %i.ee = getelementptr inbounds i8, ptr %.14159.i, i64 %i.bc ; 2 uses
  store i8 %.pre.i, ptr %i.ee, align 1, !tbaa !16
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.bc ; 2 uses
  store i8 %.pre.i, ptr %i.ef, align 1, !tbaa !16
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %i.bc ; 2 uses
  store i8 %.pre.i, ptr %i.eg, align 1, !tbaa !16
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.bc ; 2 uses
  store i8 %.pre.i, ptr %i.eh, align 1, !tbaa !16
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %i.bc ; 2 uses
  store i8 %.pre.i, ptr %i.ei, align 1, !tbaa !16
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %i.bc ; 2 uses
  store i8 %.pre.i, ptr %i.ej, align 1, !tbaa !16
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %i.bc ; 2 uses
  store i8 %.pre.i, ptr %i.ek, align 1, !tbaa !16
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.bc ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.critedge.i.loopexit.unr-lcssa, label %bb.u, !llvm.loop !177

bb.v:                                             ; preds = %bb.s
  br i1 %i.dw, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.em = sub i8 0, %i.du
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.03755.i = phi i8 [ %i.eq, %.lr.ph.i ], [ %i.em, %.lr.ph.preheader.i ]
  %.154.i = phi i64 [ %i.en, %.lr.ph.i ], [ %i.ds, %.lr.ph.preheader.i ] ; 2 uses
  %.24253.i = phi ptr [ %i.er, %.lr.ph.i ], [ %.04066.i, %.lr.ph.preheader.i ] ; 2 uses
  %.24552.i = phi i32 [ %i.es, %.lr.ph.i ], [ %.04365.i, %.lr.ph.preheader.i ]
  %i.en = add nuw i64 %.154.i, 1                  ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.154.i
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !16
  store i8 %i.ep, ptr %.24253.i, align 1, !tbaa !16
  %i.eq = add i8 %.03755.i, -1                    ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %.24253.i, i64 %i.bc ; 2 uses
  %i.es = add nsw i32 %.24552.i, -1               ; 3 uses
  %i.et = icmp ne i8 %i.eq, 0
  %i.eu = icmp ne i32 %i.es, 0
  %or.cond3.i = select i1 %i.et, i1 %i.eu, i1 false
  %i.ev = icmp ult i64 %i.en, %.0164354660
  %i.ew = select i1 %or.cond3.i, i1 %i.ev, i1 false
  br i1 %i.ew, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !178

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.v, %.critedge.i
  %.346.i = phi i32 [ %.144.lcssa.i, %.critedge.i ], [ %.04365.i, %bb.v ], [ %i.es, %.lr.ph.i ] ; 3 uses
  %.3.i = phi ptr [ %.141.lcssa.i, %.critedge.i ], [ %.04066.i, %bb.v ], [ %i.er, %.lr.ph.i ]
  %.2.i = phi i64 [ %i.ed, %.critedge.i ], [ %i.ds, %bb.v ], [ %i.en, %.lr.ph.i ] ; 5 uses
  %i.ex = icmp sgt i32 %.346.i, 0
  %i.ey = icmp ult i64 %.2.i, %.0164354660
  %i.ez = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %i.ez, label %bb.s, label %._crit_edge.i, !llvm.loop !179

._crit_edge.i:                                    ; preds = %.loopexit.i
  %.not.i197 = icmp eq i32 %.346.i, 0
  br i1 %.not.i197, label %_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit, label %.split.us

._crit_edge.i.thread:                             ; preds = %.lr.ph357.splitthread-pre-split
  %.not.i197530 = icmp eq i32 %.pr, 0
  br i1 %.not.i197530, label %_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit.thread, label %.split.us

.split.us:                                        ; preds = %._crit_edge.i, %._crit_edge.i.thread, %.lr.ph357.split.us
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull @.str.34)
          to label %_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit.thread unwind label %bb.w

_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit: ; preds = %._crit_edge.i
  %.not180.not = icmp eq i64 %.2.i, 0
  br i1 %.not180.not, label %_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit.thread, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit

bb.w:                                             ; preds = %.split.us
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit: ; preds = %_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit
  %i.fb = sub i64 %.0164354660, %.2.i             ; 2 uses
  %i.fc = add nuw nsw i32 %.0160356658, 1         ; 2 uses
  %i.fd = icmp sge i32 %i.fc, %.0143
  %i.fe = icmp eq i64 %i.fb, 0
  %.not183 = select i1 %i.fd, i1 true, i1 %i.fe
  br i1 %.not183, label %.loopexit303, label %.lr.ph357.splitthread-pre-split, !llvm.loop !184

.loopexit303.loopexit.unr-lcssa:                  ; preds = %bb.r
  %lcmp.mod811.not = icmp eq i64 %xtraiter809, 0
  br i1 %lcmp.mod811.not, label %.loopexit303, label %.epil.preheader808

.epil.preheader808:                               ; preds = %.loopexit303.loopexit.unr-lcssa, %.lr.ph362
  %indvars.iv447.epil.init = phi i64 [ 0, %.lr.ph362 ], [ %indvars.iv.next448.1, %.loopexit303.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod812 = trunc i32 %i.cm to i1
  call void @llvm.assume(i1 %lcmp.mod812)
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.7, i64 %indvars.iv447.epil.init
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !140
  %i.fh = trunc i64 %indvars.iv447.epil.init to i32
  %i.fi = mul i32 %.0150, %i.fh
  %.reass.epil = add i32 %i.fi, %invariant.op
  %i.fj = sext i32 %.reass.epil to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.fj
  store float %i.fg, ptr %i.fk, align 4, !tbaa !140
  br label %.loopexit303

.loopexit303:                                     ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, %.epil.preheader808, %.loopexit303.loopexit.unr-lcssa, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.preheader, %.preheader302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.fl = load i32, ptr %i.b, align 4, !tbaa !3
  %i.fm = add nsw i32 %i.fl, 1                    ; 2 uses
  store i32 %i.fm, ptr %i.b, align 4, !tbaa !3
  %.not187 = icmp slt i32 %i.fm, %i.ay
  br i1 %.not187, label %bb.d, label %._crit_edge, !llvm.loop !186

bb.x:                                             ; preds = %.loopexit306, %.loopexit.split-lp307, %.loopexit305, %.loopexit.split-lp, %bb.w
  %.sroa.15.3 = phi ptr [ %.sroa.15.0364, %.loopexit.split-lp ], [ %.sroa.15.7, %bb.w ], [ %.sroa.15.0364, %.loopexit305 ], [ %.sroa.15.1.ph, %.loopexit306 ], [ %.sroa.15.7, %.loopexit.split-lp307 ]
  %.sroa.0.3 = phi ptr [ %.sroa.0.0366, %.loopexit.split-lp ], [ %.sroa.0.7, %bb.w ], [ %.sroa.0.0366, %.loopexit305 ], [ %.sroa.0.1.ph, %.loopexit306 ], [ %.sroa.0.7, %.loopexit.split-lp307 ]
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.fa, %bb.w ], [ %lpad.loopexit, %.loopexit305 ], [ %lpad.loopexit308, %.loopexit306 ], [ %lpad.loopexit.split-lp309, %.loopexit.split-lp307 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.aj

_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit, %._crit_edge.i.thread, %.lr.ph357.split.us, %.split.us, %_ZN11OpenImageIO4v3_18RLAInput4readItEEbPT_m.exit, %bb.n, %bb.q
  %.sroa.15.2.ph = phi ptr [ %.sroa.15.7, %bb.n ], [ %.sroa.15.0364, %_ZN11OpenImageIO4v3_18RLAInput4readItEEbPT_m.exit ], [ %.sroa.15.7, %.split.us ], [ %.sroa.15.7, %bb.q ], [ %.sroa.15.7, %.lr.ph357.split.us ], [ %.sroa.15.7, %._crit_edge.i.thread ], [ %.sroa.15.7, %_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit ]
  %.sroa.0.2.ph = phi ptr [ %.sroa.0.7, %bb.n ], [ %.sroa.0.0366, %_ZN11OpenImageIO4v3_18RLAInput4readItEEbPT_m.exit ], [ %.sroa.0.7, %.split.us ], [ %.sroa.0.7, %bb.q ], [ %.sroa.0.7, %.lr.ph357.split.us ], [ %.sroa.0.7, %._crit_edge.i.thread ], [ %.sroa.0.7, %_ZN11OpenImageIO4v3_18RLAInput15decode_rle_spanEPhiiPKcm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.loopexit

._crit_edge:                                      ; preds = %.loopexit303, %.loopexit311
  %.sroa.15.0.lcssa = phi ptr [ null, %.loopexit311 ], [ %.sroa.15.7, %.loopexit303 ] ; 14 uses
  %.sroa.0.0.lcssa = phi ptr [ null, %.loopexit311 ], [ %.sroa.0.7, %.loopexit303 ] ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  switch i32 %.0143, label %_ZN11OpenImageIO4v3_15ceil2Ei.exit [
    i32 2, label %bb.y
    i32 4, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !122
  %i.fp = icmp eq i32 %i.fo, %i.ay
  br i1 %i.fp, label %bb.z, label %.preheader297

.preheader297:                                    ; preds = %bb.y
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !181 ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph374, label %_ZN11OpenImageIO4v3_15ceil2Ei.exit

.lr.ph374:                                        ; preds = %.preheader297
  %wide.trip.count.i205 = zext i32 %i.ay to i64   ; 6 uses
  br i1 %.not187363, label %.lr.ph.preheader.i204.preheader, label %_ZN11OpenImageIO4v3_15ceil2Ei.exit

.lr.ph.preheader.i204.preheader:                  ; preds = %.lr.ph374
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !17
  %i.fv = sext i32 %.0150 to i64
  %i.fw = sext i32 %.1147 to i64
  %wide.trip.count458 = zext nneg i32 %i.fr to i64
  %invariant.gep592 = getelementptr i8, ptr %i.fu, i64 %i.fw
  %min.iters.check676 = icmp ult i16 %2, 4
  %min.iters.check677 = icmp ult i16 %2, 16
  %n.mod.vf679 = and i64 %wide.trip.count.i205, 12
  %n.vec680 = and i64 %wide.trip.count.i205, 32752 ; 4 uses
end_hunk_1
