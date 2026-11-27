Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/typedesc?download=true
inline.NumInlined: 3843
inline.NumDeleted: 993
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN11OpenImageIO4v3_119tostring_formattingC2EPKcS3_S3_S3_S3_S3_S3_S3_S3_S3_iS3_:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11OpenImageIO4v3_119tostring_formattingC2ENS1_8NotationEPKcS4_S4_S4_S4_S4_S4_S4_S4_S4_S4_i(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(113) initializes((0, 84), (88, 113)) %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13) unnamed_addr #7 align 2 !guid !430 {
bb.a:
  store ptr %2, ptr %0, align 8, !tbaa !207
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %4, ptr %i.a, align 8, !tbaa !208
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %5, ptr %i.b, align 8, !tbaa !209
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %6, ptr %i.c, align 8, !tbaa !210
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %7, ptr %i.d, align 8, !tbaa !211
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %8, ptr %i.e, align 8, !tbaa !212
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %9, ptr %i.f, align 8, !tbaa !213
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %10, ptr %i.g, align 8, !tbaa !214
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %11, ptr %i.h, align 8, !tbaa !215
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %12, ptr %i.i, align 8, !tbaa !216
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %13, ptr %i.j, align 8, !tbaa !217
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %3, ptr %i.k, align 8, !tbaa !218
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @.str.10, ptr %i.l, align 8, !tbaa !219
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @.str.10, ptr %i.m, align 8, !tbaa !220
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.n, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_18tostringB5cxx11ENS0_8TypeDescEPKvRKNS0_19tostring_formattingE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 !guid !445 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.100", align 16 ; 9 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.98", align 16 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %.sroa.0261.sroa.36.0.extract.shift972 = lshr i64 %1, 8
  %.sroa.0261.sroa.36.0.extract.trunc = trunc i64 %.sroa.0261.sroa.36.0.extract.shift972 to i8 ; 2 uses
  %.sroa.0261.sroa.38.0.extract.shift973 = lshr i64 %1, 16
  %.sroa.0261.sroa.38.0.extract.trunc = trunc i64 %.sroa.0261.sroa.38.0.extract.shift973 to i8 ; 2 uses
  %.sroa.40.0.extract.shift = lshr i64 %1, 32     ; 4 uses
  %.sroa.40.0.extract.trunc = trunc nuw i64 %.sroa.40.0.extract.shift to i32 ; 4 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !199
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !201
  store i8 0, ptr %i.f, align 8, !tbaa !186
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.sroa.0261.sroa.0.0.extract.trunc = trunc i64 %1 to i8
  switch i8 %.sroa.0261.sroa.0.0.extract.trunc, label %bb.bo [
    i8 0, label %bb.d
    i8 1, label %bb.g
    i8 2, label %bb.j
    i8 3, label %bb.m
    i8 4, label %bb.p
    i8 5, label %bb.s
    i8 6, label %bb.v
    i8 7, label %bb.ac
    i8 8, label %bb.ai
    i8 9, label %bb.al
    i8 10, label %bb.ao
    i8 11, label %bb.ar
    i8 12, label %bb.au
    i8 13, label %bb.ax
    i8 14, label %bb.bd
    i8 15, label %bb.bg
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.i = load i8, ptr %i.h, align 8, !tbaa !221, !range !222, !noundef !223
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !210  ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11sprint_typeIPvS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11format_typeIPvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load i8, ptr %i.m, align 8, !tbaa !221, !range !222, !noundef !223
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11sprint_typeIPvS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11format_typeIPvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.j:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load i8, ptr %i.p, align 8, !tbaa !221, !range !222, !noundef !223
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !218  ; 2 uses
  %.not216 = icmp eq ptr %i.t, null
  %spec.select = select i1 %.not216, ptr @.str.34, ptr %i.t ; 2 uses
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11sprint_typeIhhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef nonnull %spec.select, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11format_typeIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef nonnull %spec.select, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.m:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.v = load i8, ptr %i.u, align 8, !tbaa !221, !range !222, !noundef !223
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.x = load ptr, ptr %3, align 8, !tbaa !207
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11sprint_typeIccEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11format_typeIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.p:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.z = load i8, ptr %i.y, align 8, !tbaa !221, !range !222, !noundef !223
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !218 ; 2 uses
  %.not214 = icmp eq ptr %i.ac, null
  %spec.select220 = select i1 %.not214, ptr @.str.34, ptr %i.ac ; 2 uses
  br i1 %i.aa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11sprint_typeIttEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef nonnull %spec.select220, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11format_typeItEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef nonnull %spec.select220, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.s:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !221, !range !222, !noundef !223
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load ptr, ptr %3, align 8, !tbaa !207   ; 2 uses
  br i1 %i.af, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11sprint_typeIssEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11format_typeIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.v:                                             ; preds = %bb.c
  %i.ah = icmp eq i8 %.sroa.0261.sroa.38.0.extract.trunc, 7
  %i.ai = icmp eq i8 %.sroa.0261.sroa.36.0.extract.trunc, 2
  %or.cond = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel, label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel: ; preds = %bb.v
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !199
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !201
  store i8 0, ptr %i.aj, align 8, !tbaa !186
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %.sroa.40.0.extract.trunc, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %.phi.trans.insert1038 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre1039 = load i32, ptr %.phi.trans.insert1038, align 4, !tbaa !50, !noalias !446
  %.pre1037 = load i32, ptr %2, align 4, !tbaa !50, !noalias !446
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !447
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  store i32 %.pre1037, ptr %5, align 16, !tbaa !186, !alias.scope !448, !noalias !447
  store i32 %.pre1039, ptr %i.al, align 16, !tbaa !186, !alias.scope !448, !noalias !447
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.37, i64 5, i64 34, ptr nonnull %5)
          to label %bb.w unwind label %.loopexit.split-lp1028.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !447
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !201 ; 2 uses
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !201
  %i.aq = sub i64 4611686018427387903, %i.ap
  %i.ar = icmp ult i64 %i.aq, %i.ao
  br i1 %i.ar, label %.loopexit1031, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.w
  %i.as = load ptr, ptr %6, align 8, !tbaa !203
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.as, i64 noundef %i.ao)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp979.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.au = load ptr, ptr %6, align 8, !tbaa !203   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.an
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.aw = load i64, ptr %i.an, align 8, !tbaa !186
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %exitcond1019.peel.not = icmp slt i32 %.sroa.40.0.extract.trunc, 2
  br i1 %exitcond1019.peel.not, label %.loopexit, label %.peel.next1021

