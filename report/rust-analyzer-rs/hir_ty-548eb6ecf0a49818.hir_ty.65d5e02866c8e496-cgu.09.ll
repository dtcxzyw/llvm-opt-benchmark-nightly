inline.NumInlined: 5162
inline.NumDeleted: 2096
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvNtCskym5ilOGwys_3log13___private_api3loguNtB2_12GlobalLoggerECs8K4cjrcxBsw_6hir_ty:bb.a
  store ptr %i.h, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !1501
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !1501
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !1501
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !1501
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !1501
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.u, align 8, !noalias !1501
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.p, ptr %i.v, align 4, !noalias !1501
  call void @_RNvXs0_NtCskym5ilOGwys_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !noalias !1501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1501
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindingsNtNvMs_NtNtB6_17method_resolution7confirmNtB1e_14ConfirmContext23instantiate_method_args10LowererCtxEB6_(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %3, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %4, i1 noundef zeroext %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %6, i1 noundef zeroext %7, ptr noundef %8, ptr noalias nofree noundef align 8 dereferenceable(32) %9) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.8.i.i.i582 = alloca i64, align 8         ; 6 uses
  %.sroa.11.i.i.i583 = alloca i64, align 8        ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.8.i.i.i492 = alloca i64, align 8         ; 6 uses
  %.sroa.11.i.i.i493 = alloca i64, align 8        ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.8.i.i.i396 = alloca i64, align 8         ; 6 uses
  %.sroa.11.i.i.i397 = alloca i64, align 8        ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.8.i.i.i299 = alloca i64, align 8         ; 6 uses
  %.sroa.11.i.i.i300 = alloca i64, align 8        ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.8.i.i.i209 = alloca i64, align 8         ; 12 uses
  %.sroa.11.i.i.i210 = alloca i64, align 8        ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.8.i.i.i = alloca i64, align 8            ; 6 uses
  %.sroa.11.i.i.i = alloca i64, align 8           ; 5 uses
  %i.g = alloca [20 x i8], align 4                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %i.j = alloca [20 x i8], align 4                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 11 uses
  %i.l = alloca [20 x i8], align 4                ; 4 uses
  %i.m = alloca [20 x i8], align 4                ; 3 uses
  %.sroa.11770 = alloca i64, align 8              ; 10 uses
  %.sroa.15771 = alloca i64, align 8              ; 6 uses
  %.sroa.11762 = alloca i64, align 8              ; 5 uses
  %.sroa.15763 = alloca i64, align 8              ; 3 uses
  %.sroa.11754 = alloca i64, align 8              ; 5 uses
  %.sroa.15755 = alloca i64, align 8              ; 3 uses
  %.sroa.11746 = alloca i64, align 8              ; 5 uses
  %.sroa.15747 = alloca i64, align 8              ; 3 uses
  %.sroa.11738 = alloca i64, align 8              ; 5 uses
  %.sroa.15739 = alloca i64, align 8              ; 3 uses
  %.sroa.11730 = alloca i64, align 8              ; 5 uses
  %.sroa.15731 = alloca i64, align 8              ; 3 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [20 x i8], align 4                ; 10 uses
  %i.p = alloca [16 x i8], align 4                ; 4 uses
  %.sroa.565 = alloca [16 x i8], align 4          ; 2 uses
  %i.q = alloca [20 x i8], align 4                ; 10 uses
  %i.r = alloca [160 x i8], align 8               ; 4 uses
  %i.s = alloca [200 x i8], align 8               ; 43 uses
  %i.t = alloca [352 x i8], align 8               ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 24 uses
  %i.v = alloca [72 x i8], align 8                ; 13 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %3, ptr %i.z, align 8
  %i.aa = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ab = icmp ult i64 %i.aa, 2
  br i1 %i.ab, label %bb.b, label %bb.e

default.unreachable923:                           ; preds = %bb.du, %bb.ds, %.loopexit1057
  unreachable

default.unreachable:                              ; preds = %bb.bn, %bb.cu
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ac = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindings10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ac, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !1505

bb.c:                                             ; preds = %bb.b
  %i.ad = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindings10___CALLSITE) #45 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.08.0 = phi i8 [ %i.ad, %bb.c ], [ %i.ac, %bb.b ], [ %i.ac, %bb.b ]
  %i.af = load ptr, ptr @_RNvNvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindings10___CALLSITE, align 8, !nonnull !5, !align !1504, !noundef !5
  %i.ag = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.af, i8 noundef %.sroa.08.0)
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvNtCs8K4cjrcxBsw_6hir_ty8generics8generics(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4)
  %i.ah = load ptr, ptr %i.z, align 8, !align !1504, !noundef !5 ; 6 uses
  %.not = icmp eq ptr %i.ah, null                 ; 3 uses
  br i1 %.not, label %bb.g, label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ai = load ptr, ptr @_RNvNvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindings10___CALLSITE, align 8, !nonnull !5, !align !1504, !noundef !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.z, ptr %i.w, align 8
  store ptr %i.w, ptr %i.x, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @33, ptr %i.ak, align 8
  store i64 1, ptr %i.y, align 8
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.x, ptr %.sroa.010.sroa.4.0..sroa_idx, align 8
  %.sroa.010.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 1, ptr %.sroa.010.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.e

