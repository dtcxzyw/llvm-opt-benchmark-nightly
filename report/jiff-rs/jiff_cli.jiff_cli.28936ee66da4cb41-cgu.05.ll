Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.05?download=true
inline.NumInlined: 82
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/str/pattern.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00A\06\00\00\14\00\00\00" }>, align 8
@2 = private unnamed_addr constant [23 x i8] c"too few matching groups", align 1
@3 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-lite-0.1.9/src/string.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"c\00\00\00\00\00\00\00\0D\07\00\00\1C\00\00\00" }>, align 8
@5 = private unnamed_addr constant [2 x i8] c", ", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"c\00\00\00\00\00\00\00#\06\00\00\17\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00|\04\00\00$\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7 = alloca [32 x i8], align 8            ; 5 uses
  %i.a = getelementptr inbounds i8, ptr %1, i64 -48 ; 2 uses
  %.val11 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val12 = load i64, ptr %i.b, align 8, !noundef !5
  %.val13 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 -40
  %.val14 = load i64, ptr %i.c, align 8
  %i.d = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val11, i64 %.val12) #14 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.g = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val13, i64 %.val14) #14 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.i)
  %i.j = tail call i32 @memcmp(ptr nonnull readonly %i.e, ptr nonnull readonly %i.h, i64 %spec.store.select.i.i.i.i.i), !alias.scope !38 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = icmp eq i32 %i.j, 0
  %i.m = sub i64 %i.f, %i.i
  %spec.select.i.i.i.i.i = select i1 %i.l, i64 %i.m, i64 %i.k
  %i.n = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.sroa.012.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.413.0.copyload = load i64, ptr %i.b, align 8 ; 3 uses
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.514.0..sroa_idx, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.g
  ret void

bb.d:                                             ; preds = %bb.f, %bb.b
  %.sroa.5.0 = phi ptr [ %1, %bb.b ], [ %.sroa.0.0, %bb.f ]
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ %i.p, %bb.f ] ; 11 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0, i64 48, i1 false)
  %i.o = icmp eq ptr %.sroa.0.0, %0
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -48 ; 2 uses
  %.val9 = load ptr, ptr %i.p, align 8            ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.0.0, i64 -40
  %.val10 = load i64, ptr %i.q, align 8
  %i.r = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.sroa.012.0.copyload, i64 %.sroa.413.0.copyload) #14
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.s = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val9, i64 %.val10) #14
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.t = extractvalue { ptr, i64 } %i.r, 1        ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.s, 0        ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.s, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %spec.store.select.i.i.i.i.i15 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.w)
  %i.x = tail call i32 @memcmp(ptr nonnull readonly %i.u, ptr nonnull readonly %i.v, i64 %spec.store.select.i.i.i.i.i15), !alias.scope !39 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %i.aa = sub i64 %i.t, %i.w
  %spec.select.i.i.i.i.i16 = select i1 %i.z, i64 %i.aa, i64 %i.y
  %i.ab = icmp slt i64 %spec.select.i.i.i.i.i16, 0
  br i1 %i.ab, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  store ptr %.sroa.012.0.copyload, ptr %.sroa.0.0, align 8, !noalias !40
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  store i64 %.sroa.413.0.copyload, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx, align 8, !noalias !40
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, i64 32, i1 false), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.c

