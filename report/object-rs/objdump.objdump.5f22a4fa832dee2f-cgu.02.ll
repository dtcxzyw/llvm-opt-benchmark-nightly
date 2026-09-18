Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.02?download=true
inline.NumInlined: 346
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [24 x i8] c"src/read/elf/version.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\17\00\00\00\00\00\00\00n\00\00\00\1D\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\17\00\00\00\00\00\00\00\80\00\00\00\1D\00\00\00" }>, align 8
@3 = private unnamed_addr constant [3 x i8] c"\C0\C0\00", align 1
@4 = private unnamed_addr constant [30 x i8] c"\14Failed to map file '\C0\03': \C0\01\0A\00", align 1
@5 = private unnamed_addr constant [31 x i8] c"\15Failed to open file '\C0\03': \C0\01\0A\00", align 1
@6 = private unnamed_addr constant [32 x i8] c"Invalid ELF symbol version index", align 1
@7 = private unnamed_addr constant [19 x i8] c"Invalid ELF vd_next", align 1
@8 = private unnamed_addr constant [18 x i8] c"Invalid ELF vd_aux", align 1
@9 = private unnamed_addr constant [23 x i8] c"ELF verdef is too short", align 1
@10 = private unnamed_addr constant [20 x i8] c"Invalid ELF vda_next", align 1
@11 = private unnamed_addr constant [24 x i8] c"ELF verdaux is too short", align 1
@12 = private unnamed_addr constant [19 x i8] c"Invalid ELF vn_next", align 1
@13 = private unnamed_addr constant [18 x i8] c"Invalid ELF vn_aux", align 1
@14 = private unnamed_addr constant [24 x i8] c"ELF verneed is too short", align 1
@15 = private unnamed_addr constant [20 x i8] c"Invalid ELF vna_next", align 1
@16 = private unnamed_addr constant [24 x i8] c"ELF vernaux is too short", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB6_12VersionTableINtNtBc_3elf12FileHeader32NtNtBc_6endian10EndiannessEE5parseRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = load i8, ptr %i.k, align 8, !range !5, !noundef !6 ; 4 uses
  %.not = icmp eq i8 %i.l, 2                      ; 2 uses
  br i1 %.not, label %.loopexit401, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load ptr, ptr %4, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !6 ; 4 uses
  br i1 %i.m, label %.split439.us, label %.split439

.split439.us:                                     ; preds = %bb.b
  br i1 %1, label %.outer.us.us, label %.outer.us

.outer.us.us:                                     ; preds = %.split439.us, %.split414.us.us.split.us.us
  %.sroa.7.0.ph.us.us = phi i64 [ %storemerge.i.i.us.us.us.us, %.split414.us.us.split.us.us ], [ %i.p, %.split439.us ]
  %.sroa.0.0313.ph.us.us = phi ptr [ %storemerge39.i.i.us.us.us.us, %.split414.us.us.split.us.us ], [ %i.n, %.split439.us ]
  %.sroa.0.1.ph.us.us = phi i16 [ %spec.store.select.us.us, %.split414.us.us.split.us.us ], [ 0, %.split439.us ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.outer.us.us
  %.sroa.7.0.us.us.us.us = phi i64 [ %storemerge.i.i.us.us.us.us, %bb.i ], [ %.sroa.7.0.ph.us.us, %.outer.us.us ] ; 5 uses
  %.sroa.0.0313.us.us.us.us = phi ptr [ %storemerge39.i.i.us.us.us.us, %bb.i ], [ %.sroa.0.0313.ph.us.us, %.outer.us.us ] ; 6 uses
  %i.q = icmp eq i64 %.sroa.7.0.us.us.us.us, 0
  br i1 %i.q, label %.loopexit401, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp samesign ult i64 %.sroa.7.0.us.us.us.us, 20
  br i1 %i.r, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us.us.us, i64 12
  %.sroa.026.0.copyload.i.i.us.us.us.us = load i32, ptr %i.s, align 1, !noalias !58
  %i.t = tail call i32 @llvm.bswap.i32(i32 %.sroa.026.0.copyload.i.i.us.us.us.us)
  %i.u = zext i32 %i.t to i64
  %i.v = icmp ult i64 %.sroa.7.0.us.us.us.us, %i.u
  br i1 %i.v, label %.split.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us.us.us, i64 16
  %.sroa.030.0.copyload.i.i.us.us.us.us = load i32, ptr %i.w, align 1, !noalias !58 ; 2 uses
  %i.x = icmp eq i32 %.sroa.030.0.copyload.i.i.us.us.us.us, 0
  br i1 %i.x, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i32 @llvm.bswap.i32(i32 %.sroa.030.0.copyload.i.i.us.us.us.us)
  %i.z = zext i32 %i.y to i64                     ; 3 uses
  %i.aa = icmp ult i64 %.sroa.7.0.us.us.us.us, %i.z
  br i1 %i.aa, label %.split.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = sub nuw nsw i64 %.sroa.7.0.us.us.us.us, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us.us.us, i64 %i.z
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %storemerge39.i.i.us.us.us.us = phi ptr [ %i.ac, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.f ] ; 2 uses
  %storemerge.i.i.us.us.us.us = phi i64 [ %i.ab, %bb.h ], [ 0, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0313.us.us.us.us) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us.us.us, i64 2
  %.sroa.0140.0.copyload.us.us.us.us = load i16, ptr %i.ad, align 1
  %i.ae = and i16 %.sroa.0140.0.copyload.us.us.us.us, 256
  %.not187.us.us.us.us = icmp eq i16 %i.ae, 0
  br i1 %.not187.us.us.us.us, label %.split414.us.us.split.us.us, label %bb.c

.split414.us.us.split.us.us:                      ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us.us.us, i64 4
  %.sroa.0142.0.copyload.us.us = load i16, ptr %i.af, align 1
  %i.ag = tail call i16 @llvm.bswap.i16(i16 %.sroa.0142.0.copyload.us.us)
  %spec.store.select.us.us = tail call i16 @llvm.umax.i16(i16 %.sroa.0.1.ph.us.us, i16 %i.ag)
  br label %.outer.us.us

.outer.us:                                        ; preds = %.split439.us, %.split414.us.us.split
  %.sroa.7.0.ph.us = phi i64 [ %storemerge.i.i.us.us, %.split414.us.us.split ], [ %i.p, %.split439.us ]
  %.sroa.0.0313.ph.us = phi ptr [ %storemerge39.i.i.us.us, %.split414.us.us.split ], [ %i.n, %.split439.us ]
  %.sroa.0.1.ph.us = phi i16 [ %spec.store.select.us, %.split414.us.us.split ], [ 0, %.split439.us ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %.outer.us
  %.sroa.7.0.us.us = phi i64 [ %storemerge.i.i.us.us, %bb.p ], [ %.sroa.7.0.ph.us, %.outer.us ] ; 5 uses
  %.sroa.0.0313.us.us = phi ptr [ %storemerge39.i.i.us.us, %bb.p ], [ %.sroa.0.0313.ph.us, %.outer.us ] ; 6 uses
  %i.ah = icmp eq i64 %.sroa.7.0.us.us, 0
  br i1 %i.ah, label %.loopexit401, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp samesign ult i64 %.sroa.7.0.us.us, 20
  br i1 %i.ai, label %.split.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us, i64 12
  %.sroa.026.0.copyload.i.i.us.us = load i32, ptr %i.aj, align 1, !noalias !58
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %.sroa.026.0.copyload.i.i.us.us)
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp ult i64 %.sroa.7.0.us.us, %i.al
  br i1 %i.am, label %.split.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us, i64 16
  %.sroa.030.0.copyload.i.i.us.us = load i32, ptr %i.an, align 1, !noalias !58 ; 2 uses
  %i.ao = icmp eq i32 %.sroa.030.0.copyload.i.i.us.us, 0
  br i1 %i.ao, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %.sroa.030.0.copyload.i.i.us.us)
  %i.aq = zext i32 %i.ap to i64                   ; 3 uses
  %i.ar = icmp ult i64 %.sroa.7.0.us.us, %i.aq
  br i1 %i.ar, label %.split.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = sub nuw nsw i64 %.sroa.7.0.us.us, %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us, i64 %i.aq
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %storemerge39.i.i.us.us = phi ptr [ %i.at, %bb.o ], [ inttoptr (i64 1 to ptr), %bb.m ] ; 2 uses
  %storemerge.i.i.us.us = phi i64 [ %i.as, %bb.o ], [ 0, %bb.m ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0313.us.us) ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us, i64 2
  %.sroa.0140.0.copyload.us.us = load i16, ptr %i.au, align 1
  %i.av = and i16 %.sroa.0140.0.copyload.us.us, 1
  %.not187.us.us = icmp eq i16 %i.av, 0
  br i1 %.not187.us.us, label %.split414.us.us.split, label %bb.j

.split414.us.us.split:                            ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us, i64 4
  %.sroa.0142.0.copyload.us = load i16, ptr %i.aw, align 1
  %spec.store.select.us = tail call i16 @llvm.umax.i16(i16 %.sroa.0.1.ph.us, i16 %.sroa.0142.0.copyload.us)
  br label %.outer.us

.split439:                                        ; preds = %bb.b
  br i1 %1, label %.outer.us443, label %.outer

.outer.us443:                                     ; preds = %.split439, %.split414.split.us.us
  %.sroa.7.0.ph.us444 = phi i64 [ %storemerge.i.i.us423.us, %.split414.split.us.us ], [ %i.p, %.split439 ]
  %.sroa.0.0313.ph.us445 = phi ptr [ %storemerge39.i.i.us422.us, %.split414.split.us.us ], [ %i.n, %.split439 ]
  %.sroa.0.1.ph.us446 = phi i16 [ %spec.store.select.us449, %.split414.split.us.us ], [ 0, %.split439 ] ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.w, %.outer.us443
  %.sroa.7.0.us418.us = phi i64 [ %storemerge.i.i.us423.us, %bb.w ], [ %.sroa.7.0.ph.us444, %.outer.us443 ] ; 5 uses
  %.sroa.0.0313.us419.us = phi ptr [ %storemerge39.i.i.us422.us, %bb.w ], [ %.sroa.0.0313.ph.us445, %.outer.us443 ] ; 6 uses
  %i.ax = icmp eq i64 %.sroa.7.0.us418.us, 0
  br i1 %i.ax, label %.loopexit401, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = icmp samesign ult i64 %.sroa.7.0.us418.us, 20
  br i1 %i.ay, label %.split.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us419.us, i64 12
  %.sroa.026.0.copyload.i.i.us420.us = load i32, ptr %i.az, align 1, !noalias !58
  %i.ba = zext i32 %.sroa.026.0.copyload.i.i.us420.us to i64
  %i.bb = icmp ult i64 %.sroa.7.0.us418.us, %i.ba
  br i1 %i.bb, label %.split.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us419.us, i64 16
  %.sroa.030.0.copyload.i.i.us421.us = load i32, ptr %i.bc, align 1, !noalias !58 ; 2 uses
  %i.bd = icmp eq i32 %.sroa.030.0.copyload.i.i.us421.us, 0
  br i1 %i.bd, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = zext i32 %.sroa.030.0.copyload.i.i.us421.us to i64 ; 3 uses
  %i.bf = icmp ult i64 %.sroa.7.0.us418.us, %i.be
  br i1 %i.bf, label %.split.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = sub nuw nsw i64 %.sroa.7.0.us418.us, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us419.us, i64 %i.be
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %storemerge39.i.i.us422.us = phi ptr [ %i.bh, %bb.v ], [ inttoptr (i64 1 to ptr), %bb.t ] ; 2 uses
  %storemerge.i.i.us423.us = phi i64 [ %i.bg, %bb.v ], [ 0, %bb.t ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0313.us419.us) ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us419.us, i64 2
  %.sroa.0140.0.copyload.us424.us = load i16, ptr %i.bi, align 1
  %i.bj = and i16 %.sroa.0140.0.copyload.us424.us, 256
  %.not187.us426.us = icmp eq i16 %i.bj, 0
  br i1 %.not187.us426.us, label %.split414.split.us.us, label %bb.q