bb.g:                                             ; preds = %bb.e, %bb.j
  %.sroa.5.0 = phi i64 [ %i.aq, %bb.j ], [ 0, %bb.e ] ; 3 uses
  %.sroa.011.0 = phi ptr [ %.val, %bb.j ], [ inttoptr (i64 4 to ptr), %bb.e ] ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.011.0, i64 %.sroa.5.0 ; 4 uses
  %.not2.not.not.i.not992 = icmp samesign eq i64 %.sroa.5.0, 0
  br i1 %.not2.not.not.i.not992, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindingsNtNvMs_NtNtB2E_17method_resolution7confirmNtB3M_14ConfirmContext23instantiate_method_args10LowererCtxEs_0EB2E_.exit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %.not2.not.not.i.not = icmp eq ptr %i.am, %i.al
  br i1 %.not2.not.not.i.not, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindingsNtNvMs_NtNtB2E_17method_resolution7confirmNtB3M_14ConfirmContext23instantiate_method_args10LowererCtxEs_0EB2E_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %i.an = phi ptr [ %i.am, %bb.h ], [ %.sroa.011.0, %bb.g ] ; 2 uses
  %.val.i = load i32, ptr %i.an, align 4, !range !1506, !noalias !1507, !noundef !5
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %bb.h, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindingsNtNvMs_NtNtB2E_17method_resolution7confirmNtB3M_14ConfirmContext23instantiate_method_args10LowererCtxEs_0EB2E_.exit

.body:                                            ; preds = %bb.cq, %bb.i, %.loopexit806
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit806 ], [ %i.ao, %bb.i ], [ %i.iq, %bb.cq ]
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsKj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty8generics8GenericsEBF_.exit unwind label %bb.hd

bb.i:                                             ; preds = %bb.cr, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %.noexc180, %.noexc179, %.noexc178, %.thread.i, %.thread5.i, %._crit_edge.i, %bb.n, %bb.l, %bb.z, %bb.x, %bb.w
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.e
  %.val = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5
  %i.ap = getelementptr i8, ptr %i.ah, i64 8
  %.val168 = load i64, ptr %i.ap, align 8, !noundef !5
  %i.aq = shl nuw nsw i64 %.val168, 3
  br label %bb.g

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindingsNtNvMs_NtNtB2E_17method_resolution7confirmNtB3M_14ConfirmContext23instantiate_method_args10LowererCtxEs_0EB2E_.exit: ; preds = %bb.h, %.lr.ph, %bb.g
  %.not2.not.not.i.not.lcssa = phi i1 [ %5, %bb.g ], [ %5, %bb.h ], [ false, %.lr.ph ] ; 7 uses
  %.val169 = load i8, ptr %6, align 8             ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 1
  %.val170 = load i8, ptr %i.ar, align 1          ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindingsNtNvMs_NtNtB2E_17method_resolution7confirmNtB3M_14ConfirmContext23instantiate_method_args10LowererCtxEs_0EB2E_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !1510, !noalias !1513, !noundef !5 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 33
  %i.av = load i8, ptr %i.au, align 1, !range !1517, !alias.scope !1510, !noalias !1513, !noundef !5
  %i.aw = zext nneg i8 %i.av to i64               ; 5 uses
  %i.ax = icmp ult i64 %i.at, %i.aw
  br i1 %i.ax, label %bb.n, label %bb.m, !prof !164

