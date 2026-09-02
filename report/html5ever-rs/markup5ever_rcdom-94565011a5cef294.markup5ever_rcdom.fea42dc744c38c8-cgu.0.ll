Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever_rcdom-94565011a5cef294.markup5ever_rcdom.fea42dc744c38c8-cgu.0?download=true
inline.NumInlined: 238
inline.NumDeleted: 156
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom:bb.a
  %i.p = atomicrmw sub ptr %i.o, i64 1 seq_cst, align 8, !noalias !95
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit, !prof !7

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit unwind label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.b, %bb.a, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.r = load i64, ptr %0, align 8, !range !8, !alias.scope !98, !noundef !5 ; 2 uses
  %i.s = and i64 %i.r, 3
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit4

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECs1mImOlsSUsK_17markup5ever_rcdom.exit
  %i.u = inttoptr i64 %i.r to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = atomicrmw sub ptr %i.v, i64 1 seq_cst, align 8, !noalias !98
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit4, !prof !7

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit4 unwind label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.j, %bb.f ], [ %i.j, %bb.d ], [ %i.j, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.z = load i64, ptr %i.y, align 8, !range !8, !alias.scope !101, !noundef !5 ; 2 uses
  %i.aa = and i64 %i.z, 3
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit
  %i.ac = inttoptr i64 %i.z to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 seq_cst, align 8, !noalias !101
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit unwind label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit4: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECs1mImOlsSUsK_17markup5ever_rcdom.exit, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.ai = load i64, ptr %i.ah, align 8, !range !8, !alias.scope !104, !noundef !5 ; 2 uses
  %i.aj = and i64 %i.ai, 3
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit6

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit4
  %i.al = inttoptr i64 %i.ai to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = atomicrmw sub ptr %i.am, i64 1 seq_cst, align 8, !noalias !104
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit6, !prof !7

bb.m:                                             ; preds = %bb.l
  tail call void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit6: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit4, %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %bb.j, %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit, %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #25
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1mImOlsSUsK_17markup5ever_rcdom(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs1mImOlsSUsK_17markup5ever_rcdom.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs1mImOlsSUsK_17markup5ever_rcdom.exit
    i64 1, label %bb.c
  ], !prof !9

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !107
  store i8 3, ptr %i.a, align 8, !alias.scope !107
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs1mImOlsSUsK_17markup5ever_rcdom.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1mImOlsSUsK_17markup5ever_rcdom(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !120, !noalias !121
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !120, !noalias !121
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !121, !noalias !118
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !121, !noalias !118
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !120, !noalias !121
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !120, !noalias !121
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !121, !noalias !118
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !121, !noalias !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %3 = trunc i64 %2 to i1
  br i1 %3, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !118, !noalias !119
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !119, !noalias !118
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !118, !noalias !119
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !119, !noalias !118
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !118, !noalias !119
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !119, !noalias !118
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !118, !noalias !119
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !119, !noalias !118
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !124, !noalias !125
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !125, !noalias !124
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !124, !noalias !125
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !125, !noalias !124
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !117
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENCNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB2p_5RcDomNtNtB1t_12tree_builder8TreeSink20add_attrs_if_missing0ENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4a_7HashSetNtB1t_8QualNameNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB4T_E6extendBX_E0ENtNtB60_8iterator8Iterator4folduNCINvNvB6J_8for_each4callTB4T_uENCINvXs1i_NtB4c_3mapINtB7V_7HashMapB4T_uB58_EIB5W_B7E_E6extendBN_E0E0EB2p_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENCNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB2l_5RcDomNtNtB1p_12tree_builder8TreeSink20add_attrs_if_missing0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtB1p_8QualNameTB4S_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB5o_7HashSetB4S_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB41_7collect6ExtendB4S_E6extendBN_E0NCINvNvB3X_8for_each4callB57_NCINvXs1i_NtB5q_3mapINtB8g_7HashMapB4S_uB6b_EIB6Z_B57_E6extendIBO_BN_B5f_EE0E0E0EB2l_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 40
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtBX_8QualNameuNCNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB27_5RcDomNtNtBX_12tree_builder8TreeSink20add_attrs_if_missing0NCIB2_B1K_TB1K_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB48_7HashSetB1K_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB1K_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Z_EE0NCINvNvNtNtB5N_8iterator8Iterator8for_each4callB3R_NCINvXs1i_NtB4a_3mapINtB8a_7HashMapB1K_uB4V_EIB5J_B3R_E6extendIB6r_B6q_B3Z_EE0E0E0E0B27_.exit.i.i, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.at, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtBX_8QualNameuNCNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB27_5RcDomNtNtBX_12tree_builder8TreeSink20add_attrs_if_missing0NCIB2_B1K_TB1K_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB48_7HashSetB1K_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB1K_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Z_EE0NCINvNvNtNtB5N_8iterator8Iterator8for_each4callB3R_NCINvXs1i_NtB4a_3mapINtB8a_7HashMapB1K_uB4V_EIB5J_B3R_E6extendIB6r_B6q_B3Z_EE0E0E0E0B27_.exit.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !146
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !145, !noalias !147, !noundef !5 ; 4 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.k, 0
  %i.l = and i64 %i.k, 3
  %i.m = icmp eq i64 %i.l, 0
  %or.cond.i.i.i.i.i = and i1 %.not.i.i.i.i.i, %i.m
  br i1 %or.cond.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.k, ptr %i.c, align 8, !noalias !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !146
  %i.n = load i64, ptr %i.i, align 8, !range !8, !alias.scope !145, !noalias !147, !noundef !5 ; 4 uses
  %i.o = and i64 %i.n, 3
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.q = inttoptr i64 %i.k to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = atomicrmw add ptr %i.r, i64 1 seq_cst, align 8, !noalias !148
  %i.t = icmp eq i64 %i.s, 9223372036854775807
  br i1 %i.t, label %bb.f, label %bb.d, !prof !7

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCsG258MDvU3F_3std7process5abort() #26, !noalias !148
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.u = inttoptr i64 %i.n to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = atomicrmw add ptr %i.v, i64 1 seq_cst, align 8, !noalias !148
  %i.x = icmp eq i64 %i.w, 9223372036854775807
  br i1 %i.x, label %bb.h, label %bb.k, !prof !7

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #26
          to label %bb.j unwind label %bb.i, !noalias !148

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.i
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.ah, %bb.p ], [ %i.ah, %bb.n ], [ %i.ah, %bb.o ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %bb.r unwind label %bb.q, !noalias !148

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.m, %bb.h
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.d
  store i64 %i.n, ptr %i.b, align 8, !noalias !146
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !8, !alias.scope !145, !noalias !147, !noundef !5 ; 3 uses
  %i.ab = and i64 %i.aa, 3
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtBX_8QualNameuNCNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB27_5RcDomNtNtBX_12tree_builder8TreeSink20add_attrs_if_missing0NCIB2_B1K_TB1K_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB48_7HashSetB1K_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB1K_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Z_EE0NCINvNvNtNtB5N_8iterator8Iterator8for_each4callB3R_NCINvXs1i_NtB4a_3mapINtB8a_7HashMapB1K_uB4V_EIB5J_B3R_E6extendIB6r_B6q_B3Z_EE0E0E0E0B27_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.ad = inttoptr i64 %i.aa to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = atomicrmw add ptr %i.ae, i64 1 seq_cst, align 8, !noalias !148
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %bb.m, label %._crit_edge.i.i.i.i.i, !prof !7

._crit_edge.i.i.i.i.i:                            ; preds = %bb.l
  %.pre.i.i.i.i.i = load i64, ptr %i.b, align 8, !range !8, !noalias !146
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtBX_8QualNameuNCNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB27_5RcDomNtNtBX_12tree_builder8TreeSink20add_attrs_if_missing0NCIB2_B1K_TB1K_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB48_7HashSetB1K_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB1K_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Z_EE0NCINvNvNtNtB5N_8iterator8Iterator8for_each4callB3R_NCINvXs1i_NtB4a_3mapINtB8a_7HashMapB1K_uB4V_EIB5J_B3R_E6extendIB6r_B6q_B3Z_EE0E0E0E0B27_.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #26
          to label %bb.j unwind label %bb.n, !noalias !148

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.ai = load i64, ptr %i.b, align 8, !range !8, !alias.scope !151, !noalias !146, !noundef !5 ; 2 uses
  %i.aj = and i64 %i.ai, 3
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.al = inttoptr i64 %i.ai to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = atomicrmw sub ptr %i.am, i64 1 seq_cst, align 8, !noalias !152
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i.i, !prof !7

bb.p:                                             ; preds = %bb.o
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i.i unwind label %bb.q, !noalias !148

bb.q:                                             ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !148
  unreachable

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i.i.i
  resume { ptr, i32 } %.pn.i.i.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtBX_8QualNameuNCNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB27_5RcDomNtNtBX_12tree_builder8TreeSink20add_attrs_if_missing0NCIB2_B1K_TB1K_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB48_7HashSetB1K_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB1K_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Z_EE0NCINvNvNtNtB5N_8iterator8Iterator8for_each4callB3R_NCINvXs1i_NtB4a_3mapINtB8a_7HashMapB1K_uB4V_EIB5J_B3R_E6extendIB6r_B6q_B3Z_EE0E0E0E0B27_.exit.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.k
  %i.aq = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.n, %bb.k ]
  %i.ar = load i64, ptr %i.c, align 8, !noalias !146, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !153
  store i64 %i.aq, ptr %i.a, align 8, !noalias !154
  store i64 %i.aa, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !154
  store i64 %i.ar, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !154
  %i.as = call noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !155 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !153
  %i.at = add nuw i64 %.sroa.01.0.i.i, 1          ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.h
  br i1 %i.au, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENCNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB2l_5RcDomNtNtB1p_12tree_builder8TreeSink20add_attrs_if_missing0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtB1p_8QualNameTB4S_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB5o_7HashSetB4S_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB41_7collect6ExtendB4S_E6extendBN_E0NCINvNvB3X_8for_each4callB57_NCINvXs1i_NtB5q_3mapINtB8g_7HashMapB4S_uB6b_EIB6Z_B57_E6extendIBO_BN_B5f_EE0E0E0EB2l_.exit, label %bb.c

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENCNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB2l_5RcDomNtNtB1p_12tree_builder8TreeSink20add_attrs_if_missing0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtB1p_8QualNameTB4S_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB5o_7HashSetB4S_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB41_7collect6ExtendB4S_E6extendBN_E0NCINvNvB3X_8for_each4callB57_NCINvXs1i_NtB5q_3mapINtB8g_7HashMapB4S_uB6b_EIB6Z_B57_E6extendIBO_BN_B5f_EE0E0E0EB2l_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtBX_8QualNameuNCNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB27_5RcDomNtNtBX_12tree_builder8TreeSink20add_attrs_if_missing0NCIB2_B1K_TB1K_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB48_7HashSetB1K_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB1K_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Z_EE0NCINvNvNtNtB5N_8iterator8Iterator8for_each4callB3R_NCINvXs1i_NtB4a_3mapINtB8a_7HashMapB1K_uB4V_EIB5J_B3R_E6extendIB6r_B6q_B3Z_EE0E0E0E0B27_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENCNvMB1U_B1S_18clone_with_subtree0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB37_8for_each4callB1n_NCINvMsk_NtB1s_3vecINtB4n_3VecB1n_E14extend_trustedBN_E0E0EB1U_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write:bb.a
bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 5 uses
  %i.af = sub nuw nsw i64 8, %.sroa.0.0.i         ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, 8
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %._crit_edge.i, label %bb.k

bb.i:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !271, !noalias !272, !noundef !5
  %i.al = xor i64 %i.ak, %i.ad                    ; 3 uses
  %i.am = load i64, ptr %0, align 8, !alias.scope !274, !noalias !272, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !274, !noalias !272, !noundef !5 ; 3 uses
  %i.ap = add i64 %i.ao, %i.am                    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !274, !noalias !272, !noundef !5
  %i.as = add i64 %i.ar, %i.al                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 13)
  %i.au = xor i64 %i.at, %i.ap                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 16)
  %i.aw = xor i64 %i.as, %i.av                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 32)
  %i.ay = add i64 %i.as, %i.au                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ay, %i.ba
  store i64 %i.bb, ptr %i.an, align 8, !alias.scope !274, !noalias !272
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
  %i.bd = xor i64 %i.bc, %i.az
  store i64 %i.bd, ptr %i.aj, align 8, !alias.scope !274, !noalias !272
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !274, !noalias !272
  %i.bf = xor i64 %i.az, %i.ad
  store i64 %i.bf, ptr %0, align 8, !alias.scope !271, !noalias !272
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.bg = add i64 %i.e, 8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1mImOlsSUsK_17markup5ever_rcdom.exit