.split414.split.us.us:                            ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us419.us, i64 4
  %.sroa.0142.0.copyload.us447 = load i16, ptr %i.bk, align 1
  %i.bl = tail call i16 @llvm.bswap.i16(i16 %.sroa.0142.0.copyload.us447)
  %spec.store.select.us449 = tail call i16 @llvm.umax.i16(i16 %.sroa.0.1.ph.us446, i16 %i.bl)
  br label %.outer.us443

.outer:                                           ; preds = %.split439, %.split414.split
  %.sroa.7.0.ph = phi i64 [ %storemerge.i.i, %.split414.split ], [ %i.p, %.split439 ]
  %.sroa.0.0313.ph = phi ptr [ %storemerge39.i.i, %.split414.split ], [ %i.n, %.split439 ]
  %.sroa.0.1.ph = phi i16 [ %spec.store.select, %.split414.split ], [ 0, %.split439 ] ; 2 uses
  br label %bb.x

.loopexit401:                                     ; preds = %bb.x, %bb.q, %bb.j, %bb.c, %bb.a
  %.sroa.0.0 = phi i16 [ 0, %bb.a ], [ %.sroa.0.1.ph.us446, %bb.q ], [ %.sroa.0.1.ph.us, %bb.j ], [ %.sroa.0.1.ph.us.us, %bb.c ], [ %.sroa.0.1.ph, %bb.x ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bn = load i8, ptr %i.bm, align 8, !range !5, !noundef !6 ; 5 uses
  %.not174 = icmp eq i8 %i.bn, 2                  ; 2 uses
  br i1 %.not174, label %.loopexit400, label %bb.ae

bb.x:                                             ; preds = %.outer, %bb.ad
  %.sroa.7.0 = phi i64 [ %storemerge.i.i, %bb.ad ], [ %.sroa.7.0.ph, %.outer ] ; 5 uses
  %.sroa.0.0313 = phi ptr [ %storemerge39.i.i, %bb.ad ], [ %.sroa.0.0313.ph, %.outer ] ; 6 uses
  %i.bo = icmp eq i64 %.sroa.7.0, 0
  br i1 %i.bo, label %.loopexit401, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = icmp samesign ult i64 %.sroa.7.0, 20
  br i1 %i.bp, label %.split.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0313, i64 12
  %.sroa.026.0.copyload.i.i = load i32, ptr %i.bq, align 1, !noalias !58
  %i.br = zext i32 %.sroa.026.0.copyload.i.i to i64
  %i.bs = icmp ult i64 %.sroa.7.0, %i.br
  br i1 %i.bs, label %.split.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0313, i64 16
  %.sroa.030.0.copyload.i.i = load i32, ptr %i.bt, align 1, !noalias !58 ; 2 uses
  %i.bu = icmp eq i32 %.sroa.030.0.copyload.i.i, 0
  br i1 %i.bu, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = zext i32 %.sroa.030.0.copyload.i.i to i64 ; 3 uses
  %i.bw = icmp ult i64 %.sroa.7.0, %i.bv
  br i1 %i.bw, label %.split.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = sub nuw nsw i64 %.sroa.7.0, %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0313, i64 %i.bv
  br label %bb.ad

.split.us:                                        ; preds = %bb.ab, %bb.z, %bb.y, %bb.r, %bb.s, %bb.u, %bb.k, %bb.l, %bb.n, %bb.g, %bb.e, %bb.d
  %.us-phi411 = phi i64 [ 18, %bb.e ], [ 18, %bb.l ], [ 18, %bb.s ], [ 19, %bb.g ], [ 23, %bb.d ], [ 19, %bb.n ], [ 23, %bb.k ], [ 23, %bb.r ], [ 19, %bb.u ], [ 19, %bb.ab ], [ 23, %bb.y ], [ 18, %bb.z ]
  %.us-phi412 = phi ptr [ @8, %bb.e ], [ @8, %bb.l ], [ @8, %bb.s ], [ @7, %bb.g ], [ @9, %bb.d ], [ @7, %bb.n ], [ @9, %bb.k ], [ @9, %bb.r ], [ @7, %bb.u ], [ @7, %bb.ab ], [ @9, %bb.y ], [ @8, %bb.z ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.us-phi412, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.us-phi411, ptr %i.ca, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.by

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %storemerge39.i.i = phi ptr [ %i.by, %bb.ac ], [ inttoptr (i64 1 to ptr), %bb.aa ] ; 2 uses
  %storemerge.i.i = phi i64 [ %i.bx, %bb.ac ], [ 0, %bb.aa ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0313) ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0313, i64 2
  %.sroa.0140.0.copyload = load i16, ptr %i.cb, align 1
  %i.cc = and i16 %.sroa.0140.0.copyload, 1
  %.not187 = icmp eq i16 %i.cc, 0
  br i1 %.not187, label %.split414.split, label %bb.x

.split414.split:                                  ; preds = %bb.ad
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0313, i64 4
  %.sroa.0142.0.copyload = load i16, ptr %i.cd, align 1
  %spec.store.select = tail call i16 @llvm.umax.i16(i16 %.sroa.0.1.ph, i16 %.sroa.0142.0.copyload)
  br label %.outer

bb.ae:                                            ; preds = %.loopexit401
  %i.ce = trunc nuw i8 %i.bn to i1                ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !6 ; 2 uses
  %i.ch = trunc nuw i8 %i.bn to i1
  %i.ci = icmp eq i64 %i.cg, 0
  br i1 %i.ci, label %.loopexit400, label %.lr.ph677

.lr.ph677:                                        ; preds = %bb.ae
  %i.cj = load ptr, ptr %5, align 8, !nonnull !6, !noundef !6
  br label %bb.ai

.loopexit400:                                     ; preds = %.thread, %bb.ae, %.loopexit401
  %.sroa.0.2 = phi i16 [ %.sroa.0.0, %.loopexit401 ], [ %.sroa.0.0, %bb.ae ], [ %.sroa.0.4.lcssa, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = zext i16 %.sroa.0.2 to i64              ; 2 uses
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 1, 65537) %i.cl, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40), !noalias !59
  %i.cm = load i64, ptr %i.a, align 8, !range !7, !noalias !59, !noundef !6
  %i.cn = trunc nuw i64 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !range !8, !noalias !59, !noundef !6 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.cn, label %bb.af, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8aoZCP6pRcV_7objdump.exit.i, !prof !9

bb.af:                                            ; preds = %.loopexit400
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !59
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cp, i64 %i.cr) #21, !noalias !59
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8aoZCP6pRcV_7objdump.exit.i: ; preds = %.loopexit400
  %i.cs = load ptr, ptr %i.cq, align 8, !noalias !59, !nonnull !6, !noundef !6
  %i.ct = icmp ugt i64 %i.cp, %i.ck
  tail call void @llvm.assume(i1 %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !59
  store i64 %i.cp, ptr %i.c, align 8, !noalias !59
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.cs, ptr %i.cu, align 8, !noalias !59
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.cv, align 8, !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !59
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !noalias !60
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %.sroa.6276.0..sroa_idx, align 8, !noalias !60
  %.sroa.7277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i8 0, ptr %.sroa.7277.0..sroa_idx, align 4, !noalias !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionE11extend_withCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef range(i64 1, 65537) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b)
          to label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8aoZCP6pRcV_7objdump.exit unwind label %bb.ag, !noalias !59

bb.ag:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8aoZCP6pRcV_7objdump.exit.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %common.resume unwind label %bb.ah, !noalias !59

bb.ah:                                            ; preds = %bb.ag
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !59
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.bh, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.gw, %bb.bh ], [ %i.cw, %bb.ag ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8aoZCP6pRcV_7objdump.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8aoZCP6pRcV_7objdump.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !59
  br i1 %.not, label %.loopexit395, label %bb.at

bb.ai:                                            ; preds = %.lr.ph677, %.thread
  %.sroa.0.3676 = phi i16 [ %.sroa.0.0, %.lr.ph677 ], [ %.sroa.0.4.lcssa, %.thread ] ; 4 uses
  %.sroa.0259.0675 = phi ptr [ %i.cj, %.lr.ph677 ], [ %.sroa.0259.1, %.thread ] ; 6 uses
  %.sroa.7260.0674 = phi i64 [ %i.cg, %.lr.ph677 ], [ %.sroa.7260.1, %.thread ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0259.0675) ]
  %i.cy = icmp samesign ult i64 %.sroa.7260.0674, 16
  br i1 %i.cy, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0259.0675, i64 8
  %.sroa.026.0.copyload.i.i190 = load i32, ptr %i.cz, align 1, !noalias !62 ; 2 uses
  %i.da = tail call i32 @llvm.bswap.i32(i32 %.sroa.026.0.copyload.i.i190)
  %.sroa.03.0.i.i.i191 = select i1 %i.ce, i32 %i.da, i32 %.sroa.026.0.copyload.i.i190
  %i.db = zext i32 %.sroa.03.0.i.i.i191 to i64    ; 3 uses
  %i.dc = icmp ult i64 %.sroa.7260.0674, %i.db
  br i1 %i.dc, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = sub nuw nsw i64 %.sroa.7260.0674, %i.db ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0259.0675, i64 %i.db ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0259.0675, i64 2
  %.sroa.028.0.copyload.i.i192 = load i16, ptr %i.df, align 1, !noalias !62 ; 2 uses
  %i.dg = tail call i16 @llvm.bswap.i16(i16 %.sroa.028.0.copyload.i.i192) ; 2 uses
  %.sroa.03.0.i40.i.i193 = select i1 %i.ce, i16 %i.dg, i16 %.sroa.028.0.copyload.i.i192 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0259.0675, i64 12
  %.sroa.030.0.copyload.i.i194 = load i32, ptr %i.dh, align 1, !noalias !62 ; 2 uses
  %i.di = tail call i32 @llvm.bswap.i32(i32 %.sroa.030.0.copyload.i.i194)
  %.sroa.03.0.i41.i.i195 = select i1 %i.ce, i32 %i.di, i32 %.sroa.030.0.copyload.i.i194 ; 2 uses
  %i.dj = icmp eq i32 %.sroa.03.0.i41.i.i195, 0
  br i1 %i.dj, label %.preheader, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dk = zext i32 %.sroa.03.0.i41.i.i195 to i64  ; 3 uses
  %i.dl = icmp ult i64 %.sroa.7260.0674, %i.dk
  br i1 %i.dl, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dm = sub nuw nsw i64 %.sroa.7260.0674, %i.dk
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0259.0675, i64 %i.dk
  br label %.preheader

.preheader:                                       ; preds = %bb.am, %bb.ak
  %.sroa.7260.1 = phi i64 [ 0, %bb.ak ], [ %i.dm, %bb.am ] ; 2 uses
  %.sroa.0259.1 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ak ], [ %i.dn, %bb.am ]
  %i.do = icmp eq i16 %.sroa.03.0.i40.i.i193, 0
  br i1 %i.do, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.ch, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.ao
  %.sroa.0.4465.us = phi i16 [ %spec.store.select1.us, %bb.ao ], [ %.sroa.0.3676, %.lr.ph ]
  %.sroa.0269.0464.us = phi ptr [ %i.dv, %bb.ao ], [ %i.de, %.lr.ph ] ; 3 uses
  %.sroa.7270.0463.us = phi i64 [ %i.dw, %bb.ao ], [ %i.dd, %.lr.ph ] ; 3 uses
  %.sroa.11271.0462.us = phi i16 [ %i.du, %bb.ao ], [ %i.dg, %.lr.ph ]
  %i.dp = icmp samesign ult i64 %.sroa.7270.0463.us, 16
  br i1 %i.dp, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.an