bb.l:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindingsNtNvMs_NtNtB2E_17method_resolution7confirmNtB3M_14ConfirmContext23instantiate_method_args10LowererCtxEs_0EB2E_.exit
  %i.ay = invoke noundef i64 @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics18len_lifetimes_self(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.v)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.l
  %.old1.not.i = icmp eq i64 %i.ay, 0
  br i1 %.old1.not.i, label %.thread.i, label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.ah, align 8, !alias.scope !1510, !noalias !1513, !nonnull !5, !noundef !5 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.at
  %i.bb = icmp samesign eq i64 %i.at, %i.aw
  br i1 %i.bb, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.aw ; 4 uses
  %10 = shl i64 %i.at, 3
  %i.bd = add i64 %10, -8
  %11 = shl nuw nsw i64 %i.aw, 3
  %12 = sub i64 %i.bd, %11                        ; 2 uses
  %min.iters.check = icmp ult i64 %12, 32
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %13 = lshr exact i64 %12, 3
  %i.be = add nuw nsw i64 %13, 1                  ; 2 uses
  %i.bf = and i64 %i.be, 3                        ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = select i1 %i.bg, i64 4, i64 %i.bf
  %n.vec = sub nsw i64 %i.be, %i.bh               ; 2 uses
  %i.bi = shl i64 %n.vec, 3
  %i.bj = getelementptr i8, ptr %i.bc, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi996 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %vec.phi997 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi998 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.br, %vector.body ]
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bk
  %i.bl = getelementptr i8, ptr %i.bc, i64 %i.bk
  %next.gep999 = getelementptr i8, ptr %i.bl, i64 16
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !noalias !1518
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec1000 = load <4 x i32>, ptr %next.gep999, align 4, !noalias !1518
  %strided.vec1001 = shufflevector <4 x i32> %wide.vec1000, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.bm = icmp ne <2 x i32> %strided.vec, splat (i32 1) ; 2 uses
  %i.bn = icmp ne <2 x i32> %strided.vec1001, splat (i32 1) ; 2 uses
  %i.bo = zext <2 x i1> %i.bm to <2 x i64>
  %i.bp = zext <2 x i1> %i.bn to <2 x i64>
  %i.bq = add <2 x i64> %vec.phi997, %i.bo        ; 2 uses
  %i.br = add <2 x i64> %vec.phi998, %i.bp        ; 2 uses
  %i.bs = xor <2 x i1> %i.bm, splat (i1 true)
  %i.bt = xor <2 x i1> %i.bn, splat (i1 true)
  %i.bu = zext <2 x i1> %i.bs to <2 x i64>
  %i.bv = zext <2 x i1> %i.bt to <2 x i64>
  %i.bw = add <2 x i64> %vec.phi, %i.bu           ; 2 uses
  %i.bx = add <2 x i64> %vec.phi996, %i.bv        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !1519

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bx, %i.bw
  %i.bz = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %bin.rdx1002 = add <2 x i64> %i.br, %i.bq
  %i.ca = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1002)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.sroa.08.016.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.bz, %middle.block ]
  %.sroa.012.015.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ca, %middle.block ]
  %.sroa.016.014.i.ph = phi ptr [ %i.bc, %.lr.ph.preheader.i ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.aw, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #44
          to label %.noexc175 unwind label %bb.i

.noexc175:                                        ; preds = %bb.n
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.08.016.i = phi i64 [ %.sroa.08.1.i, %.lr.ph.i ], [ %.sroa.08.016.i.ph, %.lr.ph.i.preheader ]
  %.sroa.012.015.i = phi i64 [ %.sroa.012.1.i, %.lr.ph.i ], [ %.sroa.012.015.i.ph, %.lr.ph.i.preheader ]
  %.sroa.016.014.i = phi ptr [ %i.cb, %.lr.ph.i ], [ %.sroa.016.014.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.016.014.i, i64 8 ; 2 uses
  %i.cc = load i32, ptr %.sroa.016.014.i, align 4, !range !1506, !noalias !1518, !noundef !5
  %i.cd = icmp ne i32 %i.cc, 1                    ; 2 uses
  %i.ce = zext i1 %i.cd to i64
  %.sroa.012.1.i = add i64 %.sroa.012.015.i, %i.ce ; 2 uses
  %not..i = xor i1 %i.cd, true
  %i.cf = zext i1 %not..i to i64
  %.sroa.08.1.i = add i64 %.sroa.08.016.i, %i.cf  ; 2 uses
  %i.cg = icmp eq ptr %i.cb, %i.ba
  br i1 %i.cg, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1522

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.m
  %.sroa.012.0.lcssa.i = phi i64 [ 0, %bb.m ], [ %.sroa.012.1.i, %.lr.ph.i ] ; 3 uses
  %.sroa.08.0.lcssa.i = phi i64 [ 0, %bb.m ], [ %.sroa.08.1.i, %.lr.ph.i ] ; 3 uses
  %i.ch = invoke noundef i64 @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics18len_lifetimes_self(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.v)
          to label %.noexc176 unwind label %bb.i  ; 4 uses

.noexc176:                                        ; preds = %._crit_edge.i
  %i.ci = icmp eq i64 %.sroa.08.0.lcssa.i, 0
  %i.cj = icmp ne i64 %i.ch, 0
  %or.cond.i = and i1 %i.ci, %i.cj
  br i1 %or.cond.i, label %bb.p, label %bb.o

default.unreachable.i:                            ; preds = %bb.q
  unreachable

bb.o:                                             ; preds = %.noexc176
  %.not33.i = icmp eq i64 %i.ch, %.sroa.08.0.lcssa.i
  br i1 %.not33.i, label %.thread.i, label %.thread5.i

bb.p:                                             ; preds = %.noexc176, %.noexc
  %.sroa.018.1.i = phi i64 [ %i.ch, %.noexc176 ], [ %i.ay, %.noexc ] ; 5 uses
  %.sroa.012.3.i = phi i64 [ %.sroa.012.0.lcssa.i, %.noexc176 ], [ 0, %.noexc ] ; 7 uses
  %.not.i174 = xor i1 %7, true
  %brmerge.i = or i1 %.not2.not.not.i.not.lcssa, %.not.i174
  br i1 %brmerge.i, label %bb.q, label %.thread5.i

bb.q:                                             ; preds = %bb.p
  switch i8 %.val169, label %default.unreachable.i [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %.thread.i
    i8 4, label %bb.u
    i8 5, label %.thread.i
  ]

.thread5.i:                                       ; preds = %bb.p, %bb.o
  %.sroa.08.212.i = phi i64 [ %.sroa.08.0.lcssa.i, %bb.o ], [ 0, %bb.p ]
  %.sroa.012.211.i = phi i64 [ %.sroa.012.0.lcssa.i, %bb.o ], [ %.sroa.012.3.i, %bb.p ]
  %.sroa.018.010.i = phi i64 [ %i.ch, %bb.o ], [ %.sroa.018.1.i, %bb.p ]
  %i.ck = trunc i64 %.sroa.08.212.i to i32
  %i.cl = trunc i64 %.sroa.018.010.i to i32
  invoke void @_RNvXNvMs_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution7confirmNtB7_14ConfirmContext23instantiate_method_argsNtB2_10LowererCtxNtNtNtBb_5lower4path18GenericArgsLowerer19report_len_mismatch(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %9, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, i32 noundef %i.ck, i32 noundef %i.cl, i1 noundef zeroext false)
          to label %.thread.i unwind label %bb.i

.thread.i:                                        ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %.thread5.i, %bb.q, %bb.q, %bb.o, %.noexc
  %.sroa.012.4.i = phi i64 [ %.sroa.012.211.i, %.thread5.i ], [ %.sroa.012.3.i, %bb.r ], [ %.sroa.012.3.i, %bb.s ], [ %.sroa.012.3.i, %bb.t ], [ %.sroa.012.3.i, %bb.q ], [ %.sroa.012.3.i, %bb.q ], [ 0, %.noexc ], [ %.sroa.012.0.lcssa.i, %bb.o ], [ %.sroa.012.3.i, %bb.u ] ; 3 uses
  %.sroa.06.0.i = phi i8 [ 1, %.thread5.i ], [ %.val170, %bb.r ], [ 0, %bb.s ], [ 1, %bb.t ], [ 0, %bb.q ], [ 0, %bb.q ], [ 0, %.noexc ], [ 0, %bb.o ], [ 1, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1518
  invoke void @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics24iter_self_type_or_consts(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.v)
          to label %.noexc178 unwind label %bb.i

.noexc178:                                        ; preds = %.thread.i
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1523, !noalias !1518, !nonnull !5, !noundef !5
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val5.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !1523, !noalias !1518, !nonnull !5, !noundef !5
  %i.cn = invoke noundef range(i64 0, 576460752303423488) i64 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB34_5ArenaB1T_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3V_14SingleGenerics19iter_type_or_consts0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldTNtB1Z_18TypeOrConstParamIdRB1T_EjjNCINvNvXs1_NtB8_6filterINtB6P_6FilterppEB5a_5count8to_usizeB65_NCINvNtNtB3X_5lower4path22check_generic_args_lenNtNvMs_NtNtB3X_17method_resolution7confirmNtB8y_14ConfirmContext23instantiate_method_args10LowererCtxE0E0NCINvXsK_NtB5e_5accumjNtBah_3Sum3sumIBO_BN_B6E_EE0E0EB3X_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.i, i64 noundef 0)
          to label %.noexc179 unwind label %bb.i  ; 2 uses

.noexc179:                                        ; preds = %.noexc178
  %i.co = ptrtoint ptr %.val5.i.i to i64
  %i.cp = ptrtoint ptr %.val.i.i to i64
  %i.cq = sub nuw i64 %i.co, %i.cp
  %i.cr = lshr exact i64 %i.cq, 5
  %i.cs = icmp samesign ule i64 %i.cn, %i.cr
  call void @llvm.assume(i1 %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1518
  invoke void @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics24iter_self_type_or_consts(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.v)
          to label %.noexc180 unwind label %bb.i

.noexc180:                                        ; preds = %.noexc179
  %.val.i34.i = load ptr, ptr %i.h, align 8, !alias.scope !1526, !noalias !1518, !nonnull !5, !noundef !5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val5.i35.i = load ptr, ptr %i.ct, align 8, !alias.scope !1526, !noalias !1518, !nonnull !5, !noundef !5
  %i.cu = invoke noundef range(i64 0, 576460752303423488) i64 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB34_5ArenaB1T_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3V_14SingleGenerics19iter_type_or_consts0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldTNtB1Z_18TypeOrConstParamIdRB1T_EjjNCINvNvXs1_NtB8_6filterINtB6P_6FilterppEB5a_5count8to_usizeB65_NCINvNtNtB3X_5lower4path22check_generic_args_lenNtNvMs_NtNtB3X_17method_resolution7confirmNtB8y_14ConfirmContext23instantiate_method_args10LowererCtxEs_0E0NCINvXsK_NtB5e_5accumjNtBaj_3Sum3sumIBO_BN_B6E_EE0E0EB3X_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.h, i64 noundef 0)
          to label %.noexc181 unwind label %bb.i  ; 4 uses

.noexc181:                                        ; preds = %.noexc180
  %i.cv = ptrtoint ptr %.val5.i35.i to i64
  %i.cw = ptrtoint ptr %.val.i34.i to i64
  %i.cx = sub nuw i64 %i.cv, %i.cw
  %i.cy = lshr exact i64 %i.cx, 5
  %i.cz = icmp samesign ule i64 %i.cu, %i.cy
  call void @llvm.assume(i1 %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1518
  %i.da = sub nsw i64 %i.cu, %i.cn
  %i.db = icmp ult i64 %.sroa.012.4.i, %i.da
  %not.13.i = xor i1 %.not2.not.not.i.not.lcssa, true
  %.sroa.026.0.i = select i1 %not.13.i, i1 %i.db, i1 false
  %i.dc = icmp ult i64 %i.cu, %.sroa.012.4.i
  %or.cond4.i = select i1 %.sroa.026.0.i, i1 true, i1 %i.dc
  br i1 %or.cond4.i, label %bb.v, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.dd = trunc nuw i8 %.val170 to i1
  %i.de = trunc i64 %.sroa.018.1.i to i32
  invoke void @_RNvXNvMs_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution7confirmNtB7_14ConfirmContext23instantiate_method_argsNtB2_10LowererCtxNtNtNtBb_5lower4path18GenericArgsLowerer31report_elided_lifetimes_in_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %9, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, i32 noundef %i.de, i1 noundef zeroext %i.dd)
          to label %.thread.i unwind label %bb.i

bb.s:                                             ; preds = %bb.q
  %i.df = trunc i64 %.sroa.018.1.i to i32
  invoke void @_RNvXNvMs_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution7confirmNtB7_14ConfirmContext23instantiate_method_argsNtB2_10LowererCtxNtNtNtBb_5lower4path18GenericArgsLowerer31report_elided_lifetimes_in_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %9, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, i32 noundef %i.df, i1 noundef zeroext false)
          to label %.thread.i unwind label %bb.i

bb.t:                                             ; preds = %bb.q
  %i.dg = trunc i64 %.sroa.018.1.i to i32
  invoke void @_RNvXNvMs_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution7confirmNtB7_14ConfirmContext23instantiate_method_argsNtB2_10LowererCtxNtNtNtBb_5lower4path18GenericArgsLowerer23report_missing_lifetime(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %9, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, i32 noundef %i.dg)
          to label %.thread.i unwind label %bb.i

bb.u:                                             ; preds = %bb.q
  %i.dh = trunc i64 %.sroa.018.1.i to i32
  invoke void @_RNvXNvMs_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution7confirmNtB7_14ConfirmContext23instantiate_method_argsNtB2_10LowererCtxNtNtNtBb_5lower4path18GenericArgsLowerer22report_elision_failure(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %9, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, i32 noundef %i.dh)
          to label %.thread.i unwind label %bb.i

bb.v:                                             ; preds = %.noexc181
  %i.di = trunc i64 %.sroa.012.4.i to i32
  %i.dj = trunc i64 %i.cu to i32
  invoke void @_RNvXNvMs_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution7confirmNtB7_14ConfirmContext23instantiate_method_argsNtB2_10LowererCtxNtNtNtBb_5lower4path18GenericArgsLowerer19report_len_mismatch(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %9, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, i32 noundef %i.di, i32 noundef %i.dj, i1 noundef zeroext true)
          to label %bb.w unwind label %bb.i

bb.w:                                             ; preds = %.noexc181, %bb.v
  %.sroa.06.1.i = phi i8 [ %.sroa.06.0.i, %.noexc181 ], [ 1, %bb.v ]
  %i.dk = trunc nuw i8 %.sroa.06.1.i to i1        ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dl = invoke noundef i64 @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics3len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.v, i1 noundef zeroext true)
          to label %bb.x unwind label %bb.i       ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs8K4cjrcxBsw_6hir_ty5lower4pathNtB2_19PathLoweringContext29substs_from_args_and_bindings:bb.a
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.8.i.i.i400.i = alloca i64, align 8       ; 6 uses
  %.sroa.11.i.i.i401.i = alloca i64, align 8      ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.8.i.i.i300.i = alloca i64, align 8       ; 6 uses
  %.sroa.11.i.i.i301.i = alloca i64, align 8      ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.8.i.i.i210.i = alloca i64, align 8       ; 12 uses
  %.sroa.11.i.i.i211.i = alloca i64, align 8      ; 10 uses
  %i.h = alloca [40 x i8], align 4                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.8.i.i.i.i = alloca i64, align 8          ; 6 uses
  %.sroa.11.i.i.i.i = alloca i64, align 8         ; 5 uses
  %i.j = alloca [20 x i8], align 4                ; 4 uses
  %i.k = alloca [40 x i8], align 4                ; 9 uses
  %i.l = alloca [40 x i8], align 4                ; 7 uses
  %i.m = alloca [40 x i8], align 4                ; 7 uses
  %i.n = alloca [40 x i8], align 4                ; 8 uses
  %i.o = alloca [40 x i8], align 4                ; 8 uses
  %i.p = alloca [40 x i8], align 4                ; 9 uses
  %i.q = alloca [40 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 6 uses
  %i.s = alloca [20 x i8], align 4                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 11 uses
  %.sroa.11778.i = alloca i64, align 8            ; 10 uses
  %.sroa.15779.i = alloca i64, align 8            ; 6 uses
  %.sroa.11770.i = alloca i64, align 8            ; 5 uses
  %.sroa.15771.i = alloca i64, align 8            ; 3 uses
  %.sroa.11762.i = alloca i64, align 8            ; 5 uses
  %.sroa.15763.i = alloca i64, align 8            ; 3 uses
  %.sroa.11754.i = alloca i64, align 8            ; 5 uses
  %.sroa.15755.i = alloca i64, align 8            ; 3 uses
  %.sroa.11746.i = alloca i64, align 8            ; 5 uses
  %.sroa.15747.i = alloca i64, align 8            ; 3 uses
  %.sroa.11738.i = alloca i64, align 8            ; 5 uses
  %.sroa.15739.i = alloca i64, align 8            ; 3 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [20 x i8], align 4                ; 10 uses
  %i.w = alloca [16 x i8], align 4                ; 4 uses
  %.sroa.565.i = alloca [16 x i8], align 4        ; 4 uses
  %i.x = alloca [20 x i8], align 4                ; 8 uses
  %i.y = alloca [160 x i8], align 8               ; 4 uses
  %i.z = alloca [200 x i8], align 8               ; 43 uses
  %i.aa = alloca [352 x i8], align 8              ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 24 uses
  %i.ac = alloca [72 x i8], align 8               ; 13 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [8 x i8], align 8                ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 13 uses
  %i.ai = load ptr, ptr %0, align 8, !nonnull !5, !align !1504, !noundef !5 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !align !1504, !noundef !5 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 168
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5, !align !1504, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 12 uses
  store ptr %0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aq, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  store i32 %8, ptr %i.ah, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %9, ptr %i.ar, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8221)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.565.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %1, ptr %i.ag, align 8, !noalias !8223
  %i.as = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !8223
  %i.at = icmp ult i64 %i.as, 2
  br i1 %i.at, label %bb.b, label %bb.e

