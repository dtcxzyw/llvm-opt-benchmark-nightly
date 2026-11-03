Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/signal_crypto-48495e06096eb0be.signal_crypto.3b151be042a3f054-cgu.7?download=true
inline.NumInlined: 158
inline.NumDeleted: 82
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [77 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/alloc/src/vec/mod.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"L\00\00\00\00\00\00\00\B8\0B\00\00$\00\00\00" }>, align 8
@2 = private unnamed_addr constant [17 x i8] c"capacity overflow", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"L\00\00\00\00\00\00\00\FB\0F\00\00\0D\00\00\00" }>, align 8
@4 = private unnamed_addr constant [7 x i8] c"HPKE-v1", align 1
@5 = private unnamed_addr constant [3 x i8] c"KEM", align 1
@6 = private unnamed_addr constant [86 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/core/src/iter/traits/accum.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"U\00\00\00\00\00\00\00\CE\00\00\00\01\00\00\00" }>, align 8
@8 = private unnamed_addr constant [95 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/alloc/src/vec/spec_from_iter_nested.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"^\00\00\00\00\00\00\009\00\00\00\12\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs54uEYnqmHDA_13signal_crypto, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs6i54tJFfzR_5alloc6string6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write9write_fmtCs54uEYnqmHDA_13signal_crypto }>, align 8
@11 = private unnamed_addr constant [2 x i8] c"()", align 1
@switch.table._RINvNtCsdZ6zx9bXGuc_7hpke_rs3kem6encapsNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBH_ = private unnamed_addr constant [18 x i8] [i8 32, i8 48, i8 66, i8 poison, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 32, i8 56], align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtNtCs6i54tJFfzR_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.not12 = icmp ult i64 %i.d, %i.f
  br i1 %.not12, label %.lr.ph, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !16, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.promoted = load ptr, ptr %i.i, align 8, !alias.scope !16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.c ] ; 3 uses
  %.sroa.01.09 = phi i64 [ %i.d, %.lr.ph ], [ %i.n, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %.not.not.not = icmp ne ptr %i.k, %i.h          ; 3 uses
  br i1 %.not.not.not, label %bb.c, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit

_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not.not.not, %bb.b ], [ %.not.not.not, %bb.c ]
  ret i1 %.lcssa

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !alias.scope !16
  %i.m = load i8, ptr %i.k, align 1, !noalias !16, !noundef !4
  %i.n = add i64 %.sroa.01.09, 1                  ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.01.09
  store i8 %i.m, ptr %i.p, align 1
  %i.q = load i64, ptr %i.c, align 8, !noundef !4
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.c, align 8
  %exitcond.not = icmp eq i64 %i.n, %i.f
  br i1 %exitcond.not, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtNtCs6i54tJFfzR_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB1e_5array4iter8IntoIterhKj1_EINtNtB8_9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %.promoted = load i64, ptr %1, align 8          ; 2 uses
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i8, ptr %i.j, align 8               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %.fr = freeze ptr %i.m
  %.not.i.i.i = icmp eq ptr %.fr, null
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.promoted12 = load i64, ptr %i.g, align 8      ; 3 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.promoted13 = load ptr, ptr %i.p, align 8
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.r = trunc nuw i64 %.promoted to i1
  br i1 %i.r, label %.lr.ph.split.us.split.us, label %..critedge_crit_edge.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %.not.i.i.i.not.i.i.us.us19 = icmp eq i64 %i.i, %.promoted12
  br i1 %.not.i.i.i.not.i.i.us.us19, label %.split.us, label %_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj1_EhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs54uEYnqmHDA_13signal_crypto.exit.i.us.us.lr.ph

_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj1_EhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs54uEYnqmHDA_13signal_crypto.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  store i64 1, ptr %i.g, align 8, !alias.scope !33
  %i.s = icmp eq i64 %.promoted12, 0
  %i.t = add i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.u = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.d
  store i8 %i.k, ptr %i.v, align 1
  %i.w = load i64, ptr %i.c, align 8, !noundef !4
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.c, align 8
  %exitcond24.peel.not = icmp eq i64 %i.d, %i.t
  br i1 %exitcond24.peel.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj1_EhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs54uEYnqmHDA_13signal_crypto.exit.i.us.us.lr.ph
  %.not.i.i.i.not.i.i.us.us.peel = icmp eq i64 %i.i, 1
  tail call void @llvm.assume(i1 %.not.i.i.i.not.i.i.us.us.peel)
  br label %.split.us

.split.us:                                        ; preds = %bb.b, %.lr.ph.split.us.split.us
  store i64 0, ptr %1, align 8, !alias.scope !34
  br label %..critedge_crit_edge.split.us

