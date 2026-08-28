Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/html5ever-7c94b86f9147eabc.html5ever.8469159039506d9f-cgu.2?download=true
inline.NumInlined: 102
inline.NumDeleted: 76
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsexYYUdYSQU6_5alloc3vec3VecBZ_EECsbmOI1VUejFP_9html5ever:bb.a
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %.sroa.0.0, ptr noundef nonnull align 8 %.sroa.04.0) #22 ; 2 uses
  %i.o = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %.sroa.0.0, ptr noundef nonnull align 8 %.sroa.08.0) #22
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %.sroa.04.0, ptr noundef nonnull align 8 %.sroa.08.0) #22
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBX_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = mul nuw nsw i64 %..i, 40                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 4 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.noexc
  %.sroa.13.2 = phi ptr [ %i.o, %.noexc ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.7.2 = phi ptr [ %i.q, %.noexc ], [ %i.h, %.critedge ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.l, %.noexc ], [ %i.f, %.critedge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -40 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -40 ; 3 uses
  %i.k = invoke fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %i.j, ptr noundef nonnull align 8 %i.i) #22
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -40 ; 2 uses
  %..i17 = select i1 %i.k, ptr %i.i, ptr %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %..i17, i64 40, i1 false), !noalias !4
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.05.0.i, i64 40, i1 false), !noalias !7
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1, ptr align 8 %.sroa.0.1, i64 %i.ae, i1 false), !noalias !10
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.ah, i1 false), !noalias !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !25, !noalias !28
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !25, !noalias !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !28, !noalias !20
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !28, !noalias !20
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !25, !noalias !28
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !25, !noalias !28
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !28, !noalias !20
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !28, !noalias !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !30

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !20, !noalias !23
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !23, !noalias !20
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !20, !noalias !23
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !23, !noalias !20
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !20, !noalias !23
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !23, !noalias !20
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !20, !noalias !23
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !23, !noalias !20
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !33, !noalias !35
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !35, !noalias !33
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !33, !noalias !35
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !35, !noalias !33
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !37
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtCsgv7xG79AfeB_12string_cache11dynamic_set11dynamic_set()
  %i.b = load i64, ptr %0, align 8, !range !38, !noundef !39
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @_RNvMs2_NtCsgv7xG79AfeB_12string_cache11dynamic_setNtB5_3Set6remove(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef nonnull %i.c)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtCsgv7xG79AfeB_12string_cache11dynamic_set11dynamic_set()
  %i.b = load i64, ptr %0, align 8, !range !38, !noundef !39
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @_RNvMs2_NtCsgv7xG79AfeB_12string_cache11dynamic_setNtB5_3Set6remove(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef nonnull %i.c)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtCsgv7xG79AfeB_12string_cache11dynamic_set11dynamic_set()
  %i.b = load i64, ptr %0, align 8, !range !38, !noundef !39
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
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !noalias !40 ; 2 uses
  %wide.load4 = load <16 x i8>, ptr %i.k, align 1, !noalias !40 ; 2 uses
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
  store <16 x i8> %i.r, ptr %i.t, align 1, !noalias !43
  store <16 x i8> %i.s, ptr %i.u, align 1, !noalias !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsbmOI1VUejFP_9html5ever.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %i.d, -8                      ; 4 uses
  %i.w = add i64 %.sroa.5.0.copyload, %n.vec5     ; 2 uses
  %i.x = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index6
  %wide.load7 = load <8 x i8>, ptr %i.y, align 1, !noalias !40 ; 2 uses
  %i.z = add <8 x i8> %wide.load7, splat (i8 -65)
  %i.aa = icmp ult <8 x i8> %i.z, splat (i8 26)
  %i.ab = select <8 x i1> %i.aa, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.ac = or <8 x i8> %i.ab, %wide.load7
  %i.ad = getelementptr i8, ptr %i.x, i64 %index6
  store <8 x i8> %i.ac, ptr %i.ad, align 1, !noalias !43
  %index.next8 = add nuw i64 %index6, 8           ; 2 uses
  %i.ae = icmp eq i64 %index.next8, %n.vec5
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

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
  %.val15.i.prol = load i8, ptr %i.ai, align 1, !noalias !40, !noundef !39 ; 2 uses
  %i.aj = add i8 %.val15.i.prol, -65
  %i.ak = icmp ult i8 %i.aj, 26
  %i.al = select i1 %i.ak, i8 32, i8 0
  %.sroa.0.0.i.i.i.prol = or i8 %i.al, %.val15.i.prol
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph
  store i8 %.sroa.0.0.i.i.i.prol, ptr %i.am, align 1, !noalias !43
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
  %.val15.i = load i8, ptr %i.ar, align 1, !noalias !40, !noundef !39 ; 2 uses
  %i.as = add i8 %.val15.i, -65
  %i.at = icmp ult i8 %i.as, 26
  %i.au = select i1 %i.at, i8 32, i8 0
  %.sroa.0.0.i.i.i = or i8 %i.au, %.val15.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.aq
  store i8 %.sroa.0.0.i.i.i, ptr %i.av, align 1, !noalias !43
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %.val15.i.1 = load i8, ptr %i.ax, align 1, !noalias !40, !noundef !39 ; 2 uses
  %i.ay = add i8 %.val15.i.1, -65
  %i.az = icmp ult i8 %i.ay, 26
  %i.ba = select i1 %i.az, i8 32, i8 0
  %.sroa.0.0.i.i.i.1 = or i8 %i.ba, %.val15.i.1
  %i.bb = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aq
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.bc, align 1, !noalias !43
  %i.bd = add i64 %i.aq, 2                        ; 2 uses
  %i.be = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.bf = icmp eq i64 %i.be, %i.d
  br i1 %i.bf, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsbmOI1VUejFP_9html5ever.exit, label %vec.epilog.scalar.ph, !llvm.loop !53

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsbmOI1VUejFP_9html5ever.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bd, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !40
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
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !39, !noundef !39 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !39 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !57 ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !57, !nonnull !39, !align !59
  %i.i = load i64, ptr %2, align 8, !range !38, !alias.scope !54, !noalias !60
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB4_3Tag13get_attribute0B8_.exit.thread.i, %.lr.ph.i
  %i.j = phi ptr [ %i.b, %.lr.ph.i ], [ %i.k, %_RNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB4_3Tag13get_attribute0B8_.exit.thread.i ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.l = load i64, ptr %i.j, align 8, !range !38, !alias.scope !67, !noalias !68, !noundef !39 ; 4 uses
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
  %i.q = load i64, ptr %i.p, align 8, !noalias !70, !noundef !39
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.l, 4
  %i.s = and i64 %i.r, 15
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.t = lshr i64 %i.l, 32                        ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.g
  br i1 %i.u, label %bb.f, label %.noexc5.i.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !70, !noundef !39
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i

.noexc5.i.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !noalias !57
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i: ; preds = %bb.f, %bb.d, %bb.c
  %.sroa.4.0.i.i.i.i = phi i64 [ %i.q, %bb.c ], [ %i.s, %bb.d ], [ %i.x, %bb.f ]
  %i.y = icmp eq i64 %.sroa.4.0.i.i.i.i, 0
  br i1 %i.y, label %_RNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB4_3Tag13get_attribute0B8_.exit.i, label %_RNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB4_3Tag13get_attribute0B8_.exit.thread.i

_RNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB4_3Tag13get_attribute0B8_.exit.i: ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !38, !noalias !57, !noundef !39
  %i.ab = icmp eq i64 %i.aa, %i.i
  br i1 %i.ab, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB2v_3Tag13get_attribute0EB2z_.exit, label %_RNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB4_3Tag13get_attribute0B8_.exit.thread.i

_RNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB4_3Tag13get_attribute0B8_.exit.thread.i: ; preds = %_RNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB4_3Tag13get_attribute0B8_.exit.i, %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbmOI1VUejFP_9html5ever.exit.i.i.i
  %i.ac = icmp eq ptr %i.k, %i.e
  br i1 %i.ac, label %.loopexit, label %bb.b

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB2v_3Tag13get_attribute0EB2z_.exit: ; preds = %_RNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB4_3Tag13get_attribute0B8_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !71, !nonnull !39, !noundef !39 ; 5 uses
  %i.af = icmp ugt ptr %i.ae, inttoptr (i64 15 to ptr)
  br i1 %i.af, label %bb.g, label %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbmOI1VUejFP_9html5ever.exit

bb.g:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB2v_3Tag13get_attribute0EB2z_.exit
  %i.ag = ptrtoint ptr %i.ae to i64
  %3 = and i64 %i.ag, 1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb.h, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsbmOI1VUejFP_9html5ever.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 36 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !71, !noundef !39
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.ai, ptr %i.aj, align 8, !noalias !71
  %i.ak = getelementptr i8, ptr %i.ae, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  store ptr %i.ak, ptr %i.ad, align 8, !noalias !71
  store i32 0, ptr %i.ah, align 4, !noalias !71
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsbmOI1VUejFP_9html5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsbmOI1VUejFP_9html5ever.exit.i: ; preds = %bb.h, %bb.g
  %i.al = phi ptr [ %i.ae, %bb.g ], [ %i.ak, %bb.h ]
  %i.am = getelementptr i8, ptr %i.al, i64 -1     ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noalias !71, !noundef !39 ; 2 uses
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %bb.i, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i, !prof !74

bb.i:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsbmOI1VUejFP_9html5ever.exit.i
  %i.ap = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !71, !nonnull !39, !noundef !39
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !71, !noundef !39
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #23, !noalias !71
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsbmOI1VUejFP_9html5ever.exit.i
  %i.ar = add nuw i64 %i.an, 1
  store i64 %i.ar, ptr %i.am, align 8, !noalias !71
  br label %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbmOI1VUejFP_9html5ever.exit

_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbmOI1VUejFP_9html5ever.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB2v_3Tag13get_attribute0EB2z_.exit, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB4_3Tag13get_attribute0B8_.exit.thread.i, %bb.a, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbmOI1VUejFP_9html5ever.exit
  %storemerge = phi i64 [ 1, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbmOI1VUejFP_9html5ever.exit ], [ 0, %bb.a ], [ 0, %_RNCNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB4_3Tag13get_attribute0B8_.exit.thread.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtCsbmOI1VUejFP_9html5ever9tokenizer9interfaceNtB2_3Tag23equiv_modulo_attr_order(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !75, !noundef !39
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !range !75, !noundef !39
  %.not = icmp eq i8 %i.e, %i.g
  br i1 %.not, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !range !38, !noundef !39
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !range !38, !noundef !39
  %.not2 = icmp eq i64 %i.i, %i.k
  br i1 %.not2, label %bb.c, label %bb.ah

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.e unwind label %bb.d

.body:                                            ; preds = %bb.ac, %bb.d, %bb.i
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.l, %bb.d ], [ %i.ch, %bb.ac ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #21
          to label %common.resume unwind label %bb.ai

bb.d:                                             ; preds = %bb.ad, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !39, !noundef !39 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !39 ; 4 uses
  %i.q = icmp samesign ult i64 %i.p, 2
  br i1 %i.q, label %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit, label %bb.f, !prof !76

bb.f:                                             ; preds = %bb.e
  %i.r = icmp samesign ult i64 %i.p, 21
  br i1 %i.r, label %bb.h, label %bb.g, !prof !76

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsexYYUdYSQU6_5alloc3vec3VecBZ_EECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef range(i64 0, 230584300921369396) %i.p, ptr noalias nofree noundef nonnull %i.a) #24
          to label %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef range(i64 0, 230584300921369396) %i.p, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.k, %bb.h, %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #21
          to label %.body unwind label %bb.ai

_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.e, %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !39, !noundef !39 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !39 ; 4 uses
  %i.x = icmp samesign ult i64 %i.w, 2
  br i1 %i.x, label %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit7, label %bb.j, !prof !76

bb.j:                                             ; preds = %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit
  %i.y = icmp samesign ult i64 %i.w, 21
  br i1 %i.y, label %bb.l, label %bb.k, !prof !76

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsexYYUdYSQU6_5alloc3vec3VecBZ_EECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %i.u, i64 noundef range(i64 0, 230584300921369396) %i.w, ptr noalias nofree noundef nonnull %i.a) #24
          to label %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit7 unwind label %bb.i

bb.l:                                             ; preds = %bb.j
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %i.u, i64 noundef range(i64 0, 230584300921369396) %i.w, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit7 unwind label %bb.i

_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit7: ; preds = %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit, %bb.k, %bb.l
  %i.z = load i64, ptr %i.o, align 8, !noundef !39 ; 3 uses
  %i.aa = load i64, ptr %i.v, align 8, !noundef !39
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.m, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeINtB5_14SlicePartialEqBC_E17equal_same_lengthCsbmOI1VUejFP_9html5ever.exit

bb.m:                                             ; preds = %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit7
  %i.ac = load ptr, ptr %i.t, align 8, !nonnull !39, !noundef !39
  %i.ad = load ptr, ptr %i.m, align 8, !nonnull !39, !noundef !39
  %i.ae = icmp eq i64 %i.z, 0
  br i1 %i.ae, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeINtB5_14SlicePartialEqBC_E17equal_same_lengthCsbmOI1VUejFP_9html5ever.exit, label %.lr.ph.i

bb.n:                                             ; preds = %_RNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsbmOI1VUejFP_9html5ever.exit.i
  %i.af = add nuw i64 %.sroa.01.06.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.z
  br i1 %exitcond.not.i, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeINtB5_14SlicePartialEqBC_E17equal_same_lengthCsbmOI1VUejFP_9html5ever.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.sroa.01.06.i = phi i64 [ %i.af, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %.sroa.01.06.i ; 7 uses
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %.sroa.01.06.i ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !77, !noalias !80, !noundef !39 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !80, !noalias !77, !noundef !39 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.q, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeINtB5_14SlicePartialEqBC_E17equal_same_lengthCsbmOI1VUejFP_9html5ever.exit

bb.p:                                             ; preds = %.lr.ph.i
  %i.an = icmp eq i64 %i.al, 0
  br i1 %i.an, label %bb.q, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeINtB5_14SlicePartialEqBC_E17equal_same_lengthCsbmOI1VUejFP_9html5ever.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ao = load i64, ptr %i.ag, align 8, !range !38, !alias.scope !77, !noalias !80, !noundef !39
  %i.ap = load i64, ptr %i.ah, align 8, !range !38, !alias.scope !80, !noalias !77, !noundef !39
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %_RNvXsf_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeINtB5_14SlicePartialEqBC_E17equal_same_lengthCsbmOI1VUejFP_9html5ever.exit

_RNvXsf_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !38, !alias.scope !77, !noalias !80, !noundef !39
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !38, !alias.scope !80, !noalias !77, !noundef !39
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.r, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeINtB5_14SlicePartialEqBC_E17equal_same_lengthCsbmOI1VUejFP_9html5ever.exit

bb.r:                                             ; preds = %_RNvXsf_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ay = load ptr, ptr %i.aw, align 8, !nonnull !39, !noundef !39 ; 4 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = icmp eq ptr %i.ay, inttoptr (i64 15 to ptr)
  br i1 %i.ba, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = icmp ult ptr %i.ay, inttoptr (i64 9 to ptr)
  br i1 %i.bb, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = and i64 %i.az, 1
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr i8, ptr %i.ay, i64 %i.bd
  %i.bf = trunc i64 %i.az to i1
  br i1 %i.bf, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  %i.bh = load i32, ptr %i.bg, align 4, !noalias !82, !noundef !39
  %i.bi = zext i32 %i.bh to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u, %bb.t
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.bi, %bb.u ], [ 0, %bb.t ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !noundef !39
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.01.0.i.i.i.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i.i.i

end_hunk_0