default.unreachable:                              ; preds = %bb.dw, %bb.du, %.loopexit212
  unreachable

default.unreachable.i:                            ; preds = %bb.bp, %bb.cw
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.au = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindings10___CALLSITE, i64 16) monotonic, align 8, !noalias !8223 ; 3 uses
  switch i8 %i.au, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !1505

bb.c:                                             ; preds = %bb.b
  %i.av = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindings10___CALLSITE) #45, !noalias !8227 ; 2 uses
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.b
  %.sroa.08.0.i = phi i8 [ %i.av, %bb.c ], [ %i.au, %bb.b ], [ %i.au, %bb.b ]
  %i.ax = load ptr, ptr @_RNvNvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindings10___CALLSITE, align 8, !noalias !8223, !nonnull !5, !align !1504, !noundef !5
  %i.ay = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ax, i8 noundef %.sroa.08.0.i), !noalias !8227
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !8223
  call void @_RNvNtCs8K4cjrcxBsw_6hir_ty8generics8generics(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ac, ptr noundef nonnull %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.am, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2), !noalias !8228
  %i.az = load ptr, ptr %i.ag, align 8, !noalias !8223, !align !1504, !noundef !5 ; 6 uses
  %.not.i = icmp eq ptr %i.az, null               ; 3 uses
  br i1 %.not.i, label %bb.g, label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !8223
  %i.ba = load ptr, ptr @_RNvNvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindings10___CALLSITE, align 8, !noalias !8223, !nonnull !5, !align !1504, !noundef !5 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !8223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !8223
  store ptr %i.ag, ptr %i.ad, align 8, !noalias !8223
  store ptr %i.ad, ptr %i.ae, align 8, !noalias !8223
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @33, ptr %i.bc, align 8, !noalias !8223
  store i64 1, ptr %i.af, align 8, !noalias !8223
  %.sroa.010.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ae, ptr %.sroa.010.sroa.4.0..sroa_idx.i, align 8, !noalias !8223
  %.sroa.010.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 1, ptr %.sroa.010.sroa.5.0..sroa_idx.i, align 8, !noalias !8223
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8223
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af), !noalias !8227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !8223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !8223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !8223
  br label %bb.e