._crit_edge.i:                                    ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bk = add nuw nsw i64 %.sroa.0.0.i, 8
  %.promoted22.i = load i64, ptr %i.bj, align 8, !alias.scope !275, !noalias !272
  %.promoted19.i = load i64, ptr %i.bh, align 8, !alias.scope !271, !noalias !272
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i
  %.sroa.07.0.copyload.i = load i64, ptr %i.bl, align 1, !alias.scope !272, !noalias !271 ; 2 uses
  %i.bm = xor i64 %.sroa.07.0.copyload.i, %.promoted19.i ; 3 uses
  %i.bn = add i64 %i.bm, %.promoted22.i           ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 16)
  %i.bp = xor i64 %i.bn, %i.bo                    ; 3 uses
  %.promoted20.i = load i64, ptr %i.bi, align 8, !alias.scope !275, !noalias !272 ; 3 uses
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !271, !noalias !272
  %i.bq = add i64 %.promoted.i, %.promoted20.i    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 32)
  %i.bs = add i64 %i.br, %i.bp                    ; 2 uses
  %i.bt = xor i64 %i.bs, %.sroa.07.0.copyload.i
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted20.i, i64 %.promoted20.i, i64 13)
  %i.bv = xor i64 %i.bq, %i.bu                    ; 3 uses
  %i.bw = add i64 %i.bv, %i.bn                    ; 3 uses
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 32)
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 21)
  %i.bz = xor i64 %i.bs, %i.by
  %i.ca = tail call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 17)
  %i.cb = xor i64 %i.bw, %i.ca
  store i64 %i.bz, ptr %i.bh, align 8, !alias.scope !271, !noalias !272
  store i64 %i.cb, ptr %i.bi, align 8, !alias.scope !275, !noalias !272
  store i64 %i.bx, ptr %i.bj, align 8, !alias.scope !275, !noalias !272
  store i64 %i.bt, ptr %0, align 8, !alias.scope !271, !noalias !272
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.h
  %.sroa.0.1.lcssa.i = phi i64 [ %i.bk, %._crit_edge.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.cc = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i16.i = load i32, ptr %i.cd, align 1, !alias.scope !276, !noalias !271
  %i.ce = zext i32 %.sroa.014.0.copyload.i16.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10.i = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11.i = phi i64 [ %i.ce, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.cf = or disjoint i64 %.sroa.03.0.i10.i, 1
  %i.cg = icmp samesign ult i64 %i.cf, %i.ag
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.ci, align 1, !alias.scope !276, !noalias !271
  %i.cj = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.ck = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.cl = shl nuw nsw i64 %i.cj, %i.ck
  %i.cm = or i64 %i.cl, %.sroa.0.0.i11.i
  %i.cn = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i = phi i64 [ %i.cn, %bb.n ], [ %.sroa.03.0.i10.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.cm, %bb.n ], [ %.sroa.0.0.i11.i, %bb.m ] ; 2 uses
  %i.co = icmp samesign ult i64 %.sroa.03.1.i12.i, %i.ag
  br i1 %i.co, label %bb.p, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

bb.p:                                             ; preds = %bb.o
  %i.cp = add nsw i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 8
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.cs = load i8, ptr %i.cr, align 1, !alias.scope !276, !noalias !271, !noundef !5
  %i.ct = zext i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.cv = shl nuw nsw i64 %i.ct, %i.cu
  %i.cw = or i64 %i.cv, %.sroa.0.1.i13.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i: ; preds = %bb.p, %bb.o
  %.sroa.0.2.i14.i = phi i64 [ %i.cw, %bb.p ], [ %.sroa.0.1.i13.i, %bb.o ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i, ptr %i.cx, align 8, !alias.scope !271, !noalias !272
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.j, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i
  %storemerge.i = phi i64 [ %i.bg, %bb.j ], [ %i.ag, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !271, !noalias !272
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 {
switch.lookup:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %0, align 8, !range !8, !noundef !5 ; 2 uses
  %i.e = and i64 %i.d, 3
  %i.f = and i64 %i.d, 3
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep20 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.60, i64 %i.e
  %switch.load21 = load i8, ptr %switch.gep20, align 1
  %switch.ext = zext i8 %switch.load21 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %switch.load, ptr %i.b, align 8, !captures !11
  store i64 %switch.ext, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom, ptr %.sroa.43.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom, ptr %.sroa.47.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !6, !noundef !5
  %i.l = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @8, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque11spec_extendINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEINtB4_10SpecExtendB1j_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2I_5slice4iter4IterB1j_EEE11spec_extendB1z_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = lshr i64 %i.c, 3                         ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !333, !noundef !5 ; 5 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8, !range !10, !alias.scope !333, !noundef !5 ; 7 uses
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !noalias !333
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = sub i64 %i.i, %i.f                       ; 2 uses
  %i.l = icmp ugt i64 %i.d, %i.k
  br i1 %i.l, label %bb.i, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.i, %bb.d
  %.pre-phi.i = phi i64 [ %.pre8.i, %bb.i ], [ %i.k, %bb.d ]
  %i.m = phi i64 [ %.pre7.i, %bb.i ], [ %i.f, %bb.d ]
  %i.n = phi i64 [ %.pre.i, %bb.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !335, !noundef !5 ; 3 uses
  %.not.i.i = icmp ugt i64 %i.p, %.pre-phi.i
  br i1 %.not.i.i, label %bb.f, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = sub i64 %i.i, %i.p                       ; 4 uses
  %i.r = sub i64 %i.m, %i.q                       ; 3 uses
  %i.s = icmp ule i64 %i.q, %i.r
  %i.t = sub nsw i64 %i.n, %i.i
  %.not2.i.i = icmp ult i64 %i.t, %i.r
  %or.cond.i.i = select i1 %i.s, i1 true, i1 %.not2.i.i
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = sub i64 %i.n, %i.q                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !335, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.p
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  %i.z = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.x, i64 %i.z, i1 false), !noalias !334
  store i64 %i.u, ptr %i.o, align 8, !alias.scope !335
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !335, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.i
  %i.ad = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.ab, i64 %i.ad, i1 false), !noalias !334
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit

bb.i:                                             ; preds = %bb.d
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 8)
  %.pre.i = load i64, ptr %0, align 8, !range !10, !alias.scope !335
  %.pre7.i = load i64, ptr %i.e, align 8, !alias.scope !335 ; 2 uses
  %.pre8.i = sub i64 %i.i, %.pre7.i
  br label %bb.e

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit: ; preds = %bb.b, %bb.e, %bb.g, %bb.h
  %i.ae = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5
  %i.ah = add i64 %i.ag, %i.ae                    ; 2 uses
  %i.ai = load i64, ptr %0, align 8, !range !10, !noundef !5 ; 3 uses
  %.not = icmp ult i64 %i.ah, %i.ai
  %i.aj = select i1 %.not, i64 0, i64 %i.ai
  %.sroa.02.0 = sub nuw i64 %i.ah, %i.aj          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.ak = sub i64 %i.ai, %.sroa.02.0              ; 4 uses
  %.not.i = icmp ult i64 %i.ak, %i.d
  br i1 %.not.i, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !336, !nonnull !5
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %.sroa.02.0
  br label %bb.l

bb.l:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i, %bb.k
  %.sroa.8.1.i = phi i64 [ 0, %bb.k ], [ %i.aw, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %1, %bb.k ], [ %i.at, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i ] ; 4 uses
  %i.ap = phi i64 [ %i.ak, %bb.k ], [ %i.au, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i ]
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i = icmp eq ptr %.sroa.0.0.i, %2
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i, label %.loopexit.i.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i, align 8, !noalias !337, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i.i.i, align 8, !noalias !338, !noundef !5 ; 2 uses
  %i.aq = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add i64 %.val.i.i.i.i.i.i.i.i.i, 1      ; 2 uses
  store i64 %i.ar, ptr %.val.i.i.i.i.i.i, align 8, !noalias !338
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.n, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i, !prof !7

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.au = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.ao, i64 %.sroa.8.1.i
  store ptr %.val.i.i.i.i.i.i, ptr %i.av, align 8, !noalias !339
  %i.aw = add nuw nsw i64 %.sroa.8.1.i, 1
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %.loopexit.i.loopexit, label %bb.l

.loopexit.i.loopexit:                             ; preds = %bb.l, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i
  %.sroa.8.2.i.ph = phi i64 [ %.sroa.8.1.i, %bb.l ], [ %i.ak, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i ]
  %.sroa.0.1.i.ph = phi ptr [ %.sroa.0.0.i, %bb.l ], [ %i.at, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i ]
  %i.ay = freeze ptr %.sroa.0.1.i.ph
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %bb.j
  %.sroa.8.2.i = phi i64 [ 0, %bb.j ], [ %.sroa.8.2.i.ph, %.loopexit.i.loopexit ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %1, %bb.j ], [ %i.ay, %.loopexit.i.loopexit ] ; 5 uses
  %i.az = icmp eq ptr %.sroa.0.1.i, %2
  br i1 %i.az, label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit.i
  %i.ba = ptrtoint ptr %.sroa.0.1.i to i64
  %i.bb = sub i64 %i.a, %i.ba
  %i.bc = lshr i64 %i.bb, 3                       ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !336, !nonnull !5 ; 3 uses
  %i.bf = add i64 %i.bc, %.sroa.8.2.i             ; 2 uses
  %i.bg = icmp eq i64 %i.bc, 1
  br i1 %i.bg, label %.epil.preheader27, label %.new26

.new26:                                           ; preds = %bb.o
  %unroll_iter31 = and i64 %i.bc, 2305843009213693950
  br label %bb.p

bb.p:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.1, %.new26
  %i.bh = phi i64 [ 0, %.new26 ], [ %i.bt, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.1 ] ; 4 uses
  %niter32 = phi i64 [ 0, %.new26 ], [ %niter32.next.1, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.1 ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1.i, i64 %i.bh
  %.val.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !340, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i, align 8, !noalias !341, !noundef !5 ; 2 uses
  %i.bj = icmp ne i64 %.val.i.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = add i64 %.val.i.i.i.i.i.i.i, 1          ; 2 uses
  store i64 %i.bk, ptr %.val.i.i.i, align 8, !noalias !341
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.loopexit33, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i, !prof !7

.loopexit33:                                      ; preds = %bb.p, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i, %.epil.preheader27
  tail call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i: ; preds = %bb.p
  %i.bm = getelementptr [8 x i8], ptr %i.be, i64 %i.bh
  store ptr %.val.i.i.i, ptr %i.bm, align 8, !noalias !342
  %i.bn = or disjoint i64 %i.bh, 1                ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1.i, i64 %i.bn
  %.val.i.i.i.1 = load ptr, ptr %i.bo, align 8, !noalias !340, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i.i.i.1 = load i64, ptr %.val.i.i.i.1, align 8, !noalias !341, !noundef !5 ; 2 uses
  %i.bp = icmp ne i64 %.val.i.i.i.i.i.i.i.1, 0
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add i64 %.val.i.i.i.i.i.i.i.1, 1        ; 2 uses
  store i64 %i.bq, ptr %.val.i.i.i.1, align 8, !noalias !341
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.loopexit33, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.1, !prof !7

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.1: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i
  %i.bs = getelementptr [8 x i8], ptr %i.be, i64 %i.bn
  store ptr %.val.i.i.i.1, ptr %i.bs, align 8, !noalias !342
  %i.bt = add i64 %i.bh, 2                        ; 2 uses
  %niter32.next.1 = add i64 %niter32, 2           ; 2 uses
  %niter32.ncmp.1 = icmp eq i64 %niter32.next.1, %unroll_iter31
  br i1 %niter32.ncmp.1, label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit.unr-lcssa, label %bb.p

bb.q:                                             ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit
  %i.bu = icmp eq ptr %1, %2
  br i1 %i.bu, label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !336, !nonnull !5
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %.sroa.02.0 ; 3 uses
  %i.by = icmp eq i64 %i.d, 1
  br i1 %i.by, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.r
  %unroll_iter = and i64 %i.d, 2305843009213693950
  br label %bb.s

bb.s:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.1, %.new
  %.sroa.8.5.i = phi i64 [ 0, %.new ], [ %i.ck, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.1 ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.8.5.i
  %.val.i.i31.i = load ptr, ptr %i.bz, align 8, !noalias !343, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i.i32.i = load i64, ptr %.val.i.i31.i, align 8, !noalias !344, !noundef !5 ; 2 uses
  %i.ca = icmp ne i64 %.val.i.i.i.i.i.i32.i, 0
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = add i64 %.val.i.i.i.i.i.i32.i, 1        ; 2 uses
  store i64 %i.cb, ptr %.val.i.i31.i, align 8, !noalias !344
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %.loopexit, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i, !prof !7

.loopexit:                                        ; preds = %bb.s, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i, %.epil.preheader
  tail call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i: ; preds = %bb.s
  %i.cd = getelementptr [8 x i8], ptr %i.bx, i64 %.sroa.8.5.i
  store ptr %.val.i.i31.i, ptr %i.cd, align 8, !noalias !345
  %i.ce = or disjoint i64 %.sroa.8.5.i, 1         ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ce
  %.val.i.i31.i.1 = load ptr, ptr %i.cf, align 8, !noalias !343, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i.i32.i.1 = load i64, ptr %.val.i.i31.i.1, align 8, !noalias !344, !noundef !5 ; 2 uses
  %i.cg = icmp ne i64 %.val.i.i.i.i.i.i32.i.1, 0
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = add i64 %.val.i.i.i.i.i.i32.i.1, 1      ; 2 uses
  store i64 %i.ch, ptr %.val.i.i31.i.1, align 8, !noalias !344
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.loopexit, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.1, !prof !7

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.1: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i
  %i.cj = getelementptr [8 x i8], ptr %i.bx, i64 %i.ce
  store ptr %.val.i.i31.i.1, ptr %i.cj, align 8, !noalias !345
  %i.ck = add i64 %.sroa.8.5.i, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit24.unr-lcssa, label %bb.s

_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit.unr-lcssa: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.1
  %3 = trunc i64 %i.bc to i1
  br i1 %3, label %.epil.preheader27, label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit

.epil.preheader27:                                ; preds = %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit.unr-lcssa, %bb.o
  %.epil.init = phi i64 [ 0, %bb.o ], [ %i.bt, %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod30 = trunc i64 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1.i, i64 %.epil.init
  %.val.i.i.i.epil = load ptr, ptr %i.cl, align 8, !noalias !340, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i.i.i.epil = load i64, ptr %.val.i.i.i.epil, align 8, !noalias !341, !noundef !5 ; 2 uses
  %i.cm = icmp ne i64 %.val.i.i.i.i.i.i.i.epil, 0
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = add i64 %.val.i.i.i.i.i.i.i.epil, 1     ; 2 uses
  store i64 %i.cn, ptr %.val.i.i.i.epil, align 8, !noalias !341
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.loopexit33, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.epil, !prof !7

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.epil: ; preds = %.epil.preheader27
  %i.cp = getelementptr [8 x i8], ptr %i.be, i64 %.epil.init
  store ptr %.val.i.i.i.epil, ptr %i.cp, align 8, !noalias !342
  br label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit

_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit24.unr-lcssa: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.1
  %4 = trunc i64 %i.d to i1
  br i1 %4, label %.epil.preheader, label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit

.epil.preheader:                                  ; preds = %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit24.unr-lcssa, %bb.r
  %.sroa.8.5.i.epil.init = phi i64 [ 0, %bb.r ], [ %i.ck, %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit24.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.8.5.i.epil.init
  %.val.i.i31.i.epil = load ptr, ptr %i.cq, align 8, !noalias !343, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i.i32.i.epil = load i64, ptr %.val.i.i31.i.epil, align 8, !noalias !344, !noundef !5 ; 2 uses
  %i.cr = icmp ne i64 %.val.i.i.i.i.i.i32.i.epil, 0
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = add i64 %.val.i.i.i.i.i.i32.i.epil, 1   ; 2 uses
  store i64 %i.cs, ptr %.val.i.i31.i.epil, align 8, !noalias !344
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.epil, !prof !7

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.epil: ; preds = %.epil.preheader
  %i.cu = getelementptr [8 x i8], ptr %i.bx, i64 %.sroa.8.5.i.epil.init
  store ptr %.val.i.i31.i.epil, ptr %i.cu, align 8, !noalias !345
  br label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit

_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.epil, %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit24.unr-lcssa, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.epil, %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit.unr-lcssa, %.loopexit.i, %bb.q
  %.sroa.8.0.i = phi i64 [ %i.bf, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.epil ], [ %.sroa.8.2.i, %.loopexit.i ], [ 0, %bb.q ], [ %i.bf, %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit.unr-lcssa ], [ %i.d, %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit24.unr-lcssa ], [ %i.d, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.epil ]
  %i.cv = add i64 %.sroa.8.0.i, %i.ae
  store i64 %i.cv, ptr %i.e, align 8, !alias.scope !336
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit, label %.lr.ph.i

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.09.i ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !359, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !359, !noundef !5
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !noalias !359
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i unwind label %bb.c, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.t = icmp eq i64 %i.o, %i.h
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.o, %i.h
  br i1 %i.v, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.110.i ; 2 uses
  %i.x = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.y = load ptr, ptr %i.w, align 8, !alias.scope !362, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noalias !362, !noundef !5
  %i.aa = add i64 %i.z, -1                        ; 2 uses
  store i64 %i.aa, ptr %i.y, align 8, !noalias !362
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.w) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i unwind label %bb.e, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.ac = icmp eq i64 %i.x, %i.h
  br i1 %i.ac, label %.body, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !356
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5
  store i64 %i.ag, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ae, ptr %i.ah, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 40                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %.lr.ph

.body:                                            ; preds = %bb.e, %.body.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %bb.c
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.0.0.i16 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(16) %i.r) #25
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(16) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %.lr.ph18
  %i.u = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.h
  br i1 %i.v, label %.body, label %.lr.ph18

bb.f:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.q, %bb.b ]
end_hunk_1
begin_hunk_2_@_RNvXsv_NtCskKLDkoKarTP_4core3fmtINtNtB7_4cell7RefCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEENtB5_5Debug3fmtB1I_:bb.a
  store ptr %0, ptr %i.j, align 8
  %i.k = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.l = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.l

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %.val.i3 = load ptr, ptr %i.j, align 8, !alias.scope !373, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.m = load i64, ptr %.val.i3, align 8, !noalias !373, !noundef !5
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %.val.i3, align 8, !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !374, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.p = load i64, ptr %.val.i, align 8, !noalias !374, !noundef !5
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %.val.i, align 8, !noalias !374
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsv_NtCskKLDkoKarTP_4core3fmtINtNtB7_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBU_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEENtB5_5Debug3fmtB1C_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 7)
  %i.d = load i64, ptr %0, align 8, !noundef !5   ; 2 uses
  %i.e = icmp ult i64 %i.d, 9223372036854775807
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @30, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 21 to ptr), ptr %i.f, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = add nuw nsw i64 %i.d, 1
  store i64 %i.h, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.l = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.l

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %.val.i3 = load ptr, ptr %i.j, align 8, !alias.scope !379, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.m = load i64, ptr %.val.i3, align 8, !noalias !379, !noundef !5
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %.val.i3, align 8, !noalias !379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !380, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.p = load i64, ptr %.val.i, align 8, !noalias !380, !noundef !5
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %.val.i, align 8, !noalias !380
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsv_NtCskKLDkoKarTP_4core3fmtINtNtB7_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEENtB5_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 7)
  %i.d = load i64, ptr %0, align 8, !noundef !5   ; 2 uses
  %i.e = icmp ult i64 %i.d, 9223372036854775807
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @30, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 21 to ptr), ptr %i.f, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = add nuw nsw i64 %i.d, 1
  store i64 %i.h, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.l = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.l

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %.val.i3 = load ptr, ptr %i.j, align 8, !alias.scope !385, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.m = load i64, ptr %.val.i3, align 8, !noalias !385, !noundef !5
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %.val.i3, align 8, !noalias !385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !386, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.p = load i64, ptr %.val.i, align 8, !noalias !386, !noundef !5
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %.val.i, align 8, !noalias !386
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCskKLDkoKarTP_4core3fmtINtNtB7_4cell3RefINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEENtB5_5Debug3fmtB1E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !390, !noalias !391, !noundef !5
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !392
  store ptr %i.b, ptr %i.a, align 8, !noalias !392
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !392
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtB7_3fmt5Debug3fmtB1h_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4), !noalias !390
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtB7_3fmt5Debug3fmtB1h_.exit

