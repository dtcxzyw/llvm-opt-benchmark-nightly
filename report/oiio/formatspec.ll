Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/formatspec?download=true
inline.NumInlined: 8159
inline.NumDeleted: 2481
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN11OpenImageIO4v3_19ImageSpec10set_formatENS0_8TypeDescE:bb.a
_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8, !tbaa !153
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 288230376151711743
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.291) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.d = load ptr, ptr %0, align 8, !tbaa !128
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !129
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #42 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !128    ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !129  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ad, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !tbaa !138, !alias.scope !704, !noalias !705
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !134, !alias.scope !705, !noalias !704 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !139, !alias.scope !705, !noalias !704 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !706
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !tbaa !134, !alias.scope !704, !noalias !705
  %i.z = load i64, ptr %i.t, align 8, !tbaa !135, !alias.scope !705, !noalias !704
  store i64 %i.z, ptr %i.r, align 8, !tbaa !135, !alias.scope !704, !noalias !705
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !139, !alias.scope !705, !noalias !704
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.aa = phi i64 [ %i.w, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !139, !alias.scope !704, !noalias !705
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !tbaa !134, !alias.scope !705, !noalias !704
  store i64 0, ptr %i.ab, align 8, !tbaa !139, !alias.scope !705, !noalias !704
  store i8 0, ptr %i.t, align 8, !tbaa !135, !alias.scope !705, !noalias !704
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.not.i.i.i = icmp eq ptr %i.ad, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !128
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.af = phi ptr [ %.pr, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.af, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #40
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !128
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ak, ptr %i.j, align 8, !tbaa !129
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %1
  store ptr %i.al, ptr %i.b, align 8, !tbaa !137
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec13channel_bytesEib(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !117
  %.not = icmp slt i32 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !154
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !155
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 65
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.l = sext i32 %1 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !155
  %narrow.i5 = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink11.in = phi ptr [ %i.p, %bb.e ], [ %i.k, %bb.d ]
  %.sink = phi ptr [ %i.m, %bb.e ], [ %i.h, %bb.d ]
  %spec.select.i6.sink.in = phi i32 [ %narrow.i5, %bb.e ], [ %narrow.i, %bb.d ]
  %spec.select.i6.sink = zext nneg i32 %spec.select.i6.sink.in to i64
  %.sink11 = load i8, ptr %.sink11.in, align 1, !tbaa !156
  %i.q = zext i8 %.sink11 to i64
  %i.r = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %.sink) #39
  %i.s = mul i64 %i.r, %i.q
  %i.t = mul i64 %i.s, %spec.select.i6.sink
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.t, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !117  ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !155
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.m = load i8, ptr %i.l, align 1, !tbaa !156
  %i.n = zext i8 %i.m to i64
  %i.o = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.i) #39
  %i.p = mul i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = mul i32 %narrow.i.i, %i.q
  %umul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.b, i32 %i.r) ; 2 uses
  %umul.value.i = extractvalue { i32, i1 } %umul.i, 0
  %umul.overflow.i = extractvalue { i32, i1 } %umul.i, 1
  %2 = zext i32 %umul.value.i to i64
  %3 = select i1 %umul.overflow.i, i64 4294967295, i64 %2
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %.079 = phi i64 [ %i.ac, %.lr.ph ], [ 0, %.preheader ]
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !152
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !155
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !156
  %i.y = zext i8 %i.x to i64
  %i.z = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.t) #39
  %i.aa = mul i64 %i.z, %i.y
  %i.ab = mul i64 %i.aa, %spec.select.i
  %i.ac = add i64 %i.ab, %.079                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !117
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %.lr.ph, label %.loopexit, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a, %bb.d
  %.08 = phi i64 [ 0, %bb.a ], [ %3, %bb.d ], [ 0, %.preheader ], [ %i.ac, %.lr.ph ]
  ret i64 %.08
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEiib(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %2, i32 %1) ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.g = icmp sgt i32 %2, %1
  br i1 %i.g, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.h = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = sub nuw nsw i32 %.sroa.speculated, %1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !155
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.n = load i8, ptr %i.m, align 1, !tbaa !156
  %i.o = zext i8 %i.n to i64
  %i.p = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.j) #39
  %i.q = mul i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = mul i32 %narrow.i.i, %i.r
  %umul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.i, i32 %i.s) ; 2 uses
  %umul.value.i = extractvalue { i32, i1 } %umul.i, 0
  %umul.overflow.i = extractvalue { i32, i1 } %umul.i, 1
  %4 = zext i32 %umul.value.i to i64
  %5 = select i1 %umul.overflow.i, i64 4294967295, i64 %4
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.h, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0718 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ad, %.lr.ph ]
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !152
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !155
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !156
  %i.z = zext i8 %i.y to i64
  %i.aa = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.u) #39
  %i.ab = mul i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, %spec.select.i
  %i.ad = add i64 %i.ac, %.0718                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = trunc nuw i64 %indvars.iv.next to i32
  %i.af = icmp sgt i32 %.sroa.speculated, %i.ae
  br i1 %i.af, label %.lr.ph, label %.loopexit, !llvm.loop !707

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a, %bb.d
  %.08 = phi i64 [ 0, %bb.a ], [ %5, %bb.d ], [ 0, %.preheader ], [ %i.ad, %.lr.ph ]
  ret i64 %.08
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !124  ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !117  ; 3 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !154
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !155
  %narrow.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.q = load i8, ptr %i.p, align 1, !tbaa !156
  %i.r = zext i8 %i.q to i64
  %i.s = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.m) #39
  %i.t = mul i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = mul i32 %narrow.i.i.i, %i.u
  %umul.i.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.f, i32 %i.v) ; 2 uses
  %umul.value.i.i = extractvalue { i32, i1 } %umul.i.i, 0
  %umul.overflow.i.i = extractvalue { i32, i1 } %umul.i.i, 1
  %2 = zext i32 %umul.value.i.i to i64
  br i1 %umul.overflow.i.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread11, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %.079.i = phi i64 [ %i.ag, %.lr.ph.i ], [ 0, %.preheader.i ]
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !152
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !155
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.z, i32 1)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !156
  %i.ac = zext i8 %i.ab to i64
  %i.ad = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.x) #39
  %i.ae = mul i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, %spec.select.i.i
  %i.ag = add i64 %i.af, %.079.i                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ah = load i32, ptr %i.e, align 4, !tbaa !117
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next.i, %i.ai
  br i1 %i.aj, label %.lr.ph.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit, !llvm.loop !2