bb.g:                                             ; preds = %bb.j, %bb.e
  %.sroa.5.0.i = phi i64 [ %i.bi, %bb.j ], [ 0, %bb.e ] ; 3 uses
  %.sroa.011.0.i = phi ptr [ %.val169.i, %bb.j ], [ inttoptr (i64 4 to ptr), %bb.e ] ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i, i64 %.sroa.5.0.i ; 4 uses
  %.not2.not.not.i.not.i151 = icmp samesign eq i64 %.sroa.5.0.i, 0
  br i1 %.not2.not.not.i.not.i151, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindingsNtNvMB2A_NtB2A_19PathLoweringContext29substs_from_args_and_bindings10LowererCtxEs_0EB2E_.exit.i, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %.not2.not.not.i.not.i = icmp eq ptr %i.be, %i.bd
  br i1 %.not2.not.not.i.not.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindingsNtNvMB2A_NtB2A_19PathLoweringContext29substs_from_args_and_bindings10LowererCtxEs_0EB2E_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %i.bf = phi ptr [ %i.be, %bb.h ], [ %.sroa.011.0.i, %bb.g ] ; 2 uses
  %.val.i.i = load i32, ptr %i.bf, align 4, !range !1506, !noalias !8229, !noundef !5
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %bb.h, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindingsNtNvMB2A_NtB2A_19PathLoweringContext29substs_from_args_and_bindings10LowererCtxEs_0EB2E_.exit.i

