Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.6?download=true
inline.NumInlined: 170
inline.NumDeleted: 68
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesReNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEB19_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %i.e = load i8, ptr %i.c, align 8, !range !5, !alias.scope !6, !noundef !9
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9next_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RNvXs8_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6ChunksNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.h = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9prev_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RNvXs8_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6ChunksNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.k ], [ %i.j, %bb.g ]
  %i.i = load i64, ptr %i.b, align 8, !range !10, !alias.scope !11, !noundef !9
  %.not.i.i = icmp eq i64 %i.i, -1
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit unwind label %bb.m

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

_RNvXs8_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6ChunksNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi { ptr, i64 } [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.k = extractvalue { ptr, i64 } %.pn.i, 0      ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs8_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6ChunksNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit
  %i.l = extractvalue { ptr, i64 } %.pn.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.a, align 8, !captures !4
  store i64 %i.l, ptr %i.d, align 8
  %i.m = invoke noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %bb.l unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %_RNvXs8_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6ChunksNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit
  %i.n = load i64, ptr %i.b, align 8, !range !10, !alias.scope !16, !noundef !9
  %.not.i.i8 = icmp eq i64 %i.n, -1
  br i1 %.not.i.i8, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit9, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit9: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0

bb.k:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.m:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5inner20NodeChildrenInternalEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load i8, ptr %i.a, align 8, !alias.scope !21, !noundef !9 ; 3 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = icmp ult i8 %i.b, 25
  br i1 %i.d, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #22, !noalias !21
  unreachable

bb.c:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i
  %i.f = icmp eq i8 %i.b, 0
  br i1 %i.f, label %_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %.sroa.0.02.i = phi ptr [ %i.g, %bb.e ], [ %0, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8 ; 2 uses
  %i.h = load ptr, ptr %.sroa.0.02.i, align 8, !alias.scope !21, !nonnull !9, !noundef !9
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.0.02.i) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.k = icmp eq ptr %i.g, %i.e
  br i1 %i.k, label %_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit, label %.lr.ph.i

_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit: ; preds = %bb.e, %bb.c
  ret void
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoBM_EBS_(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2wCc12Mnjqg_5ropey(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22, !noalias !26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %0, %1
  br i1 %i.b, label %bb.d, label %_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range.exit, !prof !25

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #22, !noalias !26
  unreachable

_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range.exit: ; preds = %bb.c
  %i.c = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %1, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2wCc12Mnjqg_5ropey(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !34, !noalias !37
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !34, !noalias !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !37, !noalias !29
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !37, !noalias !29
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !34, !noalias !37
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !34, !noalias !37
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !37, !noalias !29
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !37, !noalias !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %lcmp.mod.not = trunc i64 %2 to i1
  br i1 %lcmp.mod.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !29, !noalias !32
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !32, !noalias !29
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !29, !noalias !32
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !32, !noalias !29
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !29, !noalias !32
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !32, !noalias !29
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !29, !noalias !32
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !32, !noalias !29
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !42, !noalias !44
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !44, !noalias !42
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !42, !noalias !44
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !44, !noalias !42
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !46
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText10insert_str(ptr noalias nofree noundef align 8 dereferenceable(1000) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #1 {
_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !47, !noalias !50, !noundef !9 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 984                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink13.i = select i1 %i.c, ptr %i.e, ptr %i.h
  %.sink12.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 2 uses
  %i.i = icmp eq i64 %1, 0
  br i1 %i.i, label %.split1.i, label %bb.a

.split1.i:                                        ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit
  %i.j = tail call { i64, i64 } @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %0, i64 noundef range(i64 0, -9223372036854775808) %3), !noalias !54 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1
  tail call void @_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey(i64 noundef %i.k, i64 %i.l), !noalias !54
  %i.m = load i64, ptr %i.a, align 8, !alias.scope !57, !noalias !61, !noundef !9 ; 2 uses
  %i.n = icmp ugt i64 %i.m, 984                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink12.i1517.i = select i1 %i.n, i64 %i.p, i64 %i.m ; 2 uses
  %.sink12.i2.i = select i1 %i.n, ptr %i.r, ptr %i.s ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink12.i2.i, i64 %3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %.sink12.i2.i, i64 %.sink12.i1517.i, i1 false), !noalias !54
  br label %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString10insert_str.exit

bb.a:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit
  %.not.i = icmp ult i64 %1, %.sink12.i
  br i1 %.not.i, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.u = icmp eq i64 %1, %.sink12.i
  br i1 %i.u, label %.split.i, label %bb.f, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 %1
  %i.w = load i8, ptr %i.v, align 1, !noalias !64, !noundef !9
  %i.x = icmp sgt i8 %i.w, -65
  br i1 %i.x, label %.split.i, label %bb.f, !prof !63

.split.i:                                         ; preds = %.split, %bb.b
  %i.y = tail call { i64, i64 } @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %0, i64 noundef range(i64 0, -9223372036854775808) %3), !noalias !65 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1
  tail call void @_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey(i64 noundef %i.z, i64 %i.aa), !noalias !65
  %i.ab = load i64, ptr %i.a, align 8, !alias.scope !68, !noalias !72, !noundef !9 ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, 984
  br i1 %i.ac, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i7, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread.i2

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i7: ; preds = %.split.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !68, !noalias !72, !noundef !9 ; 2 uses
  %.not.i8 = icmp ugt i64 %1, %i.ae
  br i1 %.not.i8, label %bb.c, label %bb.d, !prof !25

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread.i2: ; preds = %.split.i
  %.not14.i = icmp ugt i64 %1, %i.ab
  br i1 %.not14.i, label %bb.c, label %bb.e, !prof !25

bb.c:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread.i2, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i7
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #22, !noalias !65
  unreachable

bb.d:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !74, !noalias !77, !nonnull !9, !noundef !9
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i3

bb.e:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread.i2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i3

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i3: ; preds = %bb.e, %bb.d
  %.sink12.i1517.i4 = phi i64 [ %i.ae, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  %.sink12.i2.i5 = phi ptr [ %i.ag, %bb.d ], [ %i.ah, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink12.i2.i5, i64 %1 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %3
  %i.ak = sub nuw i64 %.sink12.i1517.i4, %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %i.ai, i64 %i.ak, i1 false), !noalias !65
  br label %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString10insert_str.exit

bb.f:                                             ; preds = %.split, %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 58, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #22, !noalias !64
  unreachable

_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString10insert_str.exit: ; preds = %.split1.i, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i3
  %.sink12.i2.i.sink = phi ptr [ %.sink12.i2.i, %.split1.i ], [ %i.ai, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i3 ]
  %.sink12.i1517.i.sink = phi i64 [ %.sink12.i1517.i, %.split1.i ], [ %.sink12.i1517.i4, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i3 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink12.i2.i.sink, ptr nonnull readonly align 1 %2, i64 range(i64 0, -9223372036854775808) %3, i1 false)
  %i.al = load i64, ptr %i.a, align 8, !noalias !9, !noundef !9
  %i.am = icmp ugt i64 %i.al, 984
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select14 = select i1 %i.am, ptr %i.an, ptr %i.a
  %i.ao = add i64 %.sink12.i1517.i.sink, %3
  store i64 %i.ao, ptr %spec.select14, align 8, !noalias !9
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText12remove_range(ptr noalias nofree noundef align 8 dereferenceable(1000) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp ugt i64 %1, %2
  br i1 %.not.i, label %bb.b, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit, !prof !25

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #22, !noalias !79
  unreachable

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !82, !noalias !85, !noundef !9 ; 4 uses
  %i.c = icmp ugt i64 %i.b, 984                   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink13.i = select i1 %i.c, ptr %i.e, ptr %i.h
  %.sink12.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 2 uses
  %i.i = icmp eq i64 %1, 0
  br i1 %i.i, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit4, label %bb.c

bb.c:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit
  %.not5.i = icmp ult i64 %1, %.sink12.i
  br i1 %.not5.i, label %bb.d, label %.split

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit4: ; preds = %.split, %bb.d, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink13.i1 = select i1 %i.c, ptr %i.k, ptr %i.n
  %.sink12.i2 = select i1 %i.c, i64 %i.m, i64 %i.b ; 2 uses
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString12remove_range.exit, label %bb.f

.split:                                           ; preds = %bb.c
  %i.p = icmp eq i64 %1, %.sink12.i
  br i1 %i.p, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit4, label %bb.e, !prof !63

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 %1
  %i.r = load i8, ptr %i.q, align 1, !noundef !9
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit4, label %bb.e, !prof !63

end_hunk_0
begin_hunk_1_@_RNvNtNtCs2wCc12Mnjqg_5ropey4tree9node_text16fix_segment_seam:_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit

.split.i66:                                       ; preds = %bb.n
  %i.ck = icmp eq i64 %.sroa.0.2, %.sink12.i.i63
  br i1 %i.ck, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %.sink13.i.i62, i64 %.sroa.0.2
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !483, !noundef !9
  %i.cn = icmp sgt i8 %i.cm, -65
  br i1 %i.cn, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i, label %bb.y

bb.p:                                             ; preds = %bb.k, %.split.i, %_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit56
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !486, !noalias !489
  %.sink12.i.i68 = select i1 %i.c, i64 %i.cp, i64 %i.b ; 5 uses
  %i.cq = icmp eq i64 %.sink12.i.i68, 0
  %i.cr = tail call { i64, i64 } @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %0, i64 noundef range(i64 0, -9223372036854775808) %i.bv), !noalias !489 ; 2 uses
  %i.cs = extractvalue { i64, i64 } %i.cr, 0
  %i.ct = extractvalue { i64, i64 } %i.cr, 1
  tail call void @_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey(i64 noundef %i.cs, i64 %i.ct), !noalias !489
  %i.cu = load i64, ptr %i.a, align 8, !alias.scope !486, !noalias !489, !noundef !9 ; 4 uses
  %i.cv = icmp ugt i64 %i.cu, 984                 ; 3 uses
  br i1 %i.cq, label %.split1.i.i, label %.split.i.i

.split1.i.i:                                      ; preds = %bb.p
  %i.cw = load i64, ptr %i.co, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !9
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink12.i1517.i.i = select i1 %i.cv, i64 %i.cw, i64 %i.cu ; 2 uses
  %.sink12.i2.i.i = select i1 %i.cv, ptr %i.cy, ptr %i.cz ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sink12.i2.i.i, i64 %i.bv
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.da, ptr nonnull align 1 %.sink12.i2.i.i, i64 %.sink12.i1517.i.i, i1 false), !noalias !491
  br label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8push_str.exit

.split.i.i:                                       ; preds = %bb.p
  br i1 %i.cv, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i7.i, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread.i2.i

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i7.i: ; preds = %.split.i.i
  %i.db = load i64, ptr %i.co, align 8, !alias.scope !494, !noalias !499, !noundef !9 ; 2 uses
  %.not.i8.i = icmp ugt i64 %.sink12.i.i68, %i.db
  br i1 %.not.i8.i, label %bb.q, label %bb.r, !prof !25

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread.i2.i: ; preds = %.split.i.i
  %.not14.i.i = icmp ugt i64 %.sink12.i.i68, %i.cu
  br i1 %.not14.i.i, label %bb.q, label %bb.s, !prof !25

bb.q:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread.i2.i, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i7.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #22, !noalias !502
  unreachable

bb.r:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i7.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !503, !noalias !506, !nonnull !9, !noundef !9
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i3.i

bb.s:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.thread.i2.i
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i3.i

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i3.i: ; preds = %bb.s, %bb.r
  %.sink12.i1517.i4.i = phi i64 [ %i.db, %bb.r ], [ %i.cu, %bb.s ] ; 2 uses
  %.sink12.i2.i5.i = phi ptr [ %i.dd, %bb.r ], [ %i.de, %bb.s ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sink12.i2.i5.i, i64 %.sink12.i.i68 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.bv
  %i.dh = sub nuw i64 %.sink12.i1517.i4.i, %.sink12.i.i68
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %i.df, i64 %i.dh, i1 false), !noalias !502
  br label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8push_str.exit

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8push_str.exit: ; preds = %.split1.i.i, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i3.i
  %.sink12.i2.i.i.sink = phi ptr [ %.sink12.i2.i.i, %.split1.i.i ], [ %i.df, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i3.i ]
  %.sink12.i1517.i.sink.i = phi i64 [ %.sink12.i1517.i.i, %.split1.i.i ], [ %.sink12.i1517.i4.i, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE10triple_mutBP_.exit.i3.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink12.i2.i.i.sink, ptr nonnull readonly align 1 %.sink13.i.i57, i64 range(i64 0, -9223372036854775808) %i.bv, i1 false)
  %i.di = load i64, ptr %i.a, align 8, !alias.scope !486, !noalias !489, !noundef !9
  %i.dj = icmp ugt i64 %i.di, 984
  %spec.select = select i1 %i.dj, ptr %i.co, ptr %i.a
  %i.dk = add i64 %.sink12.i1517.i.sink.i, %i.bv
  store i64 %i.dk, ptr %spec.select, align 8, !alias.scope !486, !noalias !489
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText14truncate_front(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %1, i64 noundef %i.bv)
  br label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8truncate.exit

bb.t:                                             ; preds = %bb.k, %.split.i
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink13.i.i57, i64 noundef %.sink12.i.i58, i64 noundef 0, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #22
  unreachable

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i: ; preds = %bb.o, %.split.i66, %_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit64
  %i.dl = sub nuw i64 %.sink12.i.i63, %.sroa.0.2  ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sink13.i.i62, i64 %.sroa.0.2
  %i.dn = tail call { i64, i64 } @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE11try_reserveBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %1, i64 noundef range(i64 0, -9223372036854775808) %i.dl), !noalias !508 ; 2 uses
  %i.do = extractvalue { i64, i64 } %i.dn, 0
  %i.dp = extractvalue { i64, i64 } %i.dn, 1
  tail call void @_RINvCs2efQY0w7vw4_8smallvec10infallibleuECs2wCc12Mnjqg_5ropey(i64 noundef %i.do, i64 %i.dp), !noalias !508
  %i.dq = load i64, ptr %i.i, align 8, !alias.scope !513, !noalias !518, !noundef !9 ; 2 uses
  %i.dr = icmp ugt i64 %i.dq, 984                 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !9
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sink12.i1517.i.i74 = select i1 %i.dr, i64 %i.dt, i64 %i.dq ; 2 uses
  %.sink12.i2.i.i75 = select i1 %i.dr, ptr %i.dv, ptr %i.dw ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sink12.i2.i.i75, i64 %i.dl
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull align 1 %.sink12.i2.i.i75, i64 %.sink12.i1517.i.i74, i1 false), !noalias !508
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink12.i2.i.i75, ptr nonnull readonly align 1 %i.dm, i64 range(i64 0, -9223372036854775808) %i.dl, i1 false)
  %i.dy = load i64, ptr %i.i, align 8, !alias.scope !520, !noalias !523, !noundef !9
  %i.dz = icmp ugt i64 %i.dy, 984
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sink11.i5.i.sink.i77 = select i1 %i.dz, ptr %i.ea, ptr %i.i
  %i.eb = add i64 %.sink12.i1517.i.i74, %i.dl
  store i64 %i.eb, ptr %.sink11.i5.i.sink.i77, align 8, !alias.scope !525, !noalias !526
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.ec = load i64, ptr %i.a, align 8, !alias.scope !530, !noalias !533, !noundef !9 ; 2 uses
  %i.ed = icmp ugt i64 %i.ec, 984                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !9
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink13.i.i80 = select i1 %i.ed, ptr %i.ef, ptr %i.ei
  %.sink12.i.i81 = select i1 %i.ed, i64 %i.eh, i64 %i.ec ; 2 uses
  br i1 %i.cj, label %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString8truncate.exit.i, label %bb.u

