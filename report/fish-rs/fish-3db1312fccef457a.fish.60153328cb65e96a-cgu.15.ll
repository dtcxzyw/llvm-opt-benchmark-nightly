Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.15?download=true
inline.NumInlined: 2884
inline.NumDeleted: 1261
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6retainNCNvBV_27process_clean_after_markings0_0EBX_:bb.a
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ad = sub i64 %i.b, %.sroa.8.0.i              ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.8.0.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.15.0.i
  %i.ag = shl nuw nsw i64 %i.ad, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false), !noalias !100
  %i.ah = add i64 %i.ad, %.sroa.15.0.i
  store i64 %i.ah, ptr %i.a, align 8, !alias.scope !89, !noalias !101
  resume { ptr, i32 } %lpad.phi.i

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE10retain_mutNCINvB2_6retainNCNvBV_27process_clean_after_markings0_0E0EBX_.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8dedup_byNCINvB2_12dedup_by_keyNCNvNtNtBX_8builtins6disown6disowns0_0NtNtBX_9job_group10MaybeJobIdE0EBX_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16 ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.029 = phi i64 [ 1, %bb.b ], [ %i.m, %bb.d ] ; 5 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.029 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %.val11 = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16
  %.val12 = load ptr, ptr %i.h, align 8           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.j = tail call noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val12, i64 16
  %i.l = tail call noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.k)
  %.sroa.0.0.shrunk.i.i.i = icmp eq i32 %i.l, %i.j
  %i.m = add nuw nsw i64 %.sroa.0.029, 1          ; 5 uses
  br i1 %.sroa.0.0.shrunk.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.m, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.n = load ptr, ptr %i.g, align 8, !alias.scope !116, !nonnull !16, !noundef !16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !116, !noundef !16
  %i.p = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !noalias !116
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit unwind label %.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit: ; preds = %bb.f, %bb.e
  %i.r = icmp samesign ult i64 %i.m, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit
  %.sroa.12.1.lcssa = phi i64 [ %.sroa.0.029, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit ], [ %.sroa.12.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17 ]
  store i64 %.sroa.12.1.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17
  %.sroa.12.131 = phi i64 [ %.sroa.12.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17 ], [ %.sroa.0.029, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit ] ; 5 uses
  %.sroa.5.130 = phi i64 [ %.sroa.5.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17 ], [ %i.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit ] ; 5 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.130 ; 4 uses
  %i.t = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.12.131 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %.val = load ptr, ptr %i.s, align 8, !nonnull !16, !noundef !16
  %.val10 = load ptr, ptr %i.u, align 8           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.w = invoke noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.v)
          to label %.noexc14 unwind label %.loopexit

.noexc14:                                         ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.x = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.y = invoke noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.x)
          to label %bb.g unwind label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.a, %._crit_edge
  ret void

bb.g:                                             ; preds = %.noexc14
  %.sroa.0.0.shrunk.i.i.i13 = icmp eq i32 %i.y, %i.w
  br i1 %.sroa.0.0.shrunk.i.i.i13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i64, ptr %i.s, align 8
  store i64 %i.z, ptr %i.t, align 8
  %i.aa = add i64 %.sroa.12.131, 1
  %i.ab = add nuw nsw i64 %.sroa.5.130, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17

bb.i:                                             ; preds = %bb.g
  %i.ac = add nuw nsw i64 %.sroa.5.130, 1         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.ad = load ptr, ptr %i.s, align 8, !alias.scope !119, !nonnull !16, !noundef !16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !119, !noundef !16
  %i.af = add i64 %i.ae, -1                       ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8, !noalias !119
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17 unwind label %.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit17: ; preds = %bb.i, %bb.j, %bb.h
  %.sroa.5.2 = phi i64 [ %i.ab, %bb.h ], [ %i.ac, %bb.j ], [ %i.ac, %bb.i ] ; 2 uses
  %.sroa.12.2 = phi i64 [ %i.aa, %bb.h ], [ %.sroa.12.131, %bb.j ], [ %.sroa.12.131, %bb.i ] ; 2 uses
  %i.ah = icmp samesign ult i64 %.sroa.5.2, %i.b
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %bb.j, %.noexc14, %.lr.ph
  %.sroa.5.0.ph = phi i64 [ %.sroa.5.130, %.lr.ph ], [ %.sroa.5.130, %.noexc14 ], [ %i.ac, %bb.j ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.ph, %.loopexit ], [ %i.m, %.loopexit.split-lp ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %.sroa.12.131, %.loopexit ], [ %.sroa.0.029, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ai = sub i64 %i.b, %.sroa.5.0                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.12.0
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.0
  %i.al = shl nuw nsw i64 %i.ai, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %i.ak, i64 %i.al, i1 false), !noalias !120
  %i.am = add i64 %i.ai, %.sroa.12.0
  store i64 %i.am, ptr %i.a, align 8, !noalias !120
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit.thread
  %.sroa.0.038 = phi i64 [ 1, %bb.b ], [ %i.o, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit.thread ] ; 5 uses
  %i.g = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.0.038 ; 5 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val14 = load i64, ptr %i.h, align 8, !alias.scope !146, !noalias !147, !noundef !16 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 -8
  %.val16 = load i64, ptr %i.i, align 8, !alias.scope !147, !noalias !146, !noundef !16
  %i.j = icmp eq i64 %.val14, %.val16
  br i1 %i.j, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit.thread

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.g, i64 -16
  %.val15 = load ptr, ptr %i.k, align 8, !nonnull !16, !noundef !16
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val13 = load ptr, ptr %i.l, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.m = shl nuw nsw i64 %.val14, 2
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 4 %.val13, ptr nonnull readonly align 4 %.val15, i64 %i.m), !alias.scope !148, !noalias !149
  %i.n = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.n, label %bb.d, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit.thread

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.c, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit
  %i.o = add nuw nsw i64 %.sroa.0.038, 1          ; 2 uses
  %.not = icmp eq i64 %i.o, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit
  %.val19 = load i64, ptr %i.g, align 8, !range !19, !noundef !16 ; 2 uses
  %i.p = icmp sgt i64 %.val19, 0
  br i1 %i.p, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.d
  %i.q = shl nuw i64 %.val19, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !150
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.d, %bb.e
  %.sroa.5.039 = add nuw i64 %.sroa.0.038, 1      ; 2 uses
  %i.r = icmp ult i64 %.sroa.5.039, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit
  %.sroa.12.0.lcssa = phi i64 [ %.sroa.0.038, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ], [ %.sroa.12.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26 ]
  store i64 %.sroa.12.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26
  %.sroa.5.041 = phi i64 [ %.sroa.5.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26 ], [ %.sroa.5.039, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ] ; 2 uses
  %.sroa.12.040 = phi i64 [ %.sroa.12.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26 ], [ %.sroa.0.038, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ] ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.5.041 ; 4 uses
  %i.t = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.12.040 ; 3 uses
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.val = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.v = getelementptr i8, ptr %i.s, i64 16
  %.val10 = load i64, ptr %i.v, align 8, !alias.scope !146, !noalias !147, !noundef !16 ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 -8
  %.val12 = load i64, ptr %i.w, align 8, !alias.scope !147, !noalias !146, !noundef !16
  %i.x = icmp eq i64 %.val10, %.val12
  br i1 %i.x, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23.thread

