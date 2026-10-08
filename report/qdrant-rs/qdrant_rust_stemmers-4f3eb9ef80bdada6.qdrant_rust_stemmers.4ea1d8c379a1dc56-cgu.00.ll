Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant_rust_stemmers-4f3eb9ef80bdada6.qdrant_rust_stemmers.4ea1d8c379a1dc56-cgu.00?download=true
inline.NumInlined: 48
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [125 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/qdrant-rust-stemmers-1.2.2/src/snowball/snowball_env.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\00\16\01\00\00\16\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\00\1C\01\00\00\18\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\008\01\00\00\16\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\00`\01\00\00\16\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\00f\01\00\00\18\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\00f\01\00\00I\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\00\81\01\00\00\16\00\00\00" }>, align 8
@8 = private unnamed_addr constant [76 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/str/mod.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\00\A7\00\00\00(\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\00\AD\00\00\00\11\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\00\CF\00\00\00(\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\00\D6\00\00\00\11\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\00\C2\00\00\00\11\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\00\EB\00\00\00\11\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\00H\00\00\00\18\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\00Z\00\00\00\1D\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"|\00\00\00\00\00\00\00\03\01\00\00\15\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"K\00\00\00\00\00\00\00^\03\00\00\15\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv10find_amongNtNtNtB5_10algorithms10portuguese7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 3 uses
  %.sroa.018.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.018.0 = load ptr, ptr %.sroa.018.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.e, %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.h
  %i.j = phi i64 [ %i.g, %.lr.ph67 ], [ %i.am, %bb.h ]
  %i.k = phi i32 [ %i.f, %.lr.ph67 ], [ %i.al, %bb.h ] ; 5 uses
  %.sroa.02.065 = phi i32 [ %i.a, %.lr.ph67 ], [ %i.w, %bb.h ] ; 3 uses
  %.sroa.05.064 = phi i64 [ 0, %.lr.ph67 ], [ %i.t, %bb.h ] ; 3 uses
  %.sroa.07.063 = phi i64 [ 0, %.lr.ph67 ], [ %i.v, %bb.h ] ; 4 uses
  %.sroa.08.062 = phi i1 [ false, %.lr.ph67 ], [ %.sroa.08.1, %bb.h ] ; 2 uses
  %.sroa.019.061 = phi i32 [ 0, %.lr.ph67 ], [ %i.u, %bb.h ] ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %.sroa.07.063, i64 %.sroa.05.064) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.o = icmp ult i64 %..i, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread131

._crit_edge68:                                    ; preds = %bb.h, %bb.a
  %.lcssa49 = phi i64 [ %i.g, %bb.a ], [ %i.am, %bb.h ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa49, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #11
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.sroa.011.053 = phi i64 [ %i.p, %bb.f ], [ %..i, %bb.b ] ; 5 uses
  %i.p = add nuw i64 %.sroa.011.053, 1            ; 2 uses
  %i.q = add i64 %.sroa.011.053, %i.c             ; 3 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread131, label %bb.c

._crit_edge:                                      ; preds = %bb.e
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread131, label %.split134.thread

.split134.thread:                                 ; preds = %._crit_edge
  br label %.thread131

.thread131:                                       ; preds = %bb.f, %.lr.ph, %bb.b, %._crit_edge, %.split134.thread
  %i.t = phi i64 [ %.sroa.05.064, %._crit_edge ], [ %..i, %bb.b ], [ %.sroa.011.053, %.split134.thread ], [ %i.n, %bb.f ], [ %.sroa.05.064, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.019.061, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split134.thread ], [ %i.k, %bb.f ], [ %.sroa.019.061, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.011.053, %._crit_edge ], [ %.sroa.07.063, %bb.b ], [ %.sroa.07.063, %.split134.thread ], [ %.sroa.07.063, %bb.f ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.065, %bb.b ], [ %.sroa.02.065, %.split134.thread ], [ %.sroa.02.065, %bb.f ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.g, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.z = icmp ult i64 %i.q, %.sroa.3.0
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.c, %..i
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.3.0, i64 %i.aa)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 %i.q
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.011.053
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %exitcond.not = icmp eq i64 %i.p, %i.n
  br i1 %exitcond.not, label %.thread131, label %.lr.ph

bb.g:                                             ; preds = %.thread131
  %i.ah = icmp sgt i32 %i.u, 0
  %i.ai = icmp eq i32 %i.w, %i.u
  %i.aj = or i1 %i.ah, %i.ai
  %or.cond40 = select i1 %i.aj, i1 true, i1 %.sroa.08.062
  br i1 %or.cond40, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread131
  %.sroa.08.1 = phi i1 [ %.sroa.08.062, %.thread131 ], [ true, %bb.g ]
  %i.ak = ashr i32 %i.x, 1
  %i.al = add i32 %i.ak, %i.u                     ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = icmp ugt i64 %2, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge68

.preheader:                                       ; preds = %bb.g, %bb.l
  %.sroa.019.2 = phi i32 [ %i.ax, %bb.l ], [ %i.u, %bb.g ]
  %i.ao = sext i32 %.sroa.019.2 to i64            ; 3 uses
  %i.ap = icmp ugt i64 %2, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ao ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %.not37 = icmp ult i64 %i.t, %i.as
  br i1 %.not37, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.at = add i64 %i.as, %i.c                     ; 2 uses
  store i64 %i.at, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noundef !4 ; 2 uses
  %.not38 = icmp eq ptr %i.av, null
  br i1 %.not38, label %.loopexit.sink.split, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !4, !nonnull !4
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #12
  store i64 %i.at, ptr %i.b, align 8
  br i1 %i.bd, label %.loopexit.sink.split, label %bb.l

.loopexit.sink.split:                             ; preds = %bb.m, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bf, %.loopexit.sink.split ], [ 0, %bb.l ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv10find_amongNtNtNtB5_10algorithms5dutch7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 3 uses
  %.sroa.018.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.018.0 = load ptr, ptr %.sroa.018.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.e, %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.h
  %i.j = phi i64 [ %i.g, %.lr.ph67 ], [ %i.am, %bb.h ]
  %i.k = phi i32 [ %i.f, %.lr.ph67 ], [ %i.al, %bb.h ] ; 5 uses
  %.sroa.02.065 = phi i32 [ %i.a, %.lr.ph67 ], [ %i.w, %bb.h ] ; 3 uses
  %.sroa.05.064 = phi i64 [ 0, %.lr.ph67 ], [ %i.t, %bb.h ] ; 3 uses
  %.sroa.07.063 = phi i64 [ 0, %.lr.ph67 ], [ %i.v, %bb.h ] ; 4 uses
  %.sroa.08.062 = phi i1 [ false, %.lr.ph67 ], [ %.sroa.08.1, %bb.h ] ; 2 uses
  %.sroa.019.061 = phi i32 [ 0, %.lr.ph67 ], [ %i.u, %bb.h ] ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %.sroa.07.063, i64 %.sroa.05.064) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.o = icmp ult i64 %..i, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread131

._crit_edge68:                                    ; preds = %bb.h, %bb.a
  %.lcssa49 = phi i64 [ %i.g, %bb.a ], [ %i.am, %bb.h ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa49, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #11
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.sroa.011.053 = phi i64 [ %i.p, %bb.f ], [ %..i, %bb.b ] ; 5 uses
  %i.p = add nuw i64 %.sroa.011.053, 1            ; 2 uses
  %i.q = add i64 %.sroa.011.053, %i.c             ; 3 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread131, label %bb.c

._crit_edge:                                      ; preds = %bb.e
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread131, label %.split134.thread

.split134.thread:                                 ; preds = %._crit_edge
  br label %.thread131

.thread131:                                       ; preds = %bb.f, %.lr.ph, %bb.b, %._crit_edge, %.split134.thread
  %i.t = phi i64 [ %.sroa.05.064, %._crit_edge ], [ %..i, %bb.b ], [ %.sroa.011.053, %.split134.thread ], [ %i.n, %bb.f ], [ %.sroa.05.064, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.019.061, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split134.thread ], [ %i.k, %bb.f ], [ %.sroa.019.061, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.011.053, %._crit_edge ], [ %.sroa.07.063, %bb.b ], [ %.sroa.07.063, %.split134.thread ], [ %.sroa.07.063, %bb.f ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.065, %bb.b ], [ %.sroa.02.065, %.split134.thread ], [ %.sroa.02.065, %bb.f ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.g, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.z = icmp ult i64 %i.q, %.sroa.3.0
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.c, %..i
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.3.0, i64 %i.aa)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 %i.q
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.011.053
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %exitcond.not = icmp eq i64 %i.p, %i.n
  br i1 %exitcond.not, label %.thread131, label %.lr.ph

bb.g:                                             ; preds = %.thread131
  %i.ah = icmp sgt i32 %i.u, 0
  %i.ai = icmp eq i32 %i.w, %i.u
  %i.aj = or i1 %i.ah, %i.ai
  %or.cond40 = select i1 %i.aj, i1 true, i1 %.sroa.08.062
  br i1 %or.cond40, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread131
  %.sroa.08.1 = phi i1 [ %.sroa.08.062, %.thread131 ], [ true, %bb.g ]
  %i.ak = ashr i32 %i.x, 1
  %i.al = add i32 %i.ak, %i.u                     ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = icmp ugt i64 %2, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge68

.preheader:                                       ; preds = %bb.g, %bb.l
  %.sroa.019.2 = phi i32 [ %i.ax, %bb.l ], [ %i.u, %bb.g ]
  %i.ao = sext i32 %.sroa.019.2 to i64            ; 3 uses
  %i.ap = icmp ugt i64 %2, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ao ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %.not37 = icmp ult i64 %i.t, %i.as
  br i1 %.not37, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.at = add i64 %i.as, %i.c                     ; 2 uses
  store i64 %i.at, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noundef !4 ; 2 uses
  %.not38 = icmp eq ptr %i.av, null
  br i1 %.not38, label %.loopexit.sink.split, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !4, !nonnull !4
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #12
  store i64 %i.at, ptr %i.b, align 8
  br i1 %i.bd, label %.loopexit.sink.split, label %bb.l

.loopexit.sink.split:                             ; preds = %bb.m, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bf, %.loopexit.sink.split ], [ 0, %bb.l ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv10find_amongNtNtNtB5_10algorithms5tamil7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 3 uses
  %.sroa.018.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.018.0 = load ptr, ptr %.sroa.018.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.e, %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.h
  %i.j = phi i64 [ %i.g, %.lr.ph67 ], [ %i.am, %bb.h ]
  %i.k = phi i32 [ %i.f, %.lr.ph67 ], [ %i.al, %bb.h ] ; 5 uses
  %.sroa.02.065 = phi i32 [ %i.a, %.lr.ph67 ], [ %i.w, %bb.h ] ; 3 uses
  %.sroa.05.064 = phi i64 [ 0, %.lr.ph67 ], [ %i.t, %bb.h ] ; 3 uses
  %.sroa.07.063 = phi i64 [ 0, %.lr.ph67 ], [ %i.v, %bb.h ] ; 4 uses
  %.sroa.08.062 = phi i1 [ false, %.lr.ph67 ], [ %.sroa.08.1, %bb.h ] ; 2 uses
  %.sroa.019.061 = phi i32 [ 0, %.lr.ph67 ], [ %i.u, %bb.h ] ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %.sroa.07.063, i64 %.sroa.05.064) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.o = icmp ult i64 %..i, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread131

._crit_edge68:                                    ; preds = %bb.h, %bb.a
  %.lcssa49 = phi i64 [ %i.g, %bb.a ], [ %i.am, %bb.h ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa49, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #11
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.sroa.011.053 = phi i64 [ %i.p, %bb.f ], [ %..i, %bb.b ] ; 5 uses
  %i.p = add nuw i64 %.sroa.011.053, 1            ; 2 uses
  %i.q = add i64 %.sroa.011.053, %i.c             ; 3 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread131, label %bb.c

._crit_edge:                                      ; preds = %bb.e
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread131, label %.split134.thread

.split134.thread:                                 ; preds = %._crit_edge
  br label %.thread131

.thread131:                                       ; preds = %bb.f, %.lr.ph, %bb.b, %._crit_edge, %.split134.thread
  %i.t = phi i64 [ %.sroa.05.064, %._crit_edge ], [ %..i, %bb.b ], [ %.sroa.011.053, %.split134.thread ], [ %i.n, %bb.f ], [ %.sroa.05.064, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.019.061, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split134.thread ], [ %i.k, %bb.f ], [ %.sroa.019.061, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.011.053, %._crit_edge ], [ %.sroa.07.063, %bb.b ], [ %.sroa.07.063, %.split134.thread ], [ %.sroa.07.063, %bb.f ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.065, %bb.b ], [ %.sroa.02.065, %.split134.thread ], [ %.sroa.02.065, %bb.f ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.g, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.z = icmp ult i64 %i.q, %.sroa.3.0
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.c, %..i
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.3.0, i64 %i.aa)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 %i.q
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.011.053
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %exitcond.not = icmp eq i64 %i.p, %i.n
  br i1 %exitcond.not, label %.thread131, label %.lr.ph

bb.g:                                             ; preds = %.thread131
  %i.ah = icmp sgt i32 %i.u, 0
  %i.ai = icmp eq i32 %i.w, %i.u
  %i.aj = or i1 %i.ah, %i.ai
  %or.cond40 = select i1 %i.aj, i1 true, i1 %.sroa.08.062
  br i1 %or.cond40, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread131
  %.sroa.08.1 = phi i1 [ %.sroa.08.062, %.thread131 ], [ true, %bb.g ]
  %i.ak = ashr i32 %i.x, 1
  %i.al = add i32 %i.ak, %i.u                     ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = icmp ugt i64 %2, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge68

.preheader:                                       ; preds = %bb.g, %bb.l
  %.sroa.019.2 = phi i32 [ %i.ax, %bb.l ], [ %i.u, %bb.g ]
  %i.ao = sext i32 %.sroa.019.2 to i64            ; 3 uses
  %i.ap = icmp ugt i64 %2, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ao ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %.not37 = icmp ult i64 %i.t, %i.as
  br i1 %.not37, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.at = add i64 %i.as, %i.c                     ; 2 uses
  store i64 %i.at, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noundef !4 ; 2 uses
  %.not38 = icmp eq ptr %i.av, null
  br i1 %.not38, label %.loopexit.sink.split, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !4, !nonnull !4
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3) #12
  store i64 %i.at, ptr %i.b, align 8
  br i1 %i.bd, label %.loopexit.sink.split, label %bb.l

.loopexit.sink.split:                             ; preds = %bb.m, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bf, %.loopexit.sink.split ], [ 0, %bb.l ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv10find_amongNtNtNtB5_10algorithms6arabic7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 3 uses
  %.sroa.018.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.018.0 = load ptr, ptr %.sroa.018.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.e, %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.h
  %i.j = phi i64 [ %i.g, %.lr.ph67 ], [ %i.am, %bb.h ]
  %i.k = phi i32 [ %i.f, %.lr.ph67 ], [ %i.al, %bb.h ] ; 5 uses
  %.sroa.02.065 = phi i32 [ %i.a, %.lr.ph67 ], [ %i.w, %bb.h ] ; 3 uses
  %.sroa.05.064 = phi i64 [ 0, %.lr.ph67 ], [ %i.t, %bb.h ] ; 3 uses
  %.sroa.07.063 = phi i64 [ 0, %.lr.ph67 ], [ %i.v, %bb.h ] ; 4 uses
  %.sroa.08.062 = phi i1 [ false, %.lr.ph67 ], [ %.sroa.08.1, %bb.h ] ; 2 uses
  %.sroa.019.061 = phi i32 [ 0, %.lr.ph67 ], [ %i.u, %bb.h ] ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %.sroa.07.063, i64 %.sroa.05.064) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.o = icmp ult i64 %..i, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread131

._crit_edge68:                                    ; preds = %bb.h, %bb.a
  %.lcssa49 = phi i64 [ %i.g, %bb.a ], [ %i.am, %bb.h ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa49, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #11
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.sroa.011.053 = phi i64 [ %i.p, %bb.f ], [ %..i, %bb.b ] ; 5 uses
  %i.p = add nuw i64 %.sroa.011.053, 1            ; 2 uses
  %i.q = add i64 %.sroa.011.053, %i.c             ; 3 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread131, label %bb.c

._crit_edge:                                      ; preds = %bb.e
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread131, label %.split134.thread

.split134.thread:                                 ; preds = %._crit_edge
  br label %.thread131

.thread131:                                       ; preds = %bb.f, %.lr.ph, %bb.b, %._crit_edge, %.split134.thread
  %i.t = phi i64 [ %.sroa.05.064, %._crit_edge ], [ %..i, %bb.b ], [ %.sroa.011.053, %.split134.thread ], [ %i.n, %bb.f ], [ %.sroa.05.064, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.019.061, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split134.thread ], [ %i.k, %bb.f ], [ %.sroa.019.061, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.011.053, %._crit_edge ], [ %.sroa.07.063, %bb.b ], [ %.sroa.07.063, %.split134.thread ], [ %.sroa.07.063, %bb.f ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.065, %bb.b ], [ %.sroa.02.065, %.split134.thread ], [ %.sroa.02.065, %bb.f ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.g, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.z = icmp ult i64 %i.q, %.sroa.3.0
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.c, %..i
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.3.0, i64 %i.aa)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 %i.q
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.011.053
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %exitcond.not = icmp eq i64 %i.p, %i.n
  br i1 %exitcond.not, label %.thread131, label %.lr.ph

bb.g:                                             ; preds = %.thread131
  %i.ah = icmp sgt i32 %i.u, 0
  %i.ai = icmp eq i32 %i.w, %i.u
  %i.aj = or i1 %i.ah, %i.ai
  %or.cond40 = select i1 %i.aj, i1 true, i1 %.sroa.08.062
  br i1 %or.cond40, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread131
  %.sroa.08.1 = phi i1 [ %.sroa.08.062, %.thread131 ], [ true, %bb.g ]
  %i.ak = ashr i32 %i.x, 1
  %i.al = add i32 %i.ak, %i.u                     ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = icmp ugt i64 %2, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge68

.preheader:                                       ; preds = %bb.g, %bb.l
  %.sroa.019.2 = phi i32 [ %i.ax, %bb.l ], [ %i.u, %bb.g ]
  %i.ao = sext i32 %.sroa.019.2 to i64            ; 3 uses
  %i.ap = icmp ugt i64 %2, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ao ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %.not37 = icmp ult i64 %i.t, %i.as
  br i1 %.not37, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.at = add i64 %i.as, %i.c                     ; 2 uses
  store i64 %i.at, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noundef !4 ; 2 uses
  %.not38 = icmp eq ptr %i.av, null
  br i1 %.not38, label %.loopexit.sink.split, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !4, !nonnull !4
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3) #12
  store i64 %i.at, ptr %i.b, align 8
  br i1 %i.bd, label %.loopexit.sink.split, label %bb.l

.loopexit.sink.split:                             ; preds = %bb.m, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bf, %.loopexit.sink.split ], [ 0, %bb.l ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv10find_amongNtNtNtB5_10algorithms6french7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 3 uses
  %.sroa.018.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.018.0 = load ptr, ptr %.sroa.018.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.e, %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.h
  %i.j = phi i64 [ %i.g, %.lr.ph67 ], [ %i.am, %bb.h ]
  %i.k = phi i32 [ %i.f, %.lr.ph67 ], [ %i.al, %bb.h ] ; 5 uses
  %.sroa.02.065 = phi i32 [ %i.a, %.lr.ph67 ], [ %i.w, %bb.h ] ; 3 uses
  %.sroa.05.064 = phi i64 [ 0, %.lr.ph67 ], [ %i.t, %bb.h ] ; 3 uses
  %.sroa.07.063 = phi i64 [ 0, %.lr.ph67 ], [ %i.v, %bb.h ] ; 4 uses
  %.sroa.08.062 = phi i1 [ false, %.lr.ph67 ], [ %.sroa.08.1, %bb.h ] ; 2 uses
  %.sroa.019.061 = phi i32 [ 0, %.lr.ph67 ], [ %i.u, %bb.h ] ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %.sroa.07.063, i64 %.sroa.05.064) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.o = icmp ult i64 %..i, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread131

._crit_edge68:                                    ; preds = %bb.h, %bb.a
  %.lcssa49 = phi i64 [ %i.g, %bb.a ], [ %i.am, %bb.h ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa49, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #11
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.sroa.011.053 = phi i64 [ %i.p, %bb.f ], [ %..i, %bb.b ] ; 5 uses
  %i.p = add nuw i64 %.sroa.011.053, 1            ; 2 uses
  %i.q = add i64 %.sroa.011.053, %i.c             ; 3 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread131, label %bb.c

._crit_edge:                                      ; preds = %bb.e
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread131, label %.split134.thread

.split134.thread:                                 ; preds = %._crit_edge
  br label %.thread131

.thread131:                                       ; preds = %bb.f, %.lr.ph, %bb.b, %._crit_edge, %.split134.thread
  %i.t = phi i64 [ %.sroa.05.064, %._crit_edge ], [ %..i, %bb.b ], [ %.sroa.011.053, %.split134.thread ], [ %i.n, %bb.f ], [ %.sroa.05.064, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.019.061, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split134.thread ], [ %i.k, %bb.f ], [ %.sroa.019.061, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.011.053, %._crit_edge ], [ %.sroa.07.063, %bb.b ], [ %.sroa.07.063, %.split134.thread ], [ %.sroa.07.063, %bb.f ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.065, %bb.b ], [ %.sroa.02.065, %.split134.thread ], [ %.sroa.02.065, %bb.f ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.g, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.z = icmp ult i64 %i.q, %.sroa.3.0
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.c, %..i
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.3.0, i64 %i.aa)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 %i.q
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.011.053
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %exitcond.not = icmp eq i64 %i.p, %i.n
  br i1 %exitcond.not, label %.thread131, label %.lr.ph

bb.g:                                             ; preds = %.thread131
  %i.ah = icmp sgt i32 %i.u, 0
  %i.ai = icmp eq i32 %i.w, %i.u
  %i.aj = or i1 %i.ah, %i.ai
  %or.cond40 = select i1 %i.aj, i1 true, i1 %.sroa.08.062
  br i1 %or.cond40, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread131
  %.sroa.08.1 = phi i1 [ %.sroa.08.062, %.thread131 ], [ true, %bb.g ]
  %i.ak = ashr i32 %i.x, 1
  %i.al = add i32 %i.ak, %i.u                     ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = icmp ugt i64 %2, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge68

.preheader:                                       ; preds = %bb.g, %bb.l
  %.sroa.019.2 = phi i32 [ %i.ax, %bb.l ], [ %i.u, %bb.g ]
  %i.ao = sext i32 %.sroa.019.2 to i64            ; 3 uses
  %i.ap = icmp ugt i64 %2, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ao ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %.not37 = icmp ult i64 %i.t, %i.as
  br i1 %.not37, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.at = add i64 %i.as, %i.c                     ; 2 uses
  store i64 %i.at, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noundef !4 ; 2 uses
  %.not38 = icmp eq ptr %i.av, null
  br i1 %.not38, label %.loopexit.sink.split, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !4, !nonnull !4
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #12
  store i64 %i.at, ptr %i.b, align 8
  br i1 %i.bd, label %.loopexit.sink.split, label %bb.l

.loopexit.sink.split:                             ; preds = %bb.m, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bf, %.loopexit.sink.split ], [ 0, %bb.l ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv10find_amongNtNtNtB5_10algorithms6german7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 3 uses
  %.sroa.018.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.018.0 = load ptr, ptr %.sroa.018.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.e, %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.h
  %i.j = phi i64 [ %i.g, %.lr.ph67 ], [ %i.am, %bb.h ]
  %i.k = phi i32 [ %i.f, %.lr.ph67 ], [ %i.al, %bb.h ] ; 5 uses
  %.sroa.02.065 = phi i32 [ %i.a, %.lr.ph67 ], [ %i.w, %bb.h ] ; 3 uses
  %.sroa.05.064 = phi i64 [ 0, %.lr.ph67 ], [ %i.t, %bb.h ] ; 3 uses
  %.sroa.07.063 = phi i64 [ 0, %.lr.ph67 ], [ %i.v, %bb.h ] ; 4 uses
  %.sroa.08.062 = phi i1 [ false, %.lr.ph67 ], [ %.sroa.08.1, %bb.h ] ; 2 uses
  %.sroa.019.061 = phi i32 [ 0, %.lr.ph67 ], [ %i.u, %bb.h ] ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %.sroa.07.063, i64 %.sroa.05.064) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.o = icmp ult i64 %..i, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread131

._crit_edge68:                                    ; preds = %bb.h, %bb.a
  %.lcssa49 = phi i64 [ %i.g, %bb.a ], [ %i.am, %bb.h ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa49, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #11
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.sroa.011.053 = phi i64 [ %i.p, %bb.f ], [ %..i, %bb.b ] ; 5 uses
  %i.p = add nuw i64 %.sroa.011.053, 1            ; 2 uses
  %i.q = add i64 %.sroa.011.053, %i.c             ; 3 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread131, label %bb.c

._crit_edge:                                      ; preds = %bb.e
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread131, label %.split134.thread

.split134.thread:                                 ; preds = %._crit_edge
  br label %.thread131

.thread131:                                       ; preds = %bb.f, %.lr.ph, %bb.b, %._crit_edge, %.split134.thread
  %i.t = phi i64 [ %.sroa.05.064, %._crit_edge ], [ %..i, %bb.b ], [ %.sroa.011.053, %.split134.thread ], [ %i.n, %bb.f ], [ %.sroa.05.064, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.019.061, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split134.thread ], [ %i.k, %bb.f ], [ %.sroa.019.061, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.011.053, %._crit_edge ], [ %.sroa.07.063, %bb.b ], [ %.sroa.07.063, %.split134.thread ], [ %.sroa.07.063, %bb.f ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.065, %bb.b ], [ %.sroa.02.065, %.split134.thread ], [ %.sroa.02.065, %bb.f ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.g, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.z = icmp ult i64 %i.q, %.sroa.3.0
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.c, %..i
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.3.0, i64 %i.aa)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 %i.q
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.011.053
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %exitcond.not = icmp eq i64 %i.p, %i.n
  br i1 %exitcond.not, label %.thread131, label %.lr.ph

bb.g:                                             ; preds = %.thread131
  %i.ah = icmp sgt i32 %i.u, 0
  %i.ai = icmp eq i32 %i.w, %i.u
  %i.aj = or i1 %i.ah, %i.ai
  %or.cond40 = select i1 %i.aj, i1 true, i1 %.sroa.08.062
  br i1 %or.cond40, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread131
  %.sroa.08.1 = phi i1 [ %.sroa.08.062, %.thread131 ], [ true, %bb.g ]
  %i.ak = ashr i32 %i.x, 1
  %i.al = add i32 %i.ak, %i.u                     ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = icmp ugt i64 %2, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge68

.preheader:                                       ; preds = %bb.g, %bb.l
  %.sroa.019.2 = phi i32 [ %i.ax, %bb.l ], [ %i.u, %bb.g ]
  %i.ao = sext i32 %.sroa.019.2 to i64            ; 3 uses
  %i.ap = icmp ugt i64 %2, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ao ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %.not37 = icmp ult i64 %i.t, %i.as
  br i1 %.not37, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.at = add i64 %i.as, %i.c                     ; 2 uses
  store i64 %i.at, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noundef !4 ; 2 uses
  %.not38 = icmp eq ptr %i.av, null
  br i1 %.not38, label %.loopexit.sink.split, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !4, !nonnull !4
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #12
  store i64 %i.at, ptr %i.b, align 8
  br i1 %i.bd, label %.loopexit.sink.split, label %bb.l

.loopexit.sink.split:                             ; preds = %bb.m, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bf, %.loopexit.sink.split ], [ 0, %bb.l ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv10find_amongNtNtNtB5_10algorithms7english7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 3 uses
  %.sroa.018.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.018.0 = load ptr, ptr %.sroa.018.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.e, %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.h
  %i.j = phi i64 [ %i.g, %.lr.ph67 ], [ %i.am, %bb.h ]
  %i.k = phi i32 [ %i.f, %.lr.ph67 ], [ %i.al, %bb.h ] ; 5 uses
  %.sroa.02.065 = phi i32 [ %i.a, %.lr.ph67 ], [ %i.w, %bb.h ] ; 3 uses
  %.sroa.05.064 = phi i64 [ 0, %.lr.ph67 ], [ %i.t, %bb.h ] ; 3 uses
  %.sroa.07.063 = phi i64 [ 0, %.lr.ph67 ], [ %i.v, %bb.h ] ; 4 uses
  %.sroa.08.062 = phi i1 [ false, %.lr.ph67 ], [ %.sroa.08.1, %bb.h ] ; 2 uses
  %.sroa.019.061 = phi i32 [ 0, %.lr.ph67 ], [ %i.u, %bb.h ] ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %.sroa.07.063, i64 %.sroa.05.064) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.o = icmp ult i64 %..i, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread131

._crit_edge68:                                    ; preds = %bb.h, %bb.a
  %.lcssa49 = phi i64 [ %i.g, %bb.a ], [ %i.am, %bb.h ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa49, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #11
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.sroa.011.053 = phi i64 [ %i.p, %bb.f ], [ %..i, %bb.b ] ; 5 uses
  %i.p = add nuw i64 %.sroa.011.053, 1            ; 2 uses
  %i.q = add i64 %.sroa.011.053, %i.c             ; 3 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread131, label %bb.c

._crit_edge:                                      ; preds = %bb.e
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread131, label %.split134.thread

.split134.thread:                                 ; preds = %._crit_edge
  br label %.thread131

.thread131:                                       ; preds = %bb.f, %.lr.ph, %bb.b, %._crit_edge, %.split134.thread
  %i.t = phi i64 [ %.sroa.05.064, %._crit_edge ], [ %..i, %bb.b ], [ %.sroa.011.053, %.split134.thread ], [ %i.n, %bb.f ], [ %.sroa.05.064, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.019.061, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split134.thread ], [ %i.k, %bb.f ], [ %.sroa.019.061, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.011.053, %._crit_edge ], [ %.sroa.07.063, %bb.b ], [ %.sroa.07.063, %.split134.thread ], [ %.sroa.07.063, %bb.f ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.065, %bb.b ], [ %.sroa.02.065, %.split134.thread ], [ %.sroa.02.065, %bb.f ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.g, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.z = icmp ult i64 %i.q, %.sroa.3.0
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.c, %..i
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.3.0, i64 %i.aa)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 %i.q
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.011.053
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %exitcond.not = icmp eq i64 %i.p, %i.n
  br i1 %exitcond.not, label %.thread131, label %.lr.ph

bb.g:                                             ; preds = %.thread131
  %i.ah = icmp sgt i32 %i.u, 0
  %i.ai = icmp eq i32 %i.w, %i.u
  %i.aj = or i1 %i.ah, %i.ai
  %or.cond40 = select i1 %i.aj, i1 true, i1 %.sroa.08.062
  br i1 %or.cond40, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread131
  %.sroa.08.1 = phi i1 [ %.sroa.08.062, %.thread131 ], [ true, %bb.g ]
  %i.ak = ashr i32 %i.x, 1
  %i.al = add i32 %i.ak, %i.u                     ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = icmp ugt i64 %2, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge68

.preheader:                                       ; preds = %bb.g, %bb.l
  %.sroa.019.2 = phi i32 [ %i.ax, %bb.l ], [ %i.u, %bb.g ]
  %i.ao = sext i32 %.sroa.019.2 to i64            ; 3 uses
  %i.ap = icmp ugt i64 %2, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ao ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %.not37 = icmp ult i64 %i.t, %i.as
  br i1 %.not37, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.at = add i64 %i.as, %i.c                     ; 2 uses
  store i64 %i.at, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noundef !4 ; 2 uses
  %.not38 = icmp eq ptr %i.av, null
  br i1 %.not38, label %.loopexit.sink.split, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !4, !nonnull !4
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #12
  store i64 %i.at, ptr %i.b, align 8
  br i1 %i.bd, label %.loopexit.sink.split, label %bb.l

.loopexit.sink.split:                             ; preds = %bb.m, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bf, %.loopexit.sink.split ], [ 0, %bb.l ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv10find_amongNtNtNtB5_10algorithms7italian7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 3 uses
  %.sroa.018.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.018.0 = load ptr, ptr %.sroa.018.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.e, %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.h
  %i.j = phi i64 [ %i.g, %.lr.ph67 ], [ %i.am, %bb.h ]
  %i.k = phi i32 [ %i.f, %.lr.ph67 ], [ %i.al, %bb.h ] ; 5 uses
  %.sroa.02.065 = phi i32 [ %i.a, %.lr.ph67 ], [ %i.w, %bb.h ] ; 3 uses
  %.sroa.05.064 = phi i64 [ 0, %.lr.ph67 ], [ %i.t, %bb.h ] ; 3 uses
  %.sroa.07.063 = phi i64 [ 0, %.lr.ph67 ], [ %i.v, %bb.h ] ; 4 uses
  %.sroa.08.062 = phi i1 [ false, %.lr.ph67 ], [ %.sroa.08.1, %bb.h ] ; 2 uses
  %.sroa.019.061 = phi i32 [ 0, %.lr.ph67 ], [ %i.u, %bb.h ] ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %.sroa.07.063, i64 %.sroa.05.064) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.o = icmp ult i64 %..i, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread131

._crit_edge68:                                    ; preds = %bb.h, %bb.a
  %.lcssa49 = phi i64 [ %i.g, %bb.a ], [ %i.am, %bb.h ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa49, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #11
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.sroa.011.053 = phi i64 [ %i.p, %bb.f ], [ %..i, %bb.b ] ; 5 uses
  %i.p = add nuw i64 %.sroa.011.053, 1            ; 2 uses
  %i.q = add i64 %.sroa.011.053, %i.c             ; 3 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread131, label %bb.c

._crit_edge:                                      ; preds = %bb.e
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread131, label %.split134.thread

.split134.thread:                                 ; preds = %._crit_edge
  br label %.thread131

.thread131:                                       ; preds = %bb.f, %.lr.ph, %bb.b, %._crit_edge, %.split134.thread
  %i.t = phi i64 [ %.sroa.05.064, %._crit_edge ], [ %..i, %bb.b ], [ %.sroa.011.053, %.split134.thread ], [ %i.n, %bb.f ], [ %.sroa.05.064, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.019.061, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split134.thread ], [ %i.k, %bb.f ], [ %.sroa.019.061, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.011.053, %._crit_edge ], [ %.sroa.07.063, %bb.b ], [ %.sroa.07.063, %.split134.thread ], [ %.sroa.07.063, %bb.f ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.065, %bb.b ], [ %.sroa.02.065, %.split134.thread ], [ %.sroa.02.065, %bb.f ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.g, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.z = icmp ult i64 %i.q, %.sroa.3.0
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.c, %..i
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.3.0, i64 %i.aa)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 %i.q
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.011.053
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %exitcond.not = icmp eq i64 %i.p, %i.n
  br i1 %exitcond.not, label %.thread131, label %.lr.ph

bb.g:                                             ; preds = %.thread131
  %i.ah = icmp sgt i32 %i.u, 0
  %i.ai = icmp eq i32 %i.w, %i.u
  %i.aj = or i1 %i.ah, %i.ai
  %or.cond40 = select i1 %i.aj, i1 true, i1 %.sroa.08.062
  br i1 %or.cond40, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread131
  %.sroa.08.1 = phi i1 [ %.sroa.08.062, %.thread131 ], [ true, %bb.g ]
  %i.ak = ashr i32 %i.x, 1
  %i.al = add i32 %i.ak, %i.u                     ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = icmp ugt i64 %2, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge68

.preheader:                                       ; preds = %bb.g, %bb.l
  %.sroa.019.2 = phi i32 [ %i.ax, %bb.l ], [ %i.u, %bb.g ]
  %i.ao = sext i32 %.sroa.019.2 to i64            ; 3 uses
  %i.ap = icmp ugt i64 %2, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ao ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %.not37 = icmp ult i64 %i.t, %i.as
  br i1 %.not37, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.at = add i64 %i.as, %i.c                     ; 2 uses
  store i64 %i.at, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noundef !4 ; 2 uses
  %.not38 = icmp eq ptr %i.av, null
  br i1 %.not38, label %.loopexit.sink.split, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !4, !nonnull !4
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #12
  store i64 %i.at, ptr %i.b, align 8
  br i1 %i.bd, label %.loopexit.sink.split, label %bb.l

.loopexit.sink.split:                             ; preds = %bb.m, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bf, %.loopexit.sink.split ], [ 0, %bb.l ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv10find_amongNtNtNtB5_10algorithms7spanish7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 3 uses
  %.sroa.018.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.018.0 = load ptr, ptr %.sroa.018.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.e, %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.h
  %i.j = phi i64 [ %i.g, %.lr.ph67 ], [ %i.am, %bb.h ]
  %i.k = phi i32 [ %i.f, %.lr.ph67 ], [ %i.al, %bb.h ] ; 5 uses
  %.sroa.02.065 = phi i32 [ %i.a, %.lr.ph67 ], [ %i.w, %bb.h ] ; 3 uses
  %.sroa.05.064 = phi i64 [ 0, %.lr.ph67 ], [ %i.t, %bb.h ] ; 3 uses
  %.sroa.07.063 = phi i64 [ 0, %.lr.ph67 ], [ %i.v, %bb.h ] ; 4 uses
  %.sroa.08.062 = phi i1 [ false, %.lr.ph67 ], [ %.sroa.08.1, %bb.h ] ; 2 uses
  %.sroa.019.061 = phi i32 [ 0, %.lr.ph67 ], [ %i.u, %bb.h ] ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %.sroa.07.063, i64 %.sroa.05.064) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.o = icmp ult i64 %..i, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread131

._crit_edge68:                                    ; preds = %bb.h, %bb.a
  %.lcssa49 = phi i64 [ %i.g, %bb.a ], [ %i.am, %bb.h ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa49, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #11
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.sroa.011.053 = phi i64 [ %i.p, %bb.f ], [ %..i, %bb.b ] ; 5 uses
  %i.p = add nuw i64 %.sroa.011.053, 1            ; 2 uses
  %i.q = add i64 %.sroa.011.053, %i.c             ; 3 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread131, label %bb.c

._crit_edge:                                      ; preds = %bb.e
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread131, label %.split134.thread

.split134.thread:                                 ; preds = %._crit_edge
  br label %.thread131

.thread131:                                       ; preds = %bb.f, %.lr.ph, %bb.b, %._crit_edge, %.split134.thread
  %i.t = phi i64 [ %.sroa.05.064, %._crit_edge ], [ %..i, %bb.b ], [ %.sroa.011.053, %.split134.thread ], [ %i.n, %bb.f ], [ %.sroa.05.064, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.019.061, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split134.thread ], [ %i.k, %bb.f ], [ %.sroa.019.061, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.011.053, %._crit_edge ], [ %.sroa.07.063, %bb.b ], [ %.sroa.07.063, %.split134.thread ], [ %.sroa.07.063, %bb.f ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.065, %bb.b ], [ %.sroa.02.065, %.split134.thread ], [ %.sroa.02.065, %bb.f ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.g, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.z = icmp ult i64 %i.q, %.sroa.3.0
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.c, %..i
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.3.0, i64 %i.aa)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 %i.q
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.011.053
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %exitcond.not = icmp eq i64 %i.p, %i.n
  br i1 %exitcond.not, label %.thread131, label %.lr.ph

bb.g:                                             ; preds = %.thread131
  %i.ah = icmp sgt i32 %i.u, 0
  %i.ai = icmp eq i32 %i.w, %i.u
  %i.aj = or i1 %i.ah, %i.ai
  %or.cond40 = select i1 %i.aj, i1 true, i1 %.sroa.08.062
  br i1 %or.cond40, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread131
  %.sroa.08.1 = phi i1 [ %.sroa.08.062, %.thread131 ], [ true, %bb.g ]
  %i.ak = ashr i32 %i.x, 1
  %i.al = add i32 %i.ak, %i.u                     ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = icmp ugt i64 %2, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge68

.preheader:                                       ; preds = %bb.g, %bb.l
  %.sroa.019.2 = phi i32 [ %i.ax, %bb.l ], [ %i.u, %bb.g ]
  %i.ao = sext i32 %.sroa.019.2 to i64            ; 3 uses
  %i.ap = icmp ugt i64 %2, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ao ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %.not37 = icmp ult i64 %i.t, %i.as
  br i1 %.not37, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.at = add i64 %i.as, %i.c                     ; 2 uses
  store i64 %i.at, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noundef !4 ; 2 uses
  %.not38 = icmp eq ptr %i.av, null
  br i1 %.not38, label %.loopexit.sink.split, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !4, !nonnull !4
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #12
  store i64 %i.at, ptr %i.b, align 8
  br i1 %i.bd, label %.loopexit.sink.split, label %bb.l

.loopexit.sink.split:                             ; preds = %bb.m, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bf, %.loopexit.sink.split ], [ 0, %bb.l ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv10find_amongNtNtNtB5_10algorithms8romanian7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 3 uses
  %.sroa.018.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.018.0 = load ptr, ptr %.sroa.018.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.e, %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.h
  %i.j = phi i64 [ %i.g, %.lr.ph67 ], [ %i.am, %bb.h ]
  %i.k = phi i32 [ %i.f, %.lr.ph67 ], [ %i.al, %bb.h ] ; 5 uses
  %.sroa.02.065 = phi i32 [ %i.a, %.lr.ph67 ], [ %i.w, %bb.h ] ; 3 uses
  %.sroa.05.064 = phi i64 [ 0, %.lr.ph67 ], [ %i.t, %bb.h ] ; 3 uses
  %.sroa.07.063 = phi i64 [ 0, %.lr.ph67 ], [ %i.v, %bb.h ] ; 4 uses
  %.sroa.08.062 = phi i1 [ false, %.lr.ph67 ], [ %.sroa.08.1, %bb.h ] ; 2 uses
  %.sroa.019.061 = phi i32 [ 0, %.lr.ph67 ], [ %i.u, %bb.h ] ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %.sroa.07.063, i64 %.sroa.05.064) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.o = icmp ult i64 %..i, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread131

._crit_edge68:                                    ; preds = %bb.h, %bb.a
  %.lcssa49 = phi i64 [ %i.g, %bb.a ], [ %i.am, %bb.h ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa49, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #11
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.sroa.011.053 = phi i64 [ %i.p, %bb.f ], [ %..i, %bb.b ] ; 5 uses
  %i.p = add nuw i64 %.sroa.011.053, 1            ; 2 uses
  %i.q = add i64 %.sroa.011.053, %i.c             ; 3 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread131, label %bb.c

._crit_edge:                                      ; preds = %bb.e
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread131, label %.split134.thread

.split134.thread:                                 ; preds = %._crit_edge
  br label %.thread131

.thread131:                                       ; preds = %bb.f, %.lr.ph, %bb.b, %._crit_edge, %.split134.thread
  %i.t = phi i64 [ %.sroa.05.064, %._crit_edge ], [ %..i, %bb.b ], [ %.sroa.011.053, %.split134.thread ], [ %i.n, %bb.f ], [ %.sroa.05.064, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.019.061, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split134.thread ], [ %i.k, %bb.f ], [ %.sroa.019.061, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.011.053, %._crit_edge ], [ %.sroa.07.063, %bb.b ], [ %.sroa.07.063, %.split134.thread ], [ %.sroa.07.063, %bb.f ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.065, %bb.b ], [ %.sroa.02.065, %.split134.thread ], [ %.sroa.02.065, %bb.f ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.g, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.z = icmp ult i64 %i.q, %.sroa.3.0
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.c, %..i
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.3.0, i64 %i.aa)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 %i.q
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.011.053
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %exitcond.not = icmp eq i64 %i.p, %i.n
  br i1 %exitcond.not, label %.thread131, label %.lr.ph

bb.g:                                             ; preds = %.thread131
  %i.ah = icmp sgt i32 %i.u, 0
  %i.ai = icmp eq i32 %i.w, %i.u
  %i.aj = or i1 %i.ah, %i.ai
  %or.cond40 = select i1 %i.aj, i1 true, i1 %.sroa.08.062
  br i1 %or.cond40, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread131
  %.sroa.08.1 = phi i1 [ %.sroa.08.062, %.thread131 ], [ true, %bb.g ]
  %i.ak = ashr i32 %i.x, 1
  %i.al = add i32 %i.ak, %i.u                     ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = icmp ugt i64 %2, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge68

.preheader:                                       ; preds = %bb.g, %bb.l
  %.sroa.019.2 = phi i32 [ %i.ax, %bb.l ], [ %i.u, %bb.g ]
  %i.ao = sext i32 %.sroa.019.2 to i64            ; 3 uses
  %i.ap = icmp ugt i64 %2, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ao ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %.not37 = icmp ult i64 %i.t, %i.as
  br i1 %.not37, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.at = add i64 %i.as, %i.c                     ; 2 uses
  store i64 %i.at, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noundef !4 ; 2 uses
  %.not38 = icmp eq ptr %i.av, null
  br i1 %.not38, label %.loopexit.sink.split, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !4, !nonnull !4
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %3) #12
  store i64 %i.at, ptr %i.b, align 8
  br i1 %i.bd, label %.loopexit.sink.split, label %bb.l

.loopexit.sink.split:                             ; preds = %bb.m, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bf, %.loopexit.sink.split ], [ 0, %bb.l ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv10find_amongNtNtNtB5_10algorithms9hungarian7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 3 uses
  %.sroa.018.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.018.0 = load ptr, ptr %.sroa.018.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.e, %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.h
  %i.j = phi i64 [ %i.g, %.lr.ph67 ], [ %i.am, %bb.h ]
  %i.k = phi i32 [ %i.f, %.lr.ph67 ], [ %i.al, %bb.h ] ; 5 uses
  %.sroa.02.065 = phi i32 [ %i.a, %.lr.ph67 ], [ %i.w, %bb.h ] ; 3 uses
  %.sroa.05.064 = phi i64 [ 0, %.lr.ph67 ], [ %i.t, %bb.h ] ; 3 uses
  %.sroa.07.063 = phi i64 [ 0, %.lr.ph67 ], [ %i.v, %bb.h ] ; 4 uses
  %.sroa.08.062 = phi i1 [ false, %.lr.ph67 ], [ %.sroa.08.1, %bb.h ] ; 2 uses
  %.sroa.019.061 = phi i32 [ 0, %.lr.ph67 ], [ %i.u, %bb.h ] ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %.sroa.07.063, i64 %.sroa.05.064) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.o = icmp ult i64 %..i, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread131

._crit_edge68:                                    ; preds = %bb.h, %bb.a
  %.lcssa49 = phi i64 [ %i.g, %bb.a ], [ %i.am, %bb.h ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa49, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #11
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.sroa.011.053 = phi i64 [ %i.p, %bb.f ], [ %..i, %bb.b ] ; 5 uses
  %i.p = add nuw i64 %.sroa.011.053, 1            ; 2 uses
  %i.q = add i64 %.sroa.011.053, %i.c             ; 3 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread131, label %bb.c

._crit_edge:                                      ; preds = %bb.e
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread131, label %.split134.thread

.split134.thread:                                 ; preds = %._crit_edge
  br label %.thread131

.thread131:                                       ; preds = %bb.f, %.lr.ph, %bb.b, %._crit_edge, %.split134.thread
  %i.t = phi i64 [ %.sroa.05.064, %._crit_edge ], [ %..i, %bb.b ], [ %.sroa.011.053, %.split134.thread ], [ %i.n, %bb.f ], [ %.sroa.05.064, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.019.061, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split134.thread ], [ %i.k, %bb.f ], [ %.sroa.019.061, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.011.053, %._crit_edge ], [ %.sroa.07.063, %bb.b ], [ %.sroa.07.063, %.split134.thread ], [ %.sroa.07.063, %bb.f ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.065, %bb.b ], [ %.sroa.02.065, %.split134.thread ], [ %.sroa.02.065, %bb.f ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.g, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.z = icmp ult i64 %i.q, %.sroa.3.0
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.c, %..i
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.3.0, i64 %i.aa)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 %i.q
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.011.053
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %exitcond.not = icmp eq i64 %i.p, %i.n
  br i1 %exitcond.not, label %.thread131, label %.lr.ph

bb.g:                                             ; preds = %.thread131
  %i.ah = icmp sgt i32 %i.u, 0
  %i.ai = icmp eq i32 %i.w, %i.u
  %i.aj = or i1 %i.ah, %i.ai
  %or.cond40 = select i1 %i.aj, i1 true, i1 %.sroa.08.062
  br i1 %or.cond40, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread131
  %.sroa.08.1 = phi i1 [ %.sroa.08.062, %.thread131 ], [ true, %bb.g ]
  %i.ak = ashr i32 %i.x, 1
  %i.al = add i32 %i.ak, %i.u                     ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = icmp ugt i64 %2, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge68

.preheader:                                       ; preds = %bb.g, %bb.l
  %.sroa.019.2 = phi i32 [ %i.ax, %bb.l ], [ %i.u, %bb.g ]
  %i.ao = sext i32 %.sroa.019.2 to i64            ; 3 uses
  %i.ap = icmp ugt i64 %2, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ao ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %.not37 = icmp ult i64 %i.t, %i.as
  br i1 %.not37, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.at = add i64 %i.as, %i.c                     ; 2 uses
  store i64 %i.at, ptr %i.b, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noundef !4 ; 2 uses
  %.not38 = icmp eq ptr %i.av, null
  br i1 %.not38, label %.loopexit.sink.split, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !4, !nonnull !4
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3) #12
  store i64 %i.at, ptr %i.b, align 8
  br i1 %i.bd, label %.loopexit.sink.split, label %bb.l

.loopexit.sink.split:                             ; preds = %bb.m, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bf, %.loopexit.sink.split ], [ 0, %bb.l ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms10portuguese7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms5dutch7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms5greek7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(32) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms5tamil7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(16) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms6arabic7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(16) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms6danish7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(40) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms6french7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms6german7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms7english7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms7finnish7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(48) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms7italian7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms7russian7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(16) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms7spanish7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms7swedish7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(16) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms7turkish7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(16) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms8armenian7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 4 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms8romanian7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(32) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms9hungarian7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB3_11SnowballEnv12find_among_bNtNtNtB5_10algorithms9norwegian7ContextEB7_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias nofree noundef align 8 dereferenceable(16) %3) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = ashr i32 %i.a, 1                         ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.a
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8 ; 2 uses
  %.sroa.023.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !nonnull !4
  %i.i = sub i64 %i.c, %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph85, %bb.j
  %i.j = phi i64 [ %i.g, %.lr.ph85 ], [ %i.an, %bb.j ]
  %i.k = phi i32 [ %i.f, %.lr.ph85 ], [ %i.am, %bb.j ] ; 5 uses
  %.sroa.02.083 = phi i32 [ %i.a, %.lr.ph85 ], [ %i.w, %bb.j ] ; 3 uses
  %.sroa.05.082 = phi i64 [ 0, %.lr.ph85 ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.08.081 = phi i64 [ 0, %.lr.ph85 ], [ %i.v, %bb.j ] ; 4 uses
  %.sroa.010.080 = phi i1 [ false, %.lr.ph85 ], [ %.sroa.010.1, %bb.j ] ; 2 uses
  %.sroa.024.079 = phi i32 [ 0, %.lr.ph85 ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.05.0..sroa.08.0 = tail call i64 @llvm.umin.i64(i64 %.sroa.05.082, i64 %.sroa.08.081) ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = sub i64 %i.n, %.sroa.05.0..sroa.08.0     ; 2 uses
  %.not69 = icmp eq i64 %i.o, 0
  br i1 %.not69, label %.thread160, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.first_iter = icmp ugt i64 %i.n, %.sroa.05.0..sroa.08.0
  br label %.lr.ph

._crit_edge86:                                    ; preds = %bb.j, %bb.a
  %.lcssa62 = phi i64 [ %i.g, %bb.a ], [ %i.an, %bb.j ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa62, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.013.171 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.05.0..sroa.08.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.070 = phi i64 [ %i.p, %bb.h ], [ %i.o, %.lr.ph.preheader ]
  %i.p = add i64 %.sroa.019.070, -1               ; 4 uses
  %i.q = sub i64 %i.c, %.sroa.013.171             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %.thread160, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.s = icmp ult i8 %i.ad, %i.af
  br i1 %i.s, label %.thread160, label %.split163.thread

.split163.thread:                                 ; preds = %._crit_edge
  br label %.thread160

.thread160:                                       ; preds = %bb.h, %.lr.ph, %bb.b, %._crit_edge, %.split163.thread
  %i.t = phi i64 [ %.sroa.05.082, %._crit_edge ], [ %.sroa.05.0..sroa.08.0, %bb.b ], [ %.sroa.013.171, %.split163.thread ], [ %i.n, %bb.h ], [ %.sroa.05.082, %.lr.ph ] ; 2 uses
  %i.u = phi i32 [ %.sroa.024.079, %._crit_edge ], [ %i.k, %bb.b ], [ %i.k, %.split163.thread ], [ %i.k, %bb.h ], [ %.sroa.024.079, %.lr.ph ] ; 6 uses
  %i.v = phi i64 [ %.sroa.013.171, %._crit_edge ], [ %.sroa.08.081, %bb.b ], [ %.sroa.08.081, %.split163.thread ], [ %.sroa.08.081, %bb.h ], [ %i.i, %.lr.ph ]
  %i.w = phi i32 [ %i.k, %._crit_edge ], [ %.sroa.02.083, %bb.b ], [ %.sroa.02.083, %.split163.thread ], [ %.sroa.02.083, %bb.h ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = sub i32 %i.w, %i.u                       ; 2 uses
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %i.z = add i64 %i.q, -1                         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.3.0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.first_iter, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %.sroa.013.171, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread160, label %.lr.ph

bb.i:                                             ; preds = %.thread160
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = icmp eq i32 %i.w, %i.u
  %i.ak = or i1 %i.ai, %i.aj
  %or.cond48 = select i1 %i.ak, i1 true, i1 %.sroa.010.080
  br i1 %or.cond48, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread160
  %.sroa.010.1 = phi i1 [ %.sroa.010.080, %.thread160 ], [ true, %bb.i ]
  %i.al = ashr i32 %i.x, 1
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ugt i64 %2, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge86

.preheader:                                       ; preds = %bb.i, %bb.n
  %.sroa.024.2 = phi i32 [ %i.ay, %bb.n ], [ %i.u, %bb.i ]
  %i.ap = sext i32 %.sroa.024.2 to i64            ; 3 uses
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ap ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ult i64 %i.t, %i.at
  br i1 %.not45, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = sub i64 %i.c, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, null
  br i1 %.not46, label %.loopexit.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !nonnull !4
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3) #12
  store i64 %i.au, ptr %i.b, align 8
  br i1 %i.be, label %.loopexit.sink.split, label %bb.n

.loopexit.sink.split:                             ; preds = %bb.o, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.0.0 = phi i32 [ %i.bg, %.loopexit.sink.split ], [ 0, %bb.n ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB2_11SnowballEnv10slice_from(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call fastcc noundef i32 @_RNvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB2_11SnowballEnv9replace_s(ptr noalias nofree noundef align 8 dereferenceable(64) %0, i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 0 uses
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB2_11SnowballEnv11in_grouping(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.03.0 = load ptr, ptr %.sroa.03.0.in, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !4 ; 11 uses
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ult i64 %i.b, %.sroa.5.0
  br i1 %.not.i, label %bb.d, label %.split.i

.split.i:                                         ; preds = %bb.c
  %i.f = icmp eq i64 %i.b, %.sroa.5.0
  br i1 %i.f, label %bb.e, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 %i.b
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !15, !noundef !4
  %i.i = icmp sgt i8 %i.h, -65
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %.split.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 %i.b ; 4 uses
  %i.k = icmp samesign eq i64 %i.b, %.sroa.5.0
  br i1 %i.k, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i8, ptr %i.j, align 1, !noalias !16, !noundef !4 ; 5 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.g, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6KyyKVsJz8w_20qdrant_rust_stemmers.exit12.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6KyyKVsJz8w_20qdrant_rust_stemmers.exit12.i: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.o = and i8 %i.l, 31
  %i.p = zext nneg i8 %i.o to i32                 ; 3 uses
  %i.q = add nuw nsw i64 %i.b, 1
  %i.r = icmp samesign ne i64 %i.q, %.sroa.5.0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = load i8, ptr %i.n, align 1, !noalias !16, !noundef !4
  %i.t = shl nuw nsw i32 %i.p, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32                 ; 2 uses
  %i.w = or disjoint i32 %i.t, %i.v
  %i.x = icmp samesign ugt i8 %i.l, -33
  br i1 %i.x, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6KyyKVsJz8w_20qdrant_rust_stemmers.exit14.i, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = zext nneg i8 %i.l to i32
  br label %bb.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6KyyKVsJz8w_20qdrant_rust_stemmers.exit14.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6KyyKVsJz8w_20qdrant_rust_stemmers.exit12.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.aa = add nuw nsw i64 %i.b, 2
end_hunk_0