.body.i:                                          ; preds = %bb.cs, %.loopexit815.i, %bb.i
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit815.i ], [ %i.bg, %bb.i ], [ %i.mi, %bb.cs ]
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsKj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ac)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty8generics8GenericsEBF_.exit.i unwind label %bb.hg, !noalias !8227

bb.i:                                             ; preds = %bb.ct, %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %.noexc180.i, %.noexc179.i, %.noexc178.i, %.thread.i.i, %.thread5.i.i, %._crit_edge.i.i, %bb.n, %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.j:                                             ; preds = %bb.e
  %.val169.i = load ptr, ptr %i.az, align 8, !noalias !8227, !nonnull !5, !noundef !5
  %i.bh = getelementptr i8, ptr %i.az, i64 8
  %.val170.i = load i64, ptr %i.bh, align 8, !noalias !8227, !noundef !5
  %i.bi = shl nuw nsw i64 %.val170.i, 3
  br label %bb.g

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindingsNtNvMB2A_NtB2A_19PathLoweringContext29substs_from_args_and_bindings10LowererCtxEs_0EB2E_.exit.i: ; preds = %bb.h, %.lr.ph, %bb.g
  %.not2.not.not.i.not.i.lcssa = phi i1 [ %3, %bb.g ], [ %3, %bb.h ], [ false, %.lr.ph ] ; 7 uses
  %.val171.i = load i8, ptr %7, align 8, !alias.scope !8219, !noalias !8232 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 1
  %.val172.i = load i8, ptr %i.bj, align 1, !alias.scope !8219, !noalias !8232 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8233)
  call void @llvm.experimental.noalias.scope.decl(metadata !8236)
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindingsNtNvMB2A_NtB2A_19PathLoweringContext29substs_from_args_and_bindings10LowererCtxEs_0EB2E_.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !8233, !noalias !8238, !noundef !5 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 33
  %i.bn = load i8, ptr %i.bm, align 1, !range !1517, !alias.scope !8233, !noalias !8238, !noundef !5
  %i.bo = zext nneg i8 %i.bn to i64               ; 5 uses
  %i.bp = icmp ult i64 %i.bl, %i.bo
  br i1 %i.bp, label %bb.n, label %bb.m, !prof !164

bb.l:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCs8K4cjrcxBsw_6hir_ty5lower4path29substs_from_args_and_bindingsNtNvMB2A_NtB2A_19PathLoweringContext29substs_from_args_and_bindings10LowererCtxEs_0EB2E_.exit.i
  %i.bq = invoke noundef i64 @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics18len_lifetimes_self(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ac)
          to label %.noexc.i unwind label %bb.i, !noalias !8227 ; 2 uses

.noexc.i:                                         ; preds = %bb.l
  %.old1.not.i.i = icmp eq i64 %i.bq, 0
  br i1 %.old1.not.i.i, label %.thread.i.i, label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.az, align 8, !alias.scope !8233, !noalias !8238, !nonnull !5, !noundef !5 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bl
  %i.bt = icmp samesign eq i64 %i.bl, %i.bo
  br i1 %i.bt, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bo ; 4 uses
  %10 = shl i64 %i.bl, 3
  %i.bv = add i64 %10, -8
  %11 = shl nuw nsw i64 %i.bo, 3
  %12 = sub i64 %i.bv, %11                        ; 2 uses
  %min.iters.check = icmp ult i64 %12, 32
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %13 = lshr exact i64 %12, 3
  %i.bw = add nuw nsw i64 %13, 1                  ; 2 uses
  %i.bx = and i64 %i.bw, 3                        ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = select i1 %i.by, i64 4, i64 %i.bx
  %n.vec = sub nsw i64 %i.bw, %i.bz               ; 2 uses
  %i.ca = shl i64 %n.vec, 3
  %i.cb = getelementptr i8, ptr %i.bu, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.co, %vector.body ]
  %vec.phi155 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cp, %vector.body ]
  %vec.phi156 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ci, %vector.body ]
  %vec.phi157 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cj, %vector.body ]
  %i.cc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bu, i64 %i.cc
  %i.cd = getelementptr i8, ptr %i.bu, i64 %i.cc
  %next.gep158 = getelementptr i8, ptr %i.cd, i64 16
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !noalias !8241
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec159 = load <4 x i32>, ptr %next.gep158, align 4, !noalias !8241
  %strided.vec160 = shufflevector <4 x i32> %wide.vec159, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.ce = icmp ne <2 x i32> %strided.vec, splat (i32 1) ; 2 uses
  %i.cf = icmp ne <2 x i32> %strided.vec160, splat (i32 1) ; 2 uses
  %i.cg = zext <2 x i1> %i.ce to <2 x i64>
  %i.ch = zext <2 x i1> %i.cf to <2 x i64>
  %i.ci = add <2 x i64> %vec.phi156, %i.cg        ; 2 uses
  %i.cj = add <2 x i64> %vec.phi157, %i.ch        ; 2 uses
  %i.ck = xor <2 x i1> %i.ce, splat (i1 true)
  %i.cl = xor <2 x i1> %i.cf, splat (i1 true)
  %i.cm = zext <2 x i1> %i.ck to <2 x i64>
  %i.cn = zext <2 x i1> %i.cl to <2 x i64>
  %i.co = add <2 x i64> %vec.phi, %i.cm           ; 2 uses
  %i.cp = add <2 x i64> %vec.phi155, %i.cn        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !8242

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cp, %i.co
  %i.cr = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %bin.rdx161 = add <2 x i64> %i.cj, %i.ci
  %i.cs = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx161)
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.sroa.08.016.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.cr, %middle.block ]
  %.sroa.012.015.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.cs, %middle.block ]
  %.sroa.016.014.i.i.ph = phi ptr [ %i.bu, %.lr.ph.preheader.i.i ], [ %i.cb, %middle.block ]
  br label %.lr.ph.i.i

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.bo, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #44
          to label %.noexc175.i unwind label %bb.i, !noalias !8227