bb.an:                                            ; preds = %.lr.ph.split.us
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464.us, i64 12
  %.sroa.08.0.copyload.i.i.us = load i32, ptr %i.dq, align 1, !noalias !63
  %i.dr = tail call i32 @llvm.bswap.i32(i32 %.sroa.08.0.copyload.i.i.us)
  %i.ds = zext i32 %i.dr to i64                   ; 3 uses
  %i.dt = icmp ult i64 %.sroa.7270.0463.us, %i.ds
  br i1 %i.dt, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.du = add i16 %.sroa.11271.0462.us, -1        ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464.us, i64 %i.ds
  %i.dw = sub nuw nsw i64 %.sroa.7270.0463.us, %i.ds
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464.us, i64 6
  %.sroa.0152.0.copyload.us = load i16, ptr %i.dx, align 1 ; 2 uses
  %i.dy = tail call i16 @llvm.bswap.i16(i16 %.sroa.0152.0.copyload.us)
  %.sroa.03.0.i207.us = select i1 %1, i16 %i.dy, i16 %.sroa.0152.0.copyload.us
  %i.dz = and i16 %.sroa.03.0.i207.us, 32767
  %spec.store.select1.us = tail call i16 @llvm.umax.i16(i16 %.sroa.0.4465.us, i16 %i.dz) ; 2 uses
  %i.ea = icmp eq i16 %i.du, 0
  br i1 %i.ea, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %1, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.aq
  %.sroa.0.4465.us473 = phi i16 [ %spec.store.select1.us481, %bb.aq ], [ %.sroa.0.3676, %.lr.ph.split ]
  %.sroa.0269.0464.us474 = phi ptr [ %i.eg, %bb.aq ], [ %i.de, %.lr.ph.split ] ; 3 uses
  %.sroa.7270.0463.us475 = phi i64 [ %i.eh, %bb.aq ], [ %i.dd, %.lr.ph.split ] ; 3 uses
  %.sroa.11271.0462.us476 = phi i16 [ %i.ef, %bb.aq ], [ %.sroa.03.0.i40.i.i193, %.lr.ph.split ]
  %i.eb = icmp samesign ult i64 %.sroa.7270.0463.us475, 16
  br i1 %i.eb, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.split.split.us
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464.us474, i64 12
  %.sroa.08.0.copyload.i.i.us477 = load i32, ptr %i.ec, align 1, !noalias !63
  %i.ed = zext i32 %.sroa.08.0.copyload.i.i.us477 to i64 ; 3 uses
  %i.ee = icmp ult i64 %.sroa.7270.0463.us475, %i.ed
  br i1 %i.ee, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ef = add i16 %.sroa.11271.0462.us476, -1     ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464.us474, i64 %i.ed
  %i.eh = sub nuw nsw i64 %.sroa.7270.0463.us475, %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464.us474, i64 6
  %.sroa.0152.0.copyload.us479 = load i16, ptr %i.ei, align 1
  %i.ej = and i16 %.sroa.0152.0.copyload.us479, -129
  %i.ek = tail call i16 @llvm.bswap.i16(i16 %i.ej)
  %spec.store.select1.us481 = tail call i16 @llvm.umax.i16(i16 %.sroa.0.4465.us473, i16 %i.ek) ; 2 uses
  %i.el = icmp eq i16 %i.ef, 0
  br i1 %i.el, label %.thread, label %.lr.ph.split.split.us

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.as
  %.sroa.0.4465 = phi i16 [ %spec.store.select1, %bb.as ], [ %.sroa.0.3676, %.lr.ph.split ]
  %.sroa.0269.0464 = phi ptr [ %i.er, %bb.as ], [ %i.de, %.lr.ph.split ] ; 3 uses
  %.sroa.7270.0463 = phi i64 [ %i.es, %bb.as ], [ %i.dd, %.lr.ph.split ] ; 3 uses
  %.sroa.11271.0462 = phi i16 [ %i.eq, %bb.as ], [ %.sroa.03.0.i40.i.i193, %.lr.ph.split ]
  %i.em = icmp samesign ult i64 %.sroa.7270.0463, 16
  br i1 %i.em, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.split.split
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464, i64 12
  %.sroa.08.0.copyload.i.i = load i32, ptr %i.en, align 1, !noalias !63
  %i.eo = zext i32 %.sroa.08.0.copyload.i.i to i64 ; 3 uses
  %i.ep = icmp ult i64 %.sroa.7270.0463, %i.eo
  br i1 %i.ep, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eq = add i16 %.sroa.11271.0462, -1           ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464, i64 %i.eo
  %i.es = sub nuw nsw i64 %.sroa.7270.0463, %i.eo
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464, i64 6
  %.sroa.0152.0.copyload = load i16, ptr %i.et, align 1
  %i.eu = and i16 %.sroa.0152.0.copyload, 32767
  %spec.store.select1 = tail call i16 @llvm.umax.i16(i16 %.sroa.0.4465, i16 %i.eu) ; 2 uses
  %i.ev = icmp eq i16 %i.eq, 0
  br i1 %i.ev, label %.thread, label %.lr.ph.split.split

.thread:                                          ; preds = %bb.as, %bb.aq, %bb.ao, %.preheader
  %.sroa.0.4.lcssa = phi i16 [ %.sroa.0.3676, %.preheader ], [ %spec.store.select1.us481, %bb.aq ], [ %spec.store.select1.us, %bb.ao ], [ %spec.store.select1, %bb.as ] ; 2 uses
  %i.ew = icmp eq i64 %.sroa.7260.1, 0
  br i1 %i.ew, label %.loopexit400, label %bb.ai

_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.ai, %bb.aj, %bb.al, %.lr.ph.split.split, %bb.ar, %.lr.ph.split.split.us, %bb.ap, %bb.an, %.lr.ph.split.us
  %.us-phi468.sink = phi ptr [ @15, %bb.an ], [ @15, %bb.ap ], [ @16, %.lr.ph.split.split ], [ @16, %.lr.ph.split.us ], [ @16, %.lr.ph.split.split.us ], [ @15, %bb.ar ], [ @13, %bb.aj ], [ @14, %bb.ai ], [ @12, %bb.al ]
  %.us-phi469.sink = phi i64 [ 20, %bb.an ], [ 20, %bb.ap ], [ 24, %.lr.ph.split.split ], [ 24, %.lr.ph.split.us ], [ 24, %.lr.ph.split.split.us ], [ 20, %bb.ar ], [ 18, %bb.aj ], [ 24, %bb.ai ], [ 19, %bb.al ]
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.us-phi468.sink, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.us-phi469.sink, ptr %i.ey, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.by

bb.at:                                            ; preds = %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8aoZCP6pRcV_7objdump.exit
  %.sroa.7279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.7279.0.copyload = load i64, ptr %.sroa.7279.0..sroa_idx, align 8 ; 2 uses
  %i.ez = trunc nuw i8 %i.l to i1                 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fe = trunc nuw i8 %i.l to i1
  %i.ff = icmp eq i64 %.sroa.7279.0.copyload, 0
  br i1 %i.ff, label %.loopexit395, label %.lr.ph680

.lr.ph680:                                        ; preds = %bb.at
  %.sroa.0278.0.copyload = load ptr, ptr %4, align 8
  br label %bb.au

.loopexit395:                                     ; preds = %.backedge399, %bb.at, %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8aoZCP6pRcV_7objdump.exit
  br i1 %.not174, label %.loopexit394, label %bb.bj

bb.au:                                            ; preds = %.lr.ph680, %.backedge399
  %.sroa.0278.0679 = phi ptr [ %.sroa.0278.0.copyload, %.lr.ph680 ], [ %storemerge39.i.i214, %.backedge399 ] ; 9 uses
  %.sroa.7279.0678 = phi i64 [ %.sroa.7279.0.copyload, %.lr.ph680 ], [ %storemerge.i.i215, %.backedge399 ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0278.0679) ]
  %i.fg = icmp samesign ult i64 %.sroa.7279.0678, 20
  br i1 %i.fg, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 12
  %.sroa.026.0.copyload.i.i208 = load i32, ptr %i.fh, align 1, !noalias !64 ; 2 uses
  %i.fi = call i32 @llvm.bswap.i32(i32 %.sroa.026.0.copyload.i.i208)
  %.sroa.03.0.i.i.i209 = select i1 %i.ez, i32 %i.fi, i32 %.sroa.026.0.copyload.i.i208
  %i.fj = zext i32 %.sroa.03.0.i.i.i209 to i64    ; 3 uses
  %i.fk = icmp ult i64 %.sroa.7279.0678, %i.fj
  br i1 %i.fk, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fl = sub nuw nsw i64 %.sroa.7279.0678, %i.fj ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 %i.fj ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 6
  %.sroa.028.0.copyload.i.i210 = load i16, ptr %i.fn, align 1, !noalias !64 ; 2 uses
  %i.fo = call i16 @llvm.bswap.i16(i16 %.sroa.028.0.copyload.i.i210)
  %.sroa.03.0.i40.i.i211 = select i1 %i.ez, i16 %i.fo, i16 %.sroa.028.0.copyload.i.i210
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 16
  %.sroa.030.0.copyload.i.i212 = load i32, ptr %i.fp, align 1, !noalias !64 ; 2 uses
  %i.fq = call i32 @llvm.bswap.i32(i32 %.sroa.030.0.copyload.i.i212)
  %.sroa.03.0.i41.i.i213 = select i1 %i.ez, i32 %i.fq, i32 %.sroa.030.0.copyload.i.i212 ; 2 uses
  %i.fr = icmp eq i32 %.sroa.03.0.i41.i.i213, 0
  br i1 %i.fr, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fs = zext i32 %.sroa.03.0.i41.i.i213 to i64  ; 3 uses
  %i.ft = icmp ult i64 %.sroa.7279.0678, %i.fs
  br i1 %i.ft, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fu = sub nuw nsw i64 %.sroa.7279.0678, %i.fs
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 %i.fs
  br label %bb.az

.loopexit:                                        ; preds = %bb.br, %bb.bt
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.bd
  %lpad.loopexit396 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp397 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit396, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp397, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #22
          to label %common.resume unwind label %bb.bx

