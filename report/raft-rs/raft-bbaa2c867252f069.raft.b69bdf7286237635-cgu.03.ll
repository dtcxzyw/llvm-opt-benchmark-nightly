Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft-bbaa2c867252f069.raft.b69bdf7286237635-cgu.03?download=true
inline.NumInlined: 180
inline.NumDeleted: 90
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE12contains_keyBO_EB1r_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1p_E0EB1t_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !20, !noundef !5 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !20, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.i          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.m, align 1, !noalias !21 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [256 x i8], ptr %i.j, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -256
  %i.w = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtB2_10EquivalentBq_E10equivalentCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v), !noalias !22
  br i1 %i.w, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1p_E0EB1t_.exit, label %bb.d, !prof !6

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1p_E0EB1t_.exit, !prof !7

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = add i16 %.sroa.06.0.i31.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i31.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1p_E0EB1t_.exit: ; preds = %._crit_edge.i, %.lr.ph.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.lr.ph.i ], [ false, %._crit_edge.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE12contains_keyShEB1r_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyShBQ_B1p_E0EB1t_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRShECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !34, !noundef !5 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !34, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.i          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.m, align 1, !noalias !35 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [256 x i8], ptr %i.j, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -256
  %i.w = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownShINtB2_10EquivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10equivalentCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v), !noalias !36
  br i1 %i.w, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyShBQ_B1p_E0EB1t_.exit, label %bb.d, !prof !6

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyShBQ_B1p_E0EB1t_.exit, !prof !7

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = add i16 %.sroa.06.0.i31.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i31.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyShBQ_B1p_E0EB1t_.exit: ; preds = %._crit_edge.i, %.lr.ph.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.lr.ph.i ], [ false, %._crit_edge.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE6removeBO_EB1r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2), !noalias !39
  call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1p_E0EB1t_(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.d = load i64, ptr %i.a, align 8, !range !40, !noundef !5
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %3, i64 232, i1 false)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsfG1pxJcRFT5_4raft.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #8
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsfG1pxJcRFT5_4raft.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE7get_mutShEB1r_(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRShECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !52, !noundef !5 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !52, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.i          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.m, align 1, !noalias !53 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [256 x i8], ptr %i.j, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -256
  %i.w = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownShINtB2_10EquivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10equivalentCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v), !noalias !54
  br i1 %i.w, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyShBQ_B1p_E0EB1t_.exit, label %bb.d, !prof !6

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyShBQ_B1p_E0EB1t_.exit, !prof !7

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = add i16 %.sroa.06.0.i31.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i31.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyShBQ_B1p_E0EB1t_.exit: ; preds = %._crit_edge.i, %.lr.ph.i
  %i.ae = phi ptr [ %i.u, %.lr.ph.i ], [ null, %._crit_edge.i ] ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -232
  %.sroa.0.0 = select i1 %.not, ptr null, ptr %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyShBQ_B1p_E0EB1t_.exit
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyShBQ_B1p_E0EB1t_.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE12contains_keyyEBV_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE4findNCINvNtB8_3map14equivalent_keyyyBR_E0EBX_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !66, !noundef !5 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !66, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.i          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.m, align 1, !noalias !67 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [128 x i8], ptr %i.j, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -128
  %i.w = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.v), !noalias !68
  br i1 %i.w, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE4findNCINvNtB8_3map14equivalent_keyyyBR_E0EBX_.exit, label %bb.d, !prof !6

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE4findNCINvNtB8_3map14equivalent_keyyyBR_E0EBX_.exit, !prof !7

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = add i16 %.sroa.06.0.i31.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i31.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE4findNCINvNtB8_3map14equivalent_keyyyBR_E0EBX_.exit: ; preds = %._crit_edge.i, %.lr.ph.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.lr.ph.i ], [ false, %._crit_edge.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE6removeyEBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2), !noalias !71
  call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE12remove_entryNCINvNtB8_3map14equivalent_keyyyBR_E0EBX_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !72, !noundef !5
  %.not = icmp eq i64 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.d, i64 120, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE12contains_keyyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE4findNCINvNtB8_3map14equivalent_keyyyuE0ECsfG1pxJcRFT5_4raft.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !84, !noundef !5 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !84, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.i          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.m, align 1, !noalias !85 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.l