bb.h:                                             ; preds = %bb.e, %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.012.0.copyload, ptr %.sroa.0.0, align 8, !noalias !41
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  store i64 %.sroa.413.0.copyload, ptr %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx, align 8, !noalias !41
  %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, i64 32, i1 false), !noalias !41
  resume { ptr, i32 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_11sort_by_keyReNCNvB1b_9configure0E0EB1d_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 192)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val16 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr i8, ptr %0, i64 56
  %.val17 = load i64, ptr %i.b, align 8, !noundef !5
  %.val18 = load ptr, ptr %0, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val19 = load i64, ptr %i.c, align 8
  %i.d = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val16, i64 %.val17) #14 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18) ]
  %i.g = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val18, i64 %.val19) #14 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.i)
  %i.j = tail call i32 @memcmp(ptr nonnull readonly %i.e, ptr nonnull readonly %i.h, i64 %spec.store.select.i.i.i.i.i), !alias.scope !87 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = icmp eq i32 %i.j, 0
  %i.m = sub i64 %i.f, %i.i
  %spec.select.i.i.i.i.i = select i1 %i.l, i64 %i.m, i64 %i.k ; 2 uses
  %i.n = icmp sgt i64 %spec.select.i.i.i.i.i, -1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val12 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr i8, ptr %0, i64 152
  %.val13 = load i64, ptr %i.q, align 8, !noundef !5
  %.val14 = load ptr, ptr %i.p, align 8           ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 104
  %.val15 = load i64, ptr %i.r, align 8
  %i.s = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val12, i64 %.val13) #14 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.s, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14) ]
  %i.v = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val14, i64 %.val15) #14 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.v, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %spec.store.select.i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull readonly %i.t, ptr nonnull readonly %i.w, i64 %spec.store.select.i.i.i.i.i20), !alias.scope !88 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.u, %i.x
  %spec.select.i.i.i.i.i21 = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i.i.i21, 0 ; 2 uses
  %spec.select.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i, 63
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %spec.select.i.i.i.i.i.lobit ; 4 uses
  %i.ae = zext i1 %i.n to i64
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ae ; 5 uses
  %i.ag = select i1 %i.ac, i64 3, i64 2
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ag ; 5 uses
  %i.ai = select i1 %i.ac, i64 2, i64 3
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ai ; 4 uses
  %.val8 = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5
  %i.ak = getelementptr i8, ptr %i.ah, i64 8
  %.val9 = load i64, ptr %i.ak, align 8, !noundef !5
  %.val10 = load ptr, ptr %i.ad, align 8          ; 2 uses
  %i.al = getelementptr i8, ptr %i.ad, i64 8
  %.val11 = load i64, ptr %i.al, align 8
  %i.am = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val8, i64 %.val9) #14 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.am, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.ap = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val10, i64 %.val11) #14 ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0      ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  %spec.store.select.i.i.i.i.i22 = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.ar)
  %i.as = tail call i32 @memcmp(ptr nonnull readonly %i.an, ptr nonnull readonly %i.aq, i64 %spec.store.select.i.i.i.i.i22), !alias.scope !89 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %i.av = sub i64 %i.ao, %i.ar
  %spec.select.i.i.i.i.i23 = select i1 %i.au, i64 %i.av, i64 %i.at
  %i.aw = icmp slt i64 %spec.select.i.i.i.i.i23, 0 ; 3 uses
  %.val4 = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5
  %i.ax = getelementptr i8, ptr %i.aj, i64 8
  %.val5 = load i64, ptr %i.ax, align 8, !noundef !5
  %.val6 = load ptr, ptr %i.af, align 8           ; 2 uses
  %i.ay = getelementptr i8, ptr %i.af, i64 8
  %.val7 = load i64, ptr %i.ay, align 8
  %i.az = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val4, i64 %.val5) #14 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0      ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.bc = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val6, i64 %.val7) #14 ; 2 uses
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0      ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  %spec.store.select.i.i.i.i.i24 = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.be)
  %i.bf = tail call i32 @memcmp(ptr nonnull readonly %i.ba, ptr nonnull readonly %i.bd, i64 %spec.store.select.i.i.i.i.i24), !alias.scope !90 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp eq i32 %i.bf, 0
  %i.bi = sub i64 %i.bb, %i.be
  %spec.select.i.i.i.i.i25 = select i1 %i.bh, i64 %i.bi, i64 %i.bg
  %i.bj = icmp slt i64 %spec.select.i.i.i.i.i25, 0 ; 3 uses
  %i.bk = select i1 %i.aw, ptr %i.ah, ptr %i.ad, !unpredictable !5
  %i.bl = select i1 %i.bj, ptr %i.af, ptr %i.aj, !unpredictable !5
  %i.bm = select i1 %i.bj, ptr %i.ah, ptr %i.af, !unpredictable !5
  %i.bn = select i1 %i.aw, ptr %i.ad, ptr %i.bm, !unpredictable !5 ; 4 uses
  %i.bo = select i1 %i.aw, ptr %i.af, ptr %i.ah, !unpredictable !5
  %i.bp = select i1 %i.bj, ptr %i.aj, ptr %i.bo, !unpredictable !5 ; 4 uses
  %.val = load ptr, ptr %i.bp, align 8, !nonnull !5, !noundef !5
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %.val1 = load i64, ptr %i.bq, align 8, !noundef !5
  %.val2 = load ptr, ptr %i.bn, align 8           ; 2 uses
  %i.br = getelementptr i8, ptr %i.bn, i64 8
  %.val3 = load i64, ptr %i.br, align 8
  %i.bs = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val, i64 %.val1) #14 ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0      ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.bv = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val2, i64 %.val3) #14 ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0      ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  %spec.store.select.i.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bx)
  %i.by = tail call i32 @memcmp(ptr nonnull readonly %i.bt, ptr nonnull readonly %i.bw, i64 %spec.store.select.i.i.i.i.i26), !alias.scope !91 ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp eq i32 %i.by, 0
  %i.cb = sub i64 %i.bu, %i.bx
  %spec.select.i.i.i.i.i27 = select i1 %i.ca, i64 %i.cb, i64 %i.bz
  %i.cc = icmp slt i64 %spec.select.i.i.i.i.i27, 0 ; 2 uses
  %i.cd = select i1 %i.cc, ptr %i.bp, ptr %i.bn, !unpredictable !5
  %i.ce = select i1 %i.cc, ptr %i.bn, ptr %i.bp, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.bk, i64 48, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef nonnull align 8 dereferenceable(48) %i.cd, i64 48, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noundef nonnull align 8 dereferenceable(48) %i.ce, i64 48, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %i.bl, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2F_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 96)) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val17 = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val19 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %.val17, %.val19
  %i.d = icmp ult i64 %.val19, %.val17
  br i1 %i.c, label %bb.b, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit

bb.b:                                             ; preds = %bb.a
  %.val18 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val16 = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.val16, ptr nonnull readonly %.val18, i64 %.val17)
  %i.g = icmp sgt i32 %i.f, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit: ; preds = %bb.a, %bb.b
  %.sroa.01.0.neg.i.i = phi i1 [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 80
  %.val13 = load i64, ptr %i.h, align 8, !noundef !5 ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 56
  %.val15 = load i64, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %i.j = icmp eq i64 %.val13, %.val15
  %i.k = icmp ult i64 %.val15, %.val13
  br i1 %i.j, label %bb.c, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit21

bb.c:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val14 = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val12 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.n = tail call i32 @memcmp(ptr nonnull readonly %.val12, ptr nonnull readonly %.val14, i64 %.val13)
  %i.o = icmp sgt i32 %i.n, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit21

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit21: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit, %bb.c
  %.sroa.01.0.neg.i.i20 = phi i1 [ %i.o, %bb.c ], [ %i.k, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit ] ; 2 uses
  %i.p = zext i1 %.sroa.01.0.neg.i.i to i64
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.p ; 4 uses
  %i.r = xor i1 %.sroa.01.0.neg.i.i, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.s ; 5 uses
  %i.u = select i1 %.sroa.01.0.neg.i.i20, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.u ; 5 uses
  %i.w = select i1 %.sroa.01.0.neg.i.i20, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.w ; 4 uses
  %i.y = getelementptr i8, ptr %i.v, i64 8
  %.val9 = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  %i.z = getelementptr i8, ptr %i.q, i64 8
  %.val11 = load i64, ptr %i.z, align 8, !noundef !5 ; 2 uses
  %i.aa = icmp eq i64 %.val9, %.val11
  %i.ab = icmp ult i64 %.val11, %.val9
  br i1 %i.aa, label %bb.d, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit23

bb.d:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit21
  %.val10 = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %.val8 = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val8, ptr nonnull readonly %.val10, i64 %.val9)
  %i.ad = icmp sgt i32 %i.ac, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit23

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit23: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit21, %bb.d
  %.sroa.01.0.neg.i.i22 = phi i1 [ %i.ad, %bb.d ], [ %i.ab, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit21 ] ; 3 uses
  %i.ae = getelementptr i8, ptr %i.x, i64 8
  %.val5 = load i64, ptr %i.ae, align 8, !noundef !5 ; 3 uses
  %i.af = getelementptr i8, ptr %i.t, i64 8
  %.val7 = load i64, ptr %i.af, align 8, !noundef !5 ; 2 uses
  %i.ag = icmp eq i64 %.val5, %.val7
  %i.ah = icmp ult i64 %.val7, %.val5
  br i1 %i.ag, label %bb.e, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit25

bb.e:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit23
  %.val6 = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5
  %.val4 = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5
  %i.ai = tail call i32 @memcmp(ptr nonnull readonly %.val4, ptr nonnull readonly %.val6, i64 %.val5)
  %i.aj = icmp sgt i32 %i.ai, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit25

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit25: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit23, %bb.e
  %.sroa.01.0.neg.i.i24 = phi i1 [ %i.aj, %bb.e ], [ %i.ah, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit23 ] ; 3 uses
  %i.ak = select i1 %.sroa.01.0.neg.i.i24, ptr %i.v, ptr %i.t, !unpredictable !5
  %i.al = select i1 %.sroa.01.0.neg.i.i22, ptr %i.q, ptr %i.ak, !unpredictable !5 ; 4 uses
  %i.am = select i1 %.sroa.01.0.neg.i.i22, ptr %i.t, ptr %i.v, !unpredictable !5
  %i.an = select i1 %.sroa.01.0.neg.i.i24, ptr %i.x, ptr %i.am, !unpredictable !5 ; 4 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %.val1 = load i64, ptr %i.ao, align 8, !noundef !5 ; 3 uses
  %i.ap = getelementptr i8, ptr %i.al, i64 8
  %.val3 = load i64, ptr %i.ap, align 8, !noundef !5 ; 2 uses
  %i.aq = icmp eq i64 %.val1, %.val3
  %i.ar = icmp ult i64 %.val3, %.val1
  br i1 %i.aq, label %bb.f, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27

bb.f:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit25
  %.val2 = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5
  %.val = load ptr, ptr %i.an, align 8, !nonnull !5, !noundef !5
  %i.as = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1)
  %i.at = icmp sgt i32 %i.as, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit25, %bb.f
  %.sroa.01.0.neg.i.i26 = phi i1 [ %i.at, %bb.f ], [ %i.ar, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit25 ] ; 2 uses
  %i.au = select i1 %.sroa.01.0.neg.i.i24, ptr %i.t, ptr %i.x, !unpredictable !5
  %i.av = select i1 %.sroa.01.0.neg.i.i22, ptr %i.v, ptr %i.q, !unpredictable !5
  %i.aw = select i1 %.sroa.01.0.neg.i.i26, ptr %i.an, ptr %i.al, !unpredictable !5
  %i.ax = select i1 %.sroa.01.0.neg.i.i26, ptr %i.al, ptr %i.an, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_11sort_by_keyReNCNvB1o_9configure0E0EB1q_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_(ptr noundef %0, ptr noundef %.sroa.0.05)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2S_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit
  %.sroa.0.05 = phi ptr [ %i.s, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit ], [ %i.c, %.lr.ph.preheader ] ; 8 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 8
  %.val12.i = load i64, ptr %i.e, align 8, !noundef !5 ; 7 uses
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -16
  %.val14.i = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %.val12.i, %.val14.i
  br i1 %i.g, label %.split.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i