.noexc175.i:                                      ; preds = %bb.n
  unreachable

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.08.016.i.i = phi i64 [ %.sroa.08.1.i.i, %.lr.ph.i.i ], [ %.sroa.08.016.i.i.ph, %.lr.ph.i.i.preheader ]
  %.sroa.012.015.i.i = phi i64 [ %.sroa.012.1.i.i, %.lr.ph.i.i ], [ %.sroa.012.015.i.i.ph, %.lr.ph.i.i.preheader ]
  %.sroa.016.014.i.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %.sroa.016.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.016.014.i.i, i64 8 ; 2 uses
  %i.cu = load i32, ptr %.sroa.016.014.i.i, align 4, !range !1506, !noalias !8241, !noundef !5
  %i.cv = icmp ne i32 %i.cu, 1                    ; 2 uses
  %i.cw = zext i1 %i.cv to i64
  %.sroa.012.1.i.i = add i64 %.sroa.012.015.i.i, %i.cw ; 2 uses
  %not..i.i = xor i1 %i.cv, true
  %i.cx = zext i1 %not..i.i to i64
  %.sroa.08.1.i.i = add i64 %.sroa.08.016.i.i, %i.cx ; 2 uses
  %i.cy = icmp eq ptr %i.ct, %i.bs
  br i1 %i.cy, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !8243

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.m
  %.sroa.012.0.lcssa.i.i = phi i64 [ 0, %bb.m ], [ %.sroa.012.1.i.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.08.0.lcssa.i.i = phi i64 [ 0, %bb.m ], [ %.sroa.08.1.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.cz = invoke noundef i64 @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics18len_lifetimes_self(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ac)
          to label %.noexc176.i unwind label %bb.i, !noalias !8227 ; 4 uses

.noexc176.i:                                      ; preds = %._crit_edge.i.i
  %i.da = icmp eq i64 %.sroa.08.0.lcssa.i.i, 0
  %i.db = icmp ne i64 %i.cz, 0
  %or.cond.i.i = and i1 %i.da, %i.db
  br i1 %or.cond.i.i, label %bb.p, label %bb.o

default.unreachable.i.i:                          ; preds = %bb.q
  unreachable

bb.o:                                             ; preds = %.noexc176.i
  %.not33.i.i = icmp eq i64 %i.cz, %.sroa.08.0.lcssa.i.i
  br i1 %.not33.i.i, label %.thread.i.i, label %.thread5.i.i

bb.p:                                             ; preds = %.noexc176.i, %.noexc.i
  %.sroa.018.1.i.i = phi i64 [ %i.cz, %.noexc176.i ], [ %i.bq, %.noexc.i ] ; 5 uses
  %.sroa.012.3.i.i = phi i64 [ %.sroa.012.0.lcssa.i.i, %.noexc176.i ], [ 0, %.noexc.i ] ; 7 uses
  %.not.i174.i = xor i1 %6, true
  %brmerge.i.i = or i1 %.not2.not.not.i.not.i.lcssa, %.not.i174.i
  br i1 %brmerge.i.i, label %bb.q, label %.thread5.i.i

bb.q:                                             ; preds = %bb.p
  switch i8 %.val171.i, label %default.unreachable.i.i [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %.thread.i.i
    i8 4, label %bb.u
    i8 5, label %.thread.i.i
  ]

.thread5.i.i:                                     ; preds = %bb.p, %bb.o
  %.sroa.08.212.i.i = phi i64 [ %.sroa.08.0.lcssa.i.i, %bb.o ], [ 0, %bb.p ]
  %.sroa.012.211.i.i = phi i64 [ %.sroa.012.0.lcssa.i.i, %bb.o ], [ %.sroa.012.3.i.i, %bb.p ]
  %.sroa.018.010.i.i = phi i64 [ %i.cz, %bb.o ], [ %.sroa.018.1.i.i, %bb.p ]
  %i.dc = trunc i64 %.sroa.08.212.i.i to i32
  %i.dd = trunc i64 %.sroa.018.010.i.i to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !8244)
  %i.de = load ptr, ptr %i.ap, align 8, !alias.scope !8247, !noalias !8248, !nonnull !5, !align !1504, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8250
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.df, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.aq, i64 12, i1 false), !noalias !8248
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i32 %i.dc, ptr %i.dg, align 4, !noalias !8250
  %i.dh = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i32 %i.dd, ptr %i.dh, align 4, !noalias !8250
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store i8 0, ptr %i.di, align 4, !noalias !8250
  %i.dj = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dj, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false), !noalias !8251
  store i32 4, ptr %i.p, align 4, !noalias !8250
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !8252, !noalias !8255, !nonnull !5, !noundef !5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dn = load ptr, ptr %i.de, align 8, !alias.scope !8252, !noalias !8255, !nonnull !5, !align !1504, !noundef !5
  invoke void %i.dl(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dm, ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.dn, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(40) %i.p)
          to label %.noexc177.i unwind label %bb.i, !noalias !8227, !inline_history !8257

