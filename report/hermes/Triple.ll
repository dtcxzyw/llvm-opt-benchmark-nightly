Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Triple?download=true
inline.NumInlined: 1218
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE:bb.a
  %i.i = icmp ne i32 %i.h, 0                      ; 5 uses
  %.pre = load i32, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  %i.j = icmp ugt i32 %.pre, 1
  br i1 %i.j, label %bb.c, label %.thread319

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %4, align 8, !tbaa !10     ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.094.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !22
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.295.0.copyload = load i64, ptr %.sroa.295.0..sroa_idx, align 8, !tbaa !23
  %i.m = call fastcc noundef i32 @_ZL11parseVendorN4llvh9StringRefE(ptr %.sroa.094.0.copyload, i64 %.sroa.295.0.copyload) ; 4 uses
  %.not379 = icmp eq i32 %.pre, 2
  br i1 %.not379, label %.thread319, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.088.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !22 ; 5 uses
  %.sroa.289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.289.0.copyload = load i64, ptr %.sroa.289.0..sroa_idx, align 8, !tbaa !23 ; 3 uses
  %i.o = call fastcc noundef i32 @_ZL7parseOSN4llvh9StringRefE(ptr %.sroa.088.0.copyload, i64 %.sroa.289.0.copyload) ; 3 uses
  %.not.i182 = icmp ult i64 %.sroa.289.0.copyload, 6
  br i1 %.not.i182, label %_ZNK4llvh9StringRef10startswithES0_.exit183, label %_ZNK4llvh9StringRef10startswithES0_.exit183.thread

_ZNK4llvh9StringRef10startswithES0_.exit183.thread: ; preds = %bb.d
  %i.p = load i32, ptr %.sroa.088.0.copyload, align 1
  %i.q = xor i32 %i.p, 2003269987
  %i.r = getelementptr i8, ptr %.sroa.088.0.copyload, i64 4
  %i.s = load i16, ptr %i.r, align 1
  %i.t = zext i16 %i.s to i32
  %i.u = xor i32 %i.t, 28265
  %i.v = or i32 %i.q, %i.u
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  %i.z = zext i1 %i.y to i8
  br label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit185

_ZNK4llvh9StringRef10startswithES0_.exit183:      ; preds = %bb.d
  %.not.i180.not = icmp eq i64 %.sroa.289.0.copyload, 5
  br i1 %.not.i180.not, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit185, label %bb.e

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit185: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit183.thread, %_ZNK4llvh9StringRef10startswithES0_.exit183
  %i.aa = phi i8 [ %i.z, %_ZNK4llvh9StringRef10startswithES0_.exit183.thread ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit183 ]
  %i.ab = load i32, ptr %.sroa.088.0.copyload, align 1
  %i.ac = xor i32 %i.ab, 1735289197
  %i.ad = getelementptr i8, ptr %.sroa.088.0.copyload, i64 4
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = xor i32 %i.af, 119
  %i.ah = or i32 %i.ac, %i.ag
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i8
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit185, %_ZNK4llvh9StringRef10startswithES0_.exit183
  %i.am = phi i8 [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit183 ], [ %i.aa, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit185 ] ; 3 uses
  %i.an = phi i8 [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit183 ], [ %i.al, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit185 ] ; 3 uses
  %i.ao = icmp ugt i32 %.pre, 3
  br i1 %i.ao, label %bb.f, label %.thread319

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.080.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !22
  %.sroa.281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sroa.281.0.copyload = load i64, ptr %.sroa.281.0..sroa_idx, align 8, !tbaa !23
  %i.aq = call fastcc noundef i32 @_ZL16parseEnvironmentN4llvh9StringRefE(ptr %.sroa.080.0.copyload, i64 %.sroa.281.0.copyload) ; 2 uses
  %.not381 = icmp eq i32 %.pre, 4
  br i1 %.not381, label %.thread319, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %.sroa.071.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !22
  %.sroa.272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.sroa.272.0.copyload = load i64, ptr %.sroa.272.0..sroa_idx, align 8, !tbaa !23
  %i.as = call fastcc noundef i32 @_ZL11parseFormatN4llvh9StringRefE(ptr %.sroa.071.0.copyload, i64 %.sroa.272.0.copyload)
  br label %.thread319

