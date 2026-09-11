Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.10?download=true
inline.NumInlined: 122
inline.NumDeleted: 84
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [31 x i8] c"Missing Mach-O linkedit segment", align 1
@1 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs8aoZCP6pRcV_7objdump, ptr @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs8aoZCP6pRcV_7objdump, ptr @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs8aoZCP6pRcV_7objdump }>, align 8
@_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN = external local_unnamed_addr global { { { ptr } } }
@2 = private unnamed_addr constant [26 x i8] c"Invalid ELF note alignment", align 1
@3 = private unnamed_addr constant [23 x i8] c"Invalid ELF note descsz", align 1
@4 = private unnamed_addr constant [23 x i8] c"Invalid ELF note namesz", align 1
@5 = private unnamed_addr constant [21 x i8] c"ELF note is too short", align 1
@6 = private unnamed_addr constant [32 x i8] c"Invalid Mach-O load command size", align 1
@7 = private unnamed_addr constant [34 x i8] c"Invalid Mach-O load command header", align 1
@8 = private unnamed_addr constant [27 x i8] c"Invalid Mach-O command size", align 1
@9 = private unnamed_addr constant [31 x i8] c"Invalid dylib load command size", align 1
@10 = private unnamed_addr constant [34 x i8] c"Invalid load command string offset", align 1
@11 = private unnamed_addr constant [37 x i8] c"Invalid Mach-O symbol library ordinal", align 1
@12 = private unnamed_addr constant [33 x i8] c"Invalid Mach-O bind dylib ordinal", align 1

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsG258MDvU3F_3std2rt10lang_startuECs8aoZCP6pRcV_7objdump(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortTymjyReENvYBT_NtNtB8_3cmp10PartialOrd2ltECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTymjyReE7reverseCs8aoZCP6pRcV_7objdump.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %.val13.i.i = load i64, ptr %i.b, align 8, !alias.scope !63, !noalias !64, !noundef !6 ; 4 uses
  %.val14.i.i = load i64, ptr %0, align 8, !alias.scope !64, !noalias !63, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %.val13.i.i, %.val14.i.i
  %i.d = icmp ult i64 %.val13.i.i, %.val14.i.i
  br i1 %i.c, label %bb.c, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val15.i.i = load i32, ptr %i.e, align 8, !alias.scope !63, !noalias !64, !noundef !6 ; 2 uses
  %.val16.i.i = load i32, ptr %i.f, align 8, !alias.scope !64, !noalias !63, !noundef !6 ; 2 uses
  %i.g = icmp eq i32 %.val15.i.i, %.val16.i.i
  %i.h = icmp ult i32 %.val15.i.i, %.val16.i.i
  br i1 %i.g, label %bb.d, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val17.i.i = load i64, ptr %i.i, align 8, !alias.scope !63, !noalias !64, !noundef !6 ; 2 uses
  %.val18.i.i = load i64, ptr %i.j, align 8, !alias.scope !64, !noalias !63, !noundef !6 ; 2 uses
  %i.k = icmp eq i64 %.val17.i.i, %.val18.i.i
  %i.l = icmp ult i64 %.val17.i.i, %.val18.i.i
  br i1 %i.k, label %bb.e, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load i64, ptr %i.m, align 8, !alias.scope !63, !noalias !64, !noundef !6 ; 2 uses
  %.val12.i.i = load i64, ptr %i.n, align 8, !alias.scope !64, !noalias !63, !noundef !6 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i, %.val12.i.i
  %i.p = icmp ult i64 %.val.i.i, %.val12.i.i
  br i1 %i.o, label %.split, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit

.split:                                           ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val19.i.i = load ptr, ptr %i.q, align 8, !alias.scope !63, !noalias !64, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val20.i.i = load i64, ptr %i.s, align 8, !alias.scope !63, !noalias !64, !noundef !6 ; 2 uses
  %.val21.i.i = load ptr, ptr %i.r, align 8, !alias.scope !64, !noalias !63, !nonnull !6, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val22.i.i = load i64, ptr %i.t, align 8, !alias.scope !64, !noalias !63, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val20.i.i, i64 %.val22.i.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val19.i.i, ptr nonnull readonly %.val21.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !65, !noalias !66 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.val20.i.i, %.val22.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.y, label %.preheader, label %.preheader42

.preheader:                                       ; preds = %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit, %.split
  %.not52 = icmp eq i64 %1, 2
  br i1 %.not52, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTymjyReENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8aoZCP6pRcV_7objdump.exit, label %.lr.ph48

_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.3.i.i = phi i1 [ %i.d, %bb.b ], [ %i.h, %bb.c ], [ %i.l, %bb.d ], [ %i.p, %bb.e ]
  br i1 %.sroa.0.3.i.i, label %.preheader, label %.preheader42

.preheader42:                                     ; preds = %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit, %.split
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTymjyReENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8aoZCP6pRcV_7objdump.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader42, %bb.i
  %.val14.i.i3 = phi i64 [ %.val13.i.i2, %bb.i ], [ %.val13.i.i, %.preheader42 ] ; 2 uses
  %.sroa.01.0.i44 = phi i64 [ %i.ay, %bb.i ], [ 2, %.preheader42 ] ; 5 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.0.i44 ; 6 uses
  %i.aa = getelementptr [48 x i8], ptr %0, i64 %.sroa.01.0.i44 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %.val13.i.i2 = load i64, ptr %i.z, align 8, !alias.scope !71, !noalias !72, !noundef !6 ; 3 uses
  %i.ab = icmp eq i64 %.val13.i.i2, %.val14.i.i3
  %i.ac = icmp ult i64 %.val13.i.i2, %.val14.i.i3
  br i1 %i.ab, label %bb.f, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit17

bb.f:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ae = getelementptr i8, ptr %i.aa, i64 -24
  %.val15.i.i5 = load i32, ptr %i.ad, align 8, !alias.scope !71, !noalias !72, !noundef !6 ; 2 uses
  %.val16.i.i6 = load i32, ptr %i.ae, align 8, !alias.scope !72, !noalias !71, !noundef !6 ; 2 uses
  %i.af = icmp eq i32 %.val15.i.i5, %.val16.i.i6
  %i.ag = icmp ult i32 %.val15.i.i5, %.val16.i.i6
  br i1 %i.af, label %bb.g, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit17

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ai = getelementptr i8, ptr %i.aa, i64 -40
  %.val17.i.i7 = load i64, ptr %i.ah, align 8, !alias.scope !71, !noalias !72, !noundef !6 ; 2 uses
  %.val18.i.i8 = load i64, ptr %i.ai, align 8, !alias.scope !72, !noalias !71, !noundef !6 ; 2 uses
  %i.aj = icmp eq i64 %.val17.i.i7, %.val18.i.i8
  %i.ak = icmp ult i64 %.val17.i.i7, %.val18.i.i8
  br i1 %i.aj, label %bb.h, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit17

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.am = getelementptr i8, ptr %i.aa, i64 -32
  %.val.i.i9 = load i64, ptr %i.al, align 8, !alias.scope !71, !noalias !72, !noundef !6 ; 2 uses
  %.val12.i.i10 = load i64, ptr %i.am, align 8, !alias.scope !72, !noalias !71, !noundef !6 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i9, %.val12.i.i10
  %i.ao = icmp ult i64 %.val.i.i9, %.val12.i.i10
  br i1 %i.an, label %.split36, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit17

.split36:                                         ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.aq = getelementptr i8, ptr %i.aa, i64 -16
  %.val19.i.i11 = load ptr, ptr %i.ap, align 8, !alias.scope !71, !noalias !72, !nonnull !6, !noundef !6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.val20.i.i12 = load i64, ptr %i.ar, align 8, !alias.scope !71, !noalias !72, !noundef !6 ; 2 uses
  %.val21.i.i13 = load ptr, ptr %i.aq, align 8, !alias.scope !72, !noalias !71, !nonnull !6, !noundef !6
  %i.as = getelementptr i8, ptr %i.aa, i64 -8
  %.val22.i.i14 = load i64, ptr %i.as, align 8, !alias.scope !72, !noalias !71, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i15 = tail call i64 @llvm.umin.i64(i64 %.val20.i.i12, i64 %.val22.i.i14)
  %i.at = tail call i32 @memcmp(ptr nonnull readonly %.val19.i.i11, ptr nonnull readonly %.val21.i.i13, i64 %spec.store.select.i.i.i.i.i.i15), !alias.scope !73, !noalias !74 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp eq i32 %i.at, 0
  %i.aw = sub i64 %.val20.i.i12, %.val22.i.i14
  %spec.select.i.i.i.i.i.i16 = select i1 %i.av, i64 %i.aw, i64 %i.au
  %i.ax = icmp slt i64 %spec.select.i.i.i.i.i.i16, 0
  br i1 %i.ax, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTymjyReENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8aoZCP6pRcV_7objdump.exit, label %bb.i

_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit17: ; preds = %.lr.ph, %bb.f, %bb.g, %bb.h
  %.sroa.0.3.i.i4 = phi i1 [ %i.ac, %.lr.ph ], [ %i.ag, %bb.f ], [ %i.ak, %bb.g ], [ %i.ao, %bb.h ]
  br i1 %.sroa.0.3.i.i4, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTymjyReENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8aoZCP6pRcV_7objdump.exit, label %bb.i

bb.i:                                             ; preds = %.split36, %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit17
  %i.ay = add nuw nsw i64 %.sroa.01.0.i44, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %1
  br i1 %exitcond.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTymjyReE7reverseCs8aoZCP6pRcV_7objdump.exit, label %.lr.ph

.lr.ph48:                                         ; preds = %.preheader, %bb.m
  %.val14.i.i19 = phi i64 [ %.val13.i.i18, %bb.m ], [ %.val13.i.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i47 = phi i64 [ %i.by, %bb.m ], [ 2, %.preheader ] ; 5 uses
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.1.i47 ; 6 uses
  %i.ba = getelementptr [48 x i8], ptr %0, i64 %.sroa.01.1.i47 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %.val13.i.i18 = load i64, ptr %i.az, align 8, !alias.scope !79, !noalias !80, !noundef !6 ; 3 uses
  %i.bb = icmp eq i64 %.val13.i.i18, %.val14.i.i19
  %i.bc = icmp ult i64 %.val13.i.i18, %.val14.i.i19
  br i1 %i.bb, label %bb.j, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit33

bb.j:                                             ; preds = %.lr.ph48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.be = getelementptr i8, ptr %i.ba, i64 -24
  %.val15.i.i21 = load i32, ptr %i.bd, align 8, !alias.scope !79, !noalias !80, !noundef !6 ; 2 uses
  %.val16.i.i22 = load i32, ptr %i.be, align 8, !alias.scope !80, !noalias !79, !noundef !6 ; 2 uses
  %i.bf = icmp eq i32 %.val15.i.i21, %.val16.i.i22
  %i.bg = icmp ult i32 %.val15.i.i21, %.val16.i.i22
  br i1 %i.bf, label %bb.k, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit33

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bi = getelementptr i8, ptr %i.ba, i64 -40
  %.val17.i.i23 = load i64, ptr %i.bh, align 8, !alias.scope !79, !noalias !80, !noundef !6 ; 2 uses
  %.val18.i.i24 = load i64, ptr %i.bi, align 8, !alias.scope !80, !noalias !79, !noundef !6 ; 2 uses
  %i.bj = icmp eq i64 %.val17.i.i23, %.val18.i.i24
  %i.bk = icmp ult i64 %.val17.i.i23, %.val18.i.i24
  br i1 %i.bj, label %bb.l, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit33

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bm = getelementptr i8, ptr %i.ba, i64 -32
  %.val.i.i25 = load i64, ptr %i.bl, align 8, !alias.scope !79, !noalias !80, !noundef !6 ; 2 uses
  %.val12.i.i26 = load i64, ptr %i.bm, align 8, !alias.scope !80, !noalias !79, !noundef !6 ; 2 uses
  %i.bn = icmp eq i64 %.val.i.i25, %.val12.i.i26
  %i.bo = icmp ult i64 %.val.i.i25, %.val12.i.i26
  br i1 %i.bn, label %.split37, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit33

.split37:                                         ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bq = getelementptr i8, ptr %i.ba, i64 -16
  %.val19.i.i27 = load ptr, ptr %i.bp, align 8, !alias.scope !79, !noalias !80, !nonnull !6, !noundef !6
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %.val20.i.i28 = load i64, ptr %i.br, align 8, !alias.scope !79, !noalias !80, !noundef !6 ; 2 uses
  %.val21.i.i29 = load ptr, ptr %i.bq, align 8, !alias.scope !80, !noalias !79, !nonnull !6, !noundef !6
  %i.bs = getelementptr i8, ptr %i.ba, i64 -8
  %.val22.i.i30 = load i64, ptr %i.bs, align 8, !alias.scope !80, !noalias !79, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i31 = tail call i64 @llvm.umin.i64(i64 %.val20.i.i28, i64 %.val22.i.i30)
  %i.bt = tail call i32 @memcmp(ptr nonnull readonly %.val19.i.i27, ptr nonnull readonly %.val21.i.i29, i64 %spec.store.select.i.i.i.i.i.i31), !alias.scope !81, !noalias !82 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp eq i32 %i.bt, 0
  %i.bw = sub i64 %.val20.i.i28, %.val22.i.i30
  %spec.select.i.i.i.i.i.i32 = select i1 %i.bv, i64 %i.bw, i64 %i.bu
  %i.bx = icmp slt i64 %spec.select.i.i.i.i.i.i32, 0
  br i1 %i.bx, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTymjyReENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8aoZCP6pRcV_7objdump.exit

_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit33: ; preds = %.lr.ph48, %bb.j, %bb.k, %bb.l
  %.sroa.0.3.i.i20 = phi i1 [ %i.bc, %.lr.ph48 ], [ %i.bg, %bb.j ], [ %i.bk, %bb.k ], [ %i.bo, %bb.l ]
  br i1 %.sroa.0.3.i.i20, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTymjyReENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8aoZCP6pRcV_7objdump.exit

bb.m:                                             ; preds = %.split37, %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit33
  %i.by = add nuw nsw i64 %.sroa.01.1.i47, 1      ; 2 uses
  %exitcond56.not = icmp eq i64 %i.by, %1
  br i1 %exitcond56.not, label %.lr.ph.preheader.i.i, label %.lr.ph48

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTymjyReENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8aoZCP6pRcV_7objdump.exit: ; preds = %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit17, %.split36, %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit33, %.split37, %.preheader42, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ false, %.preheader42 ], [ true, %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit33 ], [ true, %.split37 ], [ false, %.split36 ], [ false, %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit17 ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader42 ], [ %.sroa.01.1.i47, %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit33 ], [ %.sroa.01.1.i47, %.split37 ], [ %.sroa.01.0.i44, %.split36 ], [ %.sroa.01.0.i44, %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit17 ] ; 2 uses
  %i.bz = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTymjyReENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8aoZCP6pRcV_7objdump.exit
  br i1 %.sroa.3.0.i, label %.lr.ph.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTymjyReE7reverseCs8aoZCP6pRcV_7objdump.exit

bb.o:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTymjyReENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8aoZCP6pRcV_7objdump.exit
  %i.cb = or i64 %1, 1
  %i.cc = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortTymjyReENvYB17_NtNtBa_3cmp10PartialOrd2ltECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, i32 noundef %i.cf, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTymjyReE7reverseCs8aoZCP6pRcV_7objdump.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTymjyReE7reverseCs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTymjyReEECs8aoZCP6pRcV_7objdump.exit.i.i, %bb.a, %bb.n, %bb.o
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.m, %bb.n
  %i.cg = lshr i64 %1, 1
  %i.ch = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTymjyReEECs8aoZCP6pRcV_7objdump.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.cm, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTymjyReEECs8aoZCP6pRcV_7objdump.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ci = xor i64 %.sroa.0.017.i.i, -1
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.ck = getelementptr [48 x i8], ptr %i.ch, i64 %i.ci
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8aoZCP6pRcV_7objdump(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ck, i64 noundef 6)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTymjyReEECs8aoZCP6pRcV_7objdump.exit.i.i unwind label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTymjyReEECs8aoZCP6pRcV_7objdump.exit.i.i: ; preds = %.lr.ph.i.i
  %i.cm = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cm, %i.cg
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTymjyReE7reverseCs8aoZCP6pRcV_7objdump.exit, label %.lr.ph.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs8aoZCP6pRcV_7objdump(ptr noundef nonnull %i.a) #18
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs8aoZCP6pRcV_7objdump(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs8aoZCP6pRcV_7objdump(ptr noundef nonnull %i.a) #18, !noalias !85
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RNvMNtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapE3lenCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6
  %i.c = load ptr, ptr %0, align 8, !noundef !6
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMNtNtNtCseHTIzroA4w0_6object4read3elf4noteINtB2_12NoteIteratorINtNtB8_3elf12FileHeader32NtNtB8_6endian10EndiannessEE3newCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8), (24, 25)) %0, i1 noundef zeroext %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i32 %2, 5
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 8
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @2, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 4, %bb.a ], [ 8, %bb.b ]
  %i.c = zext i1 %1 to i8
  store ptr %3, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink2 = phi i64 [ 16, %bb.d ], [ 8, %bb.c ]
  %.sroa.0.0.sink = phi i64 [ %.sroa.0.0, %bb.d ], [ 26, %bb.c ]
  %.sink = phi i8 [ %i.c, %bb.d ], [ 2, %bb.c ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2
  store i64 %.sroa.0.0.sink, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCseHTIzroA4w0_6object4read3elf4noteINtB2_12NoteIteratorINtNtB8_3elf12FileHeader32NtNtB8_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 7 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !89, !noalias !90, !nonnull !6, !noundef !6 ; 6 uses
  %i.e = icmp samesign ult i64 %i.b, 12
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i8, ptr %i.f, align 8, !range !7, !alias.scope !89, !noalias !90, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %.val.i = load i32, ptr %i.d, align 1, !noalias !91
  %i.i = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val.i, i1 noundef zeroext %i.h), !noalias !91
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = add i64 %i.b, -12
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.not.i.i = icmp ult i64 %i.k, %i.j
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !89, !noalias !90, !noundef !6 ; 3 uses
  %i.o = add nuw nsw i64 %i.j, 11
  %i.p = add i64 %i.o, %i.n
  %i.q = sub i64 0, %i.n                          ; 2 uses
  %i.r = and i64 %i.p, %i.q                       ; 4 uses
  %i.s = getelementptr i8, ptr %i.d, i64 4
  %.val39.i = load i32, ptr %i.s, align 1, !noalias !91
  %i.t = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val39.i, i1 noundef zeroext %i.h), !noalias !91
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = icmp ult i64 %i.b, %i.r
  %i.w = sub nuw i64 %i.b, %i.r
  %.not.i40.i = icmp ult i64 %i.w, %i.u
  %or.cond = select i1 %i.v, i1 true, i1 %.not.i40.i
  br i1 %or.cond, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.14.0.ph = phi i64 [ 23, %bb.d ], [ 21, %bb.b ], [ 23, %bb.c ]
  %.sroa.9.0.ph = phi ptr [ @3, %bb.d ], [ @5, %bb.b ], [ @4, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0.ph, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14.0.ph, ptr %i.y, align 8
  store i64 1, ptr %0, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8
  store i64 0, ptr %i.a, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.r
  %i.aa = add i64 %i.n, -1
  %i.ab = add i64 %i.aa, %i.r
  %i.ac = add i64 %i.ab, %i.u
  %i.ad = and i64 %i.ac, %i.q                     ; 3 uses
  %i.ae = icmp ult i64 %i.b, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ad
  %storemerge38.i = select i1 %i.ae, ptr inttoptr (i64 1 to ptr), ptr %i.af
  %storemerge.i = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %i.ad)
  store ptr %storemerge38.i, ptr %1, align 8, !alias.scope !89, !noalias !90
  store i64 %storemerge.i, ptr %i.a, align 8, !alias.scope !89, !noalias !90
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.ag, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.j, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.z, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.u, ptr %.sroa.76.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMNtNtNtCseHTIzroA4w0_6object4read3elf4noteINtB2_12NoteIteratorINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEE3newCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8), (24, 25)) %0, i1 noundef zeroext %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i64 %2, 5
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 8
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @2, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 4, %bb.a ], [ 8, %bb.b ]
  %i.c = zext i1 %1 to i8
  store ptr %3, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink2 = phi i64 [ 16, %bb.d ], [ 8, %bb.c ]
  %.sroa.0.0.sink = phi i64 [ %.sroa.0.0, %bb.d ], [ 26, %bb.c ]
  %.sink = phi i8 [ %i.c, %bb.d ], [ 2, %bb.c ]
end_hunk_0