bb.az:                                            ; preds = %bb.ay, %bb.aw
  %storemerge39.i.i214 = phi ptr [ %i.fv, %bb.ay ], [ inttoptr (i64 1 to ptr), %bb.aw ]
  %storemerge.i.i215 = phi i64 [ %i.fu, %bb.ay ], [ 0, %bb.aw ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 2
  %.sroa.0144.0.copyload = load i16, ptr %i.fw, align 1 ; 2 uses
  %i.fx = lshr i16 %.sroa.0144.0.copyload, 8
  %.sroa.03.0.i224 = select i1 %1, i16 %i.fx, i16 %.sroa.0144.0.copyload
  %i.fy = and i16 %.sroa.03.0.i224, 1
  %.not182 = icmp eq i16 %i.fy, 0
  br i1 %.not182, label %bb.ba, label %.backedge399

bb.ba:                                            ; preds = %bb.az
  %i.fz = icmp eq i16 %.sroa.03.0.i40.i.i211, 0
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 4
  %.sroa.0146.0.copyload = load i16, ptr %i.ga, align 1 ; 2 uses
  %i.gb = call i16 @llvm.bswap.i16(i16 %.sroa.0146.0.copyload)
  %.sroa.03.0.i225 = select i1 %1, i16 %i.gb, i16 %.sroa.0146.0.copyload ; 2 uses
  %i.gc = icmp ult i16 %.sroa.03.0.i225, 2
  %brmerge = select i1 %i.gc, i1 true, i1 %i.fz
  br i1 %brmerge, label %.backedge399, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gd = icmp samesign ult i64 %i.fl, 8
  br i1 %i.gd, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %.sroa.08.0.copyload.i.i226 = load i32, ptr %i.ge, align 1, !noalias !65 ; 2 uses
  %i.gf = call i32 @llvm.bswap.i32(i32 %.sroa.08.0.copyload.i.i226)
  %.sroa.03.0.i.i.i227 = select i1 %i.fe, i32 %i.gf, i32 %.sroa.08.0.copyload.i.i226
  %i.gg = zext i32 %.sroa.03.0.i.i.i227 to i64
  %i.gh = icmp ult i64 %i.fl, %i.gg
  br i1 %i.gh, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  invoke void @_RINvMs9_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtNtBc_3elf7VerdauxNtNtBc_6endian10EndiannessE4nameRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.fm, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gi = load i64, ptr %i.i, align 8, !range !7, !noundef !6
  %i.gj = trunc nuw i64 %i.gi to i1
  %i.gk = load ptr, ptr %i.fa, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.gl = load i64, ptr %i.fb, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.gj, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gm = zext i16 %.sroa.03.0.i225 to i64        ; 3 uses
  %i.gn = load i64, ptr %i.fc, align 8, !noundef !6 ; 2 uses
  %i.go = icmp ugt i64 %i.gn, %i.gm
  br i1 %i.go, label %bb.bg, label %.invoke

bb.bg:                                            ; preds = %bb.bf
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 8
  %.sroa.0148.0.copyload = load i32, ptr %i.gp, align 1 ; 2 uses
  %i.gq = call i32 @llvm.bswap.i32(i32 %.sroa.0148.0.copyload)
  %.sroa.03.0.i230 = select i1 %1, i32 %i.gq, i32 %.sroa.0148.0.copyload
  %i.gr = load ptr, ptr %i.fd, align 8, !nonnull !6, !noundef !6
  %i.gs = getelementptr inbounds nuw [40 x i8], ptr %i.gr, i64 %i.gm ; 5 uses
  store ptr %i.gk, ptr %i.gs, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i64 %i.gl, ptr %.sroa.552.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store ptr null, ptr %.sroa.653.0..sroa_idx, align 8
  %.sroa.855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  store i32 %.sroa.03.0.i230, ptr %.sroa.855.0..sroa_idx, align 8
  %.sroa.956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 36
  store i8 1, ptr %.sroa.956.0..sroa_idx, align 4
  br label %.backedge399

.backedge399:                                     ; preds = %bb.ba, %bb.az, %bb.bg
  %i.gt = icmp eq i64 %storemerge.i.i215, 0
  br i1 %i.gt, label %.loopexit395, label %bb.au

_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251: ; preds = %bb.be, %bb.bc, %bb.bb, %bb.au, %bb.av, %bb.ax, %bb.bk, %bb.bl, %bb.bn, %bb.bu, %bb.bs, %bb.bp, %.lr.ph493
  %.sroa.0298.0.ph.sink = phi ptr [ @13, %bb.bl ], [ @15, %bb.bp ], [ %i.in, %bb.bs ], [ %i.is, %bb.bu ], [ @16, %.lr.ph493 ], [ @12, %bb.bn ], [ @14, %bb.bk ], [ @10, %bb.bc ], [ @8, %bb.av ], [ @7, %bb.ax ], [ @9, %bb.au ], [ %i.gk, %bb.be ], [ @11, %bb.bb ]
  %.sroa.7299.0.ph.sink = phi i64 [ 18, %bb.bl ], [ 20, %bb.bp ], [ %i.io, %bb.bs ], [ %i.it, %bb.bu ], [ 24, %.lr.ph493 ], [ 19, %bb.bn ], [ 24, %bb.bk ], [ 20, %bb.bc ], [ 18, %bb.av ], [ 19, %bb.ax ], [ 23, %bb.au ], [ %i.gl, %bb.be ], [ 24, %bb.bb ]
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0298.0.ph.sink, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7299.0.ph.sink, ptr %i.gv, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionEECs8aoZCP6pRcV_7objdump.exit unwind label %bb.bh

bb.bh:                                            ; preds = %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionEECs8aoZCP6pRcV_7objdump.exit: ; preds = %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.by

bb.bj:                                            ; preds = %.loopexit395
  %.sroa.7295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.7295.0.copyload = load i64, ptr %.sroa.7295.0..sroa_idx, align 8 ; 2 uses
  %i.gy = trunc nuw i8 %i.bn to i1                ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.hf = trunc nuw i8 %i.bn to i1
  %i.hg = icmp eq i64 %.sroa.7295.0.copyload, 0
  br i1 %i.hg, label %.loopexit394, label %.lr.ph683

.lr.ph683:                                        ; preds = %bb.bj
  %.sroa.0294.0.copyload = load ptr, ptr %5, align 8
  br label %bb.bk

.loopexit394:                                     ; preds = %.thread388, %bb.bj, %.loopexit395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %.sroa.4102.0..sroa_idx, align 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %.sroa.5103.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.by

bb.bk:                                            ; preds = %.lr.ph683, %.thread388
  %.sroa.0294.0682 = phi ptr [ %.sroa.0294.0.copyload, %.lr.ph683 ], [ %.sroa.0294.1, %.thread388 ] ; 7 uses
  %.sroa.7295.0681 = phi i64 [ %.sroa.7295.0.copyload, %.lr.ph683 ], [ %.sroa.7295.1, %.thread388 ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0294.0682) ]
  %i.hh = icmp samesign ult i64 %.sroa.7295.0681, 16
  br i1 %i.hh, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0294.0682, i64 8
  %.sroa.026.0.copyload.i.i231 = load i32, ptr %i.hi, align 1, !noalias !66 ; 2 uses
  %i.hj = call i32 @llvm.bswap.i32(i32 %.sroa.026.0.copyload.i.i231)
  %.sroa.03.0.i.i.i232 = select i1 %i.gy, i32 %i.hj, i32 %.sroa.026.0.copyload.i.i231
  %i.hk = zext i32 %.sroa.03.0.i.i.i232 to i64    ; 3 uses
  %i.hl = icmp ult i64 %.sroa.7295.0681, %i.hk
  br i1 %i.hl, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hm = sub nuw nsw i64 %.sroa.7295.0681, %i.hk
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0294.0682, i64 %i.hk
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0294.0682, i64 2
  %.sroa.028.0.copyload.i.i233 = load i16, ptr %i.ho, align 1, !noalias !66 ; 2 uses
  %i.hp = call i16 @llvm.bswap.i16(i16 %.sroa.028.0.copyload.i.i233)
  %.sroa.03.0.i40.i.i234 = select i1 %i.gy, i16 %i.hp, i16 %.sroa.028.0.copyload.i.i233 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0294.0682, i64 12
  %.sroa.030.0.copyload.i.i235 = load i32, ptr %i.hq, align 1, !noalias !66 ; 2 uses
  %i.hr = call i32 @llvm.bswap.i32(i32 %.sroa.030.0.copyload.i.i235)
  %.sroa.03.0.i41.i.i236 = select i1 %i.gy, i32 %i.hr, i32 %.sroa.030.0.copyload.i.i235 ; 2 uses
  %i.hs = icmp eq i32 %.sroa.03.0.i41.i.i236, 0
  br i1 %i.hs, label %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ht = zext i32 %.sroa.03.0.i41.i.i236 to i64  ; 3 uses
  %i.hu = icmp ult i64 %.sroa.7295.0681, %i.ht
  br i1 %i.hu, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hv = sub nuw nsw i64 %.sroa.7295.0681, %i.ht
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0294.0682, i64 %i.ht
  br label %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246

_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246: ; preds = %bb.bo, %bb.bm
  %.sroa.7295.1 = phi i64 [ 0, %bb.bm ], [ %i.hv, %bb.bo ] ; 2 uses
  %.sroa.0294.1 = phi ptr [ inttoptr (i64 1 to ptr), %bb.bm ], [ %i.hw, %bb.bo ]
  %i.hx = icmp eq i16 %.sroa.03.0.i40.i.i234, 0
  br i1 %i.hx, label %.thread388, label %.lr.ph493

.lr.ph493:                                        ; preds = %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246, %.backedge
  %.sroa.11308.0492 = phi i16 [ %i.ig, %.backedge ], [ %.sroa.03.0.i40.i.i234, %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246 ]
  %.sroa.7307.0491 = phi i64 [ %i.ie, %.backedge ], [ %i.hm, %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246 ] ; 3 uses
  %.sroa.0306.0490 = phi ptr [ %i.if, %.backedge ], [ %i.hn, %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246 ] ; 5 uses
  %i.hy = icmp samesign ult i64 %.sroa.7307.0491, 16
  br i1 %i.hy, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph493
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0306.0490, i64 12
  %.sroa.08.0.copyload.i.i247 = load i32, ptr %i.hz, align 1, !noalias !67 ; 2 uses
  %i.ia = call i32 @llvm.bswap.i32(i32 %.sroa.08.0.copyload.i.i247)
  %.sroa.03.0.i.i.i248 = select i1 %i.hf, i32 %i.ia, i32 %.sroa.08.0.copyload.i.i247
  %i.ib = zext i32 %.sroa.03.0.i.i.i248 to i64    ; 3 uses
  %i.ic = icmp ult i64 %.sroa.7307.0491, %i.ib
  br i1 %i.ic, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bq

.thread388:                                       ; preds = %.backedge, %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246
  %i.id = icmp eq i64 %.sroa.7295.1, 0
  br i1 %i.id, label %.loopexit394, label %bb.bk

bb.bq:                                            ; preds = %bb.bp
  %i.ie = sub nuw nsw i64 %.sroa.7307.0491, %i.ib
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0306.0490, i64 %i.ib
  %i.ig = add i16 %.sroa.11308.0492, -1           ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0306.0490, i64 6
  %.sroa.0154.0.copyload = load i16, ptr %i.ih, align 1 ; 2 uses
  %i.ii = call i16 @llvm.bswap.i16(i16 %.sroa.0154.0.copyload)
  %.sroa.03.0.i252 = select i1 %1, i16 %i.ii, i16 %.sroa.0154.0.copyload
  %i.ij = and i16 %.sroa.03.0.i252, 32767         ; 2 uses
  %i.ik = icmp samesign ult i16 %i.ij, 2
  br i1 %i.ik, label %.backedge, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  invoke void @_RINvMsb_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtNtBc_3elf7VernauxNtNtBc_6endian10EndiannessE4nameRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %.sroa.0306.0490, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.bs unwind label %.loopexit

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.il = load i64, ptr %i.h, align 8, !range !7, !noundef !6
  %i.im = trunc nuw i64 %i.il to i1
  %i.in = load ptr, ptr %i.gz, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.io = load i64, ptr %i.ha, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.im, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.sroa.0150.0.copyload = load i32, ptr %.sroa.0306.0490, align 1 ; 2 uses
  %i.ip = call i32 @llvm.bswap.i32(i32 %.sroa.0150.0.copyload)
  %.sroa.03.0.i253 = select i1 %1, i32 %i.ip, i32 %.sroa.0150.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  invoke void @_RINvMsa_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtNtBc_3elf7VerneedNtNtBc_6endian10EndiannessE4fileRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %.sroa.0294.0682, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.bu unwind label %.loopexit

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.iq = load i64, ptr %i.g, align 8, !range !7, !noundef !6
  %i.ir = trunc nuw i64 %i.iq to i1
  %i.is = load ptr, ptr %i.hb, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.it = load i64, ptr %i.hc, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.ir, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.iu = zext nneg i16 %i.ij to i64              ; 3 uses
  %i.iv = load i64, ptr %i.hd, align 8, !noundef !6 ; 2 uses
  %i.iw = icmp ugt i64 %i.iv, %i.iu
  br i1 %i.iw, label %bb.bw, label %.invoke

bb.bw:                                            ; preds = %bb.bv
  %i.ix = load ptr, ptr %i.he, align 8, !nonnull !6, !noundef !6
  %i.iy = getelementptr inbounds nuw [40 x i8], ptr %i.ix, i64 %i.iu ; 6 uses
  store ptr %i.in, ptr %i.iy, align 8
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i64 %i.io, ptr %.sroa.685.0..sroa_idx, align 8
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store ptr %i.is, ptr %.sroa.786.0..sroa_idx, align 8
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  store i64 %i.it, ptr %.sroa.887.0..sroa_idx, align 8
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  store i32 %.sroa.03.0.i253, ptr %.sroa.988.0..sroa_idx, align 8
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 36
  store i8 1, ptr %.sroa.1089.0..sroa_idx, align 4
  br label %.backedge

.backedge:                                        ; preds = %bb.bw, %bb.bq
  %i.iz = icmp eq i16 %i.ig, 0
  br i1 %i.iz, label %.thread388, label %.lr.ph493