.split.i:                                         ; preds = %.lr.ph
  %.val13.i = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %.val11.i = load ptr, ptr %.sroa.0.05, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val13.i, i64 %.val12.i)
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i: ; preds = %.lr.ph
  %i.j = icmp ult i64 %.val14.i, %.val12.i
  br i1 %i.j, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i
  %.sroa.014.0.copyload.pre.i = load ptr, ptr %.sroa.0.05, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i, %.split.i
  %.sroa.014.0.copyload.i = phi ptr [ %.sroa.014.0.copyload.pre.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i ], [ %.val11.i, %.split.i ] ; 2 uses
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16
  %.sroa.516.0.copyload.i = load i64, ptr %.sroa.516.0..sroa_idx.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.k = icmp eq ptr %i.d, %0
  br i1 %i.k, label %.split5._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.backedge.i
  %.sroa.0.06.i = phi ptr [ %i.l, %.backedge.i ], [ %i.d, %bb.d ] ; 5 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -24 ; 4 uses
  %i.m = getelementptr i8, ptr %.sroa.0.06.i, i64 -16
  %.val10.i = load i64, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %i.n = icmp eq i64 %.val12.i, %.val10.i
  br i1 %i.n, label %.split5.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i

.split5.i:                                        ; preds = %.lr.ph.i
  %.val9.i = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.014.0.copyload.i, ptr nonnull readonly %.val9.i, i64 %.val12.i)
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.backedge.i, label %.split5._crit_edge.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i: ; preds = %.lr.ph.i
  %i.q = icmp ult i64 %.val10.i, %.val12.i
  br i1 %i.q, label %.backedge.i, label %.split5._crit_edge.i

.backedge.i:                                      ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i, %.split5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.06.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.r = icmp eq ptr %i.l, %0
  br i1 %i.r, label %.split5._crit_edge.i, label %.lr.ph.i

.split5._crit_edge.i:                             ; preds = %.backedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i, %.split5.i, %bb.d
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.d ], [ %0, %.backedge.i ], [ %.sroa.0.06.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i ], [ %.sroa.0.06.i, %.split5.i ] ; 3 uses
  store ptr %.sroa.014.0.copyload.i, ptr %.sroa.0.0.lcssa.i, align 8, !noalias !96
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !96
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 16
  store i64 %.sroa.516.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !96
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit: ; preds = %.split.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i, %.split5._crit_edge.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_11sort_by_keyReNCNvB1u_9configure0E0EB1w_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 192153584101141163) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i = alloca [32 x i8], align 8          ; 9 uses
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_11sort_by_keyReNCNvB1i_9configure0E0EB1k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_11sort_by_keyReNCNvB1b_9configure0E0EB1d_(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_11sort_by_keyReNCNvB1b_9configure0E0EB1d_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.noexc37, label %.loopexit42

.loopexit42:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit, %bb.g
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [48 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.noexc37.1, label %.loopexit42.1

.noexc37.1:                                       ; preds = %.loopexit42, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit.1
  %.sroa.05.048.1 = phi i64 [ %i.as, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit.1 ], [ %.sroa.0.0, %.loopexit42 ] ; 4 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %.sroa.05.048.1 ; 2 uses
  %.idx111 = mul nuw nsw i64 %.sroa.05.048.1, 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx111 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -48 ; 3 uses
  %.val11.i.1 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val12.i.1 = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  %.val13.i.1 = load ptr, ptr %i.o, align 8       ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 -40
  %.val14.i.1 = load i64, ptr %i.q, align 8
  %i.r = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val11.i.1, i64 %.val12.i.1) #14 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.r, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.1) ]
  %i.u = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val13.i.1, i64 %.val14.i.1) #14 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0        ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.u, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %spec.store.select.i.i.i.i.i.i34.1 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.w)
  %i.x = tail call i32 @memcmp(ptr nonnull readonly %i.s, ptr nonnull readonly %i.v, i64 %spec.store.select.i.i.i.i.i.i34.1), !alias.scope !153 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %i.aa = sub i64 %i.t, %i.w
  %spec.select.i.i.i.i.i.i35.1 = select i1 %i.z, i64 %i.aa, i64 %i.y
  %i.ab = icmp slt i64 %spec.select.i.i.i.i.i.i35.1, 0
  br i1 %i.ab, label %bb.h, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit.1

bb.h:                                             ; preds = %.noexc37.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  %i.ad = icmp eq i64 %.sroa.05.048.1, 1
  br i1 %i.ad, label %._crit_edge107, label %.lr.ph106

bb.i:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i36.1104, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false)
  %i.ae = icmp eq ptr %i.af, %i.k
  br i1 %i.ae, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.h, %bb.i
  %.sroa.0.0.i36.1104 = phi ptr [ %i.af, %bb.i ], [ %i.o, %bb.h ] ; 5 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.0.i36.1104, i64 -48 ; 4 uses
  %.val9.i.1 = load ptr, ptr %i.af, align 8       ; 2 uses
  %i.ag = getelementptr i8, ptr %.sroa.0.0.i36.1104, i64 -40
  %.val10.i.1 = load i64, ptr %i.ag, align 8
  %i.ah = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val11.i.1, i64 %.val12.i.1) #14
          to label %.noexc.i.1 unwind label %.loopexit.split-lp61 ; 2 uses