.peel.next1021:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn1061 = phi ptr [ %.01000, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %.0179999 = phi i64 [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ]
  %.01000 = getelementptr inbounds nuw i8, ptr %.pn1061, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ak, align 8, !tbaa !201
  %i.az = and i64 %i.ay, -2
  %i.ba = icmp eq i64 %i.az, 4611686018427387902
  br i1 %i.ba, label %.loopexit1023, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.loopexit1023:                                    ; preds = %.peel.next1021
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #29
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit1023
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.peel.next1021
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.36, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %.loopexit1023
  %lpad.loopexit.split-lp1081 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn1061, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !447
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.bd = load i32, ptr %.01000, align 4, !tbaa !50, !noalias !450
  store i32 %i.bd, ptr %5, align 16, !tbaa !186, !alias.scope !449, !noalias !447
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !50, !noalias !450
  store i32 %i.be, ptr %i.al, align 16, !tbaa !186, !alias.scope !449, !noalias !447
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.37, i64 5, i64 34, ptr nonnull %5)
          to label %bb.x unwind label %.loopexit.split-lp1028.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !447
  %i.bf = load i64, ptr %i.am, align 8, !tbaa !201 ; 2 uses
  %i.bg = load i64, ptr %i.ak, align 8, !tbaa !201
  %i.bh = sub i64 4611686018427387903, %i.bg
  %i.bi = icmp ult i64 %i.bh, %i.bf
  br i1 %i.bi, label %.loopexit1031, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit1031:                                    ; preds = %bb.x, %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #29
          to label %.noexc229 unwind label %.loopexit.split-lp979.loopexit.split-lp.loopexit.split-lp

