Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_blake2s_ref?download=true
inline.NumInlined: 345
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.blake2s_state__ = type { [8 x i32], [2 x i32], [2 x i32], [64 x i8], i64, i64, i8 }

@blake2s_IV = internal unnamed_addr constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16
@secure_zero_memory.memset_v = internal constant ptr @memset, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @blake2s_init_param(ptr nofree noundef writeonly captures(none) initializes((0, 136)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 32
  %i.d = add i64 %i.a, 128
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !20

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.e, i8 0, i64 104, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @blake2s_IV, i64 32, i1 false), !tbaa !11
  %i.f = load <4 x i32>, ptr %1, align 1
  %i.g = load i32, ptr %1, align 1
  %i.h = xor <4 x i32> %i.f, <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>
  store <4 x i32> %i.h, ptr %0, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <4 x i32>, ptr %i.i, align 1
  %i.l = xor <4 x i32> %i.k, <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>
  store <4 x i32> %i.l, ptr %i.j, align 8, !tbaa !11
  %i.m = and i32 %i.g, 255
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.n, ptr %i.o, align 8, !tbaa !14
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.p, i8 0, i64 104, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @blake2s_IV, i64 32, i1 false), !tbaa !11
  %i.q = load i32, ptr %1, align 1                ; 2 uses
  %i.r = xor i32 %i.q, 1779033703
  store i32 %i.r, ptr %0, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = xor i32 %i.t, -1150833019
  store i32 %i.v, ptr %i.u, align 4, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i32, ptr %i.w, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = xor i32 %i.x, 1013904242
  store i32 %i.z, ptr %i.y, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = xor i32 %i.ab, -1521486534
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = xor i32 %i.af, 1359893119
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aj = load i32, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.al = xor i32 %i.aj, -1694144372
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = xor i32 %i.an, 528734635
  store i32 %i.ap, ptr %i.ao, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ar = load i32, ptr %i.aq, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.at = xor i32 %i.ar, 1541459225
  store i32 %i.at, ptr %i.as, align 4, !tbaa !11
  %i.au = and i32 %i.q, 255
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !14
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 -1, 1) i32 @blake2s_init(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %1, -33
  %or.cond = icmp ult i64 %i.a, -32
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.ext = trunc nuw nsw i64 %1 to i32
  %i.b = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i8 0, i64 104, i1 false)
  %i.c = xor i32 %.sroa.0.0.insert.ext, 1795745383
  store i32 %i.c, ptr %0, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.d, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -1694144372, ptr %i.e, align 4, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 528734635, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1541459225, ptr %i.g, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %1, ptr %i.h, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @blake2s_init_key(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = add i64 %1, -33
  %or.cond = icmp ult i64 %i.b, -32
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  %i.d = add i64 %3, -33
  %i.e = icmp ult i64 %i.d, -32
  %or.cond5 = or i1 %i.c, %i.e
  br i1 %or.cond5, label %bb.c, label %blake2s_update.exit

blake2s_update.exit:                              ; preds = %bb.b
  %.sroa.0.0.insert.ext = trunc nuw nsw i64 %1 to i32
  %.sroa.0.1.insert.ext = trunc nuw nsw i64 %3 to i32
  %.sroa.0.1.insert.shift = shl nuw nsw i32 %.sroa.0.1.insert.ext, 8
  %.sroa.0.1.insert.insert = or disjoint i32 %.sroa.0.1.insert.shift, %.sroa.0.0.insert.ext
  %i.f = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, i8 0, i64 104, i1 false)
  %i.g = xor i32 %.sroa.0.1.insert.insert, 1795745383
  store i32 %i.g, ptr %0, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.h, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -1694144372, ptr %i.i, align 4, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 528734635, ptr %i.j, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1541459225, ptr %i.k, align 4, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %1, ptr %i.l, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %2, i64 %3, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false)
  store i64 64, ptr %i.m, align 8, !tbaa !15
  %i.o = load volatile ptr, ptr @secure_zero_memory.memset_v, align 8, !tbaa !17
  %i.p = call ptr %i.o(ptr noundef nonnull %i.a, i32 noundef 0, i64 noundef 64) #8, !inline_history !0 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %blake2s_update.exit
  %.0 = phi i32 [ 0, %blake2s_update.exit ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @blake2s_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = sub i64 64, %i.b                         ; 4 uses
  %i.d = icmp ugt i64 %2, %i.c
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %1, i64 %i.c, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %i.i = add i32 %i.h, 64
  store i32 %i.i, ptr %i.g, align 8, !tbaa !11
  %i.j = icmp ugt i32 %i.h, -65
  %i.k = zext i1 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11
  %i.n = add i32 %i.m, %i.k
  store i32 %i.n, ptr %i.l, align 4, !tbaa !11
  tail call fastcc void @blake2s_compress(ptr noundef nonnull %0, ptr noundef nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 2 uses
  %i.p = sub nuw i64 %2, %i.c                     ; 3 uses
  %i.q = icmp ugt i64 %i.p, 64
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
end_hunk_0
begin_hunk_1_@blake2s_compress:.preheader.preheader
  %i.apa = xor i32 %i.amq, %i.aoz                 ; 2 uses
  %i.apb = tail call i32 @llvm.fshl.i32(i32 %i.apa, i32 %i.apa, i32 16) ; 2 uses
  %i.apc = add i32 %i.aoh, %i.apb                 ; 2 uses
  %i.apd = xor i32 %i.anv, %i.apc                 ; 2 uses
  %i.ape = tail call i32 @llvm.fshl.i32(i32 %i.apd, i32 %i.apd, i32 20) ; 2 uses
  %i.apf = add i32 %i.aoz, %i.ape
  %i.apg = add i32 %i.apf, %.sroa.102.0.copyload  ; 2 uses
  %i.aph = xor i32 %i.apb, %i.apg                 ; 2 uses
  %i.api = tail call i32 @llvm.fshl.i32(i32 %i.aph, i32 %i.aph, i32 24) ; 2 uses
  %i.apj = add i32 %i.apc, %i.api                 ; 2 uses
  %i.apk = xor i32 %i.ape, %i.apj                 ; 2 uses
  %i.apl = tail call i32 @llvm.fshl.i32(i32 %i.apk, i32 %i.apk, i32 25)
  %i.apm = add i32 %i.aoj, %i.anq
  %i.apn = add i32 %i.apm, %.sroa.24.0.copyload   ; 2 uses
  %i.apo = xor i32 %i.ane, %i.apn                 ; 2 uses
  %i.app = tail call i32 @llvm.fshl.i32(i32 %i.apo, i32 %i.apo, i32 16) ; 2 uses
  %i.apq = add i32 %i.amr, %i.app                 ; 2 uses
  %i.apr = xor i32 %i.aoj, %i.apq                 ; 2 uses
  %i.aps = tail call i32 @llvm.fshl.i32(i32 %i.apr, i32 %i.apr, i32 20) ; 2 uses
  %i.apt = add i32 %i.apn, %i.aps
  %i.apu = add i32 %i.apt, %.sroa.88.0.copyload   ; 2 uses
  %i.apv = xor i32 %i.app, %i.apu                 ; 2 uses
  %i.apw = tail call i32 @llvm.fshl.i32(i32 %i.apv, i32 %i.apv, i32 24) ; 2 uses
  %i.apx = add i32 %i.apq, %i.apw                 ; 2 uses
  %i.apy = xor i32 %i.aps, %i.apx                 ; 2 uses
  %i.apz = tail call i32 @llvm.fshl.i32(i32 %i.apy, i32 %i.apy, i32 25)
  %i.aqa = add i32 %i.amt, %i.aoe
  %i.aqb = add i32 %i.aqa, %.sroa.95.0.copyload   ; 2 uses
  %i.aqc = xor i32 %i.ans, %i.aqb                 ; 2 uses
  %i.aqd = tail call i32 @llvm.fshl.i32(i32 %i.aqc, i32 %i.aqc, i32 16) ; 2 uses
  %i.aqe = add i32 %i.anf, %i.aqd                 ; 2 uses
  %i.aqf = xor i32 %i.amt, %i.aqe                 ; 2 uses
  %i.aqg = tail call i32 @llvm.fshl.i32(i32 %i.aqf, i32 %i.aqf, i32 20) ; 2 uses
  %i.aqh = add i32 %i.aqb, %i.aqg
  %i.aqi = add i32 %i.aqh, %.sroa.0315.0.copyload ; 2 uses
  %i.aqj = xor i32 %i.aqd, %i.aqi                 ; 2 uses
  %i.aqk = tail call i32 @llvm.fshl.i32(i32 %i.aqj, i32 %i.aqj, i32 24) ; 2 uses
  %i.aql = add i32 %i.aqe, %i.aqk                 ; 2 uses
  %i.aqm = xor i32 %i.aqg, %i.aql                 ; 2 uses
  %i.aqn = tail call i32 @llvm.fshl.i32(i32 %i.aqm, i32 %i.aqm, i32 25)
  %i.aqo = load i32, ptr %0, align 8, !tbaa !11
  %i.aqp = xor i32 %i.aos, %i.aqo
  %i.aqq = xor i32 %i.aqp, %i.apx
  store i32 %i.aqq, ptr %0, align 8, !tbaa !11
  %i.aqr = load i32, ptr %.sroa.60.0..sroa_idx, align 4, !tbaa !11
  %i.aqs = xor i32 %i.apg, %i.aqr
  %i.aqt = xor i32 %i.aqs, %i.aql
  store i32 %i.aqt, ptr %.sroa.60.0..sroa_idx, align 4, !tbaa !11
  %i.aqu = load i32, ptr %.sroa.118.0..sroa_idx, align 8, !tbaa !11
  %i.aqv = xor i32 %i.apu, %i.aqu
  %i.aqw = xor i32 %i.aqv, %i.aov
  store i32 %i.aqw, ptr %.sroa.118.0..sroa_idx, align 8, !tbaa !11
  %i.aqx = load i32, ptr %.sroa.176.0..sroa_idx, align 4, !tbaa !11
  %i.aqy = xor i32 %i.aqi, %i.aqx
  %i.aqz = xor i32 %i.aqy, %i.apj
  store i32 %i.aqz, ptr %.sroa.176.0..sroa_idx, align 4, !tbaa !11
  %i.ara = load i32, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !11
  %i.arb = xor i32 %i.aqn, %i.ara
  %i.arc = xor i32 %i.arb, %i.api
  store i32 %i.arc, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !11
  %i.ard = load i32, ptr %.sroa.296.0..sroa_idx, align 4, !tbaa !11
  %i.are = xor i32 %i.aox, %i.ard
  %i.arf = xor i32 %i.are, %i.apw
  store i32 %i.arf, ptr %.sroa.296.0..sroa_idx, align 4, !tbaa !11
  %i.arg = load i32, ptr %.sroa.362.0..sroa_idx, align 8, !tbaa !11
  %i.arh = xor i32 %i.apl, %i.arg
  %i.ari = xor i32 %i.arh, %i.aqk
  store i32 %i.ari, ptr %.sroa.362.0..sroa_idx, align 8, !tbaa !11
  %i.arj = load i32, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !11
  %i.ark = xor i32 %i.apz, %i.arj
  %i.arl = xor i32 %i.ark, %i.aou
  store i32 %i.arl, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @blake2s_final(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp ult i64 %2, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.val = load i32, ptr %i.f, align 8, !tbaa !11
  %.not22 = icmp eq i32 %.val, 0
  br i1 %.not22, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15   ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !11
  %i.l = add i32 %i.k, %i.i                       ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !11
  %i.m = icmp ult i32 %i.l, %i.i
  %i.n = zext i1 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !11
  %i.q = add i32 %i.p, %i.n
  store i32 %i.q, ptr %i.o, align 4, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load i8, ptr %i.r, align 8, !tbaa !19
  %.not.i = icmp eq i8 %i.s, 0
  br i1 %.not.i, label %blake2s_set_lastblock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %i.t, align 4, !tbaa !11
  br label %blake2s_set_lastblock.exit

blake2s_set_lastblock.exit:                       ; preds = %bb.d, %bb.e
  store i32 -1, ptr %i.f, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.h
  %i.w = sub i64 64, %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.v, i8 0, i64 %i.w, i1 false)
  tail call fastcc void @blake2s_compress(ptr noundef nonnull %0, ptr noundef nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 16 %i.a, i64 %2, i1 false)
  %i.x = load volatile ptr, ptr @secure_zero_memory.memset_v, align 8, !tbaa !17
  %i.y = call ptr %i.x(ptr noundef nonnull %i.a, i32 noundef 0, i64 noundef 32) #8, !inline_history !0 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.b, %blake2s_set_lastblock.exit
  %.019 = phi i32 [ 0, %blake2s_set_lastblock.exit ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @blake2s(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 6 uses
  %6 = alloca [1 x %struct.blake2s_state__], align 16 ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.c = icmp eq ptr %2, null
  %i.d = icmp ne i64 %3, 0
  %or.cond = and i1 %i.c, %i.d
  %i.e = icmp eq ptr %0, null
  %or.cond25 = or i1 %i.e, %or.cond
  br i1 %or.cond25, label %blake2s_init_key.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %4, null                     ; 2 uses
  %i.g = icmp ne i64 %5, 0                        ; 2 uses
  %or.cond3 = and i1 %i.f, %i.g
  %i.h = add i64 %1, -33
  %or.cond5 = icmp ult i64 %i.h, -32
  %or.cond26 = or i1 %or.cond5, %or.cond3
  %i.i = icmp ugt i64 %5, 32
  %or.cond27 = or i1 %i.i, %or.cond26
  br i1 %or.cond27, label %blake2s_init_key.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %blake2s_init.exit

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %blake2s_init_key.exit.thread, label %blake2s_init_key.exit

blake2s_init_key.exit:                            ; preds = %bb.d
  %.sroa.0.0.insert.ext.i = trunc nuw nsw i64 %1 to i32
  %.sroa.0.1.insert.ext.i = trunc nuw nsw i64 %5 to i32
  %.sroa.0.1.insert.shift.i = shl nuw nsw i32 %.sroa.0.1.insert.ext.i, 8
  %.sroa.0.1.insert.insert.i = or disjoint i32 %.sroa.0.1.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.j, i8 0, i64 104, i1 false)
  %i.k = xor i32 %.sroa.0.1.insert.insert.i, 1795745383
  store i32 %i.k, ptr %6, align 16, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 4
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.l, align 4, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 -1694144372, ptr %i.m, align 4, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 528734635, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 1541459225, ptr %i.o, align 4, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i64 %1, ptr %i.p, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.q = icmp ugt i64 %5, 63
  %i.r = sub nuw nsw i64 64, %5
  %i.s = select i1 %i.q, i64 0, i64 %i.r
  %i.t = getelementptr i8, ptr %i.b, i64 %5
  call void @llvm.memset.p0.i64(ptr align 1 %i.t, i8 0, i64 %i.s, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull readonly align 1 %4, i64 %5, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.v, ptr noundef nonnull align 16 dereferenceable(64) %i.b, i64 64, i1 false)
  store i64 64, ptr %i.u, align 16, !tbaa !15
  %i.w = load volatile ptr, ptr @secure_zero_memory.memset_v, align 8, !tbaa !17
  %i.x = call ptr %i.w(ptr noundef nonnull %i.b, i32 noundef 0, i64 noundef 64) #8, !inline_history !21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.e

blake2s_init.exit:                                ; preds = %bb.c
  %.sroa.0.0.insert.ext.i29 = trunc nuw nsw i64 %1 to i32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.y, i8 0, i64 104, i1 false)
  %i.z = xor i32 %.sroa.0.0.insert.ext.i29, 1795745383
  store i32 %i.z, ptr %6, align 16, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 4
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.aa, align 4, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 -1694144372, ptr %i.ab, align 4, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 528734635, ptr %i.ac, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 1541459225, ptr %i.ad, align 4, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i64 %1, ptr %i.ae, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %blake2s_init.exit, %blake2s_init_key.exit
  %i.af = phi i64 [ 0, %blake2s_init.exit ], [ 64, %blake2s_init_key.exit ] ; 3 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 4 uses
  %i.ah = sub nuw nsw i64 64, %i.af               ; 4 uses
  %i.ai = icmp ugt i64 %3, %i.ah
  br i1 %i.ai, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.ag, align 16, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ak, ptr readonly align 1 %2, i64 %i.ah, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store i32 64, ptr %i.al, align 16, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 3 uses
  store i32 0, ptr %i.am, align 4, !tbaa !11
  call fastcc void @blake2s_compress(ptr noundef nonnull %6, ptr noundef nonnull %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah ; 2 uses
  %i.ao = sub nuw i64 %3, %i.ah                   ; 3 uses
  %i.ap = icmp ugt i64 %i.ao, 64
  br i1 %i.ap, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.034.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %i.an, %bb.g ] ; 2 uses
  %.02933.i = phi i64 [ %i.ax, %.lr.ph.i ], [ %i.ao, %bb.g ]
  %i.aq = load i32, ptr %i.al, align 16, !tbaa !11 ; 2 uses
  %i.ar = add i32 %i.aq, 64
  store i32 %i.ar, ptr %i.al, align 16, !tbaa !11
  %i.as = icmp ugt i32 %i.aq, -65
  %i.at = zext i1 %i.as to i32
  %i.au = load i32, ptr %i.am, align 4, !tbaa !11
  %i.av = add i32 %i.au, %i.at
  store i32 %i.av, ptr %i.am, align 4, !tbaa !11
  call fastcc void @blake2s_compress(ptr noundef nonnull %6, ptr noundef %.034.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %.034.i, i64 64 ; 2 uses
  %i.ax = add i64 %.02933.i, -64                  ; 3 uses
  %i.ay = icmp ugt i64 %i.ax, 64
  br i1 %i.ay, label %.lr.ph.i, label %.loopexit, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i, %bb.f, %bb.g
  %.130.i = phi i64 [ %3, %bb.f ], [ %i.ao, %bb.g ], [ %i.ax, %.lr.ph.i ] ; 2 uses
  %.1.i = phi ptr [ %2, %bb.f ], [ %i.an, %bb.g ], [ %i.aw, %.lr.ph.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ba = load i64, ptr %i.ag, align 16, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr align 1 %.1.i, i64 %.130.i, i1 false)
  %i.bc = load i64, ptr %i.ag, align 16, !tbaa !15
  %i.bd = add i64 %i.bc, %.130.i                  ; 2 uses
  store i64 %i.bd, ptr %i.ag, align 16, !tbaa !15
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 120
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.be = icmp ult i64 %1, %.pre
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  br i1 %i.be, label %blake2s_final.exit, label %bb.h

bb.h:                                             ; preds = %.thread, %.loopexit
  %i.bf = phi i64 [ %i.af, %.thread ], [ %i.bd, %.loopexit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %.val.i = load i32, ptr %i.bg, align 8, !tbaa !11
  %.not22.i = icmp eq i32 %.val.i, 0
  br i1 %.not22.i, label %bb.i, label %blake2s_final.exit

bb.i:                                             ; preds = %bb.h
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 16, !tbaa !11
  %i.bk = add i32 %i.bj, %i.bh                    ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 16, !tbaa !11
  %i.bl = icmp ult i32 %i.bk, %i.bh
  %i.bm = zext i1 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !11
  %i.bp = add i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.br = load i8, ptr %i.bq, align 16, !tbaa !19
  %.not.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i, label %blake2s_set_lastblock.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 -1, ptr %i.bs, align 4, !tbaa !11
  br label %blake2s_set_lastblock.exit.i

blake2s_set_lastblock.exit.i:                     ; preds = %bb.j, %bb.i
  store i32 -1, ptr %i.bg, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bf
  %i.bv = sub i64 64, %i.bf
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bu, i8 0, i64 %i.bv, i1 false)
  call fastcc void @blake2s_compress(ptr noundef nonnull %6, ptr noundef nonnull %i.bt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 16 %i.a, i64 %1, i1 false)
  %i.bw = load volatile ptr, ptr @secure_zero_memory.memset_v, align 8, !tbaa !17
  %i.bx = call ptr %i.bw(ptr noundef nonnull %i.a, i32 noundef 0, i64 noundef 32) #8, !inline_history !22 ; 0 uses
  br label %blake2s_final.exit

blake2s_final.exit:                               ; preds = %.loopexit, %bb.h, %blake2s_set_lastblock.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %blake2s_init_key.exit.thread

blake2s_init_key.exit.thread:                     ; preds = %bb.d, %bb.b, %bb.a, %blake2s_final.exit
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ 0, %blake2s_final.exit ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @memset(ptr noundef writeonly, i32 noundef, i64 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{!1, !18}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!"blake2s_state__", !7, i64 0, !7, i64 32, !7, i64 40, !7, i64 48, !12, i64 112, !12, i64 120, !7, i64 128}
!14 = !{!13, !12, i64 120}
!15 = !{!13, !12, i64 112}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!13, !7, i64 128}
!20 = !{!"branch_weights", i32 1, i32 1048575}
!21 = distinct !{ptr @blake2s_init_key, null}
!22 = distinct !{ptr @blake2s_final, null}
end_hunk_1