.noexc.i.1:                                       ; preds = %.lr.ph106
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.1) ]
  %i.ai = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val9.i.1, i64 %.val10.i.1) #14
          to label %bb.j unwind label %.loopexit.split-lp61 ; 2 uses

bb.j:                                             ; preds = %.noexc.i.1
  %i.aj = extractvalue { ptr, i64 } %i.ah, 1      ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.ah, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ai, 0      ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %spec.store.select.i.i.i.i.i15.i.1 = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.am)
  %i.an = tail call i32 @memcmp(ptr nonnull readonly %i.ak, ptr nonnull readonly %i.al, i64 %spec.store.select.i.i.i.i.i15.i.1), !alias.scope !154 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp eq i32 %i.an, 0
  %i.aq = sub i64 %i.aj, %i.am
  %spec.select.i.i.i.i.i16.i.1 = select i1 %i.ap, i64 %i.aq, i64 %i.ao
  %i.ar = icmp slt i64 %spec.select.i.i.i.i.i16.i.1, 0
  br i1 %i.ar, label %bb.i, label %._crit_edge107

._crit_edge107:                                   ; preds = %bb.i, %bb.j, %bb.h
  %.sroa.0.0.i36.lcssa.1 = phi ptr [ %i.k, %bb.h ], [ %i.k, %bb.i ], [ %.sroa.0.0.i36.1104, %bb.j ] ; 3 uses
  store ptr %.val11.i.1, ptr %.sroa.0.0.i36.lcssa.1, align 8, !noalias !155
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.lcssa.1, i64 8
  store i64 %.val12.i.1, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !155
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.lcssa.1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit.1

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit.1: ; preds = %._crit_edge107, %.noexc37.1
  %i.as = add nuw nsw i64 %.sroa.05.048.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.as, %i.h
  br i1 %exitcond.1.not, label %.loopexit42.1, label %.noexc37.1

.loopexit42.1:                                    ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit.1, %.loopexit42
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.at = add nsw i64 %1, -1                      ; 2 uses
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.at
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.at
  %i.aw = getelementptr i8, ptr %i.k, i64 -48
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc32
  %i.ax = getelementptr i8, ptr %i.ch, i64 48     ; 2 uses
  %i.ay = getelementptr i8, ptr %i.cg, i64 48
  %i.az = and i64 %1, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.l, label %bb.k