_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread11: ; preds = %bb.e
  %mul.i1319 = mul nuw nsw i64 %i.d, 4294967295
  br label %bb.f

_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit: ; preds = %.lr.ph.i, %bb.e
  %.08.i = phi i64 [ %2, %bb.e ], [ %i.ag, %.lr.ph.i ]
  %.08.i.fr = freeze i64 %.08.i                   ; 2 uses
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.08.i.fr, i64 %i.d) ; 2 uses
  %mul.val.i = extractvalue { i64, i1 } %mul.i, 0
  %.not.i3 = icmp eq i64 %.08.i.fr, 0
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  %spec.select.i = select i1 %mul.ov.i, i64 -1, i64 %mul.val.i
  br i1 %.not.i3, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread, label %bb.f

_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread: ; preds = %.preheader.i, %bb.b, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit
  br label %bb.f

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread11, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread ], [ %spec.select.i, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit ], [ %mul.i1319, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread11 ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 2 uses
  store i64 %1, ptr %2, align 8
  %i.a = and i64 %1, 65280
  %i.b = icmp eq i64 %i.a, 256
  %i.c = and i64 %1, 16711935
  %i.d = lshr i64 %1, 32                          ; 2 uses
  %i.e = or i64 %i.d, %i.c
  %i.f = icmp eq i64 %i.e, 0
  %or.cond16 = and i1 %i.f, %i.b
  br i1 %or.cond16, label %bb.b, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !124  ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !117  ; 3 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !154
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !154
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.e, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !155
  %narrow.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.u, i32 1)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.w = load i8, ptr %i.v, align 1, !tbaa !156
  %i.x = zext i8 %i.w to i64
  %i.y = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.s) #39
  %i.z = mul i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = mul i32 %narrow.i.i.i.i, %i.aa
  %umul.i.i.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.l, i32 %i.ab) ; 2 uses
  %umul.value.i.i.i = extractvalue { i32, i1 } %umul.i.i.i, 0
  %umul.overflow.i.i.i = extractvalue { i32, i1 } %umul.i.i.i, 1
  %3 = zext i32 %umul.value.i.i.i to i64
  br i1 %umul.overflow.i.i.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread11.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.079.i.i = phi i64 [ %i.am, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !152
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i.i ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !155
  %narrow.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.af, i32 1)
  %spec.select.i.i.i = zext nneg i32 %narrow.i.i.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !156
  %i.ai = zext i8 %i.ah to i64
  %i.aj = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.ad) #39
  %i.ak = mul i64 %i.aj, %i.ai
  %i.al = mul i64 %i.ak, %spec.select.i.i.i
  %i.am = add i64 %i.al, %.079.i.i                ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.an = load i32, ptr %i.k, align 4, !tbaa !117
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next.i.i, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.i, !llvm.loop !2

_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread11.i: ; preds = %bb.e
  %mul.i1319.i = mul nuw nsw i64 %i.j, 4294967295
  br label %_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb.exit

_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.i: ; preds = %.lr.ph.i.i, %bb.e
  %.08.i.i = phi i64 [ %3, %bb.e ], [ %i.am, %.lr.ph.i.i ]
  %.08.i.fr.i = freeze i64 %.08.i.i               ; 2 uses
  %mul.i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.08.i.fr.i, i64 %i.j) ; 2 uses
  %mul.val.i.i = extractvalue { i64, i1 } %mul.i.i, 0
  %.not.i3.i = icmp eq i64 %.08.i.fr.i, 0
  %mul.ov.i.i = extractvalue { i64, i1 } %mul.i.i, 1
  %spec.select.i.i = select i1 %mul.ov.i.i, i64 -1, i64 %mul.val.i.i
  br i1 %.not.i3.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread.i, label %_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb.exit