.invoke:                                          ; preds = %bb.bf, %bb.bv
  %i.ja = phi i64 [ %i.iu, %bb.bv ], [ %i.gm, %bb.bf ]
  %i.jb = phi i64 [ %i.iv, %bb.bv ], [ %i.gn, %bb.bf ]
  %i.jc = phi ptr [ @2, %bb.bv ], [ @1, %bb.bf ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ja, i64 noundef %i.jb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jc) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bx:                                            ; preds = %.loopexit.split-lp
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.by:                                            ; preds = %.split.us, %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionEECs8aoZCP6pRcV_7objdump.exit, %.loopexit394
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB6_12VersionTableINtNtBc_3elf12FileHeader64NtNtBc_6endian10EndiannessEE5parseRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = load i8, ptr %i.k, align 8, !range !5, !noundef !6 ; 4 uses
  %.not = icmp eq i8 %i.l, 2                      ; 2 uses
  br i1 %.not, label %.loopexit401, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load ptr, ptr %4, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !6 ; 4 uses
  br i1 %i.m, label %.split439.us, label %.split439

.split439.us:                                     ; preds = %bb.b
  br i1 %1, label %.outer.us.us, label %.outer.us

.outer.us.us:                                     ; preds = %.split439.us, %.split414.us.us.split.us.us
  %.sroa.7.0.ph.us.us = phi i64 [ %storemerge.i.i.us.us.us.us, %.split414.us.us.split.us.us ], [ %i.p, %.split439.us ]
  %.sroa.0.0313.ph.us.us = phi ptr [ %storemerge39.i.i.us.us.us.us, %.split414.us.us.split.us.us ], [ %i.n, %.split439.us ]
  %.sroa.0.1.ph.us.us = phi i16 [ %spec.store.select.us.us, %.split414.us.us.split.us.us ], [ 0, %.split439.us ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.outer.us.us
  %.sroa.7.0.us.us.us.us = phi i64 [ %storemerge.i.i.us.us.us.us, %bb.i ], [ %.sroa.7.0.ph.us.us, %.outer.us.us ] ; 5 uses
  %.sroa.0.0313.us.us.us.us = phi ptr [ %storemerge39.i.i.us.us.us.us, %bb.i ], [ %.sroa.0.0313.ph.us.us, %.outer.us.us ] ; 6 uses
  %i.q = icmp eq i64 %.sroa.7.0.us.us.us.us, 0
  br i1 %i.q, label %.loopexit401, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp samesign ult i64 %.sroa.7.0.us.us.us.us, 20
  br i1 %i.r, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us.us.us, i64 12
  %.sroa.026.0.copyload.i.i.us.us.us.us = load i32, ptr %i.s, align 1, !noalias !113
  %i.t = tail call i32 @llvm.bswap.i32(i32 %.sroa.026.0.copyload.i.i.us.us.us.us)
  %i.u = zext i32 %i.t to i64
  %i.v = icmp ult i64 %.sroa.7.0.us.us.us.us, %i.u
  br i1 %i.v, label %.split.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us.us.us, i64 16
  %.sroa.030.0.copyload.i.i.us.us.us.us = load i32, ptr %i.w, align 1, !noalias !113 ; 2 uses
  %i.x = icmp eq i32 %.sroa.030.0.copyload.i.i.us.us.us.us, 0
  br i1 %i.x, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i32 @llvm.bswap.i32(i32 %.sroa.030.0.copyload.i.i.us.us.us.us)
  %i.z = zext i32 %i.y to i64                     ; 3 uses
  %i.aa = icmp ult i64 %.sroa.7.0.us.us.us.us, %i.z
  br i1 %i.aa, label %.split.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = sub nuw nsw i64 %.sroa.7.0.us.us.us.us, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us.us.us, i64 %i.z
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %storemerge39.i.i.us.us.us.us = phi ptr [ %i.ac, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.f ] ; 2 uses
  %storemerge.i.i.us.us.us.us = phi i64 [ %i.ab, %bb.h ], [ 0, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0313.us.us.us.us) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us.us.us, i64 2
  %.sroa.0140.0.copyload.us.us.us.us = load i16, ptr %i.ad, align 1
  %i.ae = and i16 %.sroa.0140.0.copyload.us.us.us.us, 256
  %.not187.us.us.us.us = icmp eq i16 %i.ae, 0
  br i1 %.not187.us.us.us.us, label %.split414.us.us.split.us.us, label %bb.c

.split414.us.us.split.us.us:                      ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us.us.us, i64 4
  %.sroa.0142.0.copyload.us.us = load i16, ptr %i.af, align 1
  %i.ag = tail call i16 @llvm.bswap.i16(i16 %.sroa.0142.0.copyload.us.us)
  %spec.store.select.us.us = tail call i16 @llvm.umax.i16(i16 %.sroa.0.1.ph.us.us, i16 %i.ag)
  br label %.outer.us.us

.outer.us:                                        ; preds = %.split439.us, %.split414.us.us.split
  %.sroa.7.0.ph.us = phi i64 [ %storemerge.i.i.us.us, %.split414.us.us.split ], [ %i.p, %.split439.us ]
  %.sroa.0.0313.ph.us = phi ptr [ %storemerge39.i.i.us.us, %.split414.us.us.split ], [ %i.n, %.split439.us ]
  %.sroa.0.1.ph.us = phi i16 [ %spec.store.select.us, %.split414.us.us.split ], [ 0, %.split439.us ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %.outer.us
  %.sroa.7.0.us.us = phi i64 [ %storemerge.i.i.us.us, %bb.p ], [ %.sroa.7.0.ph.us, %.outer.us ] ; 5 uses
  %.sroa.0.0313.us.us = phi ptr [ %storemerge39.i.i.us.us, %bb.p ], [ %.sroa.0.0313.ph.us, %.outer.us ] ; 6 uses
  %i.ah = icmp eq i64 %.sroa.7.0.us.us, 0
  br i1 %i.ah, label %.loopexit401, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp samesign ult i64 %.sroa.7.0.us.us, 20
  br i1 %i.ai, label %.split.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us, i64 12
  %.sroa.026.0.copyload.i.i.us.us = load i32, ptr %i.aj, align 1, !noalias !113
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %.sroa.026.0.copyload.i.i.us.us)
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp ult i64 %.sroa.7.0.us.us, %i.al
  br i1 %i.am, label %.split.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us, i64 16
  %.sroa.030.0.copyload.i.i.us.us = load i32, ptr %i.an, align 1, !noalias !113 ; 2 uses
  %i.ao = icmp eq i32 %.sroa.030.0.copyload.i.i.us.us, 0
  br i1 %i.ao, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %.sroa.030.0.copyload.i.i.us.us)
  %i.aq = zext i32 %i.ap to i64                   ; 3 uses
  %i.ar = icmp ult i64 %.sroa.7.0.us.us, %i.aq
  br i1 %i.ar, label %.split.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = sub nuw nsw i64 %.sroa.7.0.us.us, %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us, i64 %i.aq
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %storemerge39.i.i.us.us = phi ptr [ %i.at, %bb.o ], [ inttoptr (i64 1 to ptr), %bb.m ] ; 2 uses
  %storemerge.i.i.us.us = phi i64 [ %i.as, %bb.o ], [ 0, %bb.m ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0313.us.us) ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us, i64 2
  %.sroa.0140.0.copyload.us.us = load i16, ptr %i.au, align 1
  %i.av = and i16 %.sroa.0140.0.copyload.us.us, 1
  %.not187.us.us = icmp eq i16 %i.av, 0
  br i1 %.not187.us.us, label %.split414.us.us.split, label %bb.j

.split414.us.us.split:                            ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us.us, i64 4
  %.sroa.0142.0.copyload.us = load i16, ptr %i.aw, align 1
  %spec.store.select.us = tail call i16 @llvm.umax.i16(i16 %.sroa.0.1.ph.us, i16 %.sroa.0142.0.copyload.us)
  br label %.outer.us

.split439:                                        ; preds = %bb.b
  br i1 %1, label %.outer.us443, label %.outer

.outer.us443:                                     ; preds = %.split439, %.split414.split.us.us
  %.sroa.7.0.ph.us444 = phi i64 [ %storemerge.i.i.us423.us, %.split414.split.us.us ], [ %i.p, %.split439 ]
  %.sroa.0.0313.ph.us445 = phi ptr [ %storemerge39.i.i.us422.us, %.split414.split.us.us ], [ %i.n, %.split439 ]
  %.sroa.0.1.ph.us446 = phi i16 [ %spec.store.select.us449, %.split414.split.us.us ], [ 0, %.split439 ] ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.w, %.outer.us443
  %.sroa.7.0.us418.us = phi i64 [ %storemerge.i.i.us423.us, %bb.w ], [ %.sroa.7.0.ph.us444, %.outer.us443 ] ; 5 uses
  %.sroa.0.0313.us419.us = phi ptr [ %storemerge39.i.i.us422.us, %bb.w ], [ %.sroa.0.0313.ph.us445, %.outer.us443 ] ; 6 uses
  %i.ax = icmp eq i64 %.sroa.7.0.us418.us, 0
  br i1 %i.ax, label %.loopexit401, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = icmp samesign ult i64 %.sroa.7.0.us418.us, 20
  br i1 %i.ay, label %.split.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us419.us, i64 12
  %.sroa.026.0.copyload.i.i.us420.us = load i32, ptr %i.az, align 1, !noalias !113
  %i.ba = zext i32 %.sroa.026.0.copyload.i.i.us420.us to i64
  %i.bb = icmp ult i64 %.sroa.7.0.us418.us, %i.ba
  br i1 %i.bb, label %.split.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us419.us, i64 16
  %.sroa.030.0.copyload.i.i.us421.us = load i32, ptr %i.bc, align 1, !noalias !113 ; 2 uses
  %i.bd = icmp eq i32 %.sroa.030.0.copyload.i.i.us421.us, 0
  br i1 %i.bd, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = zext i32 %.sroa.030.0.copyload.i.i.us421.us to i64 ; 3 uses
  %i.bf = icmp ult i64 %.sroa.7.0.us418.us, %i.be
  br i1 %i.bf, label %.split.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = sub nuw nsw i64 %.sroa.7.0.us418.us, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us419.us, i64 %i.be
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %storemerge39.i.i.us422.us = phi ptr [ %i.bh, %bb.v ], [ inttoptr (i64 1 to ptr), %bb.t ] ; 2 uses
  %storemerge.i.i.us423.us = phi i64 [ %i.bg, %bb.v ], [ 0, %bb.t ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0313.us419.us) ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us419.us, i64 2
  %.sroa.0140.0.copyload.us424.us = load i16, ptr %i.bi, align 1
  %i.bj = and i16 %.sroa.0140.0.copyload.us424.us, 256
  %.not187.us426.us = icmp eq i16 %i.bj, 0
  br i1 %.not187.us426.us, label %.split414.split.us.us, label %bb.q

.split414.split.us.us:                            ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0313.us419.us, i64 4
  %.sroa.0142.0.copyload.us447 = load i16, ptr %i.bk, align 1
  %i.bl = tail call i16 @llvm.bswap.i16(i16 %.sroa.0142.0.copyload.us447)
  %spec.store.select.us449 = tail call i16 @llvm.umax.i16(i16 %.sroa.0.1.ph.us446, i16 %i.bl)
  br label %.outer.us443

.outer:                                           ; preds = %.split439, %.split414.split
  %.sroa.7.0.ph = phi i64 [ %storemerge.i.i, %.split414.split ], [ %i.p, %.split439 ]
  %.sroa.0.0313.ph = phi ptr [ %storemerge39.i.i, %.split414.split ], [ %i.n, %.split439 ]
  %.sroa.0.1.ph = phi i16 [ %spec.store.select, %.split414.split ], [ 0, %.split439 ] ; 2 uses
  br label %bb.x