.thread:                                          ; preds = %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit.thread, %bb.a, %._crit_edge
  ret void

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23: ; preds = %.lr.ph
  %i.y = getelementptr i8, ptr %i.t, i64 -16
  %.val11 = load ptr, ptr %i.y, align 8, !nonnull !16, !noundef !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.z = shl nuw nsw i64 %.val10, 2
  %bcmp.i.i.i.i.i22 = tail call i32 @bcmp(ptr nonnull readonly align 4 %.val, ptr nonnull readonly align 4 %.val11, i64 %i.z), !alias.scope !151, !noalias !152
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i22, 0
  br i1 %i.aa, label %bb.f, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23.thread

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23.thread: ; preds = %.lr.ph, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.ab = add i64 %.sroa.12.040, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26

bb.f:                                             ; preds = %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23
  %.val17 = load i64, ptr %i.s, align 8, !range !19, !noundef !16 ; 2 uses
  %i.ac = icmp sgt i64 %.val17, 0
  br i1 %i.ac, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26

bb.g:                                             ; preds = %bb.f
  %i.ad = shl nuw i64 %.val17, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !153
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit26: ; preds = %bb.g, %bb.f, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23.thread
  %.sroa.12.1 = phi i64 [ %i.ab, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecINtNtB9_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE5dedup0Cs8frGy5WneL6_4fish.exit23.thread ], [ %.sroa.12.040, %bb.f ], [ %.sroa.12.040, %bb.g ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.041, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE8dedup_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0EB21_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 6 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !noalias !167, !nonnull !16, !noundef !16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit.thread
  %.sroa.0.045 = phi i64 [ 1, %bb.b ], [ %i.t, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit.thread ] ; 5 uses
  %i.h = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.0.045 ; 6 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val17 = load ptr, ptr %i.i, align 8, !nonnull !16, !noundef !16
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val18 = load i64, ptr %i.j, align 8, !noundef !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.k = tail call { ptr, i64 } %i.g(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val17, i64 noundef %.val18), !noalias !167, !inline_history !156 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 1        ; 2 uses
  %.sroa.02.0.in.i = getelementptr i8, ptr %i.h, i64 -16
  %.sroa.02.0.i = load ptr, ptr %.sroa.02.0.in.i, align 8, !alias.scope !167, !nonnull !16, !noundef !16
  %.sroa.33.0.in.i = getelementptr i8, ptr %i.h, i64 -8
  %.sroa.33.0.i = load i64, ptr %.sroa.33.0.in.i, align 8, !alias.scope !167, !noundef !16
  %i.m = tail call { ptr, i64 } %i.g(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.02.0.i, i64 noundef %.sroa.33.0.i), !noalias !167, !inline_history !156 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 1
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit.thread

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit: ; preds = %bb.c
  %i.p = extractvalue { ptr, i64 } %i.k, 0
  %i.q = extractvalue { ptr, i64 } %i.m, 0
  %i.r = shl nuw i64 %i.l, 2
  %bcmp.i = tail call i32 @bcmp(ptr %i.p, ptr %i.q, i64 %i.r), !noalias !167
  %i.s = icmp eq i32 %bcmp.i, 0
  br i1 %i.s, label %bb.d, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit.thread

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit.thread: ; preds = %bb.c, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit
  %i.t = add nuw nsw i64 %.sroa.0.045, 1          ; 2 uses
  %.not = icmp eq i64 %i.t, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit
  %.val11 = load i64, ptr %i.h, align 8, !range !19, !noundef !16 ; 2 uses
  %i.u = icmp sgt i64 %.val11, 0
  br i1 %i.u, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.h, i64 8
  %.val12 = load ptr, ptr %i.v, align 8, !nonnull !16, !noundef !16
  %i.w = shl nuw i64 %.val11, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !168
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.d, %bb.e
  %.sroa.5.046 = add nuw i64 %.sroa.0.045, 1      ; 2 uses
  %i.x = icmp ult i64 %.sroa.5.046, %i.b
  br i1 %i.x, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit
  %.sroa.12.0.lcssa = phi i64 [ %.sroa.0.045, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ], [ %.sroa.12.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29 ]
  store i64 %.sroa.12.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29
  %.sroa.5.048 = phi i64 [ %.sroa.5.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29 ], [ %.sroa.5.046, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ] ; 3 uses
  %.sroa.12.047 = phi i64 [ %.sroa.12.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29 ], [ %.sroa.0.045, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit ] ; 5 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.5.048 ; 5 uses
  %i.z = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.12.047 ; 4 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 8       ; 2 uses
  %.val14 = load ptr, ptr %i.aa, align 8, !nonnull !16, !noundef !16
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val15 = load i64, ptr %i.ab, align 8, !noundef !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ac = invoke { ptr, i64 } %i.g(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14, i64 noundef %.val15)
          to label %.noexc unwind label %bb.h, !inline_history !156 ; 2 uses

.noexc:                                           ; preds = %.lr.ph
  %i.ad = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  %.sroa.02.0.in.i19 = getelementptr i8, ptr %i.z, i64 -16
  %.sroa.02.0.i20 = load ptr, ptr %.sroa.02.0.in.i19, align 8, !alias.scope !169, !nonnull !16, !noundef !16
  %.sroa.33.0.in.i21 = getelementptr i8, ptr %i.z, i64 -8
  %.sroa.33.0.i22 = load i64, ptr %.sroa.33.0.in.i21, align 8, !alias.scope !169, !noundef !16
  %i.ae = invoke { ptr, i64 } %i.g(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.02.0.i20, i64 noundef %.sroa.33.0.i22)
          to label %.noexc25 unwind label %bb.h, !inline_history !156 ; 2 uses

.noexc25:                                         ; preds = %.noexc
  %i.af = extractvalue { ptr, i64 } %i.ae, 1
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26.thread

.thread:                                          ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit.thread, %bb.a, %._crit_edge
  ret void

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26: ; preds = %.noexc25
  %i.ah = extractvalue { ptr, i64 } %i.ac, 0
  %i.ai = extractvalue { ptr, i64 } %i.ae, 0
  %i.aj = shl nuw i64 %i.ad, 2
  %bcmp.i24 = tail call i32 @bcmp(ptr %i.ah, ptr %i.ai, i64 %i.aj), !noalias !169
  %i.ak = icmp eq i32 %bcmp.i24, 0
  br i1 %i.ak, label %bb.f, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26.thread

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26.thread: ; preds = %.noexc25, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.al = add i64 %.sroa.12.047, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29

bb.f:                                             ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26
  %.val = load i64, ptr %i.y, align 8, !range !19, !noundef !16 ; 2 uses
  %i.am = icmp sgt i64 %.val, 0
  br i1 %i.am, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29

bb.g:                                             ; preds = %bb.f
  %.val10 = load ptr, ptr %i.aa, align 8, !nonnull !16, !noundef !16
  %i.an = shl nuw i64 %.val, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !170
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit29: ; preds = %bb.g, %bb.f, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26.thread
  %.sroa.12.1 = phi i64 [ %i.al, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts0_0B7_.exit26.thread ], [ %.sroa.12.047, %bb.f ], [ %.sroa.12.047, %bb.g ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.048, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph, %.noexc
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = sub nuw nsw i64 %i.b, %.sroa.5.048      ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y, i64 %i.aq, i1 false), !noalias !171
  %i.ar = add i64 %i.ap, %.sroa.12.047
  store i64 %i.ar, ptr %i.a, align 8, !noalias !171
  resume { ptr, i32 } %i.ao
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE6retainNCNvNtBJ_10parse_util19detect_parse_errors0EBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !187, !noalias !188, !noundef !16 ; 6 uses
  %i.c = icmp ult i64 %i.b, 192153584101141163
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE10retain_mutNCINvB2_6retainNCNvNtBJ_10parse_util19detect_parse_errors0E0EBJ_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !187, !noalias !188, !nonnull !16, !noundef !16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.i
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ 0, %.preheader.i ] ; 5 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.sroa.0.0.i ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = tail call noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants14ParseErrorCodeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 2), !noalias !189
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw nsw i64 %.sroa.0.0.i, 1          ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.b
  br i1 %i.k, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE10retain_mutNCINvB2_6retainNCNvNtBJ_10parse_util19detect_parse_errors0E0EBJ_.exit, label %bb.b

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 1, !noalias !190
  %.val12.i = load i64, ptr %i.g, align 8, !noalias !189 ; 2 uses
  %i.l = icmp eq i64 %.val12.i, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.g, i64 8
  %.val13.i = load ptr, ptr %i.m, align 8, !noalias !189, !nonnull !16, !noundef !16
  %i.n = shl nuw i64 %.val12.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !191
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.8.039.i = add nuw nsw i64 %.sroa.0.0.i, 1 ; 2 uses
  %i.o = icmp samesign ult i64 %.sroa.8.039.i, %i.b
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit17.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit.i
  %.sroa.15.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit.i ], [ %.sroa.15.1.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit17.i ]
  store i64 %.sroa.15.0.lcssa.i, ptr %i.a, align 8, !alias.scope !187, !noalias !188
  br label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE10retain_mutNCINvB2_6retainNCNvNtBJ_10parse_util19detect_parse_errors0E0EBJ_.exit