bb.u:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i
  %.not.i.i = icmp ult i64 %.sroa.0.2, %.sink12.i.i81
  br i1 %.not.i.i, label %bb.v, label %.split.i82

.split.i82:                                       ; preds = %bb.u
  %i.ej = icmp eq i64 %.sroa.0.2, %.sink12.i.i81
  br i1 %i.ej, label %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString8truncate.exit.i, label %bb.w, !prof !63

bb.v:                                             ; preds = %bb.u
  %i.ek = getelementptr inbounds nuw i8, ptr %.sink13.i.i80, i64 %.sroa.0.2
  %i.el = load i8, ptr %i.ek, align 1, !noundef !9
  %i.em = icmp sgt i8 %i.el, -65
  br i1 %i.em, label %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString8truncate.exit.i, label %bb.w, !prof !63

bb.w:                                             ; preds = %bb.v, %.split.i82
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 58, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22, !noalias !527
  unreachable

_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString8truncate.exit.i: ; preds = %bb.v, %.split.i82, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i
  tail call void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE8truncateBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %0, i64 noundef %.sroa.0.2)
  %i.en = load i64, ptr %i.a, align 8, !alias.scope !527, !noundef !9
  %i.eo = icmp ugt i64 %i.en, 984
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = icmp ult i64 %i.eq, 985
  %or.cond132 = select i1 %i.eo, i1 %i.er, i1 false
  br i1 %or.cond132, label %bb.x, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8truncate.exit