_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread.i: ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.i, %.preheader.i.i, %bb.c
  br label %_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb.exit

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread: ; preds = %bb.a
  %i.aq = lshr i64 %1, 8
  %i.ar = trunc nuw i64 %i.d to i32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !124
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !117 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ax, i64 %i.au) ; 2 uses
  %mul.val.i = extractvalue { i64, i1 } %mul.i, 0
  %.not.i.not = icmp eq i32 %i.aw, 0
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  %spec.select.i = select i1 %mul.ov.i, i64 -1, i64 %mul.val.i
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 1)
  %spec.select.i2 = zext nneg i32 %narrow.i to i64
  %i.ay = and i64 %i.aq, 255
  %i.az = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %2) #39
  %i.ba = mul i64 %i.az, %i.ay
  %i.bb = mul i64 %i.ba, %spec.select.i2          ; 2 uses
  %i.bc = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bb, i64 %spec.select.i) ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bc, 0
  %.not.i5 = icmp eq i64 %i.bb, 0
  %i.be = extractvalue { i64, i1 } %i.bc, 1
  %mul.val.i4 = select i1 %i.be, i64 -1, i64 %i.bd
  %i.bf = select i1 %.not.i5, i1 true, i1 %.not.i.not
  %.0.i8 = select i1 %i.bf, i64 0, i64 %mul.val.i4
  br label %_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb.exit

_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb.exit: ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread.i, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.i, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread11.i, %bb.b, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread
  %4 = phi i64 [ %.0.i8, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread ], [ 0, %bb.b ], [ 0, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread.i ], [ %spec.select.i.i, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.i ], [ %mul.i1319.i, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread11.i ]
  ret i64 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !157  ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !158  ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !116  ; 3 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.b to i64
  %i.k = zext nneg i32 %i.e to i64
  %mul.i13 = mul nuw nsw i64 %i.k, %i.j           ; 2 uses
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %i.h to i64
  %mul.i7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.l, i64 %mul.i13) ; 2 uses
  %mul.val.i8 = extractvalue { i64, i1 } %mul.i7, 0
  %mul.ov.i10 = extractvalue { i64, i1 } %mul.i7, 1
  %spec.select.i11 = select i1 %mul.ov.i10, i64 -1, i64 %mul.val.i8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.b, %bb.c
  %.03 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %spec.select.i11, %bb.e ], [ %mul.i13, %bb.d ]
  ret i64 %.03
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec10tile_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !157  ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !158  ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !116  ; 3 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.b to i64
  %i.k = zext nneg i32 %i.e to i64
  %mul.i13.i = mul nuw nsw i64 %i.k, %i.j         ; 2 uses
  %.not.i = icmp eq i32 %i.h, 1
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %i.h to i64
  %mul.i7.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.l, i64 %mul.i13.i) ; 2 uses
  %mul.val.i8.i = extractvalue { i64, i1 } %mul.i7.i, 0
  %mul.ov.i10.i = extractvalue { i64, i1 } %mul.i7.i, 1
  %spec.select.i11.i = select i1 %mul.ov.i10.i, i64 -1, i64 %mul.val.i8.i
  br label %_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit

_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.03.i = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %spec.select.i11.i, %bb.e ], [ %mul.i13.i, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !117  ; 3 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit
  br i1 %1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !154
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !154
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %.not.i1 = icmp eq i32 %i.n, 0
  br i1 %.not.i1, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread, label %.lr.ph.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.w = load i32, ptr %i.v, align 4, !tbaa !155
  %narrow.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.y = load i8, ptr %i.x, align 1, !tbaa !156
  %i.z = zext i8 %i.y to i64
  %i.aa = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.u) #39
  %i.ab = mul i64 %i.aa, %i.z
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = mul i32 %narrow.i.i.i, %i.ac
  %umul.i.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.n, i32 %i.ad) ; 2 uses
  %umul.value.i.i = extractvalue { i32, i1 } %umul.i.i, 0
  %umul.overflow.i.i = extractvalue { i32, i1 } %umul.i.i, 1
  %2 = zext i32 %umul.value.i.i to i64
  br i1 %umul.overflow.i.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread10, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %.079.i = phi i64 [ %i.ao, %.lr.ph.i ], [ 0, %.preheader.i ]
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !152
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !155
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 1)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !156
  %i.ak = zext i8 %i.aj to i64
  %i.al = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.af) #39
  %i.am = mul i64 %i.al, %i.ak
  %i.an = mul i64 %i.am, %spec.select.i.i
  %i.ao = add i64 %i.an, %.079.i                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !117
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next.i, %i.aq
  br i1 %i.ar, label %.lr.ph.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit, !llvm.loop !2

_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread10: ; preds = %bb.h
  %mul.i12 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.03.i, i64 4294967295) ; 2 uses
  %mul.val.i13 = extractvalue { i64, i1 } %mul.i12, 0
  %mul.ov.i15 = extractvalue { i64, i1 } %mul.i12, 1
  %spec.select.i16 = select i1 %mul.ov.i15, i64 -1, i64 %mul.val.i13
  br label %bb.i

_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit: ; preds = %.lr.ph.i, %bb.h
  %.08.i = phi i64 [ %2, %bb.h ], [ %i.ao, %.lr.ph.i ]
  %.08.i.fr = freeze i64 %.08.i                   ; 2 uses
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.08.i.fr, i64 %.03.i) ; 2 uses
  %mul.val.i = extractvalue { i64, i1 } %mul.i, 0
  %.not.i2 = icmp eq i64 %.08.i.fr, 0
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  %spec.select.i = select i1 %mul.ov.i, i64 -1, i64 %mul.val.i
  br i1 %.not.i2, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread, label %bb.i