end_hunk_0
begin_hunk_1_@_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE11rustc_entryCsfG1pxJcRFT5_4raft:bb.a
bb.f:                                             ; preds = %bb.e, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTybEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE11rustc_entry0ECsfG1pxJcRFT5_4raft.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEE4iterCsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = add i64 %i.c, 1
  tail call void @_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE3newCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE8iter_mutBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = add i64 %i.c, 1
  tail call void @_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE3newB11_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE4iterCsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = add i64 %i.c, 1
  tail call void @_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTybEE3newCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE4iterCsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = add i64 %i.c, 1
  tail call void @_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTyuEE3newCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE6insertB1q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(232) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE7reserveNCINvNtB8_3map11make_hasherBQ_B1p_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0EB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !175, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val5.i = load i64, ptr %i.d, align 8, !alias.scope !175, !noundef !5 ; 3 uses
  %i.e = lshr i64 %i.c, 57
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.noexc
  %.pn.i.i = phi i64 [ %i.c, %.noexc ], [ %i.ah, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %.noexc ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %.noexc ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.i = phi i64 [ 0, %.noexc ], [ %i.ag, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !176 ; 3 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.h
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.l, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.w, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.0.017.i.i, %i.n
  %i.p = and i64 %i.o, %.val5.i
  %i.q = load ptr, ptr %1, align 8, !alias.scope !175, !noalias !177, !nonnull !5, !noundef !5
  %i.r = sub nsw i64 0, %i.p                      ; 2 uses
  %i.s = getelementptr inbounds [256 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -256
  %i.u = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtB2_10EquivalentBq_E10equivalentCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %.lr.ph.i.i
  br i1 %i.u, label %bb.i, label %bb.d, !prof !6

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !prof !7

bb.d:                                             ; preds = %.noexc6
  %i.v = add i16 %.sroa.01.029.i.i, -1
  %i.w = and i16 %i.v, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.x = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !7

.thread24.i.i:                                    ; preds = %bb.e
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.y, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.0.017.i.i, %i.aa
  %i.ac = and i64 %i.ab, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ac, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ag = add i64 %i.i, 16                        ; 2 uses
  %i.ah = add i64 %i.ag, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !5
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.h, label %bb.m, !prof !7

bb.h:                                             ; preds = %bb.g
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.al = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.am, 0
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.am, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.m

bb.i:                                             ; preds = %.noexc6
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !175, !nonnull !5
  %i.aq = getelementptr inbounds [256 x i8], ptr %i.ap, i64 %i.r
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -232 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %i.ar, i64 232, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ar, ptr noundef nonnull align 8 dereferenceable(232) %3, i64 232, i1 false)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #8
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.j ], [ %lpad.loopexit.split-lp19, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit
  ret void

bb.m:                                             ; preds = %bb.h, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ao, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.au, ptr noundef nonnull align 8 dereferenceable(232) %3, i64 232, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.av = load ptr, ptr %1, align 8, !alias.scope !178, !nonnull !5, !noundef !5 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !179, !noundef !5
  %i.ay = and i8 %i.ax, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bb = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bc = load i64, ptr %i.d, align 8, !alias.scope !178, !noundef !5
  %i.bd = and i64 %i.bc, %i.bb
  store i8 %i.f, ptr %i.aw, align 1, !noalias !179
  %i.be = getelementptr i8, ptr %i.av, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  store i8 %i.f, ptr %i.bf, align 1, !noalias !179
  %i.bg = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !178
  %i.bh = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.az, i64 0
  %i.bi = sub <2 x i64> %i.bg, %i.bh
  store <2 x i64> %i.bi, ptr %i.ba, align 8, !alias.scope !178
  %i.bj = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bk = getelementptr inbounds [256 x i8], ptr %i.av, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(256) %i.a, i64 256, i1 false), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.l

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.a, %bb.b
  %lpad.loopexit.split-lp19 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEBF_(ptr noalias nofree noundef align 8 dereferenceable(232) %3) #9
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.o, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #8
  unreachable

bb.o:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #9
          to label %common.resume unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE6insertBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE7reserveNCINvNtB8_3map11make_hasheryBR_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0EBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !189, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val5.i = load i64, ptr %i.d, align 8, !alias.scope !189, !noundef !5 ; 3 uses
  %i.e = lshr i64 %i.c, 57
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.noexc
  %.pn.i.i = phi i64 [ %i.c, %.noexc ], [ %i.ah, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %.noexc ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %.noexc ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.i = phi i64 [ 0, %.noexc ], [ %i.ag, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !190 ; 3 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.h
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.l, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.w, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.m = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.0.017.i.i, %i.n
  %i.p = and i64 %i.o, %.val5.i
  %i.q = load ptr, ptr %1, align 8, !alias.scope !189, !noalias !191, !nonnull !5, !noundef !5
  %i.r = sub nsw i64 0, %i.p                      ; 2 uses
  %i.s = getelementptr inbounds [128 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -128
  %i.u = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.t)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %.lr.ph.i.i
  br i1 %i.u, label %bb.i, label %bb.d, !prof !6

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !prof !7

bb.d:                                             ; preds = %.noexc6
  %i.v = add i16 %.sroa.01.029.i.i, -1
  %i.w = and i16 %i.v, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.x = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !7

.thread24.i.i:                                    ; preds = %bb.e
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.y, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.0.017.i.i, %i.aa
  %i.ac = and i64 %i.ab, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ac, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ag = add i64 %i.i, 16                        ; 2 uses
  %i.ah = add i64 %i.ag, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !5
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.h, label %bb.k, !prof !7

bb.h:                                             ; preds = %bb.g
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.al = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.am, 0
  %i.an = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.am, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.k

bb.i:                                             ; preds = %.noexc6
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !189, !nonnull !5
  %i.aq = getelementptr inbounds [128 x i8], ptr %i.ap, i64 %i.r
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -120 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.ar, i64 120, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ar, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  ret void

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ao, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.as = load ptr, ptr %1, align 8, !alias.scope !192, !nonnull !5, !noundef !5 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !noalias !193, !noundef !5
  %i.av = and i8 %i.au, 1
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = add i64 %.sroa.3.0.i.ph.i, -16
  %i.az = load i64, ptr %i.d, align 8, !alias.scope !192, !noundef !5
  %i.ba = and i64 %i.az, %i.ay
  store i8 %i.f, ptr %i.at, align 1, !noalias !193
  %i.bb = getelementptr i8, ptr %i.as, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store i8 %i.f, ptr %i.bc, align 1, !noalias !193
  %i.bd = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !192
  %i.be = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.aw, i64 0
  %i.bf = sub <2 x i64> %i.bd, %i.be
  store <2 x i64> %i.bf, ptr %i.ax, align 8, !alias.scope !192
  %i.bg = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bh = getelementptr inbounds [128 x i8], ptr %i.as, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -128
  store i64 %2, ptr %i.bi, align 8, !noalias !192
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bh, i64 -120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  store i64 2, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.a, %bb.b
  %lpad.loopexit.split-lp19 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEBH_(ptr noalias nofree noundef align 8 dereferenceable(120) %3) #9
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #8
  unreachable

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp19
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE6insertCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = call noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE7reserveNCINvNtB8_3map11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b), !noalias !203
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !204, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val5.i = load i64, ptr %i.d, align 8, !alias.scope !204, !noundef !5 ; 3 uses
  %i.e = lshr i64 %i.c, 57
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn.i.i = phi i64 [ %i.c, %bb.a ], [ %i.ah, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %bb.a ], [ %.sroa.4.120.i.i, %bb.e ]
  %.sroa.04.0.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.04.122.i.i, %bb.e ]
  %i.i = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !205 ; 3 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.h
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.l, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.01.029.i.i = phi i16 [ %i.w, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %i.m = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.0.017.i.i, %i.n
  %i.p = and i64 %i.o, %.val5.i
  %i.q = load ptr, ptr %0, align 8, !alias.scope !204, !noalias !206, !nonnull !5, !noundef !5
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.u = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t), !noalias !206
  br i1 %i.u, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyyyuE0NCINvB1q_11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0ECsfG1pxJcRFT5_4raft.exit, label %bb.c, !prof !6

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !prof !7

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.v = add i16 %.sroa.01.029.i.i, -1
  %i.w = and i16 %i.v, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.x = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !prof !7

.thread24.i.i:                                    ; preds = %bb.d
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.y, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.0.017.i.i, %i.aa
  %i.ac = and i64 %i.ab, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ac, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ag = add i64 %i.i, 16                        ; 2 uses
  %i.ah = add i64 %i.ag, %.sroa.0.017.i.i
  br label %bb.b

bb.f:                                             ; preds = %.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !5
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %bb.f
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.al = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.am, 0
  %i.an = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.am, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ao, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.ap = load ptr, ptr %0, align 8, !alias.scope !207, !nonnull !5, !noundef !5 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !207, !noundef !5
  %i.as = and i8 %i.ar, 1
  %i.at = zext nneg i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.av = add i64 %.sroa.3.0.i.ph.i, -16
  %i.aw = load i64, ptr %i.d, align 8, !alias.scope !207, !noundef !5
  %i.ax = and i64 %i.aw, %i.av
  store i8 %i.f, ptr %i.aq, align 1, !noalias !207
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  store i8 %i.f, ptr %i.az, align 1, !noalias !207
  %i.ba = load <2 x i64>, ptr %i.au, align 8, !alias.scope !207
  %i.bb = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.at, i64 0
  %i.bc = sub <2 x i64> %i.ba, %i.bb
  store <2 x i64> %i.bc, ptr %i.au, align 8, !alias.scope !207
  %i.bd = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8
  store i64 %1, ptr %i.bf, align 8, !noalias !207
  br label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyyyuE0NCINvB1q_11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0ECsfG1pxJcRFT5_4raft.exit

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyyyuE0NCINvB1q_11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0ECsfG1pxJcRFT5_4raft.exit: ; preds = %.lr.ph.i.i, %bb.h
  %.sroa.0.0 = phi i1 [ false, %bb.h ], [ true, %.lr.ph.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsjqcU1oJFKXj_9hashbrown3mapINtB4_7HashMapyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE24with_capacity_and_hasherBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE16with_capacity_inBW_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsjqcU1oJFKXj_9hashbrown3mapINtB4_7HashMapybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE24with_capacity_and_hasherCsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTybEE16with_capacity_inCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsjqcU1oJFKXj_9hashbrown3mapINtB4_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE24with_capacity_and_hasherCsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE16with_capacity_inCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEENtNtB1E_5clone5Clone5cloneCsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEENtNtBR_5clone5Clone5cloneCsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4ItermNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !5
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -104
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -96
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.h, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterybENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTybEE9next_implKb0_ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !5
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.h, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyuEE9next_implKb0_ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !5
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -8
  %spec.select4 = select i1 %.not, ptr null, ptr %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %spec.select4, %bb.b ], [ null, %bb.a ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsK_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7IterMutyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBU_(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE9next_implKb0_EB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !5
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -128
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -120
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.h, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRShECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1p_E0EB1t_(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 8 captures(none) dereferenceable(256), ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nonlazybind uwtable
end_hunk_1
