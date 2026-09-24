Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/codspeed_divan_compat_walltime-c1ac0e5cf225c93a.codspeed_divan_compat_walltime.34af78f07f3e25cc-cgu.00?download=true
inline.NumInlined: 610
inline.NumDeleted: 318
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [77 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/alloc/src/vec/mod.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"L\00\00\00\00\00\00\00\AE\0B\00\00$\00\00\00" }>, align 8
@2 = private unnamed_addr constant [80 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/core/src/str/pattern.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00\E7\05\00\00\14\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00\E7\05\00\00!\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00\DB\05\00\00!\00\00\00" }>, align 8
@6 = private unnamed_addr constant [6 x i8] c"\C0\02::\C0\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCs4NRVxsYgnAr_4core3num7nonzero7NonZerojEE8dedup_byNCNvMs4_B5_Bu_5dedup0ECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 7 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %.sroa.5.024, %bb.e ] ; 8 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.023 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %.val = load i64, ptr %i.g, align 8, !range !18, !noundef !3
  %.val11 = load i64, ptr %i.h, align 8, !range !18, !noundef !3
  %i.i = icmp eq i64 %.val, %.val11
  %.sroa.5.024 = add nuw nsw i64 %.sroa.0.023, 1  ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp samesign ult i64 %.sroa.5.024, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.024
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.023 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %.val12.prol = load i64, ptr %i.m, align 8, !range !18, !noundef !3 ; 2 uses
  %.val13.prol = load i64, ptr %i.o, align 8, !range !18, !noundef !3
  %i.p = icmp eq i64 %.val12.prol, %.val13.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  store i64 %.val12.prol, ptr %i.n, align 8
  %i.q = add nuw i64 %.sroa.0.023, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.q, %bb.d ], [ %.sroa.0.023, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw nsw i64 %.sroa.0.023, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.026.unr = phi i64 [ %.sroa.5.024, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.025.unr = phi i64 [ %.sroa.0.023, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.l, %indvar
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.024, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.023, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.026 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.026.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.025 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.026
  %i.t = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.025 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %.val12 = load i64, ptr %i.s, align 8, !range !18, !noundef !3 ; 2 uses
  %.val13 = load i64, ptr %i.u, align 8, !range !18, !noundef !3
  %i.v = icmp eq i64 %.val12, %.val13
  br i1 %i.v, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i64 %.val12, ptr %i.t, align 8
  %i.w = add i64 %.sroa.11.025, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.w, %bb.f ], [ %.sroa.11.025, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.026
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %.val12.1 = load i64, ptr %i.y, align 8, !range !18, !noundef !3 ; 2 uses
  %.val13.1 = load i64, ptr %i.aa, align 8, !range !18, !noundef !3
  %i.ab = icmp eq i64 %.val12.1, %.val13.1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  store i64 %.val12.1, ptr %i.z, align 8
  %i.ac = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.026, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTreeE10retain_mutNCINvNvMBG_BE_6retain6retainNCNvMs_NtBK_5divanNtB2B_5Divan10run_actions0_0E0EBK_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 6 uses
  %i.c = icmp ult i64 %i.b, 192153584101141163
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.loopexit25, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader24, %bb.d
  %.sroa.0.0 = phi i64 [ %i.i, %bb.d ], [ 0, %.preheader24 ] ; 5 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.sroa.0.0 ; 2 uses
  %i.h = tail call fastcc noundef zeroext i1 @_RNCINvNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB7_9EntryTree6retain6retainNCNvMs_NtBb_5divanNtB1G_5Divan10run_actions0_0E0Bb_(ptr nonnull %1, ptr nonnull %2, ptr noalias noundef align 8 dereferenceable(48) %i.g)
  %i.i = add nuw nsw i64 %.sroa.0.0, 1            ; 5 uses
  br i1 %i.h, label %bb.d, label %bb.e, !prof !4

.loopexit:                                        ; preds = %.lr.ph, %bb.g
  %.sroa.8.0.ph = phi i64 [ %.sroa.8.131, %.lr.ph ], [ %i.s, %bb.g ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.ph, %.loopexit ], [ %i.i, %.loopexit.split-lp ] ; 2 uses
  %.sroa.15.0 = phi i64 [ %.sroa.15.132, %.loopexit ], [ %.sroa.0.0, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.j = sub i64 %i.b, %.sroa.8.0                 ; 2 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.sroa.8.0
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.sroa.15.0
  %i.m = mul i64 %i.j, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.k, i64 %i.m, i1 false), !noalias !23
  %i.n = add i64 %.sroa.15.0, %i.j
  store i64 %i.n, ptr %i.a, align 8, !noalias !23
  resume { ptr, i32 } %lpad.phi

bb.d:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.i, %i.b
  br i1 %i.o, label %.loopexit25, label %bb.b

bb.e:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTreeEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.g)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.e
  %i.p = icmp samesign ult i64 %i.i, %i.b
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.loopexit25:                                      ; preds = %bb.d, %bb.a, %._crit_edge
  ret void

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %.sroa.15.1.lcssa = phi i64 [ %.sroa.0.0, %.preheader ], [ %.sroa.15.2, %bb.i ]
  store i64 %.sroa.15.1.lcssa, ptr %i.a, align 8
  br label %.loopexit25

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.sroa.15.132 = phi i64 [ %.sroa.15.2, %bb.i ], [ %.sroa.0.0, %.preheader ] ; 4 uses
  %.sroa.8.131 = phi i64 [ %.sroa.8.2, %bb.i ], [ %i.i, %.preheader ] ; 4 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.sroa.8.131 ; 3 uses
  %i.r = invoke fastcc noundef zeroext i1 @_RNCINvNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB7_9EntryTree6retain6retainNCNvMs_NtBb_5divanNtB1G_5Divan10run_actions0_0E0Bb_(ptr nonnull %1, ptr nonnull %2, ptr noalias noundef align 8 dereferenceable(48) %i.q)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add nuw nsw i64 %.sroa.8.131, 1          ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTreeEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.q)
          to label %bb.i unwind label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.sroa.15.132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false)
  %i.u = add i64 %.sroa.15.132, 1
  %i.v = add nuw nsw i64 %.sroa.8.131, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.8.2 = phi i64 [ %i.v, %bb.h ], [ %i.s, %bb.g ] ; 2 uses
  %.sroa.15.2 = phi i64 [ %i.u, %bb.h ], [ %.sroa.15.132, %bb.g ] ; 2 uses
  %i.w = icmp samesign ult i64 %.sroa.8.2, %i.b
  br i1 %i.w, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs4wrugdhLTku_30codspeed_divan_compat_walltime(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjE8dedup_byNCNvMs4_B5_Bu_5dedup0ECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 7 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %.sroa.5.024, %bb.e ] ; 8 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.023 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %.val = load i64, ptr %i.g, align 8, !noundef !3
  %.val11 = load i64, ptr %i.h, align 8, !noundef !3
  %i.i = icmp eq i64 %.val, %.val11
  %.sroa.5.024 = add nuw nsw i64 %.sroa.0.023, 1  ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp samesign ult i64 %.sroa.5.024, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.024
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.023 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %.val12.prol = load i64, ptr %i.m, align 8, !noundef !3 ; 2 uses
  %.val13.prol = load i64, ptr %i.o, align 8, !noundef !3
  %i.p = icmp eq i64 %.val12.prol, %.val13.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  store i64 %.val12.prol, ptr %i.n, align 8
  %i.q = add nuw i64 %.sroa.0.023, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.q, %bb.d ], [ %.sroa.0.023, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw nsw i64 %.sroa.0.023, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.026.unr = phi i64 [ %.sroa.5.024, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.025.unr = phi i64 [ %.sroa.0.023, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.l, %indvar
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.024, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.023, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.026 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.026.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.025 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.026
  %i.t = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.025 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %.val12 = load i64, ptr %i.s, align 8, !noundef !3 ; 2 uses
  %.val13 = load i64, ptr %i.u, align 8, !noundef !3
  %i.v = icmp eq i64 %.val12, %.val13
  br i1 %i.v, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i64 %.val12, ptr %i.t, align 8
  %i.w = add i64 %.sroa.11.025, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.w, %bb.f ], [ %.sroa.11.025, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.026
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %.val12.1 = load i64, ptr %i.y, align 8, !noundef !3 ; 2 uses
  %.val13.1 = load i64, ptr %i.aa, align 8, !noundef !3
  %i.ab = icmp eq i64 %.val12.1, %.val13.1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  store i64 %.val12.1, ptr %i.z, align 8
  %i.ac = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.026, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCs2AWtUsOyxgP_3std4sync4mpsc10SyncSenderNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime11thread_pool4TaskEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2X_3ops5range5RangejENCNvB1s_5spawn0EEB1u_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !26, !noundef !3 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !5, !alias.scope !26, !noundef !3
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %spec.select.i.i, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs2AWtUsOyxgP_3std4sync4mpsc10SyncSenderNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime11thread_pool4TaskEE7reserveB1s_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %spec.select.i.i, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs2AWtUsOyxgP_3std4sync4mpsc10SyncSenderNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime11thread_pool4TaskEE7reserveB1s_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs2AWtUsOyxgP_3std4sync4mpsc10SyncSenderNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime11thread_pool4TaskEE7reserveB1s_.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.j, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.k, align 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCs4wrugdhLTku_30codspeed_divan_compat_walltime11thread_pool5spawn0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2A_8for_each4callINtNtNtCs2AWtUsOyxgP_3std4sync4mpsc10SyncSenderNtB1t_4TaskENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4J_3VecB3D_E14extend_trustedBN_E0E0EB1v_(i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config6FilterE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB8_6string6StringEQNCNvMs3_NtBJ_5divanNtB4w_5Divan16config_with_args0EEBJ_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef align 8 ptr @_RNvXs9_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !30 ; 2 uses
  %.not.i5 = icmp eq ptr %i.c, null
  br i1 %.not.i5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.r

bb.c:                                             ; preds = %.lr.ph, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config6FilterE7reserveBH_.exit
  %i.i = phi ptr [ %i.c, %.lr.ph ], [ %i.q, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config6FilterE7reserveBH_.exit ]
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs3_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5divanNtBW_5Divan16config_with_args0INtB7_5FnMutTRNtNtCscdodAO9FK5_5alloc6string6StringEE8call_mutBY_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.j = load i64, ptr %i.f, align 8, !noundef !3 ; 5 uses
  %i.k = icmp ult i64 %i.j, 164703072086692426
  call void @llvm.assume(i1 %i.k)
  %i.l = load i64, ptr %0, align 8, !range !5, !noundef !3
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config6FilterE7reserveBH_.exit

._crit_edge:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config6FilterE7reserveBH_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config6FilterE7reserveBH_.exit: ; preds = %bb.e, %bb.c
  %i.n = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.p = add nuw nsw i64 %i.j, 1
  store i64 %i.p, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = call noundef align 8 ptr @_RNvXs9_NtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !31 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %._crit_edge, label %bb.c

bb.d:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config6FilterEBF_(ptr noalias noundef align 8 dereferenceable(56) %i.a) #18
          to label %bb.b unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %.val = load i64, ptr %i.g, align 8, !noundef !3
  %i.s = call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef range(i64 1, 0) %i.s, i64 noundef 8, i64 noundef 56)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime6config6FilterE7reserveBH_.exit unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i1 noundef zeroext %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = add nsw i64 %5, -1                       ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.c = add i64 %i.b, %.promoted                 ; 2 uses
  %i.d = icmp ult i64 %i.c, %3
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %i.g = load i64, ptr %1, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %5, %i.j
  %.promoted35 = load i64, ptr %i.h, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 %3, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi i64 [ %.promoted35, %.lr.ph ], [ %i.w, %bb.f ] ; 5 uses
  %i.m = phi i64 [ %i.c, %.lr.ph ], [ %i.y, %bb.f ]
  %i.n = phi i64 [ %.promoted, %.lr.ph ], [ %i.x, %bb.f ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noundef !3
  %i.q = and i8 %i.p, 63
  %i.r = zext nneg i8 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, %i.f
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

end_hunk_0