..critedge_crit_edge.split.us:                    ; preds = %.lr.ph.split.us, %.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  br label %.critedge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit
  %i.y = phi ptr [ %i.af, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit ], [ %.promoted13, %.lr.ph.split.preheader ] ; 4 uses
  %i.z = phi i64 [ %i.ag, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit ], [ %.promoted12, %.lr.ph.split.preheader ] ; 3 uses
  %.sroa.01.07 = phi i64 [ %i.ai, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit ], [ %i.d, %.lr.ph.split.preheader ] ; 2 uses
  %i.aa = phi i64 [ %i.ah, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit ], [ %.promoted, %.lr.ph.split.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.split
  %.not.i.i.i.not.i.i = icmp eq i64 %i.i, %i.z
  br i1 %.not.i.i.i.not.i.i, label %bb.d, label %_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj1_EhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs54uEYnqmHDA_13signal_crypto.exit.i

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %1, align 8, !alias.scope !34
  br label %bb.e

_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj1_EhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs54uEYnqmHDA_13signal_crypto.exit.i: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8, !alias.scope !33
  %i.ac = icmp eq i64 %i.z, 0
  tail call void @llvm.assume(i1 %i.ac)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  br label %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit

bb.e:                                             ; preds = %bb.d, %.lr.ph.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %.not3.i.i.i = icmp eq ptr %i.y, %i.o
  br i1 %.not3.i.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.p, align 8, !alias.scope !39
  %i.ae = load i8, ptr %i.y, align 1, !noalias !39, !noundef !4
  br label %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit

.critedge:                                        ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit, %bb.e, %_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj1_EhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs54uEYnqmHDA_13signal_crypto.exit.i.us.us.lr.ph, %..critedge_crit_edge.split.us, %bb.a
  %.lcssa = phi i1 [ false, %..critedge_crit_edge.split.us ], [ true, %bb.a ], [ true, %_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj1_EhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs54uEYnqmHDA_13signal_crypto.exit.i.us.us.lr.ph ], [ true, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit ], [ false, %bb.e ]
  ret i1 %.lcssa

_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto.exit: ; preds = %_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj1_EhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs54uEYnqmHDA_13signal_crypto.exit.i, %bb.f
  %i.af = phi ptr [ %i.y, %_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj1_EhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs54uEYnqmHDA_13signal_crypto.exit.i ], [ %i.ad, %bb.f ]
  %i.ag = phi i64 [ 1, %_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj1_EhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs54uEYnqmHDA_13signal_crypto.exit.i ], [ %i.z, %bb.f ]
  %i.ah = phi i64 [ 1, %_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj1_EhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs54uEYnqmHDA_13signal_crypto.exit.i ], [ 0, %bb.f ]
  %.pn3.i.i = phi i8 [ %i.k, %_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj1_EhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs54uEYnqmHDA_13signal_crypto.exit.i ], [ %i.ae, %bb.f ]
  %i.ai = add i64 %.sroa.01.07, 1                 ; 2 uses
  %i.aj = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.01.07
  store i8 %.pn3.i.i, ptr %i.ak, align 1
  %i.al = load i64, ptr %i.c, align 8, !noundef !4
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.c, align 8
  %exitcond.not = icmp eq i64 %i.ai, %i.f
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsdZ6zx9bXGuc_7hpke_rs3kdf14labeled_expandNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBQ_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i16 noundef range(i16 1, 4) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef range(i64 0, -9223372036854775808) %9, i64 noundef %10) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = icmp ugt i64 %10, 65535
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = trunc nuw i64 %10 to i16
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.e)
  store i16 %i.f, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @4, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 7, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %4, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %5, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %6, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %7, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %8, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %9, ptr %i.o, align 8
  call void @_RNvXs2_NtCs6i54tJFfzR_5alloc5sliceSRShINtB5_4JoinBx_E4joinCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  invoke void @_RNvXNtNtCs54uEYnqmHDA_13signal_crypto4hpke8providerNtB2_14CryptoProviderNtCs3aQ7rNtaasP_14hpke_rs_crypto10HpkeCrypto10kdf_expand(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i16 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.s, i64 noundef %10)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.t, align 8
  store i64 1, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  ret void

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsdZ6zx9bXGuc_7hpke_rs3kdf15labeled_extractNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBR_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i16 noundef range(i16 1, 4) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef range(i64 0, -9223372036854775808) %9) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @4, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 7, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %6, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %7, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %8, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %9, ptr %i.i, align 8
  call void @_RNvXs2_NtCs6i54tJFfzR_5alloc5sliceSRShINtB5_4JoinBx_E4joinCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  invoke void @_RNvXNtNtCs54uEYnqmHDA_13signal_crypto4hpke8providerNtB2_14CryptoProviderNtCs3aQ7rNtaasP_14hpke_rs_crypto10HpkeCrypto11kdf_extract(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i16 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsdZ6zx9bXGuc_7hpke_rs3kem11auth_decapsNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBN_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i16 noundef range(i16 16, 25723) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef range(i64 0, -9223372036854775808) %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  switch i16 %1, label %bb.b [
    i16 16, label %bb.c
    i16 17, label %bb.c
    i16 18, label %bb.c
    i16 22, label %bb.c
    i16 32, label %bb.c
    i16 33, label %bb.c
    i16 77, label %bb.d
    i16 25722, label %bb.d
    i16 65, label %bb.d
    i16 66, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call i16 @llvm.bswap.i16(i16 %1)
  store i16 %i.d, ptr %i.a, align 2
  store ptr @5, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %i.g, align 8
  call void @_RNvXs2_NtCs6i54tJFfzR_5alloc5sliceSRShINtB5_4JoinBx_E4joinCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  invoke void @_RINvNtCsdZ6zx9bXGuc_7hpke_rs6dh_kem11auth_decapsNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBQ_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i16 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
end_hunk_0
begin_hunk_1_@_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto:bb.a
; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs6i54tJFfzR_5alloc6string6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write9write_fmtCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 {
_RNvXs_NvNtNtCsgxBkk5gSRhY_4core3fmt5Write9write_fmtQNtNtCs6i54tJFfzR_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs54uEYnqmHDA_13signal_crypto.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsgxBkk5gSRhY_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @10, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !258
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCsgxBkk5gSRhY_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs54uEYnqmHDA_13signal_crypto(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs54uEYnqmHDA_13signal_crypto4hpke8providerNtB2_14CryptoProviderNtCs3aQ7rNtaasP_14hpke_rs_crypto10HpkeCrypto10kdf_expand(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i16 noundef range(i16 1, 4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs54uEYnqmHDA_13signal_crypto4hpke8providerNtB2_14CryptoProviderNtCs3aQ7rNtaasP_14hpke_rs_crypto10HpkeCrypto11kdf_extract(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i16 noundef range(i16 1, 4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdZ6zx9bXGuc_7hpke_rs6dh_kem11auth_decapsNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBQ_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), i16 noundef range(i16 16, 25723), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdZ6zx9bXGuc_7hpke_rs6dh_kem11auth_encapsNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBQ_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i16 noundef range(i16 16, 25723), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdZ6zx9bXGuc_7hpke_rs6dh_kem6decapsNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBK_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), i16 noundef range(i16 16, 25723), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs54uEYnqmHDA_13signal_crypto4hpke8providerNtB2_14CryptoProviderNtCs3aQ7rNtaasP_14hpke_rs_crypto10HpkeCrypto10kem_decaps(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i16 noundef range(i16 16, 25723), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdZ6zx9bXGuc_7hpke_rs6dh_kem6encapsNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBK_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i16 noundef range(i16 16, 25723), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs54uEYnqmHDA_13signal_crypto4hpke8providerNtB2_14CryptoProviderNtCs3aQ7rNtaasP_14hpke_rs_crypto10HpkeCrypto10kem_encaps(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i16 noundef range(i16 16, 25723), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 16 dereferenceable(320)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCs6i54tJFfzR_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtBZ_5array4iter8IntoIterhKj1_EINtNtB7_9into_iter8IntoIterhEEENtNtNtBZ_3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXst_CsdZ6zx9bXGuc_7hpke_rsNtB5_14HpkePrivateKeyNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs54uEYnqmHDA_13signal_crypto(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEB1d_ENCNvNtCsdZ6zx9bXGuc_7hpke_rs4util9xor_bytes0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2t_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3G_3VechE14extend_trustedBN_E0E0ECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs54uEYnqmHDA_13signal_crypto4hpke8providerNtB5_3RngNtCshXqwYLEgO6_9rand_core6TryRng14try_fill_bytes(ptr noalias nofree noundef align 16 dereferenceable(320), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsg_CsdZ6zx9bXGuc_7hpke_rsNtB5_13HpkePublicKeyINtNtCsgxBkk5gSRhY_4core7convert4FromRShE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs54uEYnqmHDA_13signal_crypto4hpkeNtB4_24SignalHpkeCiphertextType6set_up(ptr dead_on_unwind noalias nofree noundef writable sret([336 x i8]) align 16 captures(none) dereferenceable(336), i8 noundef range(i8 1, 2)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_CsdZ6zx9bXGuc_7hpke_rsINtB5_4HpkeNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderE4sealBI_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 16 dereferenceable(336), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly captures(address, read_provenance), i64, ptr noalias nofree noundef readonly captures(address, read_provenance), i64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs8_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_10PrivateKey9serialize(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_CsdZ6zx9bXGuc_7hpke_rsINtB5_4HpkeNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderE4openBI_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(336), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly captures(address, read_provenance), i64, ptr noalias nofree noundef readonly captures(address, read_provenance), i64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsgxBkk5gSRhY_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCsgxBkk5gSRhY_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCsgxBkk5gSRhY_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCsgxBkk5gSRhY_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsgxBkk5gSRhY_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_CseNmJmsPJ47l_7zeroizeINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_CseNmJmsPJ47l_7zeroizeSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithENtB5_7Zeroize7zeroizeCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { noinline noreturn }
attributes #19 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.98.1 (48a229cea 2026-09-01)"}
!4 = !{}
!5 = !{i16 16, i16 25723}
!6 = !{i64 0, i64 2}
!7 = !{i64 0, i64 -9223372036854775807}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = !{i64 0, i64 -9223372036854775808}
!12 = !{!"branch_weights", !"expected", i32 3434256, i32 2144049392}
!13 = !{i64 8}
!14 = distinct !{!14, i1 true, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto"}
!15 = distinct !{!15, !14, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto: argument 0"}
!16 = !{!15}
!17 = distinct !{!17, i1 true, !"_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto"}
!18 = distinct !{!18, !17, !"_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto: argument 0"}
!19 = distinct !{!19, i1 true, !"_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj1_EhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs54uEYnqmHDA_13signal_crypto"}
!20 = distinct !{!20, !19, !"_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj1_EhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs54uEYnqmHDA_13signal_crypto: argument 0"}
!21 = distinct !{!21, i1 true, !"_RNvYNvYINtNtNtCsgxBkk5gSRhY_4core5array4iter8IntoIterhKj1_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nextINtNtNtBc_3ops8function6FnOnceTQB5_EE9call_onceCs54uEYnqmHDA_13signal_crypto"}
!22 = distinct !{!22, !21, !"_RNvYNvYINtNtNtCsgxBkk5gSRhY_4core5array4iter8IntoIterhKj1_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nextINtNtNtBc_3ops8function6FnOnceTQB5_EE9call_onceCs54uEYnqmHDA_13signal_crypto: argument 0"}
!23 = distinct !{!23, i1 true, !"_RNvXs2_NtNtCsgxBkk5gSRhY_4core5array4iterINtB5_8IntoIterhKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto"}
!24 = distinct !{!24, !23, !"_RNvXs2_NtNtCsgxBkk5gSRhY_4core5array4iterINtB5_8IntoIterhKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto: argument 0"}
!25 = distinct !{!25, i1 true, !"_RNvMs8_NtNtNtCsgxBkk5gSRhY_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninithEE4nextCs54uEYnqmHDA_13signal_crypto"}
!26 = distinct !{!26, !25, !"_RNvMs8_NtNtNtCsgxBkk5gSRhY_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninithEE4nextCs54uEYnqmHDA_13signal_crypto: argument 0"}
!27 = distinct !{!27, i1 true, !"_RNCNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB6_5ChainINtNtNtBc_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtBa_6traits8iterator8Iterator4next0Cs54uEYnqmHDA_13signal_crypto"}
!28 = distinct !{!28, !27, !"_RNCNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB6_5ChainINtNtNtBc_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtBa_6traits8iterator8Iterator4next0Cs54uEYnqmHDA_13signal_crypto: argument 0"}
!29 = distinct !{!29, i1 true, !"_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionhE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainINtNtNtB5_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB13_6traits8iterator8Iterator4next0ECs54uEYnqmHDA_13signal_crypto"}
!30 = distinct !{!30, !29, !"_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionhE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainINtNtNtB5_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB13_6traits8iterator8Iterator4next0ECs54uEYnqmHDA_13signal_crypto: argument 0"}
!31 = distinct !{!31, i1 true, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto"}
!32 = distinct !{!32, !31, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs54uEYnqmHDA_13signal_crypto: argument 0"}
!33 = !{!26, !24, !22, !20, !18}
!34 = !{!20, !18}
!35 = !{!28}
!36 = !{!18}
!37 = !{!30}
!38 = !{!32}
!39 = !{!32, !28, !30, !18}
!40 = distinct !{!40, i1 true, !"_RNvMs5_CsdZ6zx9bXGuc_7hpke_rsINtB5_4HpkeNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderE6randomBI_"}
!41 = distinct !{!41, !40, !"_RNvMs5_CsdZ6zx9bXGuc_7hpke_rsINtB5_4HpkeNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderE6randomBI_: argument 1"}
!42 = distinct !{!42, !40, !"_RNvMs5_CsdZ6zx9bXGuc_7hpke_rsINtB5_4HpkeNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderE6randomBI_: argument 0"}
!43 = distinct !{!43, i1 true, !"_RINvXs1_NtNtCs6i54tJFfzR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs54uEYnqmHDA_13signal_crypto"}
!44 = distinct !{!44, !43, !"_RINvXs1_NtNtCs6i54tJFfzR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs54uEYnqmHDA_13signal_crypto: argument 0"}
!45 = !{!42, !41}
!46 = !{!44}
!47 = !{!44, !42, !41}
!48 = !{!42}
!49 = distinct !{!49, i1 true, !"_RNvMs5_CsdZ6zx9bXGuc_7hpke_rsINtB5_4HpkeNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderE6randomBI_"}
!50 = distinct !{!50, !49, !"_RNvMs5_CsdZ6zx9bXGuc_7hpke_rsINtB5_4HpkeNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderE6randomBI_: argument 1"}
!51 = distinct !{!51, !49, !"_RNvMs5_CsdZ6zx9bXGuc_7hpke_rsINtB5_4HpkeNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderE6randomBI_: argument 0"}
!52 = distinct !{!52, i1 true, !"_RINvXs1_NtNtCs6i54tJFfzR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs54uEYnqmHDA_13signal_crypto"}
!53 = distinct !{!53, !52, !"_RINvXs1_NtNtCs6i54tJFfzR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs54uEYnqmHDA_13signal_crypto: argument 0"}
!54 = !{!51, !50}
!55 = !{!53}
!56 = !{!53, !51, !50}
!57 = !{!51}
!58 = distinct !{!58, i1 true, !"_RNvXs5_NtNtCs6i54tJFfzR_5alloc3vec5drainINtB5_5DrainhENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto"}
!59 = distinct !{!59, !58, !"_RNvXs5_NtNtCs6i54tJFfzR_5alloc3vec5drainINtB5_5DrainhENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto: argument 0"}
!60 = !{!59}
!61 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!62 = distinct !{!62, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs54uEYnqmHDA_13signal_crypto"}
!63 = distinct !{!63, !62, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs54uEYnqmHDA_13signal_crypto: argument 0"}
!64 = distinct !{!64, !62, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs54uEYnqmHDA_13signal_crypto: argument 1"}
!65 = distinct !{!65, i1 false, !"LVerDomain"}
!66 = distinct !{!66, !65}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !9, !10}
!69 = distinct !{!69, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs54uEYnqmHDA_13signal_crypto"}
!70 = distinct !{!70, !69, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs54uEYnqmHDA_13signal_crypto: argument 0:It1"}
!71 = distinct !{!71, !69, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs54uEYnqmHDA_13signal_crypto: argument 1:It1"}
!72 = distinct !{!72, !9}
!73 = !{!63}
!74 = !{!64}
!75 = !{!63, !66}
!76 = !{!67}
!77 = !{!64, !67}
!78 = !{!70}
!79 = !{!71}
!80 = distinct !{!80, i1 true, !"_RNvXs_NtNtCs6i54tJFfzR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB1F_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEE9from_iterCs54uEYnqmHDA_13signal_crypto"}
!81 = distinct !{!81, !80, !"_RNvXs_NtNtCs6i54tJFfzR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB1F_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEE9from_iterCs54uEYnqmHDA_13signal_crypto: argument 1"}
!82 = distinct !{!82, !80, !"_RNvXs_NtNtCs6i54tJFfzR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB1F_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEE9from_iterCs54uEYnqmHDA_13signal_crypto: argument 0"}
!83 = distinct !{!83, i1 true, !"_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto"}
!84 = distinct !{!84, !83, !"_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto: argument 1"}
!85 = distinct !{!85, i1 true, !"_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto"}
!86 = distinct !{!86, !85, !"_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto: argument 0"}
!87 = !{!81}
!88 = !{!82, !81}
!89 = !{!84, !81}
!90 = !{!86}
!91 = !{!82}
!92 = distinct !{!92, i1 true, !"_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE6spliceINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEINtNtNtNtBV_4iter8adapters5chain5ChainINtNtNtBV_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto"}
!93 = distinct !{!93, !92, !"_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE6spliceINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEINtNtNtNtBV_4iter8adapters5chain5ChainINtNtNtBV_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto: argument 0"}
!94 = distinct !{!94, !92, !"_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE6spliceINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEINtNtNtNtBV_4iter8adapters5chain5ChainINtNtNtBV_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto: argument 1"}
!95 = distinct !{!95, !92, !"_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE6spliceINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEINtNtNtNtBV_4iter8adapters5chain5ChainINtNtNtBV_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto: argument 2"}
!96 = distinct !{!96, i1 true, !"_RINvMs_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE5drainINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEECs54uEYnqmHDA_13signal_crypto"}
!97 = distinct !{!97, !96, !"_RINvMs_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE5drainINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEECs54uEYnqmHDA_13signal_crypto: argument 1"}
!98 = distinct !{!98, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB4_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto"}
!99 = distinct !{!99, !98, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB4_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto: argument 0"}
!100 = distinct !{!100, i1 true, !"_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto"}
!101 = distinct !{!101, !100, !"_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto: argument 0"}
!102 = distinct !{!102, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB4_5array4iter8IntoIterhKj1_EINtNtBG_9into_iter8IntoIterhEEEECs54uEYnqmHDA_13signal_crypto"}
!103 = distinct !{!103, !102, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB4_5array4iter8IntoIterhKj1_EINtNtBG_9into_iter8IntoIterhEEEECs54uEYnqmHDA_13signal_crypto: argument 0"}
!104 = distinct !{!104, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB4_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto"}
!105 = distinct !{!105, !104, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB4_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto: argument 0"}
!106 = distinct !{!106, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc3vec5drain5DrainhEECs54uEYnqmHDA_13signal_crypto"}
!107 = distinct !{!107, !106, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc3vec5drain5DrainhEECs54uEYnqmHDA_13signal_crypto: argument 0"}
!108 = distinct !{!108, i1 true, !"_RNvXs5_NtNtCs6i54tJFfzR_5alloc3vec5drainINtB5_5DrainhENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto"}
!109 = distinct !{!109, !108, !"_RNvXs5_NtNtCs6i54tJFfzR_5alloc3vec5drainINtB5_5DrainhENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto: argument 0"}
!110 = distinct !{!110, i1 true, !"_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto"}
!111 = distinct !{!111, !110, !"_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto: argument 0"}
!112 = distinct !{!112, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB4_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto"}
!113 = distinct !{!113, !112, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB4_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto: argument 0"}
!114 = distinct !{!114, i1 true, !"_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto"}
!115 = distinct !{!115, !114, !"_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto: argument 0"}
!116 = !{i64 -1, i64 -9223372036854775808}
!117 = !{!93}
!118 = !{!94}
!119 = !{!95}
!120 = !{!97, !94}
!121 = !{!93, !94, !95}
!122 = !{!101, !99, !93, !94, !95}
!123 = !{!93, !95}
!124 = !{!103}
!125 = !{!105}
!126 = !{!105, !103}
!127 = !{!107}
!128 = !{!109}
!129 = !{!109, !107, !103}
!130 = !{!109, !107}
!131 = !{!111, !105, !103}
!132 = !{!113}
!133 = !{!113, !103}
!134 = !{!115, !113, !103}
!135 = distinct !{!135, i1 true, !"_RNvXsU_NtNtCsgxBkk5gSRhY_4core3fmt3numhNtB7_5Debug3fmt"}
!136 = distinct !{!136, !135, !"_RNvXsU_NtNtCsgxBkk5gSRhY_4core3fmt3numhNtB7_5Debug3fmt: argument 1"}
!137 = !{!136}
!138 = distinct !{!138, i1 true, !"_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt"}
!139 = distinct !{!139, !138, !"_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt: argument 1"}
!140 = !{!139}
!141 = distinct !{!141, i1 true, !"_RNvXs2_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhEE11spec_extendCs54uEYnqmHDA_13signal_crypto"}
!142 = distinct !{!142, !141, !"_RNvXs2_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhEE11spec_extendCs54uEYnqmHDA_13signal_crypto: argument 0"}
!143 = distinct !{!143, i1 true, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE15append_elementsCs54uEYnqmHDA_13signal_crypto"}
!144 = distinct !{!144, !143, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE15append_elementsCs54uEYnqmHDA_13signal_crypto: argument 0"}
!145 = distinct !{!145, i1 true, !"_RNvXs2_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhEE11spec_extendCs54uEYnqmHDA_13signal_crypto"}
!146 = distinct !{!146, !145, !"_RNvXs2_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhEE11spec_extendCs54uEYnqmHDA_13signal_crypto: argument 0"}
!147 = distinct !{!147, i1 true, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE15append_elementsCs54uEYnqmHDA_13signal_crypto"}
!148 = distinct !{!148, !147, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE15append_elementsCs54uEYnqmHDA_13signal_crypto: argument 0"}
!149 = distinct !{!149, i1 true, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto"}
!150 = distinct !{!150, !149, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto: argument 0"}
!151 = distinct !{!151, i1 true, !"_RNvXs2_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhEE11spec_extendCs54uEYnqmHDA_13signal_crypto"}
!152 = distinct !{!152, !151, !"_RNvXs2_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhEE11spec_extendCs54uEYnqmHDA_13signal_crypto: argument 0"}
!153 = distinct !{!153, i1 true, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE15append_elementsCs54uEYnqmHDA_13signal_crypto"}
!154 = distinct !{!154, !153, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE15append_elementsCs54uEYnqmHDA_13signal_crypto: argument 0"}
!155 = distinct !{!155, i1 true, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto"}
!156 = distinct !{!156, !155, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto: argument 0"}
!157 = !{!144, !142}
!158 = !{!150, !148, !146}
!159 = !{!148, !146}
!160 = !{!156, !154, !152}
!161 = !{!154, !152}
!162 = distinct !{!162, i1 true, !"_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push"}
!163 = distinct !{!163, !162, !"_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String4push: argument 0"}
!164 = distinct !{!164, i1 true, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto"}
!165 = distinct !{!165, !164, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto: argument 0"}
!166 = !{!163}
!167 = !{!165, !163}
!168 = distinct !{!168, i1 true, !"_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String8push_str"}
!169 = distinct !{!169, !168, !"_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String8push_str: argument 0"}
!170 = distinct !{!170, i1 true, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE15append_elementsCs54uEYnqmHDA_13signal_crypto"}
!171 = distinct !{!171, !170, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE15append_elementsCs54uEYnqmHDA_13signal_crypto: argument 0"}
!172 = distinct !{!172, i1 true, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto"}
!173 = distinct !{!173, !172, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto: argument 0"}
!174 = distinct !{!174, !168, !"_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String8push_str: argument 1"}
!175 = !{!173, !171, !169}
!176 = !{!174}
!177 = !{!171, !169}
!178 = distinct !{!178, i1 true, !"_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE14extend_trustedQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB17_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto"}
!179 = distinct !{!179, !178, !"_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE14extend_trustedQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB17_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto: argument 0"}
!180 = distinct !{!180, !178, !"_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechE14extend_trustedQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB17_5array4iter8IntoIterhKj1_EINtNtB6_9into_iter8IntoIterhEEECs54uEYnqmHDA_13signal_crypto: argument 1"}
!181 = distinct !{!181, i1 true, !"_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto"}
!182 = distinct !{!182, !181, !"_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto: argument 1"}
!183 = distinct !{!183, i1 true, !"_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto"}
!184 = distinct !{!184, !183, !"_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB5_8Iterator9size_hintCs54uEYnqmHDA_13signal_crypto: argument 0"}
!185 = distinct !{!185, i1 true, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto"}
!186 = distinct !{!186, !185, !"_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs54uEYnqmHDA_13signal_crypto: argument 0"}
!187 = distinct !{!187, i1 true, !"_RINvYQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtBd_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtBb_6traits8iterator8Iterator8for_eachNCINvMsj_B1B_INtB1B_3VechE14extend_trustedB3_E0ECs54uEYnqmHDA_13signal_crypto"}
!188 = distinct !{!188, !187, !"_RINvYQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtBd_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtBb_6traits8iterator8Iterator8for_eachNCINvMsj_B1B_INtB1B_3VechE14extend_trustedB3_E0ECs54uEYnqmHDA_13signal_crypto: argument 0"}
!189 = distinct !{!189, i1 true, !"_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtBa_8adapters5chain5ChainINtNtNtBc_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB6_8Iterator4folduNCINvNvB2M_8for_each4callhNCINvMsj_B21_INtB21_3VechE14extend_trustedBQ_E0E0ECs54uEYnqmHDA_13signal_crypto"}
!190 = distinct !{!190, !189, !"_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtBa_8adapters5chain5ChainINtNtNtBc_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB6_8Iterator4folduNCINvNvB2M_8for_each4callhNCINvMsj_B21_INtB21_3VechE14extend_trustedBQ_E0E0ECs54uEYnqmHDA_13signal_crypto: argument 0"}
!191 = distinct !{!191, i1 true, !"_RINvXs2_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtBa_8adapters5chain5ChainINtNtNtBc_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callhNCINvMsj_B21_INtB21_3VechE14extend_trustedBQ_E0E0ECs54uEYnqmHDA_13signal_crypto"}
!192 = distinct !{!192, !191, !"_RINvXs2_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtBa_8adapters5chain5ChainINtNtNtBc_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callhNCINvMsj_B21_INtB21_3VechE14extend_trustedBQ_E0E0ECs54uEYnqmHDA_13signal_crypto: argument 0"}
!193 = distinct !{!193, i1 true, !"_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3e_17NeverShortCircuituE10wrap_mut_2uhNCINvNvB2q_8for_each4callhNCINvMsj_B1F_INtB1F_3VechE14extend_trustedQBO_E0E0E0B3z_ECs54uEYnqmHDA_13signal_crypto"}
!194 = distinct !{!194, !193, !"_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3e_17NeverShortCircuituE10wrap_mut_2uhNCINvNvB2q_8for_each4callhNCINvMsj_B1F_INtB1F_3VechE14extend_trustedQBO_E0E0E0B3z_ECs54uEYnqmHDA_13signal_crypto: argument 0"}
!195 = distinct !{!195, i1 true, !"_RINvXs2_NtNtCsgxBkk5gSRhY_4core5array4iterINtB6_8IntoIterhKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvMNtNtBa_3ops9try_traitINtB1V_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBZ_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3u_3VechE14extend_trustedQINtNtNtB15_8adapters5chain5ChainBE_INtNtB3u_9into_iter8IntoIterhEEE0E0E0B2g_ECs54uEYnqmHDA_13signal_crypto"}
!196 = distinct !{!196, !195, !"_RINvXs2_NtNtCsgxBkk5gSRhY_4core5array4iterINtB6_8IntoIterhKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvMNtNtBa_3ops9try_traitINtB1V_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBZ_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3u_3VechE14extend_trustedQINtNtNtB15_8adapters5chain5ChainBE_INtNtB3u_9into_iter8IntoIterhEEE0E0E0B2g_ECs54uEYnqmHDA_13signal_crypto: argument 0"}
!197 = distinct !{!197, i1 true, !"_RINvXs_NtNtCsgxBkk5gSRhY_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninithEE8try_folduQNCINvMNtB7_9try_traitINtB3S_17NeverShortCircuituE10wrap_mut_2uhNCINvNvB10_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB5m_3VechE14extend_trustedQINtNtNtB16_8adapters5chain5ChainINtB20_8IntoIterhKj1_EINtNtB5m_9into_iter8IntoIterhEEE0E0E0B47_E0B47_ECs54uEYnqmHDA_13signal_crypto"}
!198 = distinct !{!198, !197, !"_RINvXs_NtNtCsgxBkk5gSRhY_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninithEE8try_folduQNCINvMNtB7_9try_traitINtB3S_17NeverShortCircuituE10wrap_mut_2uhNCINvNvB10_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB5m_3VechE14extend_trustedQINtNtNtB16_8adapters5chain5ChainINtB20_8IntoIterhKj1_EINtNtB5m_9into_iter8IntoIterhEEE0E0E0B47_E0B47_ECs54uEYnqmHDA_13signal_crypto: argument 0"}
!199 = distinct !{!199, !197, !"_RINvXs_NtNtCsgxBkk5gSRhY_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninithEE8try_folduQNCINvMNtB7_9try_traitINtB3S_17NeverShortCircuituE10wrap_mut_2uhNCINvNvB10_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB5m_3VechE14extend_trustedQINtNtNtB16_8adapters5chain5ChainINtB20_8IntoIterhKj1_EINtNtB5m_9into_iter8IntoIterhEEE0E0E0B47_E0B47_ECs54uEYnqmHDA_13signal_crypto: argument 1"}
!200 = distinct !{!200, i1 true, !"_RNCINvMs8_NtNtNtCsgxBkk5gSRhY_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninithEE8try_folduQNCINvMNtNtBe_3ops9try_traitINtB2h_17NeverShortCircuituE10wrap_mut_2uhNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB4s_3VechE14extend_trustedQINtNtNtB3v_8adapters5chain5ChainINtBa_8IntoIterhKj1_EINtNtB4s_9into_iter8IntoIterhEEE0E0E0B2C_E0Cs54uEYnqmHDA_13signal_crypto"}
!201 = distinct !{!201, !200, !"_RNCINvMs8_NtNtNtCsgxBkk5gSRhY_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninithEE8try_folduQNCINvMNtNtBe_3ops9try_traitINtB2h_17NeverShortCircuituE10wrap_mut_2uhNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB4s_3VechE14extend_trustedQINtNtNtB3v_8adapters5chain5ChainINtBa_8IntoIterhKj1_EINtNtB4s_9into_iter8IntoIterhEEE0E0E0B2C_E0Cs54uEYnqmHDA_13signal_crypto: argument 0"}
!202 = distinct !{!202, !187, !"_RINvYQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtBd_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtBb_6traits8iterator8Iterator8for_eachNCINvMsj_B1B_INtB1B_3VechE14extend_trustedB3_E0ECs54uEYnqmHDA_13signal_crypto: argument 1"}
!203 = distinct !{!203, !189, !"_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtBa_8adapters5chain5ChainINtNtNtBc_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB6_8Iterator4folduNCINvNvB2M_8for_each4callhNCINvMsj_B21_INtB21_3VechE14extend_trustedBQ_E0E0ECs54uEYnqmHDA_13signal_crypto: argument 1"}
!204 = distinct !{!204, !191, !"_RINvXs2_NtNtNtCsgxBkk5gSRhY_4core4iter6traits8iteratorQINtNtNtBa_8adapters5chain5ChainINtNtNtBc_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callhNCINvMsj_B21_INtB21_3VechE14extend_trustedBQ_E0E0ECs54uEYnqmHDA_13signal_crypto: argument 1"}
!205 = distinct !{!205, !193, !"_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5array4iter8IntoIterhKj1_EINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterhEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3e_17NeverShortCircuituE10wrap_mut_2uhNCINvNvB2q_8for_each4callhNCINvMsj_B1F_INtB1F_3VechE14extend_trustedQBO_E0E0E0B3z_ECs54uEYnqmHDA_13signal_crypto: argument 1"}
!206 = distinct !{!206, !195, !"_RINvXs2_NtNtCsgxBkk5gSRhY_4core5array4iterINtB6_8IntoIterhKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvMNtNtBa_3ops9try_traitINtB1V_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBZ_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3u_3VechE14extend_trustedQINtNtNtB15_8adapters5chain5ChainBE_INtNtB3u_9into_iter8IntoIterhEEE0E0E0B2g_ECs54uEYnqmHDA_13signal_crypto: argument 1"}
!207 = distinct !{!207, i1 true, !"_RNCINvMNtNtCsgxBkk5gSRhY_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uhNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB2v_3VechE14extend_trustedQINtNtNtB1y_8adapters5chain5ChainINtNtNtB9_5array4iter8IntoIterhKj1_EINtNtB2v_9into_iter8IntoIterhEEE0E0E0Cs54uEYnqmHDA_13signal_crypto"}
!208 = distinct !{!208, !207, !"_RNCINvMNtNtCsgxBkk5gSRhY_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uhNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB2v_3VechE14extend_trustedQINtNtNtB1y_8adapters5chain5ChainINtNtNtB9_5array4iter8IntoIterhKj1_EINtNtB2v_9into_iter8IntoIterhEEE0E0E0Cs54uEYnqmHDA_13signal_crypto: argument 0"}
!209 = distinct !{!209, i1 true, !"_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB1p_3VechE14extend_trustedQINtNtNtBc_8adapters5chain5ChainINtNtNtBe_5array4iter8IntoIterhKj1_EINtNtB1p_9into_iter8IntoIterhEEE0E0Cs54uEYnqmHDA_13signal_crypto"}
!210 = distinct !{!210, !209, !"_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB1p_3VechE14extend_trustedQINtNtNtBc_8adapters5chain5ChainINtNtNtBe_5array4iter8IntoIterhKj1_EINtNtB1p_9into_iter8IntoIterhEEE0E0Cs54uEYnqmHDA_13signal_crypto: argument 0"}
!211 = distinct !{!211, i1 true, !"_RNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB8_3VechE14extend_trustedQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB19_5array4iter8IntoIterhKj1_EINtNtB8_9into_iter8IntoIterhEEE0Cs54uEYnqmHDA_13signal_crypto"}
!212 = distinct !{!212, !211, !"_RNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB8_3VechE14extend_trustedQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB19_5array4iter8IntoIterhKj1_EINtNtB8_9into_iter8IntoIterhEEE0Cs54uEYnqmHDA_13signal_crypto: argument 0"}
!213 = distinct !{!213, i1 true, !"_RINvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB6_8IntoIterhENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB16_3ops9try_traitINtB29_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBY_8for_each4callhNCINvMsj_B8_INtB8_3VechE14extend_trustedQINtNtNtB14_8adapters5chain5ChainINtNtNtB16_5array4iter8IntoIterhKj1_EBH_EE0E0E0B2v_ECs54uEYnqmHDA_13signal_crypto"}
!214 = distinct !{!214, !213, !"_RINvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB6_8IntoIterhENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB16_3ops9try_traitINtB29_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBY_8for_each4callhNCINvMsj_B8_INtB8_3VechE14extend_trustedQINtNtNtB14_8adapters5chain5ChainINtNtNtB16_5array4iter8IntoIterhKj1_EBH_EE0E0E0B2v_ECs54uEYnqmHDA_13signal_crypto: argument 0"}
!215 = distinct !{!215, !213, !"_RINvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB6_8IntoIterhENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB16_3ops9try_traitINtB29_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBY_8for_each4callhNCINvMsj_B8_INtB8_3VechE14extend_trustedQINtNtNtB14_8adapters5chain5ChainINtNtNtB16_5array4iter8IntoIterhKj1_EBH_EE0E0E0B2v_ECs54uEYnqmHDA_13signal_crypto: argument 1"}
!216 = distinct !{!216, i1 true, !"_RNCINvMNtNtCsgxBkk5gSRhY_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uhNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB2v_3VechE14extend_trustedQINtNtNtB1y_8adapters5chain5ChainINtNtNtB9_5array4iter8IntoIterhKj1_EINtNtB2v_9into_iter8IntoIterhEEE0E0E0Cs54uEYnqmHDA_13signal_crypto"}
!217 = distinct !{!217, !216, !"_RNCINvMNtNtCsgxBkk5gSRhY_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uhNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB2v_3VechE14extend_trustedQINtNtNtB1y_8adapters5chain5ChainINtNtNtB9_5array4iter8IntoIterhKj1_EINtNtB2v_9into_iter8IntoIterhEEE0E0E0Cs54uEYnqmHDA_13signal_crypto: argument 0"}
!218 = distinct !{!218, i1 true, !"_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB1p_3VechE14extend_trustedQINtNtNtBc_8adapters5chain5ChainINtNtNtBe_5array4iter8IntoIterhKj1_EINtNtB1p_9into_iter8IntoIterhEEE0E0Cs54uEYnqmHDA_13signal_crypto"}
!219 = distinct !{!219, !218, !"_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB1p_3VechE14extend_trustedQINtNtNtBc_8adapters5chain5ChainINtNtNtBe_5array4iter8IntoIterhKj1_EINtNtB1p_9into_iter8IntoIterhEEE0E0Cs54uEYnqmHDA_13signal_crypto: argument 0"}
!220 = distinct !{!220, i1 true, !"_RNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB8_3VechE14extend_trustedQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB19_5array4iter8IntoIterhKj1_EINtNtB8_9into_iter8IntoIterhEEE0Cs54uEYnqmHDA_13signal_crypto"}
!221 = distinct !{!221, !220, !"_RNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB8_3VechE14extend_trustedQINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters5chain5ChainINtNtNtB19_5array4iter8IntoIterhKj1_EINtNtB8_9into_iter8IntoIterhEEE0Cs54uEYnqmHDA_13signal_crypto: argument 0"}
!222 = distinct !{!222, !9, !10}
!223 = distinct !{!223, !9, !10}
!224 = distinct !{!224, !248}
!225 = distinct !{!225, !9}
!226 = !{!179}
!227 = !{!180}
!228 = !{!182, !180}
!229 = !{!184}
!230 = !{!186, !179}
!231 = !{!"branch_weights", !"expected", i32 1321020, i32 2146162628}
!232 = !{!188}
!233 = !{!190}
!234 = !{!192}
!235 = !{!194}
!236 = !{!196}
end_hunk_1