.lr.ph.i:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit17.i
  %.sroa.8.041.i = phi i64 [ %.sroa.8.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit17.i ], [ %.sroa.8.039.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit.i ] ; 3 uses
  %.sroa.15.040.i = phi i64 [ %.sroa.15.1.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit17.i ], [ %.sroa.0.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit.i ] ; 6 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.sroa.8.041.i ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = invoke noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants14ParseErrorCodeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 2)
          to label %.noexc.i unwind label %bb.i, !noalias !189

.noexc.i:                                         ; preds = %.lr.ph.i
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.noexc.i
  store i8 1, ptr %1, align 1, !noalias !192
  %.val10.i = load i64, ptr %i.p, align 8, !noalias !189 ; 2 uses
  %i.s = icmp eq i64 %.val10.i, 0
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit17.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.p, i64 8
  %.val11.i = load ptr, ptr %i.t, align 8, !noalias !189, !nonnull !16, !noundef !16
  %i.u = shl nuw i64 %.val10.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !193
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit17.i

bb.h:                                             ; preds = %.noexc.i
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.sroa.15.040.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !189
  %i.w = add i64 %.sroa.15.040.i, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit17.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_.exit17.i: ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.15.1.i = phi i64 [ %i.w, %bb.h ], [ %.sroa.15.040.i, %bb.f ], [ %.sroa.15.040.i, %bb.g ] ; 2 uses
  %.sroa.8.0.i = add nuw nsw i64 %.sroa.8.041.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.8.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = sub nuw nsw i64 %i.b, %.sroa.8.041.i     ; 2 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.sroa.15.040.i
  %i.aa = mul nuw nsw i64 %i.y, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.p, i64 %i.aa, i1 false), !noalias !194
  %i.ab = add i64 %i.y, %.sroa.15.040.i
  store i64 %i.ab, ptr %i.a, align 8, !alias.scope !187, !noalias !195
  resume { ptr, i32 } %i.x

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE10retain_mutNCINvB2_6retainNCNvNtBJ_10parse_util19detect_parse_errors0E0EBJ_.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish4proc3PidE6retainNCNvBH_18reap_disowned_pids0EBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !202, !noundef !16 ; 6 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish4proc3PidE10retain_mutNCINvB2_6retainNCNvBH_18reap_disowned_pids0E0EBJ_.exit, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !202, !nonnull !16, !noundef !16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader21.i
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %.preheader21.i ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %.val9.i = load i32, ptr %i.g, align 4, !range !20, !noalias !202, !noundef !16
end_hunk_0
begin_hunk_1_@_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE6retainNCNvMs8_NtBJ_8completeNtB1w_9Completer28perform_for_commandline_impls_0EBJ_:bb.a
  %.val.i.prol = load i8, ptr %i.m, align 1, !range !297, !noalias !296, !noundef !16
  %.not21.i.prol = icmp eq i8 %.val.i.prol, 10
  br i1 %.not21.i.prol, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.prol
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.0.0.i.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.n, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i64 20, i1 false), !noalias !296
  %i.o = add i64 %.sroa.0.0.i.lcssa, 1
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.c, %.lr.ph.i.prol
  %.sroa.13.1.i.prol = phi i64 [ %i.o, %bb.c ], [ %.sroa.0.0.i.lcssa, %.lr.ph.i.prol ] ; 2 uses
  %.sroa.7.0.i.prol = add nuw nsw i64 %.sroa.7.025.i.lcssa, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.13.1.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %.sroa.13.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.sroa.7.027.i.unr = phi i64 [ %.sroa.7.025.i.lcssa, %.lr.ph.i.preheader ], [ %.sroa.7.0.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.sroa.13.026.i.unr = phi i64 [ %.sroa.0.0.i.lcssa, %.lr.ph.i.preheader ], [ %.sroa.13.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.p = icmp eq i64 %i.b, %.neg
  br i1 %i.p, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.7.025.i
  %i.r = getelementptr i8, ptr %i.q, i64 17
  %.val9.i.1 = load i8, ptr %i.r, align 1, !range !297, !noalias !296, !noundef !16
  %.not.i.1 = icmp eq i8 %.val9.i.1, 10
  %.sroa.7.025.i.1 = or disjoint i64 %.sroa.0.0.i, 2 ; 3 uses
  br i1 %.not.i.1, label %.preheader.i, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.7.025.i.1
  %i.t = getelementptr i8, ptr %i.s, i64 17
  %.val9.i.2 = load i8, ptr %i.t, align 1, !range !297, !noalias !296, !noundef !16
  %.not.i.2 = icmp eq i8 %.val9.i.2, 10
  %.sroa.7.025.i.2 = or disjoint i64 %.sroa.0.0.i, 3 ; 3 uses
  br i1 %.not.i.2, label %.preheader.i, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.7.025.i.2
  %i.v = getelementptr i8, ptr %i.u, i64 17
  %.val9.i.3 = load i8, ptr %i.v, align 1, !range !297, !noalias !296, !noundef !16
  %.not.i.3 = icmp eq i8 %.val9.i.3, 10
  %.sroa.7.025.i.3 = add nuw nsw i64 %.sroa.0.0.i, 4 ; 3 uses
  br i1 %.not.i.3, label %.preheader.i, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit.loopexit.unr-lcssa, label %bb.b

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i.lcssa, %.preheader.i ], [ %.sroa.13.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.13.1.i.1, %bb.j ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !296
  br label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %.sroa.7.027.i = phi i64 [ %.sroa.7.0.i.1, %bb.j ], [ %.sroa.7.027.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.13.026.i = phi i64 [ %.sroa.13.1.i.1, %bb.j ], [ %.sroa.13.026.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.7.027.i ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 17
  %.val.i = load i8, ptr %i.x, align 1, !range !297, !noalias !296, !noundef !16
  %.not21.i = icmp eq i8 %.val.i, 10
  br i1 %.not21.i, label %.lr.ph.i.1, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.13.026.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.y, ptr noundef nonnull align 4 dereferenceable(20) %i.w, i64 20, i1 false), !noalias !296
  %i.z = add i64 %.sroa.13.026.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.h, %.lr.ph.i
  %.sroa.13.1.i = phi i64 [ %i.z, %bb.h ], [ %.sroa.13.026.i, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.7.027.i ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 37
  %.val.i.1 = load i8, ptr %i.ab, align 1, !range !297, !noalias !296, !noundef !16
  %.not21.i.1 = icmp eq i8 %.val.i.1, 10
  br i1 %.not21.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ad = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.13.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ad, ptr noundef nonnull align 4 dereferenceable(20) %i.ac, i64 20, i1 false), !noalias !296
  %i.ae = add i64 %.sroa.13.1.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.1
  %.sroa.13.1.i.1 = phi i64 [ %i.ae, %bb.i ], [ %.sroa.13.1.i, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.7.0.i.1 = add nuw nsw i64 %.sroa.7.027.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %.sroa.7.0.i.1, %i.b
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit.loopexit.unr-lcssa, %.preheader22.i
  %.sroa.0.0.i.epil.init = phi i64 [ 0, %.preheader22.i ], [ %.sroa.7.025.i.3, %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.epil.preheader
  %.sroa.0.0.i.epil = phi i64 [ %.sroa.7.025.i.epil, %bb.l ], [ %.sroa.0.0.i.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.l ], [ 0, %.epil.preheader ]
  %i.af = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %.sroa.0.0.i.epil
  %i.ag = getelementptr i8, ptr %i.af, i64 17
  %.val9.i.epil = load i8, ptr %i.ag, align 1, !range !297, !noalias !296, !noundef !16
  %.not.i.epil = icmp eq i8 %.val9.i.epil, 10
  %.sroa.7.025.i.epil = add nuw nsw i64 %.sroa.0.0.i.epil, 1 ; 2 uses
  br i1 %.not.i.epil, label %.preheader.i, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit, label %bb.k, !llvm.loop !295

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit: ; preds = %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish9tokenizer3TokE10retain_mutNCINvB2_6retainNCNvMs8_NtBJ_8completeNtB1Q_9Completer28perform_for_commandline_impls_0E0EBJ_.exit.loopexit.unr-lcssa, %bb.l, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs8frGy5WneL6_4fish(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 2 uses
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

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit.thread
  %.sroa.0.036 = phi i64 [ 1, %bb.b ], [ %i.o, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit.thread ] ; 5 uses
  %i.g = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.0.036 ; 5 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val18 = load i64, ptr %i.h, align 8, !noundef !16 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 -8
  %.val20 = load i64, ptr %i.i, align 8, !noundef !16
  %i.j = icmp eq i64 %.val18, %.val20
  br i1 %i.j, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit.thread

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.g, i64 -16
  %.val19 = load ptr, ptr %i.k, align 8, !nonnull !16, !noundef !16
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val17 = load ptr, ptr %i.l, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.m = shl nuw i64 %.val18, 2
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val17, ptr nonnull readonly %.val19, i64 %i.m)
  %i.n = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.n, label %bb.d, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit.thread

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.c, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit
  %i.o = add nuw nsw i64 %.sroa.0.036, 1          ; 2 uses
  %.not = icmp eq i64 %i.o, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit
  %.val11 = load i64, ptr %i.g, align 8           ; 2 uses
  %i.p = icmp eq i64 %.val11, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = shl nuw i64 %.val11, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !302
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.d, %bb.e
  %.sroa.5.037 = add nuw i64 %.sroa.0.036, 1      ; 2 uses
  %i.r = icmp ult i64 %.sroa.5.037, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %.sroa.12.0.lcssa = phi i64 [ %.sroa.0.036, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit ], [ %.sroa.12.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24 ]
  store i64 %.sroa.12.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24
  %.sroa.5.039 = phi i64 [ %.sroa.5.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24 ], [ %.sroa.5.037, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit ] ; 2 uses
  %.sroa.12.038 = phi i64 [ %.sroa.12.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24 ], [ %.sroa.0.036, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit ] ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.5.039 ; 4 uses
  %i.t = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.12.038 ; 3 uses
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.val13 = load ptr, ptr %i.u, align 8           ; 3 uses
  %i.v = getelementptr i8, ptr %i.s, i64 16
  %.val14 = load i64, ptr %i.v, align 8, !noundef !16 ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 -8
  %.val16 = load i64, ptr %i.w, align 8, !noundef !16
  %i.x = icmp eq i64 %.val14, %.val16
  br i1 %i.x, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23.thread

.thread:                                          ; preds = %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit.thread, %bb.a, %._crit_edge
  ret void

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23: ; preds = %.lr.ph
  %i.y = getelementptr i8, ptr %i.t, i64 -16
  %.val15 = load ptr, ptr %i.y, align 8, !nonnull !16, !noundef !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.z = shl nuw i64 %.val14, 2
  %bcmp.i.i.i.i22 = tail call i32 @bcmp(ptr nonnull readonly %.val13, ptr nonnull readonly %.val15, i64 %i.z)
  %i.aa = icmp eq i32 %bcmp.i.i.i.i22, 0
  br i1 %i.aa, label %bb.f, label %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23.thread

_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23.thread: ; preds = %.lr.ph, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.ab = add i64 %.sroa.12.038, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24

bb.f:                                             ; preds = %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23
  %.val = load i64, ptr %i.s, align 8             ; 2 uses
  %i.ac = icmp eq i64 %.val, 0
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = shl nuw i64 %.val, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !303
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit24: ; preds = %bb.g, %bb.f, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23.thread
  %.sroa.12.1 = phi i64 [ %i.ab, %_RNCNvMs5_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5dedup0Cs8frGy5WneL6_4fish.exit23.thread ], [ %.sroa.12.038, %bb.f ], [ %.sroa.12.038, %bb.g ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.039, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 3 uses
  %i.c = icmp ult i64 %i.b, 192153584101141163
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range9RangeFromjEECs8frGy5WneL6_4fish(i64 noundef %2, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.f
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

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE5drainNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 3 uses
  %i.c = icmp ult i64 %i.b, 192153584101141163
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs8frGy5WneL6_4fish(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.f
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

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BH_NtBH_10BindingSet5clears_0EBL_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !311, !noalias !312, !noundef !16 ; 6 uses
  %i.c = icmp ult i64 %i.b, 82351536043346213
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE10retain_mutNCINvB2_6retainNCNvMs6_BH_NtBH_10BindingSet5clears_0E0EBL_.exit, label %.preheader37.i

.preheader37.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !311, !noalias !312, !nonnull !16, !noundef !16 ; 6 uses
  %i.g = load ptr, ptr %1, align 8, !noalias !313, !nonnull !16, !align !24, !noundef !16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !noalias !313, !align !22, !noundef !16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread31.i, label %.preheader37.split.i, !prof !314

.preheader37.split.i:                             ; preds = %.preheader37.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !313 ; 2 uses
  %i.k = shl nuw i64 %i.j, 2
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread.i, %.preheader37.split.i
  %.sroa.0.0.i = phi i64 [ %i.p, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread.i ], [ 0, %.preheader37.split.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [112 x i8], ptr %i.f, i64 %.sroa.0.0.i ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 64
  %.val13.i = load i64, ptr %i.m, align 8, !noalias !313
  %i.n = icmp eq i64 %i.j, %.val13.i
  br i1 %i.n, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread.i

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.i: ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.l, i64 56
  %.val12.i = load ptr, ptr %i.o, align 8, !noalias !313, !nonnull !16, !noundef !16
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.h, ptr nonnull readonly %.val12.i, i64 %i.k), !noalias !313
  %.not.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread31.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread.i, !prof !25

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread.i: ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.i, %bb.b
  %i.p = add nuw nsw i64 %.sroa.0.0.i, 1          ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.b
  br i1 %i.q, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE10retain_mutNCINvB2_6retainNCNvMs6_BH_NtBH_10BindingSet5clears_0E0EBL_.exit, label %bb.b

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread31.i: ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.i, %.preheader37.i
  %.us-phi.i = phi i64 [ 0, %.preheader37.i ], [ %.sroa.0.0.i, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.i ] ; 4 uses
  %.us-phi47.i = phi ptr [ %i.f, %.preheader37.i ], [ %i.l, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.i ]
  %i.r = add nuw nsw i64 %.us-phi.i, 1            ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %.us-phi47.i)
          to label %.preheader.i unwind label %.loopexit.split-lp.i, !noalias !313

.preheader.i:                                     ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread31.i
  %i.s = icmp samesign ult i64 %i.r, %i.b
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.d, %.preheader.i
  %.sroa.15.1.lcssa.i = phi i64 [ %.us-phi.i, %.preheader.i ], [ %.sroa.15.2.i, %bb.d ]
  store i64 %.sroa.15.1.lcssa.i, ptr %i.a, align 8, !alias.scope !311, !noalias !312
  br label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE10retain_mutNCINvB2_6retainNCNvMs6_BH_NtBH_10BindingSet5clears_0E0EBL_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
  %.sroa.8.150.i = phi i64 [ %.sroa.8.2.i, %bb.d ], [ %i.r, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.15.149.i = phi i64 [ %.sroa.15.2.i, %bb.d ], [ %.us-phi.i, %.lr.ph.i.preheader ] ; 4 uses
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %i.f, i64 %.sroa.8.150.i ; 4 uses
  %i.v = getelementptr i8, ptr %i.u, i64 56
  %.val9.i = load ptr, ptr %i.v, align 8, !noalias !313 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 64
  %.val10.i = load i64, ptr %i.w, align 8, !noalias !313 ; 2 uses
  %i.x = load ptr, ptr %i.g, align 8, !noalias !313, !align !22, !noundef !16 ; 2 uses
  %.not.i.i15.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i15.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread34.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = load i64, ptr %i.t, align 8, !noalias !313
  %i.z = icmp eq i64 %i.y, %.val10.i
  br i1 %i.z, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread.i

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  %i.aa = shl nuw i64 %.val10.i, 2
  %bcmp.i.i17.i = tail call i32 @bcmp(ptr nonnull %i.x, ptr nonnull readonly %.val9.i, i64 %i.aa), !noalias !313
  %.not36.i = icmp eq i32 %bcmp.i.i17.i, 0
  br i1 %.not36.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread34.i, label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread.i

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread34.i: ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.i, %.lr.ph.i
  %i.ab = add nuw nsw i64 %.sroa.8.150.i, 1       ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.u)
          to label %bb.d unwind label %.loopexit.i, !noalias !313

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread.i: ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.i, %bb.c
  %i.ac = getelementptr inbounds nuw [112 x i8], ptr %i.f, i64 %.sroa.15.149.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ac, ptr noundef nonnull align 8 dereferenceable(112) %i.u, i64 112, i1 false), !noalias !313
  %i.ad = add i64 %.sroa.15.149.i, 1
  %i.ae = add nuw nsw i64 %.sroa.8.150.i, 1
  br label %bb.d

bb.d:                                             ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread.i, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread34.i
  %.sroa.15.2.i = phi i64 [ %i.ad, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread.i ], [ %.sroa.15.149.i, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread34.i ] ; 2 uses
  %.sroa.8.2.i = phi i64 [ %i.ae, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread.i ], [ %i.ab, %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread34.i ] ; 2 uses
  %i.af = icmp samesign ult i64 %.sroa.8.2.i, %i.b
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i

.loopexit.i:                                      ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit18.thread34.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp.i:                             ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread31.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.15.0.i = phi i64 [ %.sroa.15.149.i, %.loopexit.i ], [ %.us-phi.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.r, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ag = sub i64 %i.b, %.sroa.8.0.i              ; 2 uses
  %i.ah = getelementptr inbounds nuw [112 x i8], ptr %i.f, i64 %.sroa.8.0.i
  %i.ai = getelementptr inbounds nuw [112 x i8], ptr %i.f, i64 %.sroa.15.0.i
  %i.aj = mul nuw nsw i64 %i.ag, 112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull align 8 %i.ah, i64 %i.aj, i1 false), !noalias !315
  %i.ak = add i64 %i.ag, %.sroa.15.0.i
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !311, !noalias !316
  resume { ptr, i32 } %lpad.phi.i

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE10retain_mutNCINvB2_6retainNCNvMs6_BH_NtBH_10BindingSet5clears_0E0EBL_.exit: ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE6retainNCNvMs6_BJ_NtBJ_10BindingSet5clears_0E0BN_.exit.thread.i, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 3 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs8frGy5WneL6_4fish(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
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

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE5drainNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 3 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs8frGy5WneL6_4fish(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
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

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeccE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 3 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs8frGy5WneL6_4fish(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
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

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs8frGy5WneL6_4fish(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
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
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeciE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 7 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.022 = phi i64 [ 1, %bb.b ], [ %.sroa.5.023, %bb.e ] ; 8 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %.val11 = load i64, ptr %i.g, align 8, !noundef !16
  %.val12 = load i64, ptr %i.h, align 8, !noundef !16
  %i.i = icmp eq i64 %.val11, %.val12
  %.sroa.5.023 = add nuw i64 %.sroa.0.022, 1      ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp ult i64 %.sroa.5.023, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.023
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %.val.prol = load i64, ptr %i.m, align 8, !noundef !16 ; 2 uses
  %.val10.prol = load i64, ptr %i.o, align 8, !noundef !16
  %i.p = icmp eq i64 %.val.prol, %.val10.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  store i64 %.val.prol, ptr %i.n, align 8
  %i.q = add i64 %.sroa.0.022, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.q, %bb.d ], [ %.sroa.0.022, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw i64 %.sroa.0.022, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.025.unr = phi i64 [ %.sroa.5.023, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.024.unr = phi i64 [ %.sroa.0.022, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.l, %indvar
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.023, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.022, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.025 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.024 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.024.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.t = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.024 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %.val = load i64, ptr %i.s, align 8, !noundef !16 ; 2 uses
  %.val10 = load i64, ptr %i.u, align 8, !noundef !16
  %i.v = icmp eq i64 %.val, %.val10
  br i1 %i.v, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i64 %.val, ptr %i.t, align 8
  %i.w = add i64 %.sroa.11.024, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.w, %bb.f ], [ %.sroa.11.024, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %.val.1 = load i64, ptr %i.y, align 8, !noundef !16 ; 2 uses
  %.val10.1 = load i64, ptr %i.aa, align 8, !noundef !16
  %i.ab = icmp eq i64 %.val.1, %.val10.1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  store i64 %.val.1, ptr %i.z, align 8
  %i.ac = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.025, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeclE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 3 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs8frGy5WneL6_4fish(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
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

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 3 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs8frGy5WneL6_4fish(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
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

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range7RangeTojEECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 3 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs8frGy5WneL6_4fish(i64 noundef %2, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
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

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtB1Z_5slice4iter4IterBG_EEEB12_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEENtNtNtB8_6traits8iterator8Iterator9size_hintB24_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !26, !noundef !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !321, !noundef !16 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !27, !alias.scope !321, !noundef !16
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EE7reserveB10_.exit, !prof !21

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.j, align 8
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EE7reserveB10_.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EE7reserveB10_.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !322
  store ptr %i.j, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2E_8for_each4callB1s_NCINvMsk_NtB1x_3vecINtB3U_3VecB1s_E14extend_trustedBP_E0E0EB25_(ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !322
  ret void

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterRBZ_ENCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse19argparse_parse_args0EEB3t_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
end_hunk_1
begin_hunk_2_@_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VeciE14extend_trustedINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveiEECs8frGy5WneL6_4fish:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.g = load i64, ptr %1, align 8, !alias.scope !398, !noalias !399, !noundef !16 ; 7 uses
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !400, !noalias !401, !noundef !16 ; 6 uses
  %.not.i = icmp sgt i64 %i.g, %i.h
  br i1 %.not.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread, label %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit

_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.i = sub i64 %i.h, %i.g                       ; 3 uses
  %.not = icmp eq i64 %i.i, -1
  %i.j = add nuw i64 %i.i, 1
  br i1 %.not, label %bb.e, label %bb.c, !prof !402

bb.c:                                             ; preds = %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !403, !noundef !16 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !range !27, !alias.scope !403, !noundef !16
  %i.n = sub i64 %i.m, %i.l
  %.not27 = icmp ult i64 %i.i, %i.n
  br i1 %.not27, label %.preheader.i.i.i, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 8)
  br label %.preheader.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !16
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveiENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1S_3VeciE14extend_trustedB3_E0ECs8frGy5WneL6_4fish.exit

.preheader.i.i.i:                                 ; preds = %bb.d, %bb.c
  %.in26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %.in26, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.r = load i64, ptr %i.k, align 8, !noundef !16 ; 4 uses
  %i.s = icmp slt i64 %i.g, %i.h
  br i1 %i.s, label %.lr.ph.i.i.i.preheader, label %._crit_edge16.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader.i.i.i
  %i.t = sub i64 %i.h, %i.g                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.t, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.t, -4                       ; 4 uses
  %i.u = add i64 %i.r, %n.vec                     ; 2 uses
  %i.v = add i64 %i.g, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %i.w = getelementptr [8 x i8], ptr %i.q, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x i64> %vec.ind, ptr %i.x, align 8, !noalias !404
  store <2 x i64> %step.add, ptr %i.y, align 8, !noalias !404
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !386

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge16.i.i.i, label %.lr.ph.i.i.i.preheader29

.lr.ph.i.i.i.preheader29:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.u, %middle.block ]
  %.ph30 = phi i64 [ %i.g, %.lr.ph.i.i.i.preheader ], [ %i.v, %middle.block ]
  br label %.lr.ph.i.i.i

._crit_edge16.i.i.i:                              ; preds = %.lr.ph.i.i.i, %middle.block, %.preheader.i.i.i
  %.sroa.5.0.i.i = phi i64 [ %i.r, %.preheader.i.i.i ], [ %i.u, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.5.0.i.i
  store i64 %i.h, ptr %i.aa, align 8, !noalias !405
  %i.ab = add i64 %.sroa.5.0.i.i, 1
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveiENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1S_3VeciE14extend_trustedB3_E0ECs8frGy5WneL6_4fish.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader29, %.lr.ph.i.i.i
  %i.ac = phi i64 [ %i.ag, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader29 ] ; 2 uses
  %i.ad = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %.ph30, %.lr.ph.i.i.i.preheader29 ] ; 2 uses
  %i.ae = add nsw i64 %i.ad, 1                    ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ac
  store i64 %i.ad, ptr %i.af, align 8, !noalias !404
  %i.ag = add i64 %i.ac, 1                        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ae, %i.h
  br i1 %exitcond.not.i.i.i, label %._crit_edge16.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !393

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveiENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1S_3VeciE14extend_trustedB3_E0ECs8frGy5WneL6_4fish.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread18, %._crit_edge16.i.i.i
  %i.ah = phi ptr [ %i.k, %._crit_edge16.i.i.i ], [ %i.o, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread ], [ %i.d, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread18 ]
  %storemerge.i.i = phi i64 [ %i.ab, %._crit_edge16.i.i.i ], [ %i.p, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread ], [ %i.e, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread18 ]
  store i64 %storemerge.i.i, ptr %i.ah, align 8, !noalias !406
  ret void

bb.e:                                             ; preds = %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VeciE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB17_3ops5range14RangeInclusiveiEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !17, !alias.scope !421, !noalias !422, !noundef !16
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.f = load i64, ptr %1, align 8, !alias.scope !425, !noalias !426, !noundef !16 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !427, !noalias !428, !noundef !16 ; 2 uses
  %.not.i.i = icmp sgt i64 %i.f, %i.g
  br i1 %.not.i.i, label %.thread, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusiveiEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit

.thread:                                          ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusiveiEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.i = sub i64 %i.g, %i.f                       ; 3 uses
  %.not = icmp eq i64 %i.i, -1
  %i.j = add nuw i64 %i.i, 1
  br i1 %.not, label %bb.e, label %bb.c, !prof !429

bb.c:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusiveiEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !430, !noundef !16 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !range !27, !alias.scope !430, !noundef !16
  %i.n = sub i64 %i.m, %i.l
  %.not11 = icmp ult i64 %i.i, %i.n
  br i1 %.not11, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 8)
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit: ; preds = %.thread, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !16, !noundef !16
  %i.r = load i64, ptr %i.o, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !431
  store ptr %i.o, ptr %i.a, align 8, !noalias !432
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !432
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.54.0..sroa_idx, align 8, !noalias !432
  call void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevINtNtNtBb_3ops5range14RangeInclusiveiEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4calliNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2M_3VeciE14extend_trustedBM_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !431
  ret void

bb.e:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusiveiEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.a = load i64, ptr %0, align 8, !range !31, !alias.scope !446, !noundef !16
  switch i64 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i [
    i64 2, label %bb.b
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !448 ; 2 uses
  %i.c = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !448, !nonnull !16, !noundef !16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !449
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load i64, ptr %i.e, align 8, !alias.scope !446 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !446, !nonnull !16, !noundef !16
  %i.h = shl nuw i64 %.val.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !450
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.a = load i64, ptr %0, align 8, !range !31, !alias.scope !465, !noundef !16
  switch i64 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i [
    i64 2, label %bb.b
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !467 ; 2 uses
  %i.c = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !467, !nonnull !16, !noundef !16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !468
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load i64, ptr %i.e, align 8, !alias.scope !465 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !465, !nonnull !16, !noundef !16
  %i.h = shl nuw i64 %.val.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !469
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.j = load i64, ptr %i.i, align 8, !range !31, !alias.scope !471, !noundef !16
  switch i64 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.1 [
    i64 2, label %bb.h
    i64 3, label %bb.f
  ]

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.1 = load i64, ptr %i.k, align 8, !alias.scope !471 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.1, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.1 = load ptr, ptr %i.m, align 8, !alias.scope !471, !nonnull !16, !noundef !16
  %i.n = shl nuw i64 %.val.i.i.1, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.1, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !472
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.1

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %.val.i.i.i.1 = load i64, ptr %i.o, align 8, !alias.scope !474 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i.i.1, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i.1 = load ptr, ptr %i.q, align 8, !alias.scope !474, !nonnull !16, !noundef !16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.1, i64 noundef %.val.i.i.i.1, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !475
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.1: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs8frGy5WneL6_4fish6reader6reader10ReaderDataEEEB1w_(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 1544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %.val4.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !637 ; 2 uses
  %i.b = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 1552
  %.val5.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !637, !nonnull !16, !noundef !16
  %i.d = shl nuw i64 %.val4.i.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !638
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 1568
  %.val.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !637 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader12ReaderConfigEBH_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 1576
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !637, !nonnull !16, !noundef !16
  %i.h = shl nuw i64 %.val.i.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !639
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader12ReaderConfigEBH_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader12ReaderConfigEBH_.exit.i.i: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line12EditableLineEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.0.val)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 184
  %.val23.i.i = load i64, ptr %i.i, align 8, !alias.scope !640 ; 2 uses
  %i.j = icmp eq i64 %.val23.i.i, 0
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i14.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader12ReaderConfigEBH_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 192
  %.val24.i.i = load ptr, ptr %i.k, align 8, !alias.scope !640, !nonnull !16, !noundef !16
  %i.l = shl nuw i64 %.val23.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !641
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i14.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i14.i: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader12ReaderConfigEBH_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 208
  %.val25.i.i = load i64, ptr %i.m, align 8, !alias.scope !640 ; 2 uses
  %i.n = icmp eq i64 %.val25.i.i, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit29.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i14.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 216
  %.val26.i.i = load ptr, ptr %i.o, align 8, !alias.scope !640, !nonnull !16, !noundef !16
  %i.p = shl nuw i64 %.val25.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val26.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !642
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit29.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit29.i.i: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i14.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 232
  %.val19.i.i = load i64, ptr %i.q, align 8, !alias.scope !640 ; 2 uses
  %i.r = icmp eq i64 %.val19.i.i, 0
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit29.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 240
  %.val20.i.i = load ptr, ptr %i.s, align 8, !alias.scope !640, !nonnull !16, !noundef !16
  %i.t = shl nuw i64 %.val19.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20.i.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !643
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31.i.i: ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit29.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 256
  %.val15.i.i = load i64, ptr %i.u, align 8, !alias.scope !640 ; 2 uses
  %i.v = icmp eq i64 %.val15.i.i, 0
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit33.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 264
  %.val16.i.i = load ptr, ptr %i.w, align 8, !alias.scope !640, !nonnull !16, !noundef !16
  %i.x = shl nuw i64 %.val15.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16.i.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !644
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit33.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit33.i.i: ; preds = %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 280
  %.val11.i.i = load i64, ptr %i.y, align 8, !alias.scope !640 ; 2 uses
  %i.z = icmp eq i64 %.val11.i.i, 0
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit35.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit33.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 288
  %.val12.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !640, !nonnull !16, !noundef !16
  %i.ab = shl nuw i64 %.val11.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !645
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit35.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit35.i.i: ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit33.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val, i64 304
  %.val.i15.i = load i64, ptr %i.ac, align 8, !alias.scope !640 ; 2 uses
  %i.ad = icmp eq i64 %.val.i15.i, 0
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader10LayoutDataEBH_.exit.i, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit35.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 312
  %.val8.i16.i = load ptr, ptr %i.ae, align 8, !alias.scope !640, !nonnull !16, !noundef !16
  %i.af = shl nuw i64 %.val.i15.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i16.i, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !646
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader10LayoutDataEBH_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader10LayoutDataEBH_.exit.i: ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit35.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.val, i64 368
  %.val61.i.i = load i64, ptr %i.ag, align 8, !alias.scope !647 ; 2 uses
  %i.ah = icmp eq i64 %.val61.i.i, 0
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader14AutosuggestionEBH_.exit67.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader10LayoutDataEBH_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.val, i64 376
  %.val62.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !647, !nonnull !16, !noundef !16
  %i.aj = shl nuw i64 %.val61.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val62.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !648
end_hunk_2