.noexc177.i:                                      ; preds = %.thread5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8250
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.noexc185.i, %.noexc184.i, %.noexc183.i, %.noexc182.i, %.noexc177.i, %bb.q, %bb.q, %bb.o, %.noexc.i
  %.sroa.012.4.i.i = phi i64 [ %.sroa.012.3.i.i, %.noexc182.i ], [ %.sroa.012.3.i.i, %.noexc183.i ], [ %.sroa.012.3.i.i, %.noexc184.i ], [ %.sroa.012.3.i.i, %.noexc185.i ], [ %.sroa.012.3.i.i, %bb.q ], [ %.sroa.012.3.i.i, %bb.q ], [ %.sroa.012.211.i.i, %.noexc177.i ], [ %.sroa.012.0.lcssa.i.i, %bb.o ], [ 0, %.noexc.i ] ; 3 uses
  %.sroa.06.0.i.i = phi i8 [ %.val172.i, %.noexc182.i ], [ 0, %.noexc183.i ], [ 1, %.noexc184.i ], [ 1, %.noexc185.i ], [ 0, %bb.q ], [ 0, %bb.q ], [ 1, %.noexc177.i ], [ 0, %bb.o ], [ 0, %.noexc.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !8258
  invoke void @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics24iter_self_type_or_consts(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ac)
          to label %.noexc178.i unwind label %bb.i, !noalias !8227

.noexc178.i:                                      ; preds = %.thread.i.i
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !8259, !noalias !8258, !nonnull !5, !noundef !5
  %i.do = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val5.i.i.i = load ptr, ptr %i.do, align 8, !alias.scope !8259, !noalias !8258, !nonnull !5, !noundef !5
  %i.dp = invoke noundef range(i64 0, 576460752303423488) i64 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB34_5ArenaB1T_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3V_14SingleGenerics19iter_type_or_consts0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldTNtB1Z_18TypeOrConstParamIdRB1T_EjjNCINvNvXs1_NtB8_6filterINtB6P_6FilterppEB5a_5count8to_usizeB65_NCINvNtNtB3X_5lower4path22check_generic_args_lenNtNvMB7K_NtB7K_19PathLoweringContext29substs_from_args_and_bindings10LowererCtxE0E0NCINvXsK_NtB5e_5accumjNtB9V_3Sum3sumIBO_BN_B6E_EE0E0EB3X_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.r, i64 noundef 0)
          to label %.noexc179.i unwind label %bb.i, !noalias !8227 ; 2 uses

.noexc179.i:                                      ; preds = %.noexc178.i
  %i.dq = ptrtoint ptr %.val5.i.i.i to i64
  %i.dr = ptrtoint ptr %.val.i.i.i to i64
  %i.ds = sub nuw i64 %i.dq, %i.dr
  %i.dt = lshr exact i64 %i.ds, 5
  %i.du = icmp samesign ule i64 %i.dp, %i.dt
  call void @llvm.assume(i1 %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8258
  invoke void @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics24iter_self_type_or_consts(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ac)
          to label %.noexc180.i unwind label %bb.i, !noalias !8227

.noexc180.i:                                      ; preds = %.noexc179.i
  %.val.i34.i.i = load ptr, ptr %i.q, align 8, !alias.scope !8262, !noalias !8258, !nonnull !5, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val5.i35.i.i = load ptr, ptr %i.dv, align 8, !alias.scope !8262, !noalias !8258, !nonnull !5, !noundef !5
  %i.dw = invoke noundef range(i64 0, 576460752303423488) i64 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB34_5ArenaB1T_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3V_14SingleGenerics19iter_type_or_consts0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldTNtB1Z_18TypeOrConstParamIdRB1T_EjjNCINvNvXs1_NtB8_6filterINtB6P_6FilterppEB5a_5count8to_usizeB65_NCINvNtNtB3X_5lower4path22check_generic_args_lenNtNvMB7K_NtB7K_19PathLoweringContext29substs_from_args_and_bindings10LowererCtxEs_0E0NCINvXsK_NtB5e_5accumjNtB9X_3Sum3sumIBO_BN_B6E_EE0E0EB3X_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.q, i64 noundef 0)
          to label %.noexc181.i unwind label %bb.i, !noalias !8227 ; 4 uses

.noexc181.i:                                      ; preds = %.noexc180.i
  %i.dx = ptrtoint ptr %.val5.i35.i.i to i64
  %i.dy = ptrtoint ptr %.val.i34.i.i to i64
  %i.dz = sub nuw i64 %i.dx, %i.dy
  %i.ea = lshr exact i64 %i.dz, 5
  %i.eb = icmp samesign ule i64 %i.dw, %i.ea
  call void @llvm.assume(i1 %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8258
  %i.ec = sub nsw i64 %i.dw, %i.dp
  %i.ed = icmp ult i64 %.sroa.012.4.i.i, %i.ec
  %not.13.i.i = xor i1 %.not2.not.not.i.not.i.lcssa, true
  %.sroa.026.0.i.i = select i1 %not.13.i.i, i1 %i.ed, i1 false
  %i.ee = icmp ult i64 %i.dw, %.sroa.012.4.i.i
  %or.cond4.i.i = select i1 %.sroa.026.0.i.i, i1 true, i1 %i.ee
  br i1 %or.cond4.i.i, label %bb.v, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.ef = trunc i64 %.sroa.018.1.i.i to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !8265)
  %i.eg = load ptr, ptr %i.ap, align 8, !alias.scope !8268, !noalias !8269, !nonnull !5, !align !1504, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8271
  %i.eh = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.eh, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.aq, i64 12, i1 false), !noalias !8269
  %i.ei = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ei, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false), !noalias !8272
  %i.ej = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i32 %i.ef, ptr %i.ej, align 4, !noalias !8271
end_hunk_1