.loopexit401:                                     ; preds = %bb.x, %bb.q, %bb.j, %bb.c, %bb.a
  %.sroa.0.0 = phi i16 [ 0, %bb.a ], [ %.sroa.0.1.ph.us446, %bb.q ], [ %.sroa.0.1.ph.us, %bb.j ], [ %.sroa.0.1.ph.us.us, %bb.c ], [ %.sroa.0.1.ph, %bb.x ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bn = load i8, ptr %i.bm, align 8, !range !5, !noundef !6 ; 5 uses
  %.not174 = icmp eq i8 %i.bn, 2                  ; 2 uses
  br i1 %.not174, label %.loopexit400, label %bb.ae

bb.x:                                             ; preds = %.outer, %bb.ad
  %.sroa.7.0 = phi i64 [ %storemerge.i.i, %bb.ad ], [ %.sroa.7.0.ph, %.outer ] ; 5 uses
  %.sroa.0.0313 = phi ptr [ %storemerge39.i.i, %bb.ad ], [ %.sroa.0.0313.ph, %.outer ] ; 6 uses
  %i.bo = icmp eq i64 %.sroa.7.0, 0
  br i1 %i.bo, label %.loopexit401, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = icmp samesign ult i64 %.sroa.7.0, 20
  br i1 %i.bp, label %.split.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0313, i64 12
  %.sroa.026.0.copyload.i.i = load i32, ptr %i.bq, align 1, !noalias !113
  %i.br = zext i32 %.sroa.026.0.copyload.i.i to i64
  %i.bs = icmp ult i64 %.sroa.7.0, %i.br
  br i1 %i.bs, label %.split.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0313, i64 16
  %.sroa.030.0.copyload.i.i = load i32, ptr %i.bt, align 1, !noalias !113 ; 2 uses
  %i.bu = icmp eq i32 %.sroa.030.0.copyload.i.i, 0
  br i1 %i.bu, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = zext i32 %.sroa.030.0.copyload.i.i to i64 ; 3 uses
  %i.bw = icmp ult i64 %.sroa.7.0, %i.bv
  br i1 %i.bw, label %.split.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = sub nuw nsw i64 %.sroa.7.0, %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0313, i64 %i.bv
  br label %bb.ad

.split.us:                                        ; preds = %bb.ab, %bb.z, %bb.y, %bb.r, %bb.s, %bb.u, %bb.k, %bb.l, %bb.n, %bb.g, %bb.e, %bb.d
  %.us-phi411 = phi i64 [ 18, %bb.e ], [ 18, %bb.l ], [ 18, %bb.s ], [ 19, %bb.g ], [ 23, %bb.d ], [ 19, %bb.n ], [ 23, %bb.k ], [ 23, %bb.r ], [ 19, %bb.u ], [ 19, %bb.ab ], [ 23, %bb.y ], [ 18, %bb.z ]
  %.us-phi412 = phi ptr [ @8, %bb.e ], [ @8, %bb.l ], [ @8, %bb.s ], [ @7, %bb.g ], [ @9, %bb.d ], [ @7, %bb.n ], [ @9, %bb.k ], [ @9, %bb.r ], [ @7, %bb.u ], [ @7, %bb.ab ], [ @9, %bb.y ], [ @8, %bb.z ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.us-phi412, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.us-phi411, ptr %i.ca, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.by

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %storemerge39.i.i = phi ptr [ %i.by, %bb.ac ], [ inttoptr (i64 1 to ptr), %bb.aa ] ; 2 uses
  %storemerge.i.i = phi i64 [ %i.bx, %bb.ac ], [ 0, %bb.aa ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0313) ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0313, i64 2
  %.sroa.0140.0.copyload = load i16, ptr %i.cb, align 1
  %i.cc = and i16 %.sroa.0140.0.copyload, 1
  %.not187 = icmp eq i16 %i.cc, 0
  br i1 %.not187, label %.split414.split, label %bb.x

.split414.split:                                  ; preds = %bb.ad
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0313, i64 4
  %.sroa.0142.0.copyload = load i16, ptr %i.cd, align 1
  %spec.store.select = tail call i16 @llvm.umax.i16(i16 %.sroa.0.1.ph, i16 %.sroa.0142.0.copyload)
  br label %.outer

bb.ae:                                            ; preds = %.loopexit401
  %i.ce = trunc nuw i8 %i.bn to i1                ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !6 ; 2 uses
  %i.ch = trunc nuw i8 %i.bn to i1
  %i.ci = icmp eq i64 %i.cg, 0
  br i1 %i.ci, label %.loopexit400, label %.lr.ph677

.lr.ph677:                                        ; preds = %bb.ae
  %i.cj = load ptr, ptr %5, align 8, !nonnull !6, !noundef !6
  br label %bb.ai

.loopexit400:                                     ; preds = %.thread, %bb.ae, %.loopexit401
  %.sroa.0.2 = phi i16 [ %.sroa.0.0, %.loopexit401 ], [ %.sroa.0.0, %bb.ae ], [ %.sroa.0.4.lcssa, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = zext i16 %.sroa.0.2 to i64              ; 2 uses
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !114
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 1, 65537) %i.cl, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40), !noalias !114
  %i.cm = load i64, ptr %i.a, align 8, !range !7, !noalias !114, !noundef !6
  %i.cn = trunc nuw i64 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !range !8, !noalias !114, !noundef !6 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.cn, label %bb.af, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8aoZCP6pRcV_7objdump.exit.i, !prof !9

bb.af:                                            ; preds = %.loopexit400
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !114
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cp, i64 %i.cr) #21, !noalias !114
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8aoZCP6pRcV_7objdump.exit.i: ; preds = %.loopexit400
  %i.cs = load ptr, ptr %i.cq, align 8, !noalias !114, !nonnull !6, !noundef !6
  %i.ct = icmp ugt i64 %i.cp, %i.ck
  tail call void @llvm.assume(i1 %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  store i64 %i.cp, ptr %i.c, align 8, !noalias !114
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.cs, ptr %i.cu, align 8, !noalias !114
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.cv, align 8, !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !114
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !noalias !115
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %.sroa.6276.0..sroa_idx, align 8, !noalias !115
  %.sroa.7277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i8 0, ptr %.sroa.7277.0..sroa_idx, align 4, !noalias !115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionE11extend_withCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef range(i64 1, 65537) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b)
          to label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8aoZCP6pRcV_7objdump.exit unwind label %bb.ag, !noalias !114

bb.ag:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8aoZCP6pRcV_7objdump.exit.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %common.resume unwind label %bb.ah, !noalias !114

bb.ah:                                            ; preds = %bb.ag
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !114
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.bh, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.gw, %bb.bh ], [ %i.cw, %bb.ag ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8aoZCP6pRcV_7objdump.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8aoZCP6pRcV_7objdump.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !114
  br i1 %.not, label %.loopexit395, label %bb.at

bb.ai:                                            ; preds = %.lr.ph677, %.thread
  %.sroa.0.3676 = phi i16 [ %.sroa.0.0, %.lr.ph677 ], [ %.sroa.0.4.lcssa, %.thread ] ; 4 uses
  %.sroa.0259.0675 = phi ptr [ %i.cj, %.lr.ph677 ], [ %.sroa.0259.1, %.thread ] ; 6 uses
  %.sroa.7260.0674 = phi i64 [ %i.cg, %.lr.ph677 ], [ %.sroa.7260.1, %.thread ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0259.0675) ]
  %i.cy = icmp samesign ult i64 %.sroa.7260.0674, 16
  br i1 %i.cy, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0259.0675, i64 8
  %.sroa.026.0.copyload.i.i190 = load i32, ptr %i.cz, align 1, !noalias !117 ; 2 uses
  %i.da = tail call i32 @llvm.bswap.i32(i32 %.sroa.026.0.copyload.i.i190)
  %.sroa.03.0.i.i.i191 = select i1 %i.ce, i32 %i.da, i32 %.sroa.026.0.copyload.i.i190
  %i.db = zext i32 %.sroa.03.0.i.i.i191 to i64    ; 3 uses
  %i.dc = icmp ult i64 %.sroa.7260.0674, %i.db
  br i1 %i.dc, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = sub nuw nsw i64 %.sroa.7260.0674, %i.db ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0259.0675, i64 %i.db ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0259.0675, i64 2
  %.sroa.028.0.copyload.i.i192 = load i16, ptr %i.df, align 1, !noalias !117 ; 2 uses
  %i.dg = tail call i16 @llvm.bswap.i16(i16 %.sroa.028.0.copyload.i.i192) ; 2 uses
  %.sroa.03.0.i40.i.i193 = select i1 %i.ce, i16 %i.dg, i16 %.sroa.028.0.copyload.i.i192 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0259.0675, i64 12
  %.sroa.030.0.copyload.i.i194 = load i32, ptr %i.dh, align 1, !noalias !117 ; 2 uses
  %i.di = tail call i32 @llvm.bswap.i32(i32 %.sroa.030.0.copyload.i.i194)
  %.sroa.03.0.i41.i.i195 = select i1 %i.ce, i32 %i.di, i32 %.sroa.030.0.copyload.i.i194 ; 2 uses
  %i.dj = icmp eq i32 %.sroa.03.0.i41.i.i195, 0
  br i1 %i.dj, label %.preheader, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dk = zext i32 %.sroa.03.0.i41.i.i195 to i64  ; 3 uses
  %i.dl = icmp ult i64 %.sroa.7260.0674, %i.dk
  br i1 %i.dl, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dm = sub nuw nsw i64 %.sroa.7260.0674, %i.dk
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0259.0675, i64 %i.dk
  br label %.preheader

.preheader:                                       ; preds = %bb.am, %bb.ak
  %.sroa.7260.1 = phi i64 [ 0, %bb.ak ], [ %i.dm, %bb.am ] ; 2 uses
  %.sroa.0259.1 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ak ], [ %i.dn, %bb.am ]
  %i.do = icmp eq i16 %.sroa.03.0.i40.i.i193, 0
  br i1 %i.do, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.ch, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.ao
  %.sroa.0.4465.us = phi i16 [ %spec.store.select1.us, %bb.ao ], [ %.sroa.0.3676, %.lr.ph ]
  %.sroa.0269.0464.us = phi ptr [ %i.dv, %bb.ao ], [ %i.de, %.lr.ph ] ; 3 uses
  %.sroa.7270.0463.us = phi i64 [ %i.dw, %bb.ao ], [ %i.dd, %.lr.ph ] ; 3 uses
  %.sroa.11271.0462.us = phi i16 [ %i.du, %bb.ao ], [ %i.dg, %.lr.ph ]
  %i.dp = icmp samesign ult i64 %.sroa.7270.0463.us, 16
  br i1 %i.dp, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.an