_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread: ; preds = %.preheader.i, %_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit
  br label %bb.i

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread10, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread
  %3 = phi i64 [ 0, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread ], [ %spec.select.i, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit ], [ %spec.select.i16, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread10 ]
  ret i64 %3
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec10tile_bytesENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 2 uses
  store i64 %1, ptr %2, align 8
  %i.a = lshr i64 %1, 8
  %i.b = and i64 %1, 65280
  %i.c = icmp eq i64 %i.b, 256
  %i.d = and i64 %1, 16711935
  %i.e = lshr i64 %1, 32                          ; 2 uses
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = or i64 %i.e, %i.d
  %i.h = icmp eq i64 %i.g, 0
  %or.cond16 = and i1 %i.h, %i.c
  br i1 %or.cond16, label %bb.b, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec10tile_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext true) #39
  br label %bb.g

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !157  ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !158  ; 2 uses
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !116  ; 3 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %i.k to i64
  %i.t = zext nneg i32 %i.n to i64
  %mul.i13.i = mul nuw nsw i64 %i.t, %i.s         ; 2 uses
  %.not.i = icmp eq i32 %i.q, 1
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = zext nneg i32 %i.q to i64
  %mul.i7.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %mul.i13.i) ; 2 uses
  %mul.val.i8.i = extractvalue { i64, i1 } %mul.i7.i, 0
  %mul.ov.i10.i = extractvalue { i64, i1 } %mul.i7.i, 1
  %spec.select.i11.i = select i1 %mul.ov.i10.i, i64 -1, i64 %mul.val.i8.i
  br label %_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit

_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit: ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread, %bb.c, %bb.d, %bb.e, %bb.f
  %.03.i = phi i64 [ 0, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread ], [ 0, %bb.d ], [ 0, %bb.c ], [ %spec.select.i11.i, %bb.f ], [ %mul.i13.i, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = load i32, ptr %i.v, align 4, !tbaa !117  ; 2 uses
  %i.x = sext i32 %i.w to i64
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.x, i64 %.03.i) ; 2 uses
  %mul.val.i = extractvalue { i64, i1 } %mul.i, 0
  %.not.i1.not = icmp eq i32 %i.w, 0
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  %spec.select.i = select i1 %mul.ov.i, i64 -1, i64 %mul.val.i
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %spec.select.i2 = zext nneg i32 %narrow.i to i64
  %i.y = and i64 %i.a, 255
  %i.z = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %2) #39
  %i.aa = mul i64 %i.z, %i.y
  %i.ab = mul i64 %i.aa, %spec.select.i2          ; 2 uses
  %i.ac = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ab, i64 %spec.select.i) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 0
  %.not.i5 = icmp eq i64 %i.ab, 0
  %i.ae = extractvalue { i64, i1 } %i.ac, 1
  %mul.val.i4 = select i1 %i.ae, i64 -1, i64 %i.ad
  %i.af = select i1 %.not.i5, i1 true, i1 %.not.i1.not
  %.0.i8 = select i1 %i.af, i64 0, i64 %mul.val.i4
  br label %bb.g

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit, %bb.b
  %i.ag = phi i64 [ %i.i, %bb.b ], [ %.0.i8, %_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv.exit ]
  ret i64 %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !124  ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !125  ; 3 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !115  ; 3 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.b to i64
  %i.k = zext nneg i32 %i.e to i64
  %mul.i13 = mul nuw nsw i64 %i.k, %i.j
  %.not.i = icmp eq i32 %i.e, 0
  %.0.i = select i1 %.not.i, i64 0, i64 %mul.i13  ; 2 uses
  %i.l = icmp samesign ugt i32 %i.h, 1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = zext nneg i32 %i.h to i64
  %mul.i7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.m, i64 %.0.i) ; 2 uses
  %mul.val.i8 = extractvalue { i64, i1 } %mul.i7, 0
  %mul.ov.i10 = extractvalue { i64, i1 } %mul.i7, 1
  %spec.select.i11 = select i1 %mul.ov.i10, i64 -1, i64 %mul.val.i8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.b, %bb.c
  %.03 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %spec.select.i11, %bb.e ], [ %.0.i, %bb.d ]
  ret i64 %.03
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !124  ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !125  ; 3 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !115  ; 3 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.b to i64
  %i.k = zext nneg i32 %i.e to i64
  %mul.i13.i = mul nuw nsw i64 %i.k, %i.j
  %.not.i.i = icmp eq i32 %i.e, 0
  %.0.i.i = select i1 %.not.i.i, i64 0, i64 %mul.i13.i ; 2 uses
  %i.l = icmp samesign ugt i32 %i.h, 1
  br i1 %i.l, label %bb.e, label %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit

bb.e:                                             ; preds = %bb.d
  %i.m = zext nneg i32 %i.h to i64
  %mul.i7.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.m, i64 %.0.i.i) ; 2 uses
  %mul.val.i8.i = extractvalue { i64, i1 } %mul.i7.i, 0
  %mul.ov.i10.i = extractvalue { i64, i1 } %mul.i7.i, 1
  %spec.select.i11.i = select i1 %mul.ov.i10.i, i64 -1, i64 %mul.val.i8.i
  br label %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit

_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.03.i = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %spec.select.i11.i, %bb.e ], [ %.0.i.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !117  ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit
  br i1 %1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !154
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !154
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread, label %.lr.ph.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.x = load i32, ptr %i.w, align 4, !tbaa !155
  %narrow.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.z = load i8, ptr %i.y, align 1, !tbaa !156
  %i.aa = zext i8 %i.z to i64
  %i.ab = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.v) #39
  %i.ac = mul i64 %i.ab, %i.aa
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = mul i32 %narrow.i.i.i, %i.ad
  %umul.i.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.o, i32 %i.ae) ; 2 uses
  %umul.value.i.i = extractvalue { i32, i1 } %umul.i.i, 0
  %umul.overflow.i.i = extractvalue { i32, i1 } %umul.i.i, 1
  %2 = zext i32 %umul.value.i.i to i64
  br i1 %umul.overflow.i.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread9, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %.079.i = phi i64 [ %i.ap, %.lr.ph.i ], [ 0, %.preheader.i ]
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !152
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !155
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 1)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !156
  %i.al = zext i8 %i.ak to i64
  %i.am = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.ag) #39
  %i.an = mul i64 %i.am, %i.al
  %i.ao = mul i64 %i.an, %spec.select.i.i
  %i.ap = add i64 %i.ao, %.079.i                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = load i32, ptr %i.n, align 4, !tbaa !117
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next.i, %i.ar
  br i1 %i.as, label %.lr.ph.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit, !llvm.loop !2

_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread9: ; preds = %bb.h
  %mul.i11 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.03.i, i64 4294967295) ; 2 uses
  %mul.val.i12 = extractvalue { i64, i1 } %mul.i11, 0
  %mul.ov.i14 = extractvalue { i64, i1 } %mul.i11, 1
  %spec.select.i15 = select i1 %mul.ov.i14, i64 -1, i64 %mul.val.i12
  br label %bb.i

_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit: ; preds = %.lr.ph.i, %bb.h
  %.08.i = phi i64 [ %2, %bb.h ], [ %i.ap, %.lr.ph.i ]
  %.08.i.fr = freeze i64 %.08.i                   ; 2 uses
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.08.i.fr, i64 %.03.i) ; 2 uses
  %mul.val.i = extractvalue { i64, i1 } %mul.i, 0
  %.not.i1 = icmp eq i64 %.08.i.fr, 0
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  %spec.select.i = select i1 %mul.ov.i, i64 -1, i64 %mul.val.i
  br i1 %.not.i1, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread, label %bb.i

_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread: ; preds = %.preheader.i, %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit
  br label %bb.i

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread9, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread
  %3 = phi i64 [ 0, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread ], [ %spec.select.i, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit ], [ %spec.select.i15, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread9 ]
  ret i64 %3
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 2 uses
  store i64 %1, ptr %2, align 8
  %i.a = lshr i64 %1, 8
  %i.b = and i64 %1, 65280
  %i.c = icmp eq i64 %i.b, 256
  %i.d = and i64 %1, 16711935
  %i.e = lshr i64 %1, 32                          ; 2 uses
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = or i64 %i.e, %i.d
  %i.h = icmp eq i64 %i.g, 0
  %or.cond9 = and i1 %i.h, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !124  ; 3 uses
  %i.k = icmp slt i32 %i.j, 0                     ; 2 uses
  br i1 %or.cond9, label %bb.b, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  br i1 %i.k, label %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !125  ; 3 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !115  ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = zext nneg i32 %i.j to i64
  %i.s = zext nneg i32 %i.m to i64
  %mul.i13.i.i = mul nuw nsw i64 %i.s, %i.r
  %.not.i.i.i = icmp eq i32 %i.m, 0
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %mul.i13.i.i ; 2 uses
  %i.t = icmp samesign ugt i32 %i.p, 1
  br i1 %i.t, label %bb.f, label %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.u = zext nneg i32 %i.p to i64
  %mul.i7.i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %.0.i.i.i) ; 2 uses
  %mul.val.i8.i.i = extractvalue { i64, i1 } %mul.i7.i.i, 0
  %mul.ov.i10.i.i = extractvalue { i64, i1 } %mul.i7.i.i, 1
  %spec.select.i11.i.i = select i1 %mul.ov.i10.i.i, i64 -1, i64 %mul.val.i8.i.i
  br label %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit.i

_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.03.i.i = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ], [ %spec.select.i11.i.i, %bb.f ], [ %.0.i.i.i, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = load i32, ptr %i.v, align 4, !tbaa !117  ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !155
  %narrow.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !156
  %i.ad = zext i8 %i.ac to i64
  %i.ae = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.y) #39
  %i.af = mul i64 %i.ae, %i.ad
  %i.ag = trunc i64 %i.af to i32
  %i.ah = mul i32 %narrow.i.i.i.i, %i.ag
  %umul.i.i.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.w, i32 %i.ah)
  %umul.i.i.i.fr = freeze { i32, i1 } %umul.i.i.i ; 2 uses
  %mul.ov.i.i.a = extractvalue { i32, i1 } %umul.i.i.i.fr, 1
  br i1 %mul.ov.i.i.a, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread9.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.i