.thread319:                                       ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.g, %bb.f
  %.0117548.shrunk = phi i1 [ %i.i, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.e ], [ %i.i, %bb.c ], [ %i.i, %bb.b ], [ false, %bb.a ]
  %.0132329 = phi i32 [ %i.aq, %bb.g ], [ %i.aq, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0118308314328 = phi i32 [ %i.m, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ], [ %i.m, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0125315327 = phi i32 [ %i.o, %bb.g ], [ %i.o, %bb.f ], [ %i.o, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0109316326 = phi i8 [ %i.am, %bb.g ], [ %i.am, %bb.f ], [ %i.am, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.0317325 = phi i8 [ %i.an, %bb.g ], [ %i.an, %bb.f ], [ %i.an, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.0144 = phi i32 [ %i.as, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.0117548 = zext i1 %.0117548.shrunk to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 %.0117548, ptr %i.a, align 1, !tbaa !126
  %i.at = icmp ne i32 %.0118308314328, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.av = zext i1 %i.at to i8
  store i8 %i.av, ptr %i.au, align 1, !tbaa !126
  %i.aw = icmp ne i32 %.0125315327, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ay = zext i1 %i.aw to i8
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !126
  %i.az = icmp ne i32 %.0132329, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.bb = zext i1 %i.az to i8
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !126
  br label %bb.i

bb.h:                                             ; preds = %.loopexit404
  %i.bc = load i32, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  %.not482 = icmp eq i32 %i.bc, 0
  br i1 %.not482, label %._crit_edge475, label %.lr.ph474

.lr.ph474:                                        ; preds = %bb.h
  %i.bd = load ptr, ptr %4, align 8, !tbaa !10    ; 3 uses
  %wide.trip.count = zext i32 %i.bc to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.be = icmp eq i32 %i.bc, 1
  br i1 %i.be, label %.epil.preheader, label %.lr.ph474.new

.lr.ph474.new:                                    ; preds = %.lr.ph474
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.y

bb.i:                                             ; preds = %.thread319, %.loopexit404
  %indvars.iv495 = phi i64 [ 0, %.thread319 ], [ %indvars.iv.next496, %.loopexit404 ] ; 6 uses
  %.1471 = phi i8 [ %.0317325, %.thread319 ], [ %.6, %.loopexit404 ] ; 2 uses
  %.1110470 = phi i8 [ %.0109316326, %.thread319 ], [ %.6115, %.loopexit404 ] ; 2 uses
  %.1119469 = phi i32 [ %.0118308314328, %.thread319 ], [ %.6124, %.loopexit404 ] ; 2 uses
  %.1126468 = phi i32 [ %.0125315327, %.thread319 ], [ %.6131, %.loopexit404 ] ; 2 uses
  %.1133467 = phi i32 [ %.0132329, %.thread319 ], [ %.6138, %.loopexit404 ] ; 2 uses
  %.1145466 = phi i32 [ %.0144, %.thread319 ], [ %.6150, %.loopexit404 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv495 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !126, !range !127, !noundef !128
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = load i32, ptr %i.d, align 8             ; 2 uses
  %.not173433 = icmp eq i32 %i.bi, 0
  %or.cond481 = select i1 %i.bh, i1 true, i1 %.not173433
  br i1 %or.cond481, label %.loopexit404, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.bj = trunc nuw nsw i64 %indvars.iv495 to i32 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread357
  %i.bk = phi i32 [ %i.fk, %.thread357 ], [ %i.bi, %.lr.ph.preheader ] ; 4 uses
  %i.bl = phi i64 [ %i.fm, %.thread357 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.2440 = phi i8 [ %.4, %.thread357 ], [ %.1471, %.lr.ph.preheader ] ; 8 uses
  %.2111439 = phi i8 [ %.4113, %.thread357 ], [ %.1110470, %.lr.ph.preheader ] ; 8 uses
  %.2120438 = phi i32 [ %.4122, %.thread357 ], [ %.1119469, %.lr.ph.preheader ] ; 8 uses
  %.2127437 = phi i32 [ %.4129, %.thread357 ], [ %.1126468, %.lr.ph.preheader ] ; 8 uses
  %.2134436 = phi i32 [ %.4136, %.thread357 ], [ %.1133467, %.lr.ph.preheader ] ; 7 uses
  %.2146435 = phi i32 [ %.4148, %.thread357 ], [ %.1145466, %.lr.ph.preheader ] ; 8 uses
  %.0153434 = phi i32 [ %i.fl, %.thread357 ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.bm = icmp ult i32 %.0153434, 4
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !126, !range !127, !noundef !128
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %.thread357, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.bq = load ptr, ptr %4, align 8, !tbaa !10
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 2 uses
  %.sroa.0281.0.copyload = load ptr, ptr %i.br, align 8, !tbaa !22 ; 9 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !23 ; 7 uses
  switch i32 %i.bj, label %bb.l [
    i32 0, label %.split
    i32 1, label %bb.o
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

.split:                                           ; preds = %bb.k
  %i.bs = call fastcc noundef i32 @_ZL9parseArchN4llvh9StringRefE(ptr %.sroa.0281.0.copyload, i64 %.sroa.10.0.copyload)
  %.not387 = icmp eq i32 %i.bs, 0
  br i1 %.not387, label %.split..thread357_crit_edge, label %.thread330

.split..thread357_crit_edge:                      ; preds = %.split
  %.pre509 = load i32, ptr %i.d, align 8, !tbaa !11
  br label %.thread357

bb.m:                                             ; preds = %bb.k
  %i.bt = call fastcc noundef i32 @_ZL7parseOSN4llvh9StringRefE(ptr %.sroa.0281.0.copyload, i64 %.sroa.10.0.copyload) ; 2 uses
  %.not.i178 = icmp ult i64 %.sroa.10.0.copyload, 6
  br i1 %.not.i178, label %_ZNK4llvh9StringRef10startswithES0_.exit179, label %_ZNK4llvh9StringRef10startswithES0_.exit179.thread

_ZNK4llvh9StringRef10startswithES0_.exit179.thread: ; preds = %bb.m
  %i.bu = load i32, ptr %.sroa.0281.0.copyload, align 1
  %i.bv = xor i32 %i.bu, 2003269987
  %i.bw = getelementptr i8, ptr %.sroa.0281.0.copyload, i64 4
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = zext i16 %i.bx to i32
  %i.bz = xor i32 %i.by, 28265
  %i.ca = or i32 %i.bv, %i.bz
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0                    ; 2 uses
  %9 = zext i1 %i.cd to i8
  br label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit189

_ZNK4llvh9StringRef10startswithES0_.exit179:      ; preds = %bb.m
  %.not.i176.not = icmp eq i64 %.sroa.10.0.copyload, 5
  br i1 %.not.i176.not, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit189, label %_ZNK4llvh9StringRef10startswithES0_.exit177

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit189: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit179.thread, %_ZNK4llvh9StringRef10startswithES0_.exit179
  %10 = phi i8 [ %9, %_ZNK4llvh9StringRef10startswithES0_.exit179.thread ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit179 ]
  %i.ce = phi i1 [ %i.cd, %_ZNK4llvh9StringRef10startswithES0_.exit179.thread ], [ false, %_ZNK4llvh9StringRef10startswithES0_.exit179 ]
  %i.cf = load i32, ptr %.sroa.0281.0.copyload, align 1
  %i.cg = xor i32 %i.cf, 1735289197
  %i.ch = getelementptr i8, ptr %.sroa.0281.0.copyload, i64 4
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i32
  %i.ck = xor i32 %i.cj, 119
  %i.cl = or i32 %i.cg, %i.ck
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  br label %_ZNK4llvh9StringRef10startswithES0_.exit177

_ZNK4llvh9StringRef10startswithES0_.exit177:      ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit179, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit189
  %11 = phi i8 [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit179 ], [ %10, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit189 ] ; 2 uses
  %i.cp = phi i1 [ false, %_ZNK4llvh9StringRef10startswithES0_.exit179 ], [ %i.ce, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit189 ]
  %i.cq = phi i1 [ false, %_ZNK4llvh9StringRef10startswithES0_.exit179 ], [ %i.co, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit189 ] ; 2 uses
  %12 = zext i1 %i.cq to i8                       ; 2 uses
  %i.cr = icmp ne i32 %i.bt, 0
  %or.cond = or i1 %i.cr, %i.cp
  %i.cs = or i1 %or.cond, %i.cq
  br i1 %i.cs, label %.thread330, label %.thread357

bb.n:                                             ; preds = %bb.k
  %i.ct = call fastcc noundef i32 @_ZL16parseEnvironmentN4llvh9StringRefE(ptr %.sroa.0281.0.copyload, i64 %.sroa.10.0.copyload) ; 2 uses
  %.not382 = icmp eq i32 %i.ct, 0
  br i1 %.not382, label %.split352, label %.thread330

.split352:                                        ; preds = %bb.n
  %i.cu = call fastcc noundef i32 @_ZL11parseFormatN4llvh9StringRefE(ptr %.sroa.0281.0.copyload, i64 %.sroa.10.0.copyload) ; 2 uses
  %.not383 = icmp eq i32 %i.cu, 0
  br i1 %.not383, label %.thread357, label %.thread330

bb.o:                                             ; preds = %bb.k
  %i.cv = call fastcc noundef i32 @_ZL11parseVendorN4llvh9StringRefE(ptr %.sroa.0281.0.copyload, i64 %.sroa.10.0.copyload) ; 2 uses
  %.not386 = icmp eq i32 %i.cv, 0
  br i1 %.not386, label %.thread357, label %.thread330

.thread330:                                       ; preds = %bb.n, %_ZNK4llvh9StringRef10startswithES0_.exit177, %.split352, %.split, %bb.o
  %.3351 = phi i8 [ %12, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2440, %bb.o ], [ %.2440, %.split ], [ %.2440, %.split352 ], [ %.2440, %bb.n ]
  %.3112349 = phi i8 [ %11, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2111439, %bb.o ], [ %.2111439, %.split ], [ %.2111439, %.split352 ], [ %.2111439, %bb.n ]
  %.3121347 = phi i32 [ %.2120438, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %i.cv, %bb.o ], [ %.2120438, %.split ], [ %.2120438, %.split352 ], [ %.2120438, %bb.n ]
  %.3128345 = phi i32 [ %i.bt, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2127437, %bb.o ], [ %.2127437, %.split ], [ %.2127437, %.split352 ], [ %.2127437, %bb.n ]
  %.3135343 = phi i32 [ %.2134436, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2134436, %bb.o ], [ %.2134436, %.split ], [ 0, %.split352 ], [ %i.ct, %bb.n ]
  %.3147341 = phi i32 [ %.2146435, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2146435, %bb.o ], [ %.2146435, %.split ], [ %i.cu, %.split352 ], [ %.2146435, %bb.n ]
  %i.cw = zext i32 %.0153434 to i64               ; 2 uses
  %i.cx = icmp samesign ult i64 %indvars.iv495, %i.cw
  br i1 %i.cx, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.thread330
  %i.cy = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.bl ; 3 uses
  %.sroa.0267.0.copyload268 = load ptr, ptr %i.cz, align 8, !tbaa !22
  %.sroa.7.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %.sroa.7.0.copyload272 = load i64, ptr %.sroa.7.0..sroa_idx271, align 8, !tbaa !23 ; 2 uses
  store ptr @.str.137, ptr %i.cz, align 8, !tbaa !22
  store i64 0, ptr %.sroa.7.0..sroa_idx271, align 8, !tbaa !23
  %i.da = icmp eq i64 %.sroa.7.0.copyload272, 0
  br i1 %i.da, label %.loopexit404.sink.split, label %.preheader400

.preheader400:                                    ; preds = %bb.p, %.critedge
  %.0142462 = phi i32 [ %i.dv, %.critedge ], [ %i.bj, %bb.p ] ; 4 uses
  %.sroa.7.0461 = phi i64 [ %.sroa.7.0.copyload276, %.critedge ], [ %.sroa.7.0.copyload272, %bb.p ]
  %.sroa.0267.0460 = phi ptr [ %.sroa.0267.0.copyload270, %.critedge ], [ %.sroa.0267.0.copyload268, %bb.p ]
  %i.db = zext i32 %.0142462 to i64               ; 7 uses
  %i.dc = icmp ult i32 %.0142462, 4
  br i1 %i.dc, label %.lr.ph454.preheader, label %.critedge

.lr.ph454.preheader:                              ; preds = %.preheader400
  %i.dd = add nuw nsw i64 %i.db, 1
  %i.de = sub nuw nsw i32 3, %.0142462
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = add nuw nsw i64 %i.dd, %i.df            ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.db
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !126, !range !127, !noundef !128
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.q, label %.critedge.loopexit.split.loop.exit584

bb.q:                                             ; preds = %.lr.ph454.preheader
  %indvars.iv.next = add nuw nsw i64 %i.db, 1     ; 3 uses
  %exitcond494.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond494.not, label %.critedge, label %.lr.ph454.1

.lr.ph454.1:                                      ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !126, !range !127, !noundef !128
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.r, label %.critedge.loopexit.split.loop.exit584

bb.r:                                             ; preds = %.lr.ph454.1
  %indvars.iv.next.1 = add nuw nsw i64 %i.db, 2   ; 3 uses
  %exitcond494.not.1 = icmp eq i64 %indvars.iv.next.1, 4
  br i1 %exitcond494.not.1, label %.critedge, label %.lr.ph454.2

.lr.ph454.2:                                      ; preds = %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !126, !range !127, !noundef !128
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.s, label %.critedge.loopexit.split.loop.exit584

bb.s:                                             ; preds = %.lr.ph454.2
  %indvars.iv.next.2 = add nuw nsw i64 %i.db, 3   ; 3 uses
  %exitcond494.not.2 = icmp eq i64 %indvars.iv.next.2, 4
  br i1 %exitcond494.not.2, label %.critedge, label %.lr.ph454.3

.lr.ph454.3:                                      ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.2
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !126, !range !127, !noundef !128
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %.critedge, label %.critedge.loopexit.split.loop.exit584

.critedge.loopexit.split.loop.exit584:            ; preds = %.lr.ph454.3, %.lr.ph454.2, %.lr.ph454.1, %.lr.ph454.preheader
  %indvars.iv.lcssa = phi i64 [ %i.db, %.lr.ph454.preheader ], [ %indvars.iv.next, %.lr.ph454.1 ], [ %indvars.iv.next.1, %.lr.ph454.2 ], [ %indvars.iv.next.2, %.lr.ph454.3 ] ; 2 uses
  %i.dt = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.r, %bb.s, %.lr.ph454.3, %.critedge.loopexit.split.loop.exit584, %.preheader400
  %.1143.lcssa = phi i32 [ %.0142462, %.preheader400 ], [ %i.dt, %.critedge.loopexit.split.loop.exit584 ], [ 4, %.lr.ph454.3 ], [ 4, %bb.s ], [ 4, %bb.r ], [ 4, %bb.q ]
  %.lcssa426 = phi i64 [ %i.db, %.preheader400 ], [ %indvars.iv.lcssa, %.critedge.loopexit.split.loop.exit584 ], [ %i.dg, %.lr.ph454.3 ], [ %i.dg, %bb.s ], [ %i.dg, %bb.r ], [ %i.dg, %bb.q ]
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %.lcssa426 ; 3 uses
  %.sroa.0267.0.copyload270 = load ptr, ptr %i.du, align 8, !tbaa !22
  %.sroa.7.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %.sroa.7.0.copyload276 = load i64, ptr %.sroa.7.0..sroa_idx275, align 8, !tbaa !23 ; 2 uses
  store ptr %.sroa.0267.0460, ptr %i.du, align 8, !tbaa !22
  store i64 %.sroa.7.0461, ptr %.sroa.7.0..sroa_idx275, align 8, !tbaa !23
  %i.dv = add i32 %.1143.lcssa, 1
  %i.dw = icmp eq i64 %.sroa.7.0.copyload276, 0
  br i1 %i.dw, label %.loopexit404.sink.split, label %.preheader400, !llvm.loop !116

bb.t:                                             ; preds = %.thread330
  %i.dx = icmp samesign ugt i64 %indvars.iv495, %i.cw
  br i1 %i.dx, label %.preheader401, label %.loopexit404.sink.split

.preheader401:                                    ; preds = %bb.t, %.critedge5
  %.1154 = phi i32 [ %.lcssa490, %.critedge5 ], [ %.0153434, %bb.t ] ; 5 uses
  %i.dy = load i32, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  %i.dz = icmp ugt i32 %i.dy, %.1154
  br i1 %i.dz, label %.lr.ph449, label %.thread353

.lr.ph449:                                        ; preds = %.preheader401
  %i.ea = load ptr, ptr %4, align 8, !tbaa !10
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph449, %.critedge3
  %.0140448 = phi i32 [ %.1154, %.lr.ph449 ], [ %.lcssa, %.critedge3 ] ; 6 uses
  %.sroa.6.0447 = phi i64 [ 0, %.lr.ph449 ], [ %.sroa.6.0.copyload263, %.critedge3 ]
  %.sroa.0259.0446 = phi ptr [ @.str.137, %.lr.ph449 ], [ %.sroa.0259.0.copyload260, %.critedge3 ]
  %i.eb = zext i32 %.0140448 to i64
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.eb ; 3 uses
  %.sroa.0259.0.copyload260 = load ptr, ptr %i.ec, align 8, !tbaa !22 ; 2 uses
  %.sroa.6.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %.sroa.6.0.copyload263 = load i64, ptr %.sroa.6.0..sroa_idx262, align 8, !tbaa !23 ; 3 uses
  store ptr %.sroa.0259.0446, ptr %i.ec, align 8, !tbaa !22
  store i64 %.sroa.6.0447, ptr %.sroa.6.0..sroa_idx262, align 8, !tbaa !23
  %i.ed = icmp eq i64 %.sroa.6.0.copyload263, 0
  br i1 %i.ed, label %.thread353, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.u
  %i.ee = call i32 @llvm.umax.i32(i32 %.0140448, i32 3)
  %umax = add nuw i32 %i.ee, 1                    ; 4 uses
  %exitcond.not601 = icmp ugt i32 %.0140448, 2
  br i1 %exitcond.not601, label %.critedge3, label %.lr.ph603

.preheader:                                       ; preds = %.lr.ph603
  %exitcond.not = icmp eq i32 %i.ep, 3
  br i1 %exitcond.not, label %.critedge3, label %.lr.ph603.1

.lr.ph603.1:                                      ; preds = %.preheader
  %i.ef = add nuw nsw i32 %.0140448, 2            ; 3 uses
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !126, !range !127, !noundef !128
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %.preheader.1, label %..critedge3_crit_edge, !llvm.loop !117

.preheader.1:                                     ; preds = %.lr.ph603.1
  %exitcond.not.1 = icmp eq i32 %i.ef, 3
  br i1 %exitcond.not.1, label %.critedge3, label %.lr.ph603.2

.lr.ph603.2:                                      ; preds = %.preheader.1
  %i.ek = add nuw nsw i32 %.0140448, 3            ; 2 uses
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !126, !range !127, !noundef !128
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %.critedge3, label %..critedge3_crit_edge, !llvm.loop !117

.lr.ph603:                                        ; preds = %.preheader.preheader
  %i.ep = add nuw nsw i32 %.0140448, 1            ; 3 uses
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !126, !range !127, !noundef !128
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %.preheader, label %..critedge3_crit_edge, !llvm.loop !117

..critedge3_crit_edge:                            ; preds = %.lr.ph603.2, %.lr.ph603.1, %.lr.ph603
  %.lcssa616 = phi i32 [ %i.ep, %.lr.ph603 ], [ %i.ef, %.lr.ph603.1 ], [ %i.ek, %.lr.ph603.2 ]
  br label %.critedge3, !llvm.loop !117

.critedge3:                                       ; preds = %.preheader, %.preheader.1, %.lr.ph603.2, %..critedge3_crit_edge, %.preheader.preheader
  %.lcssa = phi i32 [ %umax, %.preheader.preheader ], [ %.lcssa616, %..critedge3_crit_edge ], [ %umax, %.lr.ph603.2 ], [ %umax, %.preheader.1 ], [ %umax, %.preheader ] ; 2 uses
  %i.eu = icmp ugt i32 %i.dy, %.lcssa
  br i1 %i.eu, label %bb.u, label %._crit_edge, !llvm.loop !118

._crit_edge:                                      ; preds = %.critedge3
  %i.ev = load i32, ptr %i.e, align 4, !tbaa !12
  %.not.i192 = icmp ult i32 %i.dy, %i.ev
  br i1 %.not.i192, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, label %bb.v, !prof !129

bb.v:                                             ; preds = %._crit_edge
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef 16) #13
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !11
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit: ; preds = %._crit_edge, %bb.v
  %i.ew = phi i32 [ %.pre.i, %bb.v ], [ %i.dy, %._crit_edge ]
  %i.ex = load ptr, ptr %4, align 8, !tbaa !10
  %i.ey = zext i32 %i.ew to i64
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.ey ; 2 uses
  store ptr %.sroa.0259.0.copyload260, ptr %i.ez, align 1
  %.sroa.6.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i64 %.sroa.6.0.copyload263, ptr %.sroa.6.0..sroa_idx264, align 1
  %i.fa = load i32, ptr %i.d, align 8, !tbaa !11
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr %i.d, align 8, !tbaa !11
  br label %.thread353

.thread353:                                       ; preds = %bb.u, %.preheader401, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit
  %i.fc = add i32 %.1154, 1
  %umax491 = call i32 @llvm.umax.i32(i32 %i.fc, i32 4) ; 3 uses
  %i.fd = add i32 %umax491, -1                    ; 2 uses
  %exitcond492.not605 = icmp eq i32 %.1154, %i.fd
  br i1 %exitcond492.not605, label %..critedge5_crit_edge, label %.lr.ph607

bb.w:                                             ; preds = %.lr.ph607
  %exitcond492.not = icmp eq i32 %i.fe, %i.fd
  br i1 %exitcond492.not, label %..critedge5_crit_edge, label %.lr.ph607, !llvm.loop !119

..critedge5_crit_edge:                            ; preds = %bb.w, %.thread353
  %.pre517 = zext i32 %umax491 to i64
  br label %.critedge5

.lr.ph607:                                        ; preds = %.thread353, %bb.w
  %.2155606 = phi i32 [ %i.fe, %bb.w ], [ %.1154, %.thread353 ]
  %i.fe = add i32 %.2155606, 1                    ; 4 uses
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !126, !range !127, !noundef !128
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.w, label %.critedge5, !llvm.loop !119

.critedge5:                                       ; preds = %.lr.ph607, %..critedge5_crit_edge
  %.pre-phi = phi i64 [ %.pre517, %..critedge5_crit_edge ], [ %i.ff, %.lr.ph607 ]
  %.lcssa490 = phi i32 [ %umax491, %..critedge5_crit_edge ], [ %i.fe, %.lr.ph607 ]
  %i.fj = icmp samesign ult i64 %.pre-phi, %indvars.iv495
  br i1 %i.fj, label %.preheader401, label %.loopexit404.sink.split, !llvm.loop !120

.thread357:                                       ; preds = %.split..thread357_crit_edge, %_ZNK4llvh9StringRef10startswithES0_.exit177, %.split352, %bb.o, %bb.j
  %i.fk = phi i32 [ %i.bk, %bb.j ], [ %i.bk, %bb.o ], [ %i.bk, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %i.bk, %.split352 ], [ %.pre509, %.split..thread357_crit_edge ] ; 2 uses
  %.4148 = phi i32 [ %.2146435, %bb.j ], [ %.2146435, %bb.o ], [ %.2146435, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ 0, %.split352 ], [ %.2146435, %.split..thread357_crit_edge ] ; 2 uses
  %.4136 = phi i32 [ %.2134436, %bb.j ], [ %.2134436, %bb.o ], [ %.2134436, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ 0, %.split352 ], [ %.2134436, %.split..thread357_crit_edge ] ; 2 uses
  %.4129 = phi i32 [ %.2127437, %bb.j ], [ %.2127437, %bb.o ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2127437, %.split352 ], [ %.2127437, %.split..thread357_crit_edge ] ; 2 uses
  %.4122 = phi i32 [ %.2120438, %bb.j ], [ 0, %bb.o ], [ %.2120438, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2120438, %.split352 ], [ %.2120438, %.split..thread357_crit_edge ] ; 2 uses
  %.4113 = phi i8 [ %.2111439, %bb.j ], [ %.2111439, %bb.o ], [ %11, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2111439, %.split352 ], [ %.2111439, %.split..thread357_crit_edge ] ; 2 uses
  %.4 = phi i8 [ %.2440, %bb.j ], [ %.2440, %bb.o ], [ %12, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2440, %.split352 ], [ %.2440, %.split..thread357_crit_edge ] ; 2 uses
  %i.fl = add i32 %.0153434, 1                    ; 3 uses
  %i.fm = zext i32 %i.fl to i64
  %.not173 = icmp eq i32 %i.fk, %i.fl
  br i1 %.not173, label %.loopexit404, label %.lr.ph, !llvm.loop !121

.loopexit404.sink.split:                          ; preds = %.critedge5, %.critedge, %bb.p, %bb.t
  store i8 1, ptr %i.bf, align 1, !tbaa !126
  br label %.loopexit404

.loopexit404:                                     ; preds = %.thread357, %.loopexit404.sink.split, %bb.i
  %.6150 = phi i32 [ %.1145466, %bb.i ], [ %.3147341, %.loopexit404.sink.split ], [ %.4148, %.thread357 ] ; 5 uses
  %.6138 = phi i32 [ %.1133467, %bb.i ], [ %.3135343, %.loopexit404.sink.split ], [ %.4136, %.thread357 ] ; 5 uses
  %.6131 = phi i32 [ %.1126468, %bb.i ], [ %.3128345, %.loopexit404.sink.split ], [ %.4129, %.thread357 ] ; 2 uses
  %.6124 = phi i32 [ %.1119469, %bb.i ], [ %.3121347, %.loopexit404.sink.split ], [ %.4122, %.thread357 ] ; 2 uses
  %.6115 = phi i8 [ %.1110470, %bb.i ], [ %.3112349, %.loopexit404.sink.split ], [ %.4113, %.thread357 ] ; 3 uses
  %.6 = phi i8 [ %.1471, %bb.i ], [ %.3351, %.loopexit404.sink.split ], [ %.4, %.thread357 ] ; 3 uses
  %indvars.iv.next496 = add nuw nsw i64 %indvars.iv495, 1 ; 2 uses
  %.not170 = icmp eq i64 %indvars.iv.next496, 4
  br i1 %.not170, label %bb.h, label %bb.i, !llvm.loop !122

._crit_edge475.loopexit.unr-lcssa:                ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge475, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge475.loopexit.unr-lcssa, %.lr.ph474
  %indvars.iv497.epil.init = phi i64 [ 0, %.lr.ph474 ], [ %indvars.iv.next498.1, %._crit_edge475.loopexit.unr-lcssa ]
  %lcmp.mod625 = trunc i32 %i.bc to i1
  call void @llvm.assume(i1 %lcmp.mod625)
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv497.epil.init ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !21
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.x, label %._crit_edge475

bb.x:                                             ; preds = %.epil.preheader
  store ptr @.str, ptr %i.fn, align 8, !tbaa !22
  store i64 7, ptr %i.fo, align 8, !tbaa !23
  br label %._crit_edge475

._crit_edge475:                                   ; preds = %._crit_edge475.loopexit.unr-lcssa, %bb.x, %.epil.preheader, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.fr, ptr %5, align 8, !tbaa !45
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 0, ptr %i.fs, align 8, !tbaa !20
  store i8 0, ptr %i.fr, align 8, !tbaa !40
  %i.ft = icmp eq i32 %.6138, 10
  br i1 %i.ft, label %bb.ad, label %bb.am

bb.y:                                             ; preds = %bb.ac, %.lr.ph474.new
  %indvars.iv497 = phi i64 [ 0, %.lr.ph474.new ], [ %indvars.iv.next498.1, %bb.ac ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph474.new ], [ %niter.next.1, %bb.ac ]
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv497 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !21
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store ptr @.str, ptr %i.fu, align 8, !tbaa !22
  store i64 7, ptr %i.fv, align 8, !tbaa !23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv497 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !21
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store ptr @.str, ptr %i.gc, align 8, !tbaa !22
  store i64 7, ptr %i.fz, align 8, !tbaa !23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.next498.1 = add nuw nsw i64 %indvars.iv497, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge475.loopexit.unr-lcssa, label %bb.y, !llvm.loop !123

bb.ad:                                            ; preds = %._crit_edge475
  %i.gd = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 48 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 56 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp ult i64 %i.gg, 11
  br i1 %.not.i, label %.thread371, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %bb.ad
  %i.gh = load ptr, ptr %i.ge, align 8, !tbaa !19 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 1
  %i.gj = xor i64 %i.gi, 7306080422883257953
  %i.gk = getelementptr i8, ptr %i.gh, i64 3
  %i.gl = load i64, ptr %i.gk, align 1
  %i.gm = xor i64 %i.gl, 7593739009804300146
  %i.gn = or i64 %i.gj, %i.gm
  %i.go = icmp ne i64 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread368, label %.thread371

_ZNK4llvh9StringRef10startswithES0_.exit.thread368: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.gr = load ptr, ptr %i.ge, align 8, !tbaa !19
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 11
  %i.gt = add i64 %i.gg, -11                      ; 2 uses
  store ptr %i.gs, ptr %6, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.gt, ptr %i.gu, align 8
  %i.gv = icmp eq i64 %i.gt, 0
  br i1 %i.gv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread368
  store ptr @.str.115, ptr %i.ge, align 8, !tbaa !22
  store i64 7, ptr %i.gf, align 8, !tbaa !23
  br label %bb.al

bb.af:                                            ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread368
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 3, ptr %i.gw, align 8, !tbaa !39
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 5, ptr %i.gx, align 1, !tbaa !41
  store ptr @.str.115, ptr %8, align 8, !tbaa !40
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.gy, align 8, !tbaa !40
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(18) %8) #13
  %i.gz = load ptr, ptr %5, align 8, !tbaa !17    ; 6 uses
  %i.ha = icmp eq ptr %i.gz, %i.fr
  %i.hb = load ptr, ptr %7, align 8, !tbaa !17    ; 5 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc                ; 2 uses
  br i1 %i.ha, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.af
  br i1 %i.hd, label %bb.ag, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.af
  br i1 %i.hd, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !20 ; 3 uses
  %i.hg = icmp ult i64 %i.hf, 16
  call void @llvm.assume(i1 %i.hg)
  switch i64 %i.hf, label %bb.ai [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.hh = load i8, ptr %i.hb, align 1, !tbaa !40
  store i8 %i.hh, ptr %i.gz, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gz, ptr align 1 %i.hb, i64 %i.hf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.hi = load i64, ptr %i.he, align 8, !tbaa !20 ; 2 uses
  store i64 %i.hi, ptr %i.fs, align 8, !tbaa !20
  %i.hj = load ptr, ptr %5, align 8, !tbaa !17
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hi
  store i8 0, ptr %i.hk, align 1, !tbaa !40
  %.pre.i195 = load ptr, ptr %7, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.hb, ptr %5, align 8, !tbaa !17
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hm = load <2 x i64>, ptr %i.hl, align 8, !tbaa !40
  store <2 x i64> %i.hm, ptr %i.fs, align 8, !tbaa !40
  br label %bb.ak

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.hn = load i64, ptr %i.fr, align 8, !tbaa !40
  store ptr %i.hb, ptr %5, align 8, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hp = load <2 x i64>, ptr %i.ho, align 8, !tbaa !40
  store <2 x i64> %i.hp, ptr %i.fs, align 8, !tbaa !40
  %.not.i194 = icmp eq ptr %i.gz, null
  br i1 %.not.i194, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.gz, ptr %7, align 8, !tbaa !17
  store i64 %i.hn, ptr %i.hc, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.hc, ptr %7, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.aj, %bb.ak
  %i.hq = phi ptr [ %i.gz, %bb.aj ], [ %i.hc, %bb.ak ], [ %.pre.i195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.hr, align 8, !tbaa !20
end_hunk_0
