Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/html5ever-7c94b86f9147eabc.html5ever.8469159039506d9f-cgu.2?download=true
inline.NumInlined: 102
inline.NumDeleted: 76
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBX_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever:bb.a
  %i.k = invoke fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %i.j, ptr noundef nonnull align 8 %i.i) #22
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -40 ; 2 uses
  %..i17 = select i1 %i.k, ptr %i.i, ptr %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %..i17, i64 40, i1 false), !noalias !24
  %i.m = xor i1 %i.k, true
  %i.n = zext i1 %i.m to i64
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.n ; 3 uses
  %i.p = zext i1 %i.k to i64
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.p ; 3 uses
  %i.r = icmp eq ptr %i.o, %0
  %i.s = icmp eq ptr %i.q, %2
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.noexc20
  %.sroa.13.3 = phi ptr [ %i.z, %.noexc20 ], [ %0, %.critedge ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.w, %.noexc20 ], [ %2, %.critedge ] ; 4 uses
  %.sroa.0.02.i = phi ptr [ %i.y, %.noexc20 ], [ %i.e, %.critedge ] ; 3 uses
  %i.t = invoke fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %.sroa.0.02.i, ptr noundef nonnull align 8 %.sroa.0.2) #22
          to label %.noexc20 unwind label %.loopexit.split-lp ; 3 uses

.noexc20:                                         ; preds = %.lr.ph.i
  %i.u = xor i1 %i.t, true
  %.sroa.05.0.i = select i1 %i.t, ptr %.sroa.0.02.i, ptr %.sroa.0.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.05.0.i, i64 40, i1 false), !noalias !25
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.2, i64 %i.v ; 3 uses
  %i.x = zext i1 %i.t to i64
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.02.i, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.13.3, i64 40 ; 2 uses
  %i.aa = icmp ne ptr %i.w, %i.h
  %i.ab = icmp ne ptr %i.y, %i.f
  %or.cond.i19 = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond.i19, label %.lr.ph.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit

_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit: ; preds = %.noexc20, %.noexc
  %.sroa.13.1 = phi ptr [ %i.o, %.noexc ], [ %i.z, %.noexc20 ]
  %.sroa.7.1 = phi ptr [ %i.q, %.noexc ], [ %i.h, %.noexc20 ]
  %.sroa.0.1 = phi ptr [ %2, %.noexc ], [ %i.w, %.noexc20 ] ; 2 uses
  %i.ac = ptrtoint ptr %.sroa.7.1 to i64
  %i.ad = ptrtoint ptr %.sroa.0.1 to i64
  %i.ae = sub nuw i64 %i.ac, %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1, ptr align 8 %.sroa.0.1, i64 %i.ae, i1 false), !noalias !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit
  ret void

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %.loopexit ], [ %.sroa.13.3, %.loopexit.split-lp ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.2, %.loopexit ], [ %i.h, %.loopexit.split-lp ]
  %.sroa.0.0 = phi ptr [ %2, %.loopexit ], [ %.sroa.0.2, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.af = ptrtoint ptr %.sroa.7.0 to i64
  %i.ag = ptrtoint ptr %.sroa.0.0 to i64
  %i.ah = sub nuw i64 %i.af, %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.ah, i1 false), !noalias !27
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbmOI1VUejFP_9html5ever(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !40, !noalias !41
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !40, !noalias !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !41, !noalias !38
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !41, !noalias !38
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !40, !noalias !41
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !40, !noalias !41
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !41, !noalias !38
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !41, !noalias !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !38, !noalias !39
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !39, !noalias !38
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !38, !noalias !39
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !39, !noalias !38
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !38, !noalias !39
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !39, !noalias !38
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !38, !noalias !39
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !39, !noalias !38
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !42, !noalias !43
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !43, !noalias !42
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !42, !noalias !43
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !43, !noalias !42
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !37
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtCsgv7xG79AfeB_12string_cache11dynamic_set11dynamic_set()
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !7
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @_RNvMs2_NtCsgv7xG79AfeB_12string_cache11dynamic_setNtB5_3Set6remove(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef nonnull %i.c)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtCsgv7xG79AfeB_12string_cache11dynamic_set11dynamic_set()
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !7
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @_RNvMs2_NtCsgv7xG79AfeB_12string_cache11dynamic_setNtB5_3Set6remove(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef nonnull %i.c)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtCsgv7xG79AfeB_12string_cache11dynamic_set11dynamic_set()
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !7
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @_RNvMs2_NtCsgv7xG79AfeB_12string_cache11dynamic_setNtB5_3Set6remove(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef nonnull %i.c)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2m_8for_each4callhNCINvMsk_NtB1y_3vecINtB3z_3VechE14extend_trustedBN_E0E0ECsbmOI1VUejFP_9html5ever(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsbmOI1VUejFP_9html5ever.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload2
  %i.f = sub i64 %i.c, %i.e
  %diff.check = icmp ugt i64 %i.f, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !noalias !55 ; 2 uses
  %wide.load4 = load <16 x i8>, ptr %i.k, align 1, !noalias !55 ; 2 uses
  %i.l = add <16 x i8> %wide.load, splat (i8 -65)
  %i.m = add <16 x i8> %wide.load4, splat (i8 -65)
  %i.n = icmp ult <16 x i8> %i.l, splat (i8 26)
  %i.o = icmp ult <16 x i8> %i.m, splat (i8 26)
  %i.p = select <16 x i1> %i.n, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.q = select <16 x i1> %i.o, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.r = or <16 x i8> %i.p, %wide.load
  %i.s = or <16 x i8> %i.q, %wide.load4
  %i.t = getelementptr i8, ptr %i.i, i64 %index   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1, !noalias !56
  store <16 x i8> %i.s, ptr %i.u, align 1, !noalias !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsbmOI1VUejFP_9html5ever.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %i.d, -8                      ; 4 uses
  %i.w = add i64 %.sroa.5.0.copyload, %n.vec5     ; 2 uses
  %i.x = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index6
  %wide.load7 = load <8 x i8>, ptr %i.y, align 1, !noalias !55 ; 2 uses
  %i.z = add <8 x i8> %wide.load7, splat (i8 -65)
  %i.aa = icmp ult <8 x i8> %i.z, splat (i8 26)
  %i.ab = select <8 x i1> %i.aa, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.ac = or <8 x i8> %i.ab, %wide.load7
  %i.ad = getelementptr i8, ptr %i.x, i64 %index6
  store <8 x i8> %i.ac, ptr %i.ad, align 1, !noalias !56
  %index.next8 = add nuw i64 %index6, 8           ; 2 uses
  %i.ae = icmp eq i64 %index.next8, %n.vec5
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !53

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.d, %n.vec5
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsbmOI1VUejFP_9html5ever.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 4 uses
  %i.af = sub i64 %i.b, %i.c
  %i.ag = xor i64 %.sroa.01.0.i.ph, -1
  %i.ah = add i64 %i.ag, %i.b
  %xtraiter = and i64 %i.af, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load i8, ptr %i.ai, align 1, !noalias !55, !noundef !7 ; 2 uses
  %i.aj = add i8 %.val15.i.prol, -65
  %i.ak = icmp ult i8 %i.aj, 26
  %i.al = select i1 %i.ak, i8 32, i8 0
  %.sroa.0.0.i.i.i.prol = or i8 %i.al, %.val15.i.prol
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph
  store i8 %.sroa.0.0.i.i.i.prol, ptr %i.am, align 1, !noalias !56
  %i.an = add i64 %.ph, 1                         ; 2 uses
  %i.ao = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph.prol ]
  %i.ap = icmp eq i64 %i.ah, %i.c
  br i1 %i.ap, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsbmOI1VUejFP_9html5ever.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.aq = phi i64 [ %i.bd, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.be, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.ar, align 1, !noalias !55, !noundef !7 ; 2 uses
  %i.as = add i8 %.val15.i, -65
  %i.at = icmp ult i8 %i.as, 26
  %i.au = select i1 %i.at, i8 32, i8 0
  %.sroa.0.0.i.i.i = or i8 %i.au, %.val15.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.aq
  store i8 %.sroa.0.0.i.i.i, ptr %i.av, align 1, !noalias !56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %.val15.i.1 = load i8, ptr %i.ax, align 1, !noalias !55, !noundef !7 ; 2 uses
  %i.ay = add i8 %.val15.i.1, -65
  %i.az = icmp ult i8 %i.ay, 26
  %i.ba = select i1 %i.az, i8 32, i8 0
  %.sroa.0.0.i.i.i.1 = or i8 %i.ba, %.val15.i.1
  %i.bb = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aq
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.bc, align 1, !noalias !56
  %i.bd = add i64 %i.aq, 2                        ; 2 uses
  %i.be = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.bf = icmp eq i64 %i.be, %i.d
  br i1 %i.bf, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsbmOI1VUejFP_9html5ever.exit, label %vec.epilog.scalar.ph, !llvm.loop !54

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsbmOI1VUejFP_9html5ever.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bd, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #5 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB2_3Tag13get_attribute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !69 ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !69, !nonnull !7, !align !8
  %i.i = load i64, ptr %2, align 8, !range !6, !alias.scope !68, !noalias !70
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB4_3Tag13get_attribute0B8_.exit.thread.i, %.lr.ph.i
  %i.j = phi ptr [ %i.b, %.lr.ph.i ], [ %i.k, %_RNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB4_3Tag13get_attribute0B8_.exit.thread.i ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.l = load i64, ptr %i.j, align 8, !range !6, !alias.scope !73, !noalias !74, !noundef !7 ; 4 uses
  %i.m = trunc i64 %i.l to i8
  %i.n = and i8 %i.m, 3
  switch i8 %i.n, label %.unreachabledefault.i [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

.unreachabledefault.i:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.o = inttoptr i64 %i.l to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
end_hunk_0
begin_hunk_1_@_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rules18any_not_whitespace:bb.a
  br label %.lr.ph.i.preheader

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !noundef !7 ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %.not.i10.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i10.not.i, label %_RINvYNtNtNtCskKLDkoKarTP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rules18any_not_whitespace0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1Z_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.thread7, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit
  %i.t = phi ptr [ %i.m, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.thread7 ], [ %i.s, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit ] ; 4 uses
  %.sroa.0.0.i11 = phi ptr [ %i.l, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.thread7 ], [ %i.r, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rules18any_not_whitespace0E0B1k_.exit.i
  %i.u = phi ptr [ %i.bd, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rules18any_not_whitespace0E0B1k_.exit.i ], [ %.sroa.0.0.i11, %.lr.ph.i.preheader ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 3 uses
  %i.w = load i8, ptr %i.u, align 1, !noalias !103, !noundef !7 ; 5 uses
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %bb.e, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit12.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit12.i.i.i: ; preds = %.lr.ph.i
  %i.y = and i8 %i.w, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = icmp ne ptr %i.v, %i.t
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 3 uses
  %i.ac = load i8, ptr %i.v, align 1, !noalias !103, !noundef !7
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.w, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit14.i.i.i, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.ai = zext nneg i8 %i.w to i32
  br label %bb.f

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit12.i.i.i
  %i.aj = icmp ne ptr %i.ab, %i.t
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 3 ; 3 uses
  %i.al = load i8, ptr %i.ab, align 1, !noalias !103, !noundef !7
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.w, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit16.i.i.i, label %bb.f

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit14.i.i.i
  %i.at = icmp ne ptr %i.ak, %i.t
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.av = load i8, ptr %i.ak, align 1, !noalias !103, !noundef !7
  %i.aw = shl nuw nsw i32 %i.z, 18
  %i.ax = and i32 %i.aw, 1835008
  %i.ay = shl nuw nsw i32 %i.ap, 6
  %i.az = and i8 %i.av, 63
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.ax
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit16.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit14.i.i.i, %bb.e, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit12.i.i.i
  %i.bd = phi ptr [ %i.ak, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit14.i.i.i ], [ %i.au, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit16.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit12.i.i.i ], [ %i.v, %bb.e ] ; 2 uses
  %spec.select.i.ph.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit14.i.i.i ], [ %i.bc, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit16.i.i.i ], [ %i.ag, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbmOI1VUejFP_9html5ever.exit12.i.i.i ], [ %i.ai, %bb.e ]
  switch i32 %spec.select.i.ph.i, label %_RINvYNtNtNtCskKLDkoKarTP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rules18any_not_whitespace0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1Z_.exit [
    i32 9, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rules18any_not_whitespace0E0B1k_.exit.i
    i32 10, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rules18any_not_whitespace0E0B1k_.exit.i
    i32 12, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rules18any_not_whitespace0E0B1k_.exit.i
    i32 13, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rules18any_not_whitespace0E0B1k_.exit.i
    i32 32, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rules18any_not_whitespace0E0B1k_.exit.i
  ]

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rules18any_not_whitespace0E0B1k_.exit.i: ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %.not.i.not.i = icmp eq ptr %i.bd, %i.t
  br i1 %.not.i.not.i, label %_RINvYNtNtNtCskKLDkoKarTP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rules18any_not_whitespace0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1Z_.exit, label %.lr.ph.i

_RINvYNtNtNtCskKLDkoKarTP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rules18any_not_whitespace0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1Z_.exit: ; preds = %bb.f, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rules18any_not_whitespace0E0B1k_.exit.i, %bb.a, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit
  %.not.i.lcssa.i = phi i1 [ false, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit ], [ false, %bb.a ], [ false, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rules18any_not_whitespace0E0B1k_.exit.i ], [ true, %bb.f ]
  ret i1 %.not.i.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNvMNtNtCsbmOI1VUejFP_9html5ever12tree_builder5rulesINtB6_11TreeBuilderppE4step13extra_special(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !7
  %i.b = icmp eq i64 %i.a, 12884901890
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !range !6, !noundef !7
  switch i64 %i.c, label %bb.c [
    i64 8319104478668415345, label %bb.d
    i64 1986618417, label %bb.d
    i64 28689, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets11special_tag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ %i.d, %bb.c ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, 1114112) i32 @_RNvNvMs0_NtNtCsbmOI1VUejFP_9html5ever9tokenizer8char_refNtB7_16CharRefTokenizer14finish_numeric4conv(i32 noundef returned %0) unnamed_addr #0 {
bb.a:
  %i.a = xor i32 %0, 55296
  %i.b = add i32 %i.a, -1114112
  %i.c = icmp ult i32 %i.b, -1112064
  br i1 %i.c, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %0, 1114112
  tail call void @llvm.assume(i1 %i.d)
  ret i32 %0

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvNvMs3_NtCsbmOI1VUejFP_9html5ever12tree_builderINtB7_11TreeBuilderppE14insert_element6listed(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !7
  %i.b = icmp ne i64 %i.a, 12884901890
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = icmp eq i64 %i.c, 1735223601
  %brmerge = select i1 %i.b, i1 true, i1 %i.d
  br i1 %brmerge, label %_RNvNvMs3_NtCsbmOI1VUejFP_9html5ever12tree_builderINtB7_11TreeBuilderppE14insert_element17form_associatable.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i64 %i.c, label %.fold.split.i [
    i64 31084793398911585, label %_RNvNvMs3_NtCsbmOI1VUejFP_9html5ever12tree_builderINtB7_11TreeBuilderppE14insert_element17form_associatable.exit
    i64 2761663971330, label %_RNvNvMs3_NtCsbmOI1VUejFP_9html5ever12tree_builderINtB7_11TreeBuilderppE14insert_element17form_associatable.exit
    i64 128047746279761, label %_RNvNvMs3_NtCsbmOI1VUejFP_9html5ever12tree_builderINtB7_11TreeBuilderppE14insert_element17form_associatable.exit
    i64 32760384526118753, label %_RNvNvMs3_NtCsbmOI1VUejFP_9html5ever12tree_builderINtB7_11TreeBuilderppE14insert_element17form_associatable.exit
    i64 32780223149076321, label %_RNvNvMs3_NtCsbmOI1VUejFP_9html5ever12tree_builderINtB7_11TreeBuilderppE14insert_element17form_associatable.exit
    i64 32760384559870817, label %_RNvNvMs3_NtCsbmOI1VUejFP_9html5ever12tree_builderINtB7_11TreeBuilderppE14insert_element17form_associatable.exit
    i64 1181116006402, label %_RNvNvMs3_NtCsbmOI1VUejFP_9html5ever12tree_builderINtB7_11TreeBuilderppE14insert_element17form_associatable.exit
  ]

.fold.split.i:                                    ; preds = %bb.b
  br label %_RNvNvMs3_NtCsbmOI1VUejFP_9html5ever12tree_builderINtB7_11TreeBuilderppE14insert_element17form_associatable.exit

_RNvNvMs3_NtCsbmOI1VUejFP_9html5ever12tree_builderINtB7_11TreeBuilderppE14insert_element17form_associatable.exit: ; preds = %bb.a, %.fold.split.i, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ false, %.fold.split.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvNvMs3_NtCsbmOI1VUejFP_9html5ever12tree_builderINtB7_11TreeBuilderppE15close_p_element7implied(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !7
  %i.b = icmp ne i64 %i.a, 12884901890
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = icmp eq i64 %i.c, 28689
  %brmerge = select i1 %i.b, i1 true, i1 %i.d
  br i1 %brmerge, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i64 %i.c, label %.fold.split.i [
    i64 6579233, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 7627809, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 6908961, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 31084746153946977, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 2821793513474, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 1668575793, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 6451745, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 7369249, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 7631393, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
  ]

.fold.split.i:                                    ; preds = %bb.b
  br label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit

_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit: ; preds = %bb.b, %bb.a, %.fold.split.i, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ false, %.fold.split.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_5Debug3fmtCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !7, !align !8, !noundef !7 ; 2 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.e, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !106
  %i.f = load i64, ptr %i.d, align 8, !range !6, !alias.scope !106, !noundef !7 ; 2 uses
  %i.g = and i64 %i.f, 3
  %i.h = and i64 %i.f, 3
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_5Debug3fmtCsbmOI1VUejFP_9html5ever, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep2 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_5Debug3fmtCsbmOI1VUejFP_9html5ever.26, i64 %i.g
  %switch.load3 = load i8, ptr %switch.gep2, align 1
  %switch.ext = zext i8 %switch.load3 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %switch.load, ptr %i.b, align 8, !noalias !106, !captures !107
  store i64 %switch.ext, ptr %i.i, align 8, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106
  store ptr %i.c, ptr %i.a, align 8, !noalias !106
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_7Display3fmtCsbmOI1VUejFP_9html5ever, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !106
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.j, align 8, !noalias !106
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsbmOI1VUejFP_9html5ever, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !106
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.k = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @18, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_7Display3fmtCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !8, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.b = load i64, ptr %i.a, align 8, !range !6, !alias.scope !115, !noalias !116, !noundef !7 ; 4 uses
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 3
  switch i8 %i.d, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !117, !nonnull !7, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !117, !noundef !7
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsbmOI1VUejFP_9html5ever.exit

bb.d:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.b, 4
  %i.j = and i64 %i.i, 15
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsbmOI1VUejFP_9html5ever.exit

bb.e:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.b, 32                        ; 3 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !117, !noundef !7 ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !117, !nonnull !7, !align !8, !noundef !7
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !117, !nonnull !7, !noundef !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !117, !noundef !7
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsbmOI1VUejFP_9html5ever.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !noalias !117
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.c, %bb.d, %bb.f
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.s, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %i.f, %bb.c ], [ %i.k, %bb.d ], [ %i.q, %bb.f ]
  %i.t = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.4.0.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %2, 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECsbmOI1VUejFP_9html5ever.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load i64, ptr %i.b, align 8, !alias.scope !124, !noalias !125, !noundef !7 ; 2 uses
  %.val2.i.i = load ptr, ptr %0, align 8, !alias.scope !124, !noalias !125, !nonnull !7
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpReNtB7_13SliceContains14slice_contains0CsbmOI1VUejFP_9html5ever.exit.backedge.i, %.lr.ph.i
  %i.c = phi ptr [ %1, %.lr.ph.i ], [ %i.d, %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpReNtB7_13SliceContains14slice_contains0CsbmOI1VUejFP_9html5ever.exit.backedge.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i = load i64, ptr %i.e, align 8, !noalias !126, !noundef !7
  %i.f = icmp eq i64 %.val3.i, %.val3.i.i
  br i1 %i.f, label %.split.i, label %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpReNtB7_13SliceContains14slice_contains0CsbmOI1VUejFP_9html5ever.exit.backedge.i

.split.i:                                         ; preds = %bb.b
  %.val2.i = load ptr, ptr %i.c, align 8, !noalias !126, !nonnull !7, !noundef !7
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i, ptr nonnull readonly %.val2.i.i, i64 %.val3.i.i), !alias.scope !127, !noalias !126
  %i.g = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.g, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECsbmOI1VUejFP_9html5ever.exit, label %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpReNtB7_13SliceContains14slice_contains0CsbmOI1VUejFP_9html5ever.exit.backedge.i

_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpReNtB7_13SliceContains14slice_contains0CsbmOI1VUejFP_9html5ever.exit.backedge.i: ; preds = %.split.i, %bb.b
  %.not7.i = icmp eq ptr %i.d, %i.a
  br i1 %.not7.i, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECsbmOI1VUejFP_9html5ever.exit, label %bb.b

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECsbmOI1VUejFP_9html5ever.exit: ; preds = %.split.i, %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpReNtB7_13SliceContains14slice_contains0CsbmOI1VUejFP_9html5ever.exit.backedge.i, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ false, %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpReNtB7_13SliceContains14slice_contains0CsbmOI1VUejFP_9html5ever.exit.backedge.i ], [ true, %.split.i ]
  ret i1 %.lcssa.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !159, !noalias !160, !noundef !7 ; 6 uses
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !160, !noalias !159, !noundef !7 ; 6 uses
  %.not4.i.i.i.i = icmp eq i64 %i.d, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not4.i.i.i.i, label %_RNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltCsbmOI1VUejFP_9html5ever.exit, label %bb.q

bb.c:                                             ; preds = %bb.a
  br i1 %.not4.i.i.i.i, label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.thread.i.i.i.i, label %_RNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltCsbmOI1VUejFP_9html5ever.exit

_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.thread.i.i.i.i: ; preds = %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.i.i.i.i, %bb.q, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.e = load i64, ptr %0, align 8, !range !6, !alias.scope !163, !noalias !164, !noundef !7 ; 5 uses
  %i.f = load i64, ptr %1, align 8, !range !6, !alias.scope !164, !noalias !163, !noundef !7 ; 5 uses
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsbmOI1VUejFP_9html5ever.exit.thread.i.i.i.i
  %i.h = trunc i64 %i.e to i8
  %i.i = and i8 %i.h, 3
  switch i8 %i.i, label %bb.e [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !165, !nonnull !7, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !165, !noundef !7
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = lshr i64 %i.e, 4
  %i.o = and i64 %i.n, 15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.d
  %i.q = lshr i64 %i.e, 32                        ; 3 uses
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !165, !noundef !7 ; 2 uses
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !165, !nonnull !7, !align !8, !noundef !7
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.q ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !165, !nonnull !7, !noundef !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !165, !noundef !7
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !noalias !165
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i: ; preds = %bb.i, %bb.g, %bb.f
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ %i.m, %bb.f ], [ %i.o, %bb.g ], [ %i.x, %bb.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.k, %bb.f ], [ %i.p, %bb.g ], [ %i.v, %bb.i ]
  %i.y = trunc i64 %i.f to i8
  %i.z = and i8 %i.y, 3
  switch i8 %i.z, label %bb.k [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
  ]

bb.k:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i
  unreachable

bb.l:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i.i.i
  %i.aa = inttoptr i64 %i.f to ptr                ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !166, !nonnull !7, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !166, !noundef !7
end_hunk_1