_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread9.i: ; preds = %bb.g
  %mul.i11.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.03.i.i, i64 4294967295) ; 2 uses
  %mul.val.i12.i = extractvalue { i64, i1 } %mul.i11.i, 0
  %mul.ov.i14.i = extractvalue { i64, i1 } %mul.i11.i, 1
  %spec.select.i15.i = select i1 %mul.ov.i14.i, i64 -1, i64 %mul.val.i12.i
  br label %_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb.exit

_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.i: ; preds = %bb.g
  %umul.value.i.i.i = extractvalue { i32, i1 } %umul.i.i.i.fr, 0 ; 2 uses
  %3 = zext i32 %umul.value.i.i.i to i64
  %mul.i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %.03.i.i) ; 2 uses
  %mul.val.i.i = extractvalue { i64, i1 } %mul.i.i, 0
  %.not.i1.i = icmp eq i32 %umul.value.i.i.i, 0
  %mul.ov.i.i = extractvalue { i64, i1 } %mul.i.i, 1
  %spec.select.i.i = select i1 %mul.ov.i.i, i64 -1, i64 %mul.val.i.i
  br i1 %.not.i1.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread.i, label %_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb.exit

_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread.i: ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.i, %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit.i
  br label %_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb.exit

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread: ; preds = %bb.a
  br i1 %i.k, label %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !125 ; 3 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !115 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = zext nneg i32 %i.j to i64
  %i.ap = zext nneg i32 %i.aj to i64
  %mul.i13.i = mul nuw nsw i64 %i.ap, %i.ao
  %.not.i.i = icmp eq i32 %i.aj, 0
  %.0.i.i = select i1 %.not.i.i, i64 0, i64 %mul.i13.i ; 2 uses
  %i.aq = icmp samesign ugt i32 %i.am, 1
  br i1 %i.aq, label %bb.k, label %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = zext nneg i32 %i.am to i64
  %mul.i7.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ar, i64 %.0.i.i) ; 2 uses
  %mul.val.i8.i = extractvalue { i64, i1 } %mul.i7.i, 0
  %mul.ov.i10.i = extractvalue { i64, i1 } %mul.i7.i, 1
  %spec.select.i11.i = select i1 %mul.ov.i10.i, i64 -1, i64 %mul.val.i8.i
  br label %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit

_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit: ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread, %bb.h, %bb.i, %bb.j, %bb.k
  %.03.i = phi i64 [ 0, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread ], [ 0, %bb.i ], [ 0, %bb.h ], [ %spec.select.i11.i, %bb.k ], [ %.0.i.i, %bb.j ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.at = load i32, ptr %i.as, align 4, !tbaa !117
  %i.au = sext i32 %i.at to i64
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.av = and i64 %i.a, 255
  %i.aw = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %2) #39
  %i.ax = mul nsw i64 %i.av, %i.au
  %i.ay = mul i64 %i.ax, %i.aw
  %i.az = mul i64 %i.ay, %spec.select.i           ; 2 uses
  %mul.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.az, i64 %.03.i) ; 2 uses
  %mul.val.i = extractvalue { i64, i1 } %mul.i, 0
  %.not.i = icmp eq i64 %i.az, 0
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  %spec.select.i1 = select i1 %mul.ov.i, i64 -1, i64 %mul.val.i
  %.0.i = select i1 %.not.i, i64 0, i64 %spec.select.i1
  br label %_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb.exit

_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb.exit: ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread.i, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.i, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread9.i, %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit
  %.0 = phi i64 [ %.0.i, %_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv.exit ], [ 0, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread.i ], [ %spec.select.i.i, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.i ], [ %spec.select.i15.i, %_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb.exit.thread9.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescENS0_4spanIKSt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef readonly captures(none) dead_on_return %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.121", align 16 ; 9 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 7 uses
  store i64 %2, ptr %10, align 8
  %i.a = lshr i64 %2, 32
  %i.b = trunc nuw i64 %i.a to i32
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.c = lshr i64 %2, 8
  %i.d = and i64 %i.c, 255
  %i.e = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %10) #39
  %i.f = mul i64 %i.e, %i.d
  %i.g = mul i64 %i.f, %spec.select.i
  %.not = icmp eq i64 %4, %i.g
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !155
  %narrow.i1 = call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %spec.select.i2 = zext nneg i32 %narrow.i1 to i64
  %i.k = load i8, ptr %i.h, align 1, !tbaa !156
  %i.l = zext i8 %i.k to i64
  %i.m = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %10) #39
  %i.n = mul i64 %i.m, %i.l
  %i.o = mul i64 %i.n, %spec.select.i2
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39, !noalias !710
  store i64 %4, ptr %7, align 16, !tbaa !135, !noalias !710
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.o, ptr %i.p, align 16, !tbaa !135, !noalias !710
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %10, ptr %i.q, align 16, !tbaa !135, !noalias !710
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN11OpenImageIO4v3_18TypeDescEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.r, align 8, !tbaa !135, !noalias !710
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.t = load ptr, ptr %1, align 8, !tbaa !160, !noalias !710
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !161, !noalias !710
  store ptr %i.t, ptr %i.s, align 16, !tbaa !135, !noalias !710
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %i.v, ptr %i.w, align 8, !tbaa !135, !noalias !710
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.9, i64 79, i64 57156, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39, !noalias !710
  %i.x = load ptr, ptr %9, align 8, !tbaa !134
  store ptr %i.x, ptr %8, align 8, !tbaa !160
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !139
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !161
  invoke void @_ZN11OpenImageIO4v3_13pvt12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %9, align 8, !tbaa !134   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN11OpenImageIO4v3_18errorfmtIJmmRNS0_8TypeDescERNS0_17basic_string_viewIcSt11char_traitsIcEEEEEEvPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !135
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #40
  br label %_ZN11OpenImageIO4v3_18errorfmtIJmmRNS0_8TypeDescERNS0_17basic_string_viewIcSt11char_traitsIcEEEEEEvPKcDpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %9, align 8, !tbaa !134   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.d
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !135
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  resume { ptr, i32 } %i.ag