bb.x:                                             ; preds = %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString8truncate.exit.i
  tail call void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE13shrink_to_fitBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %0)
  br label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8truncate.exit

bb.y:                                             ; preds = %bb.o, %.split.i66
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink13.i.i62, i64 noundef %.sink12.i.i63, i64 noundef %.sroa.0.2, i64 noundef %.sink12.i.i63, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22
  unreachable

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8truncate.exit: ; preds = %bb.x, %_RNvMs_NtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5innerNtB4_15NodeSmallString8truncate.exit.i, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8push_str.exit, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf13seam_is_break.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textReINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_8NodeTextE2eq(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1000) %1) unnamed_addr #4 {
_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !535, !noalias !540, !noundef !9 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 984                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.sink12.i.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !9
  %i.h = icmp eq i64 %i.g, %.sink12.i.i
  br i1 %i.h, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sink13.i.i = select i1 %i.c, ptr %i.j, ptr %i.k
  %i.l = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.l, ptr nonnull %.sink13.i.i, i64 %.sink12.i.i)
  %i.m = icmp eq i32 %bcmp, 0
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit, %bb.a
  %.sroa.0.0 = phi i1 [ %i.m, %bb.a ], [ false, %_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB5_20NodeChildrenInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([968 x i8]) align 8 captures(none) dereferenceable(968) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(968) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [968 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 960 ; 2 uses
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.e = load i8, ptr %i.d, align 8, !noundef !9  ; 7 uses
  %i.f = zext i8 %i.e to i64                      ; 3 uses
  %i.g = icmp ult i8 %i.e, 25
  br i1 %i.g, label %.preheader, label %bb.b, !prof !24

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %._crit_edge48, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.f, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #24
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5inner20NodeChildrenInternalEBJ_(ptr noalias nofree noundef align 8 dereferenceable(968) %i.a) #25
          to label %bb.h unwind label %bb.g

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.sroa.8.044 = phi i64 [ %i.x, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.8.044
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.k = atomicrmw add ptr %i.j, i64 1 monotonic, align 8
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.e

._crit_edge:                                      ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.n = icmp eq i8 %i.e, 1
  br i1 %i.n, label %.lr.ph47.epil.preheader, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter = and i64 %i.f, 30
  br label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph47, %._crit_edge.new
  %.sroa.833.045 = phi i64 [ 0, %._crit_edge.new ], [ %i.r, %.lr.ph47 ] ; 4 uses
  %niter = phi i64 [ 0, %._crit_edge.new ], [ %niter.next.1, %.lr.ph47 ]
  %i.o = or disjoint i64 %.sroa.833.045, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.833.045
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.833.045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.r = add nuw nsw i64 %.sroa.833.045, 2        ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.o
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge48.loopexit.unr-lcssa, label %.lr.ph47

._crit_edge48.loopexit.unr-lcssa:                 ; preds = %.lr.ph47
  %lcmp.mod.not = trunc i8 %i.e to i1
  br i1 %lcmp.mod.not, label %.lr.ph47.epil.preheader, label %._crit_edge48

.lr.ph47.epil.preheader:                          ; preds = %._crit_edge48.loopexit.unr-lcssa, %._crit_edge
  %.sroa.833.045.epil.init = phi i64 [ 0, %._crit_edge ], [ %i.r, %._crit_edge48.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod52 = trunc i8 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod52)
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.833.045.epil.init
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.833.045.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %.lr.ph47.epil.preheader, %._crit_edge48.loopexit.unr-lcssa, %.preheader
  store i8 %i.e, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull align 8 dereferenceable(968) %i.a, i64 968, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.8.044
  %i.x = add nuw nsw i64 %.sroa.8.044, 1          ; 2 uses
  store ptr %i.j, ptr %i.w, align 8
  %exitcond.not = icmp eq i64 %i.x, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.h:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextINtNtCskKLDkoKarTP_4core3cmp9PartialEqReE2eq(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1000) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !542, !noalias !547, !noundef !9 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 984                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.sink12.i.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !9
  %i.h = icmp eq i64 %.sink12.i.i, %i.g
  br i1 %i.h, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink13.i.i = select i1 %i.c, ptr %i.j, ptr %i.k
  %i.l = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %bcmp = tail call i32 @bcmp(ptr nonnull %.sink13.i.i, ptr nonnull %i.l, i64 %.sink12.i.i)
  %i.m = icmp eq i32 %bcmp, 0
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit, %bb.a
  %.sroa.0.0 = phi i1 [ %i.m, %bb.a ], [ false, %_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !549, !noundef !9
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3mem9alignmentNtB4_9AlignmentNtNtB8_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !549, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !550
  store ptr %i.b, ptr %i.a, align 8, !noalias !550
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !550
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text8NodeTextNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !549, !noundef !9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !554, !noalias !561, !noundef !9 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 984
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !554, !noalias !561, !nonnull !9, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !554, !noalias !561, !noundef !9
  br label %_RNvXs3_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_RNvXs3_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXs3_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sink13.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  %.sink12.i.i.i = phi i64 [ %i.h, %bb.b ], [ %i.c, %bb.c ]
  %i.j = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink13.i.i.i, i64 noundef %.sink12.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !549, !noundef !9 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !564
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %i.a, align 8, !noalias !564
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 5, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 16, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !564
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRRSNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !9, !align !549, !noundef !9 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !nonnull !9, !align !549, !noundef !9 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val1 = load i64, ptr %i.d, align 8, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !568
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !574
  %.idx.i.i = shl nuw nsw i64 %.val1, 5
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i.i
  %i.f = icmp eq i64 %.val1, 0
  br i1 %i.f, label %_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRSNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoNtB6_5Debug3fmtBD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %.val, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !575
  store ptr %.sroa.0.05.i.i.i, ptr %i.a, align 8, !noalias !575, !captures !4
  %i.h = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !575
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRSNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoNtB6_5Debug3fmtBD_.exit, label %.lr.ph.i.i.i

_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRSNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoNtB6_5Debug3fmtBD_.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.j = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !568
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !9
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRyNtB6_5Debug3fmtCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !549, !noundef !9 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !578, !noalias !581, !noundef !9 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt.exit
end_hunk_1