_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtB7_3fmt5Debug3fmtB1h_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCskKLDkoKarTP_4core3fmtINtNtB7_4cell3RefINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBQ_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEENtB5_5Debug3fmtB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtBV_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCskKLDkoKarTP_4core3fmtINtNtB7_4cell3RefINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEENtB5_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCskKLDkoKarTP_4core3fmtINtNtB7_4cell3RefINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBQ_3fmt4UTF8EENtB5_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !398
  %i.e = load ptr, ptr %i.d, align 8, !noalias !398, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = icmp ult ptr %i.e, inttoptr (i64 16 to ptr)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %2 = trunc i64 %i.g to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %2, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr @6, ptr %i.c, align 8, !noalias !398, !captures !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 6, ptr %i.i, align 8, !noalias !398
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store ptr @19, ptr %i.c, align 8, !noalias !398, !captures !11
  store i64 6, ptr %i.h, align 8, !noalias !398
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr @20, ptr %i.c, align 8, !noalias !398, !captures !11
  store i64 5, ptr %i.h, align 8, !noalias !398
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !398
  store ptr %i.a, ptr %i.b, align 8, !noalias !398
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsr_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !398
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.j, align 8, !noalias !398
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !398
  %i.k = load ptr, ptr %1, align 8, !alias.scope !398, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !398, !nonnull !5, !align !6, !noundef !5
  %i.n = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @21, ptr noundef nonnull %i.b), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !398
  br i1 %i.n, label %_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.d, align 8, !noalias !398, !nonnull !5, !noundef !5 ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.q = icmp eq ptr %i.o, inttoptr (i64 15 to ptr)
  br i1 %i.q, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = icmp ult ptr %i.o, inttoptr (i64 9 to ptr)
  br i1 %i.r, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = and i64 %i.p, 1
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %i.o, i64 %i.t
  %i.v = trunc i64 %i.p to i1
  br i1 %i.v, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.x = load i32, ptr %i.w, align 4, !noalias !399, !noundef !5
  %i.y = zext i32 %i.x to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i.i = phi i64 [ %i.y, %bb.j ], [ 0, %bb.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !noalias !398, !noundef !5
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.01.0.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %bb.l, %bb.k, %bb.g
  %.sroa.4.0.i.i = phi i64 [ %i.ad, %bb.l ], [ %i.p, %bb.k ], [ 0, %bb.g ]
  %.sroa.0.0.i.i = phi ptr [ %i.ae, %bb.l ], [ %i.z, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.g ]
  %i.af = call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.4.0.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.af, label %_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  %i.ag = load ptr, ptr %1, align 8, !alias.scope !398, !nonnull !5, !noundef !5
  %i.ah = load ptr, ptr %i.l, align 8, !alias.scope !398, !nonnull !5, !align !6, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !5, !nonnull !5
  %i.ak = call noundef zeroext i1 %i.aj(ptr noundef nonnull %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 1) #27, !inline_history !397
  br label %_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.f, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i, %bb.m
  %.sroa.0.1.i = phi i1 [ %i.ak, %bb.m ], [ true, %bb.f ], [ true, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !398
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.119, %bb.k ] ; 3 uses
  %.sroa.6.039 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.117, %bb.k ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXs3_NtNtNtCsG258MDvU3F_3std3sys5stdio4unixNtB5_6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.040, i64 noundef %.sroa.6.039) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 13 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 8 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split26
    i64 0, label %.split27
    i64 1, label %.split
  ], !prof !9

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.k = lshr i64 %i.g, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = invoke noundef zeroext i1 %i.n(i32 noundef %i.l)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.l, !inline_history !400