_ZN11OpenImageIO4v3_18errorfmtIJmmRNS0_8TypeDescERNS0_17basic_string_viewIcSt11char_traitsIcEEEEEEvPKcDpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.am = load ptr, ptr %1, align 8, !tbaa !160   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !161 ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store ptr %i.am, ptr %5, align 8, !tbaa !160
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ao, ptr %i.ar, align 8, !tbaa !161
  %i.as = call ptr @_ZN11OpenImageIO4v3_114ParamValueList4findENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull dead_on_return %5, i64 256, i1 noundef zeroext false) ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !162 ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not9.i = icmp eq ptr %i.as, null
  %.not.i = or i1 %.not9.i, %.not.i.i
  br i1 %.not.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !163 ; 4 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %.not10.i = icmp eq i64 %i.ay, -40
  br i1 %.not10.i, label %.lr.ph.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.at, align 8, !tbaa !162
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE6resizeEm.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %i.av, %bb.g ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i.i) #39
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %i.au
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.av, ptr %i.at, align 8, !tbaa !164
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.h
  %i.ba = phi ptr [ %.pre.i, %bb.h ], [ %i.av, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i ]
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -40
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE6resizeEm.exit.i, %bb.f
  %.0.i = phi ptr [ %i.as, %bb.f ], [ %i.bb, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE6resizeEm.exit.i ]
  store ptr %i.am, ptr %6, align 8, !tbaa !160
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ao, ptr %i.bc, align 8, !tbaa !161
  call void @_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE(ptr noundef nonnull align 8 dereferenceable(39) %.0.i, ptr noundef nonnull dead_on_return %6, i64 %.sroa.0.0.copyload, i32 noundef 1, ptr noundef %3, i8 1) #39
  br label %_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv.exit

_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv.exit: ; preds = %bb.e, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv.exit, %_ZN11OpenImageIO4v3_18errorfmtIJmmRNS0_8TypeDescERNS0_17basic_string_viewIcSt11char_traitsIcEEEEEEvPKcDpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef readonly captures(none) dead_on_return %1, i64 %2, ptr noundef %3) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !161  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !160
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.b, ptr %i.f, align 8, !tbaa !161
  %i.g = call ptr @_ZN11OpenImageIO4v3_114ParamValueList4findENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull dead_on_return %4, i64 256, i1 noundef zeroext false) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162  ; 3 uses
  %.not.i = icmp eq ptr %i.g, %i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not9 = icmp eq ptr %i.g, null
  %.not = or i1 %.not9, %.not.i
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !163  ; 4 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %.not10 = icmp eq i64 %i.m, -40
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl:bb.a
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.by = load i64, ptr %i.bp, align 8, !tbaa !676
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.by)
          to label %bb.f unwind label %bb.g, !inline_history !1939

bb.f:                                             ; preds = %.noexc
  %i.bz = load i8, ptr %i.bv, align 4, !tbaa !675, !range !191, !noundef !192
  %i.ca = trunc nuw i8 %i.bz to i1                ; 2 uses
  br i1 %i.ca, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !684 ; 2 uses
  %i.cc = load ptr, ptr %2, align 8, !tbaa !637   ; 5 uses
  %.not = icmp eq ptr %i.cb, %i.cc
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = sdiv exact i64 %i.cf, 24                ; 3 uses
  %xtraiter40 = and i64 %i.cg, 1
  %i.ch = icmp eq i64 %i.cf, 24
  br i1 %i.ch, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.cg, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #39
  br label %.body

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dg, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.024 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !680, !range !191, !noundef !192
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  %i.cn = load ptr, ptr %0, align 8, !tbaa !637
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.024 ; 3 uses
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !168
  store i64 %i.cp, ptr %i.co, align 8, !tbaa !168
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !168
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !168
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i8 1, ptr %i.ct, align 8, !tbaa !680
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph
  %i.cu = or disjoint i64 %.024, 1                ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cu ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !680, !range !191, !noundef !192
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  %i.cz = load ptr, ptr %0, align 8, !tbaa !637
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.cu ; 3 uses
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !168
  store i64 %i.db, ptr %i.da, align 8, !tbaa !168
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !168
  store i64 %i.de, ptr %i.dd, align 8, !tbaa !168
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i8 1, ptr %i.df, align 8, !tbaa !680
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.dg = add nuw i64 %.024, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1940

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.dg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod42 = trunc i64 %i.cg to i1
  call void @llvm.assume(i1 %lcmp.mod42)
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.024.epil.init ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !680, !range !191, !noundef !192
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.dl = load ptr, ptr %0, align 8, !tbaa !637
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %.024.epil.init ; 3 uses
  %i.dn = load i64, ptr %i.dh, align 8, !tbaa !168
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !168
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !168
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !168
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i8 1, ptr %i.dr, align 8, !tbaa !680
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %.preheader, %bb.f
  %i.ds = load ptr, ptr %i.ae, align 8, !tbaa !666 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !667
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.l, %.loopexit
  %i.dy = load ptr, ptr %3, align 8, !tbaa !637   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !638
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #40
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.ee = load ptr, ptr %2, align 8, !tbaa !637   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !638
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ei) #40
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret i1 %i.ca