bb.an:                                            ; preds = %.lr.ph.split.us
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464.us, i64 12
  %.sroa.08.0.copyload.i.i.us = load i32, ptr %i.dq, align 1, !noalias !118
  %i.dr = tail call i32 @llvm.bswap.i32(i32 %.sroa.08.0.copyload.i.i.us)
  %i.ds = zext i32 %i.dr to i64                   ; 3 uses
  %i.dt = icmp ult i64 %.sroa.7270.0463.us, %i.ds
  br i1 %i.dt, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.du = add i16 %.sroa.11271.0462.us, -1        ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464.us, i64 %i.ds
  %i.dw = sub nuw nsw i64 %.sroa.7270.0463.us, %i.ds
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464.us, i64 6
  %.sroa.0152.0.copyload.us = load i16, ptr %i.dx, align 1 ; 2 uses
  %i.dy = tail call i16 @llvm.bswap.i16(i16 %.sroa.0152.0.copyload.us)
  %.sroa.03.0.i207.us = select i1 %1, i16 %i.dy, i16 %.sroa.0152.0.copyload.us
  %i.dz = and i16 %.sroa.03.0.i207.us, 32767
  %spec.store.select1.us = tail call i16 @llvm.umax.i16(i16 %.sroa.0.4465.us, i16 %i.dz) ; 2 uses
  %i.ea = icmp eq i16 %i.du, 0
  br i1 %i.ea, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %1, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.aq
  %.sroa.0.4465.us473 = phi i16 [ %spec.store.select1.us481, %bb.aq ], [ %.sroa.0.3676, %.lr.ph.split ]
  %.sroa.0269.0464.us474 = phi ptr [ %i.eg, %bb.aq ], [ %i.de, %.lr.ph.split ] ; 3 uses
  %.sroa.7270.0463.us475 = phi i64 [ %i.eh, %bb.aq ], [ %i.dd, %.lr.ph.split ] ; 3 uses
  %.sroa.11271.0462.us476 = phi i16 [ %i.ef, %bb.aq ], [ %.sroa.03.0.i40.i.i193, %.lr.ph.split ]
  %i.eb = icmp samesign ult i64 %.sroa.7270.0463.us475, 16
  br i1 %i.eb, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.split.split.us
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464.us474, i64 12
  %.sroa.08.0.copyload.i.i.us477 = load i32, ptr %i.ec, align 1, !noalias !118
  %i.ed = zext i32 %.sroa.08.0.copyload.i.i.us477 to i64 ; 3 uses
  %i.ee = icmp ult i64 %.sroa.7270.0463.us475, %i.ed
  br i1 %i.ee, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ef = add i16 %.sroa.11271.0462.us476, -1     ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464.us474, i64 %i.ed
  %i.eh = sub nuw nsw i64 %.sroa.7270.0463.us475, %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464.us474, i64 6
  %.sroa.0152.0.copyload.us479 = load i16, ptr %i.ei, align 1
  %i.ej = and i16 %.sroa.0152.0.copyload.us479, -129
  %i.ek = tail call i16 @llvm.bswap.i16(i16 %i.ej)
  %spec.store.select1.us481 = tail call i16 @llvm.umax.i16(i16 %.sroa.0.4465.us473, i16 %i.ek) ; 2 uses
  %i.el = icmp eq i16 %i.ef, 0
  br i1 %i.el, label %.thread, label %.lr.ph.split.split.us

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.as
  %.sroa.0.4465 = phi i16 [ %spec.store.select1, %bb.as ], [ %.sroa.0.3676, %.lr.ph.split ]
  %.sroa.0269.0464 = phi ptr [ %i.er, %bb.as ], [ %i.de, %.lr.ph.split ] ; 3 uses
  %.sroa.7270.0463 = phi i64 [ %i.es, %bb.as ], [ %i.dd, %.lr.ph.split ] ; 3 uses
  %.sroa.11271.0462 = phi i16 [ %i.eq, %bb.as ], [ %.sroa.03.0.i40.i.i193, %.lr.ph.split ]
  %i.em = icmp samesign ult i64 %.sroa.7270.0463, 16
  br i1 %i.em, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.split.split
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464, i64 12
  %.sroa.08.0.copyload.i.i = load i32, ptr %i.en, align 1, !noalias !118
  %i.eo = zext i32 %.sroa.08.0.copyload.i.i to i64 ; 3 uses
  %i.ep = icmp ult i64 %.sroa.7270.0463, %i.eo
  br i1 %i.ep, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eq = add i16 %.sroa.11271.0462, -1           ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464, i64 %i.eo
  %i.es = sub nuw nsw i64 %.sroa.7270.0463, %i.eo
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0269.0464, i64 6
  %.sroa.0152.0.copyload = load i16, ptr %i.et, align 1
  %i.eu = and i16 %.sroa.0152.0.copyload, 32767
  %spec.store.select1 = tail call i16 @llvm.umax.i16(i16 %.sroa.0.4465, i16 %i.eu) ; 2 uses
  %i.ev = icmp eq i16 %i.eq, 0
  br i1 %i.ev, label %.thread, label %.lr.ph.split.split

.thread:                                          ; preds = %bb.as, %bb.aq, %bb.ao, %.preheader
  %.sroa.0.4.lcssa = phi i16 [ %.sroa.0.3676, %.preheader ], [ %spec.store.select1.us481, %bb.aq ], [ %spec.store.select1.us, %bb.ao ], [ %spec.store.select1, %bb.as ] ; 2 uses
  %i.ew = icmp eq i64 %.sroa.7260.1, 0
  br i1 %i.ew, label %.loopexit400, label %bb.ai

_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.ai, %bb.aj, %bb.al, %.lr.ph.split.split, %bb.ar, %.lr.ph.split.split.us, %bb.ap, %bb.an, %.lr.ph.split.us
  %.us-phi468.sink = phi ptr [ @15, %bb.an ], [ @15, %bb.ap ], [ @16, %.lr.ph.split.split ], [ @16, %.lr.ph.split.us ], [ @16, %.lr.ph.split.split.us ], [ @15, %bb.ar ], [ @13, %bb.aj ], [ @14, %bb.ai ], [ @12, %bb.al ]
  %.us-phi469.sink = phi i64 [ 20, %bb.an ], [ 20, %bb.ap ], [ 24, %.lr.ph.split.split ], [ 24, %.lr.ph.split.us ], [ 24, %.lr.ph.split.split.us ], [ 20, %bb.ar ], [ 18, %bb.aj ], [ 24, %bb.ai ], [ 19, %bb.al ]
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.us-phi468.sink, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.us-phi469.sink, ptr %i.ey, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.by

bb.at:                                            ; preds = %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8aoZCP6pRcV_7objdump.exit
  %.sroa.7279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.7279.0.copyload = load i64, ptr %.sroa.7279.0..sroa_idx, align 8 ; 2 uses
  %i.ez = trunc nuw i8 %i.l to i1                 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fe = trunc nuw i8 %i.l to i1
  %i.ff = icmp eq i64 %.sroa.7279.0.copyload, 0
  br i1 %i.ff, label %.loopexit395, label %.lr.ph680

.lr.ph680:                                        ; preds = %bb.at
  %.sroa.0278.0.copyload = load ptr, ptr %4, align 8
  br label %bb.au

.loopexit395:                                     ; preds = %.backedge399, %bb.at, %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8aoZCP6pRcV_7objdump.exit
  br i1 %.not174, label %.loopexit394, label %bb.bj

bb.au:                                            ; preds = %.lr.ph680, %.backedge399
  %.sroa.0278.0679 = phi ptr [ %.sroa.0278.0.copyload, %.lr.ph680 ], [ %storemerge39.i.i214, %.backedge399 ] ; 9 uses
  %.sroa.7279.0678 = phi i64 [ %.sroa.7279.0.copyload, %.lr.ph680 ], [ %storemerge.i.i215, %.backedge399 ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0278.0679) ]
  %i.fg = icmp samesign ult i64 %.sroa.7279.0678, 20
  br i1 %i.fg, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 12
  %.sroa.026.0.copyload.i.i208 = load i32, ptr %i.fh, align 1, !noalias !119 ; 2 uses
  %i.fi = call i32 @llvm.bswap.i32(i32 %.sroa.026.0.copyload.i.i208)
  %.sroa.03.0.i.i.i209 = select i1 %i.ez, i32 %i.fi, i32 %.sroa.026.0.copyload.i.i208
  %i.fj = zext i32 %.sroa.03.0.i.i.i209 to i64    ; 3 uses
  %i.fk = icmp ult i64 %.sroa.7279.0678, %i.fj
  br i1 %i.fk, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fl = sub nuw nsw i64 %.sroa.7279.0678, %i.fj ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 %i.fj ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 6
  %.sroa.028.0.copyload.i.i210 = load i16, ptr %i.fn, align 1, !noalias !119 ; 2 uses
  %i.fo = call i16 @llvm.bswap.i16(i16 %.sroa.028.0.copyload.i.i210)
  %.sroa.03.0.i40.i.i211 = select i1 %i.ez, i16 %i.fo, i16 %.sroa.028.0.copyload.i.i210
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 16
  %.sroa.030.0.copyload.i.i212 = load i32, ptr %i.fp, align 1, !noalias !119 ; 2 uses
  %i.fq = call i32 @llvm.bswap.i32(i32 %.sroa.030.0.copyload.i.i212)
  %.sroa.03.0.i41.i.i213 = select i1 %i.ez, i32 %i.fq, i32 %.sroa.030.0.copyload.i.i212 ; 2 uses
  %i.fr = icmp eq i32 %.sroa.03.0.i41.i.i213, 0
  br i1 %i.fr, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fs = zext i32 %.sroa.03.0.i41.i.i213 to i64  ; 3 uses
  %i.ft = icmp ult i64 %.sroa.7279.0678, %i.fs
  br i1 %i.ft, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fu = sub nuw nsw i64 %.sroa.7279.0678, %i.fs
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 %i.fs
  br label %bb.az

.loopexit:                                        ; preds = %bb.br, %bb.bt
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.bd
  %lpad.loopexit396 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp397 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit396, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp397, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #22
          to label %common.resume unwind label %bb.bx