.noexc229:                                        ; preds = %.loopexit1031
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.x
  %i.bj = load ptr, ptr %6, align 8, !tbaa !203
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bj, i64 noundef %i.bf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp979.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bl = load ptr, ptr %6, align 8, !tbaa !203   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.an
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bn = load i64, ptr %i.an, align 8, !tbaa !186
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.bp = add nuw nsw i64 %.0179999, 1            ; 2 uses
  %exitcond1019.not = icmp eq i64 %i.bp, %spec.select.i
  br i1 %exitcond1019.not, label %.loopexit, label %.peel.next1021, !llvm.loop !437

.loopexit.split-lp1028.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  %lpad.loopexit.split-lp1083 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

.loopexit.split-lp979.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel, %.loopexit1031
  %lpad.loopexit.split-lp1086 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %6, align 8, !tbaa !203   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.an
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %.loopexit.split-lp979.loopexit.split-lp.loopexit.split-lp
  %i.bs = load i64, ptr %i.an, align 8, !tbaa !186
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %.loopexit.split-lp979.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1028.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  %.pn210 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1086, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231 ], [ %lpad.loopexit.split-lp1083, %.loopexit.split-lp1028.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1086, %.loopexit.split-lp979.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  %.pn210.pn = phi { ptr, i32 } [ %.pn210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ], [ %lpad.loopexit.split-lp1081, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !203   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.aj
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.sink.split

bb.y:                                             ; preds = %bb.v
  %i.bw = icmp eq i8 %.sroa.0261.sroa.36.0.extract.trunc, 1
  %i.bx = icmp eq i8 %.sroa.0261.sroa.38.0.extract.trunc, 5
  %or.cond968 = select i1 %i.bw, i1 %i.bx, i1 false
  %i.by = icmp eq i64 %.sroa.40.0.extract.shift, 2
  %or.cond969 = select i1 %or.cond968, i1 %i.by, i1 false
  br i1 %or.cond969, label %bb.z, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.bz = load i32, ptr %2, align 4, !tbaa !50    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ca = lshr i32 %i.bz, 24
  %i.cb = and i32 %i.ca, 15
  %i.cc = lshr i32 %i.bz, 28
  %i.cd = and i32 %i.cc, 3
  %i.ce = mul nuw nsw i32 %i.cd, 10
  %i.cf = add nuw nsw i32 %i.ce, %i.cb
  store i32 %i.cf, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.cg = lshr i32 %i.bz, 16
  %i.ch = and i32 %i.cg, 15
  %i.ci = lshr i32 %i.bz, 20
  %i.cj = and i32 %i.ci, 7
  %i.ck = mul nuw nsw i32 %i.cj, 10
  %i.cl = add nuw nsw i32 %i.ck, %i.ch
  store i32 %i.cl, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.cm = lshr i32 %i.bz, 8
  %i.cn = and i32 %i.cm, 15
  %i.co = lshr i32 %i.bz, 12
  %i.cp = and i32 %i.co, 7
  %i.cq = mul nuw nsw i32 %i.cp, 10
  %i.cr = add nuw nsw i32 %i.cq, %i.cn
  store i32 %i.cr, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.cs = and i32 %i.bz, 15
  %i.ct = lshr i32 %i.bz, 4
  %i.cu = and i32 %i.ct, 3
  %i.cv = mul nuw nsw i32 %i.cu, 10
  %i.cw = add nuw nsw i32 %i.cv, %i.cs
  store i32 %i.cw, ptr %i.d, align 4, !tbaa !50
  call void @_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA28_cJRiS5_S5_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(28) @.str.38, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.loopexit

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread: ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !221, !range !222, !noundef !223
  %i.cz = trunc nuw i8 %i.cy to i1
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !218 ; 2 uses
  %.not208 = icmp eq ptr %i.db, null
  %spec.select222 = select i1 %.not208, ptr @.str.34, ptr %i.db ; 2 uses
  br i1 %i.cz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11sprint_typeIjjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef nonnull %spec.select222, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.ab:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11format_typeIjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef nonnull %spec.select222, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.ac:                                            ; preds = %bb.c
  %i.dc = and i64 %1, 16777215
  %or.cond971 = icmp eq i64 %i.dc, 459271
  br i1 %or.cond971, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit243.peel, label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit243.peel: ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.dd, ptr %0, align 8, !tbaa !199
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.de, align 8, !tbaa !201
  store i8 0, ptr %i.dd, align 8, !tbaa !186
  %narrow.i238 = tail call i32 @llvm.smax.i32(i32 %.sroa.40.0.extract.trunc, i32 1)
  %spec.select.i239 = zext nneg i32 %narrow.i238 to i64
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre1035 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !50, !noalias !452
  %.pre = load i32, ptr %2, align 4, !tbaa !50, !noalias !452
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  store i32 %.pre, ptr %4, align 16, !tbaa !186, !alias.scope !454, !noalias !453
  store i32 %.pre1035, ptr %i.df, align 16, !tbaa !186, !alias.scope !454, !noalias !453
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.37, i64 5, i64 17, ptr nonnull %4)
          to label %bb.ad unwind label %.loopexit.split-lp1011.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit243.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !453
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !201 ; 2 uses
  %i.dj = load i64, ptr %i.de, align 8, !tbaa !201
  %i.dk = sub i64 4611686018427387903, %i.dj
  %i.dl = icmp ult i64 %i.dk, %i.di
  br i1 %i.dl, label %.loopexit1015, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i245.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i245.peel: ; preds = %bb.ad
  %i.dm = load ptr, ptr %7, align 8, !tbaa !203
  %i.dn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dm, i64 noundef %i.di)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit248.peel unwind label %.loopexit.split-lp990.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit248.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i245.peel
  %i.do = load ptr, ptr %7, align 8, !tbaa !203   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.dh
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit248.peel
  %i.dq = load i64, ptr %i.dh, align 8, !tbaa !186
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit248.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %exitcond.peel.not = icmp slt i32 %.sroa.40.0.extract.trunc, 2
  br i1 %exitcond.peel.not, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
  %.pn1060 = phi ptr [ %.0186998, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ], [ %2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.peel ] ; 2 uses
  %.0187997 = phi i64 [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.peel ]
  %.0186998 = getelementptr inbounds nuw i8, ptr %.pn1060, i64 8 ; 2 uses
  %i.ds = load i64, ptr %i.de, align 8, !tbaa !201
  %i.dt = and i64 %i.ds, -2
  %i.du = icmp eq i64 %i.dt, 4611686018427387902
  br i1 %i.du, label %.loopexit1006, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i240