.split26:                                         ; preds = %bb.c
  %i.p = lshr i64 %i.g, 32
  %i.q = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.p to i8
  %spec.select.i.i.i = select i1 %i.q, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.r = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.s, label %bb.i, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split27:                                         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !403, !noundef !5
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %.thread.thread, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split:                                           ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.f, i64 31
  %i.x = load i8, ptr %i.w, align 8, !range !403, !noundef !5
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.j, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %i.f, null
  br i1 %i.z, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %.sroa.6.039, %i.g
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %.sroa.6.039, i64 noundef %.sroa.6.039, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = sub nuw nsw i64 %.sroa.6.039, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 %i.g
  br label %bb.k

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.o, label %.thread.thread, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge: ; preds = %bb.k, %bb.e, %.split27, %.split26, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.a
  %.sroa.07.1 = phi ptr [ null, %bb.a ], [ @37, %bb.e ], [ %i.f, %.split27 ], [ %i.f, %.split26 ], [ %i.f, %.split ], [ %i.f, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ null, %bb.k ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.i:                                             ; preds = %.split26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.ae = and i64 %i.g, 1095216660480
  %i.af = icmp ne i64 %i.ae, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.af)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.j:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  store ptr %i.ag, ptr %i.c, align 8, !alias.scope !404
  store i8 3, ptr %i.a, align 8, !alias.scope !404
end_hunk_2