.body:                                            ; preds = %bb.e, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.g ], [ %i.bx, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.ej = load ptr, ptr %2, align 8, !tbaa !637   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %.body
  %i.ek = load ptr, ptr %i.o, align 8, !tbaa !638
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #40
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21: ; preds = %.body, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  resume { ptr, i32 } %.pn.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_formatspec.cpp() #34 section ".text.startup" {
bb.a:
  store i32 0, ptr @_ZN11OpenImageIO4v3_14pugi4implL14dummy_node_setE, align 8, !tbaa !1941
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14dummy_node_setE, i64 8), i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14dummy_node_setE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14dummy_node_setE, i64 24), align 8, !tbaa !92
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14dummy_node_setE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_14pugi4implL14dummy_node_setE, i64 32), align 8, !tbaa !1942
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_14pugi14xpath_node_setD2Ev, ptr nonnull @_ZN11OpenImageIO4v3_14pugi4implL14dummy_node_setE, ptr nonnull @__dso_handle) #39 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp2.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #36

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #20

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold noreturn }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #27 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #30 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #37 = { noreturn nounwind }
attributes #38 = { cold nounwind }
attributes #39 = { nounwind }
attributes #40 = { builtin nounwind }
attributes #41 = { noreturn }
attributes #42 = { builtin allocsize(0) }
attributes #43 = { nounwind willreturn memory(read) }
attributes #44 = { nounwind allocsize(0) }

!llvm.module.flags = !{!75, !76}
!llvm.ident = !{!77}
!llvm.errno.tbaa = !{!81}

!0 = distinct !{!0, !136}
!1 = distinct !{!1, !136}
!2 = distinct !{!2, !136}
!3 = distinct !{!3, !136}
!4 = distinct !{!4, !136}
!5 = distinct !{null}
!6 = distinct !{!6, !136}
!7 = distinct !{!7, !136}
!8 = distinct !{!8, !136}
!9 = distinct !{null, null}
!10 = distinct !{!10, !136}
!11 = distinct !{!11, !136}
!12 = distinct !{!12, !136}
!13 = distinct !{null, null}
!14 = distinct !{null, null, null}
!15 = distinct !{null, null}
!16 = distinct !{!16, !136}
!17 = distinct !{!17, !136}
!18 = distinct !{!18, !136}
!19 = distinct !{!19, !136}
!20 = distinct !{null, null}
!21 = distinct !{null, null}
!22 = distinct !{!22, !136}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{!25, !136}
!26 = distinct !{!26, !136}
!27 = distinct !{!27, !136}
!28 = distinct !{!28, !136}
!29 = distinct !{null, null, null, null}
!30 = distinct !{!30, !136}
!31 = distinct !{null, null}
!32 = distinct !{null}
!33 = distinct !{null, null}
!34 = distinct !{!34, !136}
!35 = distinct !{!35, !136}
!36 = distinct !{!36, !136}
!37 = distinct !{null}
!38 = distinct !{null, null, null, null}
!39 = distinct !{null, null, null}
!40 = distinct !{null}
!41 = distinct !{!41, !136}
!42 = distinct !{!42, !136}
!43 = distinct !{null, null, null, null}
!44 = distinct !{null, null, null, null, null}
!45 = distinct !{!45, !136}
!46 = distinct !{!46, !136}
!47 = distinct !{!47, !136}
!48 = distinct !{!48, !136}
!49 = distinct !{null, null}
!50 = distinct !{ptr @_ZN11OpenImageIO4v3_14pugi4impl15append_new_nodeEPNS1_15xml_node_structERNS2_13xml_allocatorENS1_13xml_node_typeE, null, ptr @_ZN11OpenImageIO4v3_14pugi4impl13xml_allocator19allocate_memory_oobEmRPNS2_15xml_memory_pageE, null}
!51 = distinct !{null, null}
!52 = distinct !{!52, !136}
!53 = distinct !{null}
!54 = distinct !{!54, !136}
!55 = distinct !{!55, !136}
!56 = distinct !{ptr @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc, null, null}
!57 = distinct !{null, null}
!58 = distinct !{ptr @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc, null, null}
!59 = distinct !{!59, !136}
!60 = distinct !{!60, !136}
!61 = distinct !{null}
!62 = distinct !{!62, !136}
!63 = distinct !{!63, !136}
!64 = distinct !{!64, !136}
!65 = distinct !{null, null}
!66 = distinct !{null}
end_hunk_1