.loopexit1006:                                    ; preds = %.peel.next
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #29
          to label %.noexc241 unwind label %.loopexit.split-lp985.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc241:                                        ; preds = %.loopexit1006
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i240: ; preds = %.peel.next
  %i.dv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.36, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit243 unwind label %.loopexit.split-lp985.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp985.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i240, %.loopexit1006
  %lpad.loopexit.split-lp1089 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp985

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i240
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.dw = getelementptr inbounds nuw i8, ptr %.pn1060, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !453
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.dx = load i32, ptr %.0186998, align 4, !tbaa !50, !noalias !456
  store i32 %i.dx, ptr %4, align 16, !tbaa !186, !alias.scope !455, !noalias !453
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !50, !noalias !456
  store i32 %i.dy, ptr %i.df, align 16, !tbaa !186, !alias.scope !455, !noalias !453
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.37, i64 5, i64 17, ptr nonnull %4)
          to label %bb.ae unwind label %.loopexit.split-lp1011.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit243
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !453
  %i.dz = load i64, ptr %i.dg, align 8, !tbaa !201 ; 2 uses
  %i.ea = load i64, ptr %i.de, align 8, !tbaa !201
  %i.eb = sub i64 4611686018427387903, %i.ea
  %i.ec = icmp ult i64 %i.eb, %i.dz
  br i1 %i.ec, label %.loopexit1015, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i245