bb.az:                                            ; preds = %bb.ay, %bb.aw
  %storemerge39.i.i214 = phi ptr [ %i.fv, %bb.ay ], [ inttoptr (i64 1 to ptr), %bb.aw ]
  %storemerge.i.i215 = phi i64 [ %i.fu, %bb.ay ], [ 0, %bb.aw ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 2
  %.sroa.0144.0.copyload = load i16, ptr %i.fw, align 1 ; 2 uses
  %i.fx = lshr i16 %.sroa.0144.0.copyload, 8
  %.sroa.03.0.i224 = select i1 %1, i16 %i.fx, i16 %.sroa.0144.0.copyload
  %i.fy = and i16 %.sroa.03.0.i224, 1
  %.not182 = icmp eq i16 %i.fy, 0
  br i1 %.not182, label %bb.ba, label %.backedge399

bb.ba:                                            ; preds = %bb.az
  %i.fz = icmp eq i16 %.sroa.03.0.i40.i.i211, 0
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 4
  %.sroa.0146.0.copyload = load i16, ptr %i.ga, align 1 ; 2 uses
  %i.gb = call i16 @llvm.bswap.i16(i16 %.sroa.0146.0.copyload)
  %.sroa.03.0.i225 = select i1 %1, i16 %i.gb, i16 %.sroa.0146.0.copyload ; 2 uses
  %i.gc = icmp ult i16 %.sroa.03.0.i225, 2
  %brmerge = select i1 %i.gc, i1 true, i1 %i.fz
  br i1 %brmerge, label %.backedge399, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gd = icmp samesign ult i64 %i.fl, 8
  br i1 %i.gd, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %.sroa.08.0.copyload.i.i226 = load i32, ptr %i.ge, align 1, !noalias !120 ; 2 uses
  %i.gf = call i32 @llvm.bswap.i32(i32 %.sroa.08.0.copyload.i.i226)
  %.sroa.03.0.i.i.i227 = select i1 %i.fe, i32 %i.gf, i32 %.sroa.08.0.copyload.i.i226
  %i.gg = zext i32 %.sroa.03.0.i.i.i227 to i64
  %i.gh = icmp ult i64 %i.fl, %i.gg
  br i1 %i.gh, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  invoke void @_RINvMs9_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtNtBc_3elf7VerdauxNtNtBc_6endian10EndiannessE4nameRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.fm, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gi = load i64, ptr %i.i, align 8, !range !7, !noundef !6
  %i.gj = trunc nuw i64 %i.gi to i1
  %i.gk = load ptr, ptr %i.fa, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.gl = load i64, ptr %i.fb, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.gj, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gm = zext i16 %.sroa.03.0.i225 to i64        ; 3 uses
  %i.gn = load i64, ptr %i.fc, align 8, !noundef !6 ; 2 uses
  %i.go = icmp ugt i64 %i.gn, %i.gm
  br i1 %i.go, label %bb.bg, label %.invoke

bb.bg:                                            ; preds = %bb.bf
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0278.0679, i64 8
  %.sroa.0148.0.copyload = load i32, ptr %i.gp, align 1 ; 2 uses
  %i.gq = call i32 @llvm.bswap.i32(i32 %.sroa.0148.0.copyload)
  %.sroa.03.0.i230 = select i1 %1, i32 %i.gq, i32 %.sroa.0148.0.copyload
  %i.gr = load ptr, ptr %i.fd, align 8, !nonnull !6, !noundef !6
  %i.gs = getelementptr inbounds nuw [40 x i8], ptr %i.gr, i64 %i.gm ; 5 uses
  store ptr %i.gk, ptr %i.gs, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i64 %i.gl, ptr %.sroa.552.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store ptr null, ptr %.sroa.653.0..sroa_idx, align 8
  %.sroa.855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  store i32 %.sroa.03.0.i230, ptr %.sroa.855.0..sroa_idx, align 8
  %.sroa.956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 36
  store i8 1, ptr %.sroa.956.0..sroa_idx, align 4
  br label %.backedge399

.backedge399:                                     ; preds = %bb.ba, %bb.az, %bb.bg
  %i.gt = icmp eq i64 %storemerge.i.i215, 0
  br i1 %i.gt, label %.loopexit395, label %bb.au

_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251: ; preds = %bb.be, %bb.bc, %bb.bb, %bb.au, %bb.av, %bb.ax, %bb.bk, %bb.bl, %bb.bn, %bb.bu, %bb.bs, %bb.bp, %.lr.ph493
  %.sroa.0298.0.ph.sink = phi ptr [ @13, %bb.bl ], [ @15, %bb.bp ], [ %i.in, %bb.bs ], [ %i.is, %bb.bu ], [ @16, %.lr.ph493 ], [ @12, %bb.bn ], [ @14, %bb.bk ], [ @10, %bb.bc ], [ @8, %bb.av ], [ @7, %bb.ax ], [ @9, %bb.au ], [ %i.gk, %bb.be ], [ @11, %bb.bb ]
  %.sroa.7299.0.ph.sink = phi i64 [ 18, %bb.bl ], [ 20, %bb.bp ], [ %i.io, %bb.bs ], [ %i.it, %bb.bu ], [ 24, %.lr.ph493 ], [ 19, %bb.bn ], [ 24, %bb.bk ], [ 20, %bb.bc ], [ 18, %bb.av ], [ 19, %bb.ax ], [ 23, %bb.au ], [ %i.gl, %bb.be ], [ 24, %bb.bb ]
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0298.0.ph.sink, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7299.0.ph.sink, ptr %i.gv, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionEECs8aoZCP6pRcV_7objdump.exit unwind label %bb.bh

bb.bh:                                            ; preds = %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionEECs8aoZCP6pRcV_7objdump.exit: ; preds = %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.by

bb.bj:                                            ; preds = %.loopexit395
  %.sroa.7295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.7295.0.copyload = load i64, ptr %.sroa.7295.0..sroa_idx, align 8 ; 2 uses
  %i.gy = trunc nuw i8 %i.bn to i1                ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.hf = trunc nuw i8 %i.bn to i1
  %i.hg = icmp eq i64 %.sroa.7295.0.copyload, 0
  br i1 %i.hg, label %.loopexit394, label %.lr.ph683

.lr.ph683:                                        ; preds = %bb.bj
  %.sroa.0294.0.copyload = load ptr, ptr %5, align 8
  br label %bb.bk

.loopexit394:                                     ; preds = %.thread388, %bb.bj, %.loopexit395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %.sroa.4102.0..sroa_idx, align 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %.sroa.5103.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.by

bb.bk:                                            ; preds = %.lr.ph683, %.thread388
  %.sroa.0294.0682 = phi ptr [ %.sroa.0294.0.copyload, %.lr.ph683 ], [ %.sroa.0294.1, %.thread388 ] ; 7 uses
  %.sroa.7295.0681 = phi i64 [ %.sroa.7295.0.copyload, %.lr.ph683 ], [ %.sroa.7295.1, %.thread388 ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0294.0682) ]
  %i.hh = icmp samesign ult i64 %.sroa.7295.0681, 16
  br i1 %i.hh, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0294.0682, i64 8
  %.sroa.026.0.copyload.i.i231 = load i32, ptr %i.hi, align 1, !noalias !121 ; 2 uses
  %i.hj = call i32 @llvm.bswap.i32(i32 %.sroa.026.0.copyload.i.i231)
  %.sroa.03.0.i.i.i232 = select i1 %i.gy, i32 %i.hj, i32 %.sroa.026.0.copyload.i.i231
  %i.hk = zext i32 %.sroa.03.0.i.i.i232 to i64    ; 3 uses
  %i.hl = icmp ult i64 %.sroa.7295.0681, %i.hk
  br i1 %i.hl, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hm = sub nuw nsw i64 %.sroa.7295.0681, %i.hk
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0294.0682, i64 %i.hk
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0294.0682, i64 2
  %.sroa.028.0.copyload.i.i233 = load i16, ptr %i.ho, align 1, !noalias !121 ; 2 uses
  %i.hp = call i16 @llvm.bswap.i16(i16 %.sroa.028.0.copyload.i.i233)
  %.sroa.03.0.i40.i.i234 = select i1 %i.gy, i16 %i.hp, i16 %.sroa.028.0.copyload.i.i233 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0294.0682, i64 12
  %.sroa.030.0.copyload.i.i235 = load i32, ptr %i.hq, align 1, !noalias !121 ; 2 uses
  %i.hr = call i32 @llvm.bswap.i32(i32 %.sroa.030.0.copyload.i.i235)
  %.sroa.03.0.i41.i.i236 = select i1 %i.gy, i32 %i.hr, i32 %.sroa.030.0.copyload.i.i235 ; 2 uses
  %i.hs = icmp eq i32 %.sroa.03.0.i41.i.i236, 0
  br i1 %i.hs, label %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ht = zext i32 %.sroa.03.0.i41.i.i236 to i64  ; 3 uses
  %i.hu = icmp ult i64 %.sroa.7295.0681, %i.ht
  br i1 %i.hu, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hv = sub nuw nsw i64 %.sroa.7295.0681, %i.ht
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0294.0682, i64 %i.ht
  br label %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246

_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246: ; preds = %bb.bo, %bb.bm
  %.sroa.7295.1 = phi i64 [ 0, %bb.bm ], [ %i.hv, %bb.bo ] ; 2 uses
  %.sroa.0294.1 = phi ptr [ inttoptr (i64 1 to ptr), %bb.bm ], [ %i.hw, %bb.bo ]
  %i.hx = icmp eq i16 %.sroa.03.0.i40.i.i234, 0
  br i1 %i.hx, label %.thread388, label %.lr.ph493

.lr.ph493:                                        ; preds = %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246, %.backedge
  %.sroa.11308.0492 = phi i16 [ %i.ig, %.backedge ], [ %.sroa.03.0.i40.i.i234, %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246 ]
  %.sroa.7307.0491 = phi i64 [ %i.ie, %.backedge ], [ %i.hm, %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246 ] ; 3 uses
  %.sroa.0306.0490 = phi ptr [ %i.if, %.backedge ], [ %i.hn, %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246 ] ; 5 uses
  %i.hy = icmp samesign ult i64 %.sroa.7307.0491, 16
  br i1 %i.hy, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph493
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0306.0490, i64 12
  %.sroa.08.0.copyload.i.i247 = load i32, ptr %i.hz, align 1, !noalias !122 ; 2 uses
  %i.ia = call i32 @llvm.bswap.i32(i32 %.sroa.08.0.copyload.i.i247)
  %.sroa.03.0.i.i.i248 = select i1 %i.hf, i32 %i.ia, i32 %.sroa.08.0.copyload.i.i247
  %i.ib = zext i32 %.sroa.03.0.i.i.i248 to i64    ; 3 uses
  %i.ic = icmp ult i64 %.sroa.7307.0491, %i.ib
  br i1 %i.ic, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bq

.thread388:                                       ; preds = %.backedge, %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VerneedIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit246
  %i.id = icmp eq i64 %.sroa.7295.1, 0
  br i1 %i.id, label %.loopexit394, label %bb.bk

bb.bq:                                            ; preds = %bb.bp
  %i.ie = sub nuw nsw i64 %.sroa.7307.0491, %i.ib
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0306.0490, i64 %i.ib
  %i.ig = add i16 %.sroa.11308.0492, -1           ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0306.0490, i64 6
  %.sroa.0154.0.copyload = load i16, ptr %i.ih, align 1 ; 2 uses
  %i.ii = call i16 @llvm.bswap.i16(i16 %.sroa.0154.0.copyload)
  %.sroa.03.0.i252 = select i1 %1, i16 %i.ii, i16 %.sroa.0154.0.copyload
  %i.ij = and i16 %.sroa.03.0.i252, 32767         ; 2 uses
  %i.ik = icmp samesign ult i16 %i.ij, 2
  br i1 %i.ik, label %.backedge, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  invoke void @_RINvMsb_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtNtBc_3elf7VernauxNtNtBc_6endian10EndiannessE4nameRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %.sroa.0306.0490, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.bs unwind label %.loopexit

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.il = load i64, ptr %i.h, align 8, !range !7, !noundef !6
  %i.im = trunc nuw i64 %i.il to i1
  %i.in = load ptr, ptr %i.gz, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.io = load i64, ptr %i.ha, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.im, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.sroa.0150.0.copyload = load i32, ptr %.sroa.0306.0490, align 1 ; 2 uses
  %i.ip = call i32 @llvm.bswap.i32(i32 %.sroa.0150.0.copyload)
  %.sroa.03.0.i253 = select i1 %1, i32 %i.ip, i32 %.sroa.0150.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  invoke void @_RINvMsa_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtNtBc_3elf7VerneedNtNtBc_6endian10EndiannessE4fileRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %.sroa.0294.0682, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.bu unwind label %.loopexit

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.iq = load i64, ptr %i.g, align 8, !range !7, !noundef !6
  %i.ir = trunc nuw i64 %i.iq to i1
  %i.is = load ptr, ptr %i.hb, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.it = load i64, ptr %i.hc, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.ir, label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit251, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.iu = zext nneg i16 %i.ij to i64              ; 3 uses
  %i.iv = load i64, ptr %i.hd, align 8, !noundef !6 ; 2 uses
  %i.iw = icmp ugt i64 %i.iv, %i.iu
  br i1 %i.iw, label %bb.bw, label %.invoke

bb.bw:                                            ; preds = %bb.bv
  %i.ix = load ptr, ptr %i.he, align 8, !nonnull !6, !noundef !6
  %i.iy = getelementptr inbounds nuw [40 x i8], ptr %i.ix, i64 %i.iu ; 6 uses
  store ptr %i.in, ptr %i.iy, align 8
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i64 %i.io, ptr %.sroa.685.0..sroa_idx, align 8
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store ptr %i.is, ptr %.sroa.786.0..sroa_idx, align 8
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  store i64 %i.it, ptr %.sroa.887.0..sroa_idx, align 8
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  store i32 %.sroa.03.0.i253, ptr %.sroa.988.0..sroa_idx, align 8
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 36
  store i8 1, ptr %.sroa.1089.0..sroa_idx, align 4
  br label %.backedge

.backedge:                                        ; preds = %bb.bw, %bb.bq
  %i.iz = icmp eq i16 %i.ig, 0
  br i1 %i.iz, label %.thread388, label %.lr.ph493

.invoke:                                          ; preds = %bb.bf, %bb.bv
  %i.ja = phi i64 [ %i.iu, %bb.bv ], [ %i.gm, %bb.bf ]
  %i.jb = phi i64 [ %i.iv, %bb.bv ], [ %i.gn, %bb.bf ]
  %i.jc = phi ptr [ @2, %bb.bv ], [ @1, %bb.bf ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ja, i64 noundef %i.jb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jc) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bx:                                            ; preds = %.loopexit.split-lp
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.by:                                            ; preds = %.split.us, %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB5_15VernauxIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEE4nextCs8aoZCP6pRcV_7objdump.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionEECs8aoZCP6pRcV_7objdump.exit, %.loopexit394
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionEECs8aoZCP6pRcV_7objdump.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCseHTIzroA4w0_6object4read3elf7version7VersionEECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !125, !noundef !6 ; 2 uses
  %i.b = tail call noundef i64 @_RNvMNtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapE3lenCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit.i.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.0.0.i.i1
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit.i.i unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit7.i.i: ; preds = %.lr.ph3
  %i.g = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit7.i.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit7.i.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit7.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit7.i.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit7.i.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit7.i.i, %bb.b
  resume { ptr, i32 } %i.i

bb.c:                                             ; preds = %.lr.ph3
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8aoZCP6pRcV_7objdump.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs8aoZCP6pRcV_7objdump.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs8aoZCP6pRcV_7objdump.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8aoZCP6pRcV_7objdump(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
end_hunk_0