.lr.ph.i:                                         ; preds = %.noexc32, %.loopexit42.1
  %.sroa.0.010.i = phi ptr [ %i.bs, %.noexc32 ], [ %0, %.loopexit42.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.bb, %.noexc32 ], [ 0, %.loopexit42.1 ]
  %.sroa.06.08.i = phi ptr [ %i.br, %.noexc32 ], [ %2, %.loopexit42.1 ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.bp, %.noexc32 ], [ %i.k, %.loopexit42.1 ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.ch, %.noexc32 ], [ %i.aw, %.loopexit42.1 ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.cg, %.noexc32 ], [ %i.av, %.loopexit42.1 ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.ci, %.noexc32 ], [ %i.au, %.loopexit42.1 ] ; 2 uses
  %i.bb = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %.sroa.011.0.val.i = load ptr, ptr %.sroa.011.07.i, align 8, !alias.scope !156, !nonnull !5, !noundef !5
  %i.bc = getelementptr i8, ptr %.sroa.011.07.i, i64 8
  %.sroa.011.0.val22.i = load i64, ptr %i.bc, align 8, !alias.scope !156, !noundef !5
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.08.i, align 8, !alias.scope !156 ; 2 uses
  %i.bd = getelementptr i8, ptr %.sroa.06.08.i, i64 8
  %.sroa.06.0.val23.i = load i64, ptr %i.bd, align 8, !alias.scope !156
  %i.be = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.sroa.011.0.val.i, i64 %.sroa.011.0.val22.i) #14
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.0.val.i) ]
  %i.bf = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.sroa.06.0.val.i, i64 %.sroa.06.0.val23.i) #14
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc30:                                         ; preds = %.noexc
  %i.bg = extractvalue { ptr, i64 } %i.be, 1      ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.be, 0      ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bf, 0      ; 2 uses
  %i.bj = extractvalue { ptr, i64 } %i.bf, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bj)
  %i.bk = tail call i32 @memcmp(ptr nonnull readonly %i.bh, ptr nonnull readonly %i.bi, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !157, !noalias !156 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp eq i32 %i.bk, 0
  %i.bn = sub i64 %i.bg, %i.bj
  %spec.select.i.i.i.i.i.i = select i1 %i.bm, i64 %i.bn, i64 %i.bl ; 2 uses
  %i.bo = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i21.i = select i1 %i.bo, ptr %.sroa.06.08.i, ptr %.sroa.011.07.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(48) %..i21.i, i64 48, i1 false), !noalias !158
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %.sroa.011.07.i, i64 %spec.select.i.i.i.i.i.lobit.i ; 4 uses
  %i.bq = zext i1 %i.bo to i64
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %.sroa.06.08.i, i64 %i.bq ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 48 ; 2 uses
  %.sroa.017.0.val.i = load ptr, ptr %.sroa.017.05.i, align 8, !alias.scope !156, !nonnull !5, !noundef !5
  %i.bt = getelementptr i8, ptr %.sroa.017.05.i, i64 8
  %.sroa.017.0.val24.i = load i64, ptr %i.bt, align 8, !alias.scope !156, !noundef !5
  %.sroa.015.0.val.i = load ptr, ptr %.sroa.015.06.i, align 8, !alias.scope !156 ; 2 uses
  %i.bu = getelementptr i8, ptr %.sroa.015.06.i, i64 8
  %.sroa.015.0.val25.i = load i64, ptr %i.bu, align 8, !alias.scope !156
  %i.bv = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.sroa.017.0.val.i, i64 %.sroa.017.0.val24.i) #14
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc31:                                         ; preds = %.noexc30
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.val.i) ]
  %i.bw = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.sroa.015.0.val.i, i64 %.sroa.015.0.val25.i) #14
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc32:                                         ; preds = %.noexc31
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1      ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bv, 0      ; 2 uses
  %i.bz = extractvalue { ptr, i64 } %i.bw, 0      ; 2 uses
  %i.ca = extractvalue { ptr, i64 } %i.bw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %spec.store.select.i.i.i.i.i26.i = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.ca)
  %i.cb = tail call i32 @memcmp(ptr nonnull readonly %i.by, ptr nonnull readonly %i.bz, i64 %spec.store.select.i.i.i.i.i26.i), !alias.scope !159, !noalias !156 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp eq i32 %i.cb, 0
  %i.ce = sub i64 %i.bx, %i.ca
  %spec.select.i.i.i.i.i27.i = select i1 %i.cd, i64 %i.ce, i64 %i.cc ; 2 uses
  %i.cf = icmp sgt i64 %spec.select.i.i.i.i.i27.i, -1 ; 2 uses
  %..i.i = select i1 %i.cf, ptr %.sroa.017.05.i, ptr %.sroa.015.06.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(48) %..i.i, i64 48, i1 false), !noalias !160
  %.neg.i.i = sext i1 %i.cf to i64
  %i.cg = getelementptr [48 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %spec.select.i.i.i.i.i27.lobit.i = ashr i64 %spec.select.i.i.i.i.i27.i, 63
  %i.ch = getelementptr [48 x i8], ptr %.sroa.015.06.i, i64 %spec.select.i.i.i.i.i27.lobit.i ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -48
  %exitcond.not.i = icmp eq i64 %i.bb, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.cj = icmp ult ptr %i.br, %i.ax               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.cj, ptr %i.br, ptr %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.06.0..sroa.011.0.i, i64 48, i1 false)
  %i.ck = zext i1 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [48 x i8], ptr %i.br, i64 %i.ck
  %i.cm = xor i1 %i.cj, true
  %i.cn = zext i1 %i.cm to i64
  %i.co = getelementptr inbounds nuw [48 x i8], ptr %i.bp, i64 %i.cn
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.bp, %._crit_edge.i ], [ %i.co, %bb.k ]
  %.sroa.06.1.i = phi ptr [ %i.br, %._crit_edge.i ], [ %i.cl, %bb.k ]
  %i.cp = icmp ne ptr %.sroa.06.1.i, %i.ax
  %i.cq = icmp ne ptr %.sroa.011.1.i, %i.ay
  %or.cond.i = select i1 %i.cp, i1 true, i1 %i.cq, !prof !6
  br i1 %or.cond.i, label %bb.m, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_11sort_by_keyReNCNvB1i_9configure0E0EB1k_.exit, !prof !6

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #15
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %bb.m
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc31, %.noexc30, %.noexc, %.lr.ph.i, %bb.m
  %lpad.loopexit.split-lp112 = landingpad { ptr, i32 }
          cleanup
  %i.cr = mul nuw nsw i64 %1, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.cr, i1 false), !noalias !161
  br label %.body

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_11sort_by_keyReNCNvB1i_9configure0E0EB1k_.exit: ; preds = %bb.l, %bb.a
  ret void

.body:                                            ; preds = %bb.q, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp112, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.phi67, %bb.q ]
  resume { ptr, i32 } %.pn

.noexc37:                                         ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit
  %.sroa.05.048 = phi i64 [ %i.dy, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.05.048 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.048, 48
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, ptr noundef nonnull align 8 dereferenceable(48) %i.cs, i64 48, i1 false)
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -48 ; 3 uses
  %.val11.i = load ptr, ptr %i.ct, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.cv = getelementptr i8, ptr %i.ct, i64 8
  %.val12.i = load i64, ptr %i.cv, align 8, !noundef !5 ; 4 uses
  %.val13.i = load ptr, ptr %i.cu, align 8        ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ct, i64 -40
  %.val14.i = load i64, ptr %i.cw, align 8
  %i.cx = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val11.i, i64 %.val12.i) #14 ; 2 uses
  %i.cy = extractvalue { ptr, i64 } %i.cx, 0      ; 2 uses
  %i.cz = extractvalue { ptr, i64 } %i.cx, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.da = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val13.i, i64 %.val14.i) #14 ; 2 uses
  %i.db = extractvalue { ptr, i64 } %i.da, 0      ; 2 uses
  %i.dc = extractvalue { ptr, i64 } %i.da, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  %spec.store.select.i.i.i.i.i.i34 = tail call i64 @llvm.umin.i64(i64 %i.cz, i64 %i.dc)
  %i.dd = tail call i32 @memcmp(ptr nonnull readonly %i.cy, ptr nonnull readonly %i.db, i64 %spec.store.select.i.i.i.i.i.i34), !alias.scope !153 ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp eq i32 %i.dd, 0
  %i.dg = sub i64 %i.cz, %i.dc
  %spec.select.i.i.i.i.i.i35 = select i1 %i.df, i64 %i.dg, i64 %i.de
  %i.dh = icmp slt i64 %spec.select.i.i.i.i.i.i35, 0
  br i1 %i.dh, label %bb.n, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit

bb.n:                                             ; preds = %.noexc37
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %i.di, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, ptr noundef nonnull align 8 dereferenceable(48) %i.cu, i64 48, i1 false)
  %i.dj = icmp eq i64 %.sroa.05.048, 1
  br i1 %i.dj, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i36101, ptr noundef nonnull align 8 dereferenceable(48) %i.dl, i64 48, i1 false)
  %i.dk = icmp eq ptr %i.dl, %2
  br i1 %i.dk, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %.sroa.0.0.i36101 = phi ptr [ %i.dl, %bb.o ], [ %i.cu, %bb.n ] ; 5 uses
  %i.dl = getelementptr inbounds i8, ptr %.sroa.0.0.i36101, i64 -48 ; 4 uses
  %.val9.i = load ptr, ptr %i.dl, align 8         ; 2 uses
  %i.dm = getelementptr i8, ptr %.sroa.0.0.i36101, i64 -40
  %.val10.i = load i64, ptr %i.dm, align 8
  %i.dn = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val11.i, i64 %.val12.i) #14
          to label %.noexc.i unwind label %.loopexit ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  %i.do = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val9.i, i64 %.val10.i) #14
          to label %bb.p unwind label %.loopexit  ; 2 uses

bb.p:                                             ; preds = %.noexc.i
  %i.dp = extractvalue { ptr, i64 } %i.dn, 1      ; 2 uses
  %i.dq = extractvalue { ptr, i64 } %i.dn, 0      ; 2 uses
  %i.dr = extractvalue { ptr, i64 } %i.do, 0      ; 2 uses
  %i.ds = extractvalue { ptr, i64 } %i.do, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dq) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dr) ]
  %spec.store.select.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.ds)
  %i.dt = tail call i32 @memcmp(ptr nonnull readonly %i.dq, ptr nonnull readonly %i.dr, i64 %spec.store.select.i.i.i.i.i15.i), !alias.scope !154 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp eq i32 %i.dt, 0
  %i.dw = sub i64 %i.dp, %i.ds
  %spec.select.i.i.i.i.i16.i = select i1 %i.dv, i64 %i.dw, i64 %i.du
  %i.dx = icmp slt i64 %spec.select.i.i.i.i.i16.i, 0
  br i1 %i.dx, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %bb.p, %bb.n
  %.sroa.0.0.i36.lcssa = phi ptr [ %2, %bb.n ], [ %2, %bb.o ], [ %.sroa.0.0.i36101, %bb.p ] ; 3 uses
  store ptr %.val11.i, ptr %.sroa.0.0.i36.lcssa, align 8, !noalias !155
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.lcssa, i64 8
  store i64 %.val12.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !155
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.lcssa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit

.loopexit:                                        ; preds = %.lr.ph, %.noexc.i
  %lpad.loopexit66 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp61:                             ; preds = %.lr.ph106, %.noexc.i.1
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp61, %.loopexit
  %.val11.i.lcssa = phi ptr [ %.val11.i, %.loopexit ], [ %.val11.i.1, %.loopexit.split-lp61 ]
  %.val12.i.lcssa = phi i64 [ %.val12.i, %.loopexit ], [ %.val12.i.1, %.loopexit.split-lp61 ]
  %.sroa.0.0.i36.lcssa56 = phi ptr [ %.sroa.0.0.i36101, %.loopexit ], [ %.sroa.0.0.i36.1104, %.loopexit.split-lp61 ] ; 3 uses
  %lpad.phi67 = phi { ptr, i32 } [ %lpad.loopexit66, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp61 ]
  store ptr %.val11.i.lcssa, ptr %.sroa.0.0.i36.lcssa56, align 8, !noalias !162
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.lcssa56, i64 8
  store i64 %.val12.i.lcssa, ptr %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i, align 8, !noalias !162
  %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i36.lcssa56, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !162
  br label %.body

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keyReNCNvB1a_9configure0E0EB1c_.exit: ; preds = %._crit_edge, %.noexc37
  %i.dy = add nuw nsw i64 %.sroa.05.048, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dy, %i.d
  br i1 %exitcond.not, label %.loopexit42, label %.noexc37
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2Y_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2M_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2F_(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2F_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit, %bb.g
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [24 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit.1
  %.sroa.05.039.1 = phi i64 [ %i.ad, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.05.039.1
  %.idx.1 = mul nuw nsw i64 %.sroa.05.039.1, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.1 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -24 ; 4 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val12.i.1 = load i64, ptr %i.p, align 8, !noundef !5 ; 7 uses
  %i.q = getelementptr i8, ptr %i.n, i64 -16
  %.val14.i.1 = load i64, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.r = icmp eq i64 %.val12.i.1, %.val14.i.1
  br i1 %i.r, label %.split.i.1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i30.1

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i30.1: ; preds = %.lr.ph.1
  %i.s = icmp ult i64 %.val14.i.1, %.val12.i.1
  br i1 %i.s, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit.1

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i.1: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i30.1
  %.sroa.014.0.copyload.pre.i.1 = load ptr, ptr %i.n, align 8
  br label %bb.h

.split.i.1:                                       ; preds = %.lr.ph.1
  %.val13.i.1 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %.val11.i.1 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val11.i.1, ptr nonnull readonly %.val13.i.1, i64 %.val12.i.1)
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit.1

bb.h:                                             ; preds = %.split.i.1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i.1
  %.sroa.014.0.copyload.i.1 = phi ptr [ %.sroa.014.0.copyload.pre.i.1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit._crit_edge.i.1 ], [ %.val11.i.1, %.split.i.1 ] ; 2 uses
  %.sroa.516.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.516.0.copyload.i.1 = load i64, ptr %.sroa.516.0..sroa_idx.i.1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.v = icmp eq i64 %.sroa.05.039.1, 1
  br i1 %i.v, label %.split5._crit_edge.i.1, label %.lr.ph.i31.1

.lr.ph.i31.1:                                     ; preds = %bb.h, %.backedge.i.1
  %.sroa.0.06.i.1 = phi ptr [ %i.w, %.backedge.i.1 ], [ %i.o, %bb.h ] ; 5 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.0.06.i.1, i64 -24 ; 4 uses
  %i.x = getelementptr i8, ptr %.sroa.0.06.i.1, i64 -16
  %.val10.i.1 = load i64, ptr %i.x, align 8, !noundef !5 ; 2 uses
  %i.y = icmp eq i64 %.val12.i.1, %.val10.i.1
  br i1 %i.y, label %.split5.i.1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i.1

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i.1: ; preds = %.lr.ph.i31.1
  %i.z = icmp ult i64 %.val10.i.1, %.val12.i.1
  br i1 %i.z, label %.backedge.i.1, label %.split5._crit_edge.i.1

.split5.i.1:                                      ; preds = %.lr.ph.i31.1
  %.val9.i.1 = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.aa = tail call i32 @memcmp(ptr nonnull readonly %.sroa.014.0.copyload.i.1, ptr nonnull readonly %.val9.i.1, i64 %.val12.i.1)
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.backedge.i.1, label %.split5._crit_edge.i.1

.backedge.i.1:                                    ; preds = %.split5.i.1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.06.i.1, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.ac = icmp eq ptr %i.w, %i.k
  br i1 %i.ac, label %.split5._crit_edge.i.1, label %.lr.ph.i31.1

.split5._crit_edge.i.1:                           ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i.1, %.split5.i.1, %.backedge.i.1, %bb.h
  %.sroa.0.0.lcssa.i.1 = phi ptr [ %i.o, %bb.h ], [ %i.k, %.backedge.i.1 ], [ %.sroa.0.06.i.1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit16.i.1 ], [ %.sroa.0.06.i.1, %.split5.i.1 ] ; 3 uses
  store ptr %.sroa.014.0.copyload.i.1, ptr %.sroa.0.0.lcssa.i.1, align 8, !noalias !179
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 8
  store i64 %.val12.i.1, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !179
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 16
  store i64 %.sroa.516.0.copyload.i.1, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !179
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit.1

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit.1: ; preds = %.split5._crit_edge.i.1, %.split.i.1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i30.1
  %i.ad = add nuw nsw i64 %.sroa.05.039.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ad, %i.h
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2E_.exit.1, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.ae = add nsw i64 %1, -1                      ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.ae
  %i.ah = getelementptr i8, ptr %i.k, i64 -24
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i
  %i.ai = getelementptr i8, ptr %i.bh, i64 24     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.bg, i64 24
  %i.ak = and i64 %1, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.k

.lr.ph.i:                                         ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.ay, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.am, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.ax, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i ], [ %2, %.loopexit.1 ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.av, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i ], [ %i.k, %.loopexit.1 ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.bh, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i ], [ %i.ah, %.loopexit.1 ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.bg, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i ], [ %i.ag, %.loopexit.1 ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.bi, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit27.i ], [ %i.af, %.loopexit.1 ] ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %i.an = getelementptr i8, ptr %.sroa.011.07.i, i64 8
  %.sroa.011.0.val22.i = load i64, ptr %i.an, align 8, !alias.scope !180, !noundef !5 ; 3 uses
  %i.ao = getelementptr i8, ptr %.sroa.06.08.i, i64 8
  %.sroa.06.0.val23.i = load i64, ptr %i.ao, align 8, !alias.scope !180, !noundef !5 ; 2 uses
  %i.ap = icmp eq i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %i.aq = icmp ult i64 %.sroa.06.0.val23.i, %.sroa.011.0.val22.i
  br i1 %i.ap, label %bb.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i

bb.i:                                             ; preds = %.lr.ph.i
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.08.i, align 8, !alias.scope !180, !nonnull !5, !noundef !5
  %.sroa.011.0.val.i = load ptr, ptr %.sroa.011.07.i, align 8, !alias.scope !180, !nonnull !5, !noundef !5
end_hunk_0