.loopexit1015:                                    ; preds = %bb.ae, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #29
          to label %.noexc246 unwind label %.loopexit.split-lp990.loopexit.split-lp.loopexit.split-lp

.noexc246:                                        ; preds = %.loopexit1015
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i245: ; preds = %bb.ae
  %i.ed = load ptr, ptr %7, align 8, !tbaa !203
  %i.ee = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ed, i64 noundef %i.dz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit248 unwind label %.loopexit.split-lp990.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i245
  %i.ef = load ptr, ptr %7, align 8, !tbaa !203   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.dh
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit248
  %i.eh = load i64, ptr %i.dh, align 8, !tbaa !186
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ej = add nuw nsw i64 %.0187997, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ej, %spec.select.i239
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !444

.loopexit.split-lp1011.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit243.peel
  %lpad.loopexit.split-lp1092 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

.loopexit.split-lp990.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i245.peel, %.loopexit1015
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %7, align 8, !tbaa !203   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dh
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %.loopexit.split-lp990.loopexit.split-lp.loopexit.split-lp
  %i.em = load i64, ptr %i.dh, align 8, !tbaa !186
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %.loopexit.split-lp990.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1011.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252 ], [ %lpad.loopexit.split-lp1092, %.loopexit.split-lp1011.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp990.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.loopexit.split-lp985

.loopexit.split-lp985:                            ; preds = %.loopexit.split-lp985.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %lpad.loopexit.split-lp1089, %.loopexit.split-lp985.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.eo = load ptr, ptr %0, align 8, !tbaa !203   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.dd
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.sink.split

bb.af:                                            ; preds = %bb.ac
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !221, !range !222, !noundef !223
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = load ptr, ptr %3, align 8, !tbaa !207   ; 2 uses
  br i1 %i.es, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11sprint_typeIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef %i.et, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.ah:                                            ; preds = %bb.af
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11format_typeIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef %i.et, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.ai:                                            ; preds = %bb.c
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !221, !range !222, !noundef !223
  %i.ew = trunc nuw i8 %i.ev to i1
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !218 ; 2 uses
  %.not203 = icmp eq ptr %i.ey, null
  %spec.select224 = select i1 %.not203, ptr @.str.34, ptr %i.ey ; 2 uses
  br i1 %i.ew, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11sprint_typeImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef nonnull %spec.select224, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.ak:                                            ; preds = %bb.ai
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11format_typeImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef nonnull %spec.select224, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.al:                                            ; preds = %bb.c
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !221, !range !222, !noundef !223
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = load ptr, ptr %3, align 8, !tbaa !207   ; 2 uses
  br i1 %i.fb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11sprint_typeIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.an:                                            ; preds = %bb.al
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11format_typeIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.ao:                                            ; preds = %bb.c
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !221, !range !222, !noundef !223
  %i.ff = trunc nuw i8 %i.fe to i1
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !208 ; 2 uses
  br i1 %i.ff, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11sprint_typeIN9Imath_3_14halfEfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef %i.fh, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.aq:                                            ; preds = %bb.ao
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11format_typeIN9Imath_3_14halfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef %i.fh, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.ar:                                            ; preds = %bb.c
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !221, !range !222, !noundef !223
  %i.fk = trunc nuw i8 %i.fj to i1
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !208 ; 2 uses
  br i1 %i.fk, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11sprint_typeIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef %i.fm, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.at:                                            ; preds = %bb.ar
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11format_typeIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef %i.fm, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.au:                                            ; preds = %bb.c
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !221, !range !222, !noundef !223
  %i.fp = trunc nuw i8 %i.fo to i1
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !208 ; 2 uses
  br i1 %i.fp, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call fastcc void @_ZN11OpenImageIO4v3_1L11sprint_typeIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8TypeDescEPKcRKNS0_19tostring_formattingEPKT_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, ptr noundef %i.fr, ptr noundef nonnull align 8 dereferenceable(113) %3, ptr noundef %2)
  br label %.loopexit

bb.aw:                                            ; preds = %bb.au
end_hunk_0
