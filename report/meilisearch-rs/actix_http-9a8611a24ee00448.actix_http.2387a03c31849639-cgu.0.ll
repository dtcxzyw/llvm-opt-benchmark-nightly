Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 289
begin_hunk_0_@_ZN3std2io5Write9write_all17h7db539defa25edd9E:bb.a
bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.h
    i64 0, label %.split36
    i64 1, label %.split35
  ], !prof !62

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.f, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %.sroa.5.041, %i.h
  br i1 %i.k, label %.noexc, label %bb.g, !prof !30

.noexc:                                           ; preds = %bb.e
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 0) %.sroa.5.041, i64 noundef range(i64 1, 0) %.sroa.5.041, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @516) #46
  unreachable

bb.f:                                             ; preds = %bb.h, %.split, %.split35, %.split36, %bb.d
  %.sroa.05.1 = phi ptr [ @515, %bb.d ], [ %i.f, %.split36 ], [ %i.f, %.split35 ], [ %i.f, %.split ], [ %i.f, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.l = sub nuw i64 %.sroa.5.041, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.042, i64 %i.h
  br label %bb.i

.split:                                           ; preds = %bb.c
  %.mask37 = and i64 %i.h, -4294967296
  %i.n = icmp eq i64 %.mask37, 17179869184
  br i1 %i.n, label %.thread, label %bb.f

.split36:                                         ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !63, !noundef !21
  %i.q = icmp eq i8 %i.p, 35
  br i1 %i.q, label %.thread, label %bb.f

.split35:                                         ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.f, i64 15
  %i.s = load i8, ptr %i.r, align 8, !range !63, !noundef !21
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %.thread, label %bb.f

bb.h:                                             ; preds = %bb.c
  %i.u = icmp ult ptr %i.f, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.u)
  %.mask = and i64 %i.h, -4294967296
  %i.v = icmp eq i64 %.mask, 150323855360
  br i1 %i.v, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.h, %.split, %.split35, %.split36
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h85474bca0acdf2a3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %.thread
  %.sroa.0.116 = phi ptr [ %.sroa.0.042, %.thread ], [ %i.m, %bb.g ]
  %.sroa.5.114 = phi i64 [ %.sroa.5.041, %.thread ], [ %i.l, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = icmp eq i64 %.sroa.5.114, 0
  br i1 %i.w, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN3std2io5Write9write_all17hfa7febf594b8b493E(ptr noalias noundef nonnull align 8 dereferenceable(5664) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 9 uses
  %i.d = alloca [984 x i8], align 8               ; 24 uses
  %i.e = alloca [984 x i8], align 8               ; 23 uses
  %i.f = alloca [984 x i8], align 8               ; 23 uses
  %i.g = alloca [152 x i8], align 8               ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [11272 x i8], align 4             ; 6 uses
  %i.k = alloca [280 x i8], align 2               ; 5 uses
  %i.l = alloca [140 x i8], align 1               ; 5 uses
  %i.m = alloca [1408 x i8], align 2              ; 5 uses
  %i.n = alloca [704 x i8], align 1               ; 5 uses
  %i.o = alloca [512 x i8], align 2               ; 5 uses
  %i.p = alloca [256 x i8], align 1               ; 5 uses
  %i.q = alloca [2192 x i8], align 8              ; 6 uses
  %i.r = alloca [2832 x i8], align 8              ; 6 uses
  %i.s = alloca [1040 x i8], align 8              ; 6 uses
  %i.t = alloca [152 x i8], align 8               ; 22 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [280 x i8], align 2               ; 5 uses
  %i.x = alloca [140 x i8], align 1               ; 5 uses
  %i.y = alloca [1408 x i8], align 2              ; 5 uses
  %i.z = alloca [704 x i8], align 1               ; 5 uses
  %i.aa = alloca [512 x i8], align 2              ; 5 uses
  %i.ab = alloca [256 x i8], align 1              ; 5 uses
  %i.ac = alloca [2192 x i8], align 8             ; 7 uses
  %i.ad = alloca [2832 x i8], align 8             ; 7 uses
  %i.ae = alloca [1040 x i8], align 8             ; 7 uses
  %i.af = alloca [512 x i8], align 2              ; 5 uses
  %i.ag = alloca [256 x i8], align 1              ; 5 uses
  %i.ah = alloca [1024 x i8], align 4             ; 5 uses
  %i.ai = alloca [152 x i8], align 8              ; 22 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [264 x i8], align 8              ; 43 uses
  %i.an = alloca [112 x i8], align 8              ; 10 uses
  %i.ao = alloca [8 x i8], align 8                ; 6 uses
  %i.ap = alloca [4 x i8], align 4                ; 5 uses
  %i.aq = alloca [8 x i8], align 8                ; 57 uses
  %i.ar = alloca [4 x i8], align 4                ; 7 uses
  %i.as = alloca [8 x i8], align 8                ; 6 uses
  %i.at = alloca [8 x i8], align 8                ; 7 uses
  %i.au = alloca [8 x i8], align 8                ; 7 uses
  %i.av = alloca [8 x i8], align 8                ; 9 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = icmp eq i64 %2, 0
  br i1 %i.ax, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5608 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5580 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5576 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 246 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 10 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 11 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 5528 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5586
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5590 ; 13 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 15 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 15 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5584 ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5589 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 20 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 5588
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 5560 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 5591 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 5592 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 12 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 5568 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 5593
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 8 uses
  %.sroa.7.0..sroa_idx.i26.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %.sroa.732.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 80 ; 2 uses
  %.sroa.737.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 128 ; 2 uses
  %.sroa.4.0..sroa_idx.i27.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i28.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %.sroa.429.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 56 ; 2 uses
  %.sroa.530.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %.sroa.631.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 72 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.am, i64 96 ; 2 uses
  %.sroa.434.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 104 ; 2 uses
  %.sroa.535.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 112 ; 2 uses
  %.sroa.636.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 120 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.am, i64 144 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.am, i64 152 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.am, i64 224
  %i.cy = getelementptr inbounds nuw i8, ptr %i.am, i64 160 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.am, i64 168 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 232
  %i.db = getelementptr inbounds nuw i8, ptr %i.am, i64 176 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.am, i64 184 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 240 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.am, i64 192 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.am, i64 200 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.am, i64 248
  %i.dh = getelementptr inbounds nuw i8, ptr %i.am, i64 208 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.am, i64 216 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.am, i64 256 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.dm = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.an, i64 97
  %i.dr = getelementptr inbounds nuw i8, ptr %i.an, i64 98
  %i.ds = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.16.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.4.0..sroa_idx.i33.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i34.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i35.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %.sroa.7.0..sroa_idx.i36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 6 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 6 uses
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 6 uses
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 6 uses
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 4 uses
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.2015.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 960 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 968 ; 9 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 976 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %.sroa.1629.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.417.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.518.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.619.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.720.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  %.sroa.821.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %.sroa.922.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 4 uses
  %.sroa.1023.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  %.sroa.1124.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.1225.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %.sroa.1326.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.1427.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %.sroa.1528.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.2034.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %.sroa.2135.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 968
  %.sroa.2236.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 976
  %i.du = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %.sroa.1650.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %.sroa.438.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.539.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.640.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.sroa.741.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %.sroa.842.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 4 uses
  %.sroa.943.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %.sroa.1044.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  %.sroa.1145.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.1246.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %.sroa.1347.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.sroa.1448.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %.sroa.1549.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.sroa.2055.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 960
  %.sroa.2156.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 968
  %.sroa.2257.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 976
  %i.dv = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.6.0..sroa_idx.i30.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.7.0..sroa_idx.i31.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.eg = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.eh = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %.sroa.78.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.ei = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %.sroa.714.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.ej = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.ek = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.el = getelementptr inbounds nuw i8, ptr %i.s, i64 1032
  %i.em = getelementptr inbounds nuw i8, ptr %i.r, i64 2824
  %i.en = getelementptr inbounds nuw i8, ptr %i.q, i64 2184
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.612.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %.sroa.515.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.sroa.616.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.sroa.717.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %.sroa.420.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %.sroa.521.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  %.sroa.622.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %.sroa.723.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ai, i64 136
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ae, i64 1024
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ae, i64 1032
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ad, i64 2816
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ad, i64 2824
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ac, i64 2176
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ac, i64 2184
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 4624 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 4752 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 5520 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 5008 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 5616 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 5624 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 5632 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 5587 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 245 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 242 ; 2 uses
  %.sroa.05.0.ptr.4.i24 = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %.sroa.05.0.ptr.8.i28 = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %.sroa.05.0.ptr.12.i32 = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 5648 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ja, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.experimental.noalias.scope.decl(metadata !5290)
  call void @llvm.experimental.noalias.scope.decl(metadata !5291)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !5292
  store i64 %2, ptr %i.av, align 8, !noalias !5292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5292
  store i64 0, ptr %i.au, align 8, !noalias !5292
  br label %bb.c

bb.c:                                             ; preds = %bb.iw, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5292
  store i64 0, ptr %i.at, align 8, !noalias !5292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !5292
  %.val14.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !5293, !noalias !5294, !nonnull !21, !align !29, !noundef !21 ; 2 uses
  %.val15.i.i = load i64, ptr %i.az, align 8, !alias.scope !5293, !noalias !5294, !noundef !21 ; 3 uses
  store i64 %.val15.i.i, ptr %i.as, align 8, !noalias !5292
  call void @llvm.experimental.noalias.scope.decl(metadata !5295)
  call void @llvm.experimental.noalias.scope.decl(metadata !5296)
  call void @llvm.experimental.noalias.scope.decl(metadata !5297)
  %i.fw = load i8, ptr %i.fn, align 1, !range !38, !alias.scope !5298, !noalias !5299, !noundef !21
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h976450b2f254cc2bE.exit43", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN6brotli3enc6encode14SanitizeParams17hedbfa69a5e3f6b28E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bu), !noalias !5299
  %i.fy = call noundef i32 @_ZN6brotli3enc6encode14ComputeLgBlock17h09e6c04348dc0b52E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu), !noalias !5299
  store i32 %i.fy, ptr %i.bh, align 8, !alias.scope !5298, !noalias !5299
  call void @_ZN6brotli3enc6encode20ChooseDistanceParams17h1b04eec0af670d45E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bu), !noalias !5299
  store i32 -1, ptr %i.bb, align 4, !alias.scope !5298, !noalias !5299
  %i.fz = call noundef i32 @_ZN6brotli3enc6encode13ComputeRbBits17h5f1c813c5159ba70E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu), !noalias !5299
  %i.ga = load i32, ptr %i.bh, align 8, !alias.scope !5298, !noalias !5299, !noundef !21
  %i.gb = and i32 %i.fz, 31
  %i.gc = shl nuw i32 1, %i.gb                    ; 3 uses
  store i32 %i.gc, ptr %i.fo, align 8, !alias.scope !5298, !noalias !5299
  %i.gd = add i32 %i.gc, -1
  store i32 %i.gd, ptr %i.bl, align 4, !alias.scope !5298, !noalias !5299
  %i.ge = and i32 %i.ga, 31
  %i.gf = shl nuw i32 1, %i.ge                    ; 2 uses
  store i32 %i.gf, ptr %i.fp, align 8, !alias.scope !5298, !noalias !5299
  %i.gg = add i32 %i.gf, %i.gc
  store i32 %i.gg, ptr %i.fq, align 4, !alias.scope !5298, !noalias !5299
  %i.gh = load i32, ptr %i.fr, align 4, !alias.scope !5298, !noalias !5299, !noundef !21 ; 2 uses
  %i.gi = load i32, ptr %i.bd, align 8, !alias.scope !5298, !noalias !5299, !noundef !21 ; 2 uses
  %switch.i12 = icmp ult i32 %i.gi, 2
  %.sroa.0.0.i.i13 = call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.gh, i32 18)
  %.sroa.01.0.i14 = select i1 %switch.i12, i32 %.sroa.0.0.i.i13, i32 %i.gh ; 4 uses
  %i.gj = load i8, ptr %i.be, align 2, !range !38, !alias.scope !5298, !noalias !5299, !noundef !21 ; 2 uses
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.d
  %i.gl = load i8, ptr %i.ft, align 2, !range !38, !alias.scope !5298, !noalias !5299, !noundef !21
  %i.gm = trunc nuw i8 %i.gl to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !5300), !noalias !5299
  call void @llvm.experimental.noalias.scope.decl(metadata !5301), !noalias !5299
  br i1 %i.gm, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_ZN3std2io5Write9write_all17hfa7febf594b8b493E:bb.a
  br i1 %i.vo, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.eq, %bb.em
  %i.vp = load i32, ptr %i.eo, align 8, !alias.scope !5359, !noalias !5360, !noundef !21
  call void @_ZN6brotli3enc17brotli_bit_stream30StoreCompressedMetaBlockHeader17he8486a6759b6de05E(i1 noundef zeroext false, i64 noundef range(i64 1, 4294967296) %i.ud, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  %i.vq = icmp ult i64 %i.uh, 129
  br i1 %i.vq, label %bb.es, label %bb.er

bb.eo:                                            ; preds = %bb.em
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.uh, %.val188.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.ep, label %bb.eq, !prof !30

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5357
  store ptr @230, ptr %i.v, align 8, !noalias !5357
  %i.vr = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %i.vr, align 8, !noalias !5357
  %i.vs = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr null, ptr %i.vs, align 8, !noalias !5357
  %i.vt = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.vt, align 8, !noalias !5357
  %i.vu = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 0, ptr %i.vu, align 8, !noalias !5357
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @970) #46, !noalias !5358
  unreachable

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !5357
  store ptr inttoptr (i64 1 to ptr), ptr %i.ai, align 8, !noalias !5357
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store i64 0, ptr %.sroa.612.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store i32 1, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store ptr inttoptr (i64 4 to ptr), ptr %i.es, align 8, !noalias !5357
  store i64 0, ptr %i.et, align 8, !noalias !5357
  store ptr inttoptr (i64 1 to ptr), ptr %i.eu, align 8, !noalias !5357
  store i64 0, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.515.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store i64 0, ptr %.sroa.616.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store i32 1, ptr %.sroa.717.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store ptr inttoptr (i64 1 to ptr), ptr %i.ev, align 8, !noalias !5357
  store i64 0, ptr %.sroa.420.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.521.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store i64 0, ptr %.sroa.622.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store i32 1, ptr %.sroa.723.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store ptr inttoptr (i64 4 to ptr), ptr %i.ew, align 8, !noalias !5357
  store i64 0, ptr %i.ex, align 8, !noalias !5357
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4fb20e584b6a31bbE(ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %i.uh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.vj, i64 noundef %i.vk, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.vl, i64 noundef %i.vm, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cs, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i8 noundef 0), !noalias !5362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !5357
  br label %bb.en

bb.er:                                            ; preds = %bb.en
  %i.vv = zext i32 %i.vp to i64
  %i.vw = add nsw i64 %i.vv, -1
  %i.vx = lshr i64 %i.vw, 1
  %i.vy = call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.vx, i1 false)
  %i.vz = sub nuw nsw i64 65, %i.vy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ae, i8 0, i64 1032, i1 false), !noalias !5357
  store float 3.402000e+38, ptr %i.ez, align 8, !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ad, i8 0, i64 2824, i1 false), !noalias !5357
  store float 3.402000e+38, ptr %i.fb, align 8, !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ac, i8 0, i64 2184, i1 false), !noalias !5357
  store float 3.402000e+38, ptr %i.fd, align 8, !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.ab, i8 0, i64 256, i1 false), !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.aa, i8 0, i64 512, i1 false), !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(704) %i.z, i8 0, i64 704, i1 false), !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1408) %i.y, i8 0, i64 1408, i1 false), !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(140) %i.x, i8 0, i64 140, i1 false), !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(280) %i.w, i8 0, i64 280, i1 false), !noalias !5357
  call void @_ZN6brotli3enc17brotli_bit_stream15BuildHistograms17hf33d4e9a73aed5ffE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef range(i64 0, 4294967296) %i.vi, i64 noundef range(i64 0, 4294967296) %i.rd, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.uh, ptr noalias noundef nonnull align 8 dereferenceable(1040) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(2832) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(2192) %i.ac), !noalias !5361
  %i.wa = load i64, ptr %i.ey, align 8, !noalias !5357, !noundef !21
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ae, i64 noundef 256, i64 noundef %i.wa, i64 noundef 8, ptr noalias noundef nonnull align 1 %i.ab, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.aa, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  %i.wb = load i64, ptr %i.fa, align 8, !noalias !5357, !noundef !21
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ad, i64 noundef 704, i64 noundef %i.wb, i64 noundef 10, ptr noalias noundef nonnull align 1 %i.z, i64 noundef 704, ptr noalias noundef nonnull align 2 %i.y, i64 noundef 704, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  %i.wc = load i64, ptr %i.fc, align 8, !noalias !5357, !noundef !21
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ac, i64 noundef 544, i64 noundef %i.wc, i64 noundef %i.vz, ptr noalias noundef nonnull align 1 %i.x, i64 noundef 140, ptr noalias noundef nonnull align 2 %i.w, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef range(i64 0, 4294967296) %i.vi, i64 noundef range(i64 0, 4294967296) %i.rd, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.uh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ab, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.aa, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.y, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.x, i64 noundef 140, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.w, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5357
  br label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h832de83a9a2e815dE.exit.i.i.i.i.i

bb.es:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ah, i8 0, i64 1024, i1 false), !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.ag, i8 0, i64 256, i1 false), !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.af, i8 0, i64 512, i1 false), !noalias !5357
  %.not26.i.i.i.i.i.i = icmp eq i64 %i.uh, 0
  br i1 %.not26.i.i.i.i.i.i, label %._crit_edge14.i.i.i.i.i.i, label %.lr.ph13.i.i.i.i.i.i

.lr.ph13.i.i.i.i.i.i:                             ; preds = %bb.es, %._crit_edge.i.i.i.i.i.i
  %.sroa.027.111.i.i.i.i.i.i = phi i64 [ %.sroa.027.1.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ 1, %bb.es ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i.i = phi i64 [ %i.wn, %._crit_edge.i.i.i.i.i.i ], [ %i.vi, %bb.es ] ; 2 uses
  %.sroa.05.09.i.i.i.i.i.i = phi i64 [ %i.wk, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.es ]
  %.sroa.027.08.i.i.i.i.i.i = phi i64 [ %.sroa.027.111.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.es ] ; 3 uses
  %i.wd = icmp ult i64 %.sroa.027.08.i.i.i.i.i.i, %.val188.i.i.i.i
  br i1 %i.wd, label %bb.et, label %bb.eu

._crit_edge14.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i, %bb.es
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.es ], [ %i.wk, %._crit_edge.i.i.i.i.i.i ]
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ah, i64 noundef 256, i64 noundef %.sroa.05.0.lcssa.i.i.i.i.i.i, i64 noundef 8, ptr noalias noundef nonnull align 1 %i.ag, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.af, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  call void @_ZN6brotli3enc17brotli_bit_stream29StoreStaticCommandHuffmanTree17h94fc581fe61dfd4aE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  call void @_ZN6brotli3enc17brotli_bit_stream30StoreStaticDistanceHuffmanTree17h4a629285af6547ffE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef range(i64 0, 4294967296) %i.vi, i64 noundef range(i64 0, 4294967296) %i.rd, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.uh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ag, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.af, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @_ZN6brotli3enc9constants23kStaticCommandCodeDepth17hc2b64d4d0d432e21E, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @_ZN6brotli3enc9constants22kStaticCommandCodeBits17h79c541a1c5f86137E, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @_ZN6brotli3enc9constants24kStaticDistanceCodeDepth17hdb40a6d6b71ad0daE, i64 noundef 64, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @_ZN6brotli3enc9constants23kStaticDistanceCodeBits17h6ce7b4025b69c8d0E, i64 noundef 64, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5357
  br label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h832de83a9a2e815dE.exit.i.i.i.i.i

bb.et:                                            ; preds = %.lr.ph13.i.i.i.i.i.i
  %i.we = getelementptr inbounds nuw [16 x i8], ptr %.val187.i.i.i.i, i64 %.sroa.027.08.i.i.i.i.i.i ; 2 uses
  %i.wf = load i32, ptr %i.we, align 4, !alias.scope !5363, !noalias !5364, !noundef !21 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 4
  %i.wh = load i32, ptr %i.wg, align 4, !alias.scope !5363, !noalias !5364, !noundef !21
  %i.wi = zext i32 %i.wf to i64                   ; 2 uses
  %i.wj = icmp eq i32 %i.wf, 0
  br i1 %i.wj, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.eu:                                            ; preds = %.lr.ph13.i.i.i.i.i.i
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.027.08.i.i.i.i.i.i, i64 noundef %.val188.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @971) #46, !noalias !5361
  unreachable

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ew, %bb.et
  %.sroa.02.1.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.02.010.i.i.i.i.i.i, %bb.et ], [ %i.wy, %bb.ew ]
  %i.wk = add i64 %.sroa.05.09.i.i.i.i.i.i, %i.wi ; 2 uses
  %i.wl = and i32 %i.wh, 33554431
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = add i64 %.sroa.02.1.lcssa.i.i.i.i.i.i, %i.wm
  %i.wo = icmp ult i64 %.sroa.027.111.i.i.i.i.i.i, %i.uh ; 2 uses
  %i.wp = zext i1 %i.wo to i64
  %.sroa.027.1.i.i.i.i.i.i = add nuw nsw i64 %.sroa.027.111.i.i.i.i.i.i, %i.wp
  br i1 %i.wo, label %.lr.ph13.i.i.i.i.i.i, label %._crit_edge14.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.et, %bb.ew
  %.sroa.02.17.i.i.i.i.i.i = phi i64 [ %i.wy, %bb.ew ], [ %.sroa.02.010.i.i.i.i.i.i, %bb.et ] ; 2 uses
  %.sroa.09.06.i.i.i.i.i.i = phi i64 [ %i.wz, %bb.ew ], [ %i.wi, %bb.et ]
  %i.wq = and i64 %.sroa.02.17.i.i.i.i.i.i, %i.rd ; 3 uses
  %i.wr = icmp ult i64 %i.wq, %i.ub
  br i1 %i.wr, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.wq, i64 noundef %i.ub, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @972) #46, !noalias !5361
  unreachable

bb.ew:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ws = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.wq
  %i.wt = load i8, ptr %i.ws, align 1, !alias.scope !5365, !noalias !5366, !noundef !21
  %i.wu = zext i8 %i.wt to i64
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.wu ; 2 uses
  %i.ww = load i32, ptr %i.wv, align 4, !noalias !5357, !noundef !21
  %i.wx = add i32 %i.ww, 1
  store i32 %i.wx, ptr %i.wv, align 4, !noalias !5357
  %i.wy = add i64 %.sroa.02.17.i.i.i.i.i.i, 1     ; 2 uses
  %i.wz = add nsw i64 %.sroa.09.06.i.i.i.i.i.i, -1 ; 2 uses
  %i.xa = icmp eq i64 %i.wz, 0
  br i1 %i.xa, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ex:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i26.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !5367, !noalias !5348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.732.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !5367, !noalias !5348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.737.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 1 to ptr), ptr %i.am, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %.sroa.4.0..sroa_idx.i27.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i28.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 1 to ptr), ptr %i.ct, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %.sroa.429.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.530.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %.sroa.631.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 1 to ptr), ptr %i.cu, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %.sroa.434.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.535.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %.sroa.636.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 4 to ptr), ptr %i.cv, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %i.cw, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 4 to ptr), ptr %i.cy, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %i.cz, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 8 to ptr), ptr %i.db, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %i.dc, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 8 to ptr), ptr %i.de, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %i.df, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 8 to ptr), ptr %i.dh, align 8, !alias.scope !5367, !noalias !5348
  store <6 x i64> zeroinitializer, ptr %i.di, align 8, !alias.scope !5367, !noalias !5348
  %i.xb = icmp samesign ult i32 %i.vf, 10
  br i1 %i.xb, label %bb.fd, label %bb.fc

bb.ey:                                            ; preds = %bb.el
  %i.xc = zext i32 %.sroa.012.0.i.i.i.i.i to i64  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5368)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5369
  call void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef range(i64 0, 4294967296) %i.xc, i64 noundef range(i64 1, 4294967296) %i.ud, i64 noundef range(i64 0, 4294967296) %i.rd), !noalias !5370
  %i.xd = load ptr, ptr %i.u, align 8, !noalias !5369, !nonnull !21, !align !29, !noundef !21
  %i.xe = load i64, ptr %i.eb, align 8, !noalias !5369, !noundef !21
  %i.xf = load ptr, ptr %i.ec, align 8, !noalias !5369, !nonnull !21, !align !29, !noundef !21
  %i.xg = load i64, ptr %i.ed, align 8, !noalias !5369, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5369
  %i.xh = load i8, ptr %i.ee, align 1, !range !38, !alias.scope !5371, !noalias !5372, !noundef !21
  %i.xi = trunc nuw i8 %i.xh to i1
  br i1 %i.xi, label %bb.ez, label %_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17h9a46c9dc788248a3E.exit.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ey
  %.not.i29.i.i.i.i.i = icmp ugt i64 %i.uh, %.val188.i.i.i.i
  br i1 %.not.i29.i.i.i.i.i, label %bb.fa, label %bb.fb, !prof !30

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5369
  store ptr @230, ptr %i.i, align 8, !noalias !5369
  %i.xj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.xj, align 8, !noalias !5369
  %i.xk = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.xk, align 8, !noalias !5369
  %i.xl = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.xl, align 8, !noalias !5369
  %i.xm = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %i.xm, align 8, !noalias !5369
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @973) #46, !noalias !5370
  unreachable

bb.fb:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5369
  store ptr inttoptr (i64 1 to ptr), ptr %i.t, align 8, !noalias !5369
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store i64 0, ptr %.sroa.6.0..sroa_idx.i30.i.i.i.i.i, align 8, !noalias !5369
  store i32 1, ptr %.sroa.7.0..sroa_idx.i31.i.i.i.i.i, align 8, !noalias !5369
  store ptr inttoptr (i64 4 to ptr), ptr %i.ef, align 8, !noalias !5369
  store i64 0, ptr %i.eg, align 8, !noalias !5369
  store ptr inttoptr (i64 1 to ptr), ptr %i.eh, align 8, !noalias !5369
  store i64 0, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store i32 1, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store ptr inttoptr (i64 1 to ptr), ptr %i.ei, align 8, !noalias !5369
  store i64 0, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store i64 0, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store i32 1, ptr %.sroa.714.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store ptr inttoptr (i64 4 to ptr), ptr %i.ej, align 8, !noalias !5369
  store i64 0, ptr %i.ek, align 8, !noalias !5369
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4fb20e584b6a31bbE(ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %i.uh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.xd, i64 noundef %i.xe, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.xf, i64 noundef %i.xg, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cs, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i8 noundef 0), !noalias !5373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5369
  br label %_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17h9a46c9dc788248a3E.exit.i.i.i.i.i

_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17h9a46c9dc788248a3E.exit.i.i.i.i.i: ; preds = %bb.fb, %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.s, i8 0, i64 1032, i1 false), !noalias !5369
  store float 3.402000e+38, ptr %i.el, align 8, !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.r, i8 0, i64 2824, i1 false), !noalias !5369
  store float 3.402000e+38, ptr %i.em, align 8, !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.q, i8 0, i64 2184, i1 false), !noalias !5369
  store float 3.402000e+38, ptr %i.en, align 8, !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.p, i8 0, i64 256, i1 false), !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.o, i8 0, i64 512, i1 false), !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(704) %i.n, i8 0, i64 704, i1 false), !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1408) %i.m, i8 0, i64 1408, i1 false), !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(140) %i.l, i8 0, i64 140, i1 false), !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(280) %i.k, i8 0, i64 280, i1 false), !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11272) %i.j, i8 0, i64 11272, i1 false), !noalias !5369
  %i.xn = load i32, ptr %i.eo, align 8, !alias.scope !5371, !noalias !5372, !noundef !21
  call void @_ZN6brotli3enc17brotli_bit_stream30StoreCompressedMetaBlockHeader17he8486a6759b6de05E(i1 noundef zeroext false, i64 noundef range(i64 1, 4294967296) %i.ud, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5374
  call void @_ZN6brotli3enc17brotli_bit_stream15BuildHistograms17hf33d4e9a73aed5ffE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef range(i64 0, 4294967296) %i.xc, i64 noundef range(i64 0, 4294967296) %i.rd, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.uh, ptr noalias noundef nonnull align 8 dereferenceable(1040) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(2832) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(2192) %i.q), !noalias !5374
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5374
  call void @_ZN6brotli3enc17brotli_bit_stream24BuildAndStoreHuffmanTree17h593bd11fb314b673E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.s, i64 noundef 256, i64 noundef 256, i64 noundef 256, ptr noalias noundef nonnull align 4 %i.j, i64 noundef 1409, ptr noalias noundef nonnull align 1 %i.p, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.o, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5374
  call void @_ZN6brotli3enc17brotli_bit_stream24BuildAndStoreHuffmanTree17h593bd11fb314b673E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.r, i64 noundef 704, i64 noundef 704, i64 noundef 704, ptr noalias noundef nonnull align 4 %i.j, i64 noundef 1409, ptr noalias noundef nonnull align 1 %i.n, i64 noundef 704, ptr noalias noundef nonnull align 2 %i.m, i64 noundef 704, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5374
  %i.xo = zext i32 %i.xn to i64
  call void @_ZN6brotli3enc17brotli_bit_stream24BuildAndStoreHuffmanTree17h593bd11fb314b673E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.q, i64 noundef 544, i64 noundef 140, i64 noundef %i.xo, ptr noalias noundef nonnull align 4 %i.j, i64 noundef 1409, ptr noalias noundef nonnull align 1 %i.l, i64 noundef 140, ptr noalias noundef nonnull align 2 %i.k, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5374
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef range(i64 0, 4294967296) %i.xc, i64 noundef range(i64 0, 4294967296) %i.rd, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.uh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.p, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.o, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.m, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef 140, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.k, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5369
  br label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h832de83a9a2e815dE.exit.i.i.i.i.i

bb.fc:                                            ; preds = %bb.ex
  %i.xp = zext i32 %.sroa.012.0.i.i.i.i.i to i64
  invoke fastcc void @_ZN6brotli3enc9metablock20BrotliBuildMetaBlock17h2be97dbed52f6456E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef %i.xp, i64 noundef range(i64 0, 4294967296) %i.rd, ptr noalias noundef align 8 dereferenceable(112) %i.an, i8 noundef %i.ue, i8 noundef %i.uf, ptr noalias noundef nonnull align 4 %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.uh, i8 noundef range(i8 0, 4) %i.ro, ptr noalias noundef nonnull align 1 %i.cr, ptr noalias noundef align 8 dereferenceable(264) %i.am)
          to label %bb.fh unwind label %.loopexit.i.i.i, !noalias !5347

bb.fd:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !5348
  store i64 1, ptr %i.al, align 8, !noalias !5348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !5348
  store ptr inttoptr (i64 4 to ptr), ptr %i.ak, align 8, !noalias !5348
  store i64 0, ptr %i.dk, align 8, !noalias !5348
  %i.xq = load i32, ptr %i.dl, align 4, !alias.scope !5345, !noalias !5346, !noundef !21
  %i.xr = icmp eq i32 %i.xq, 0
  %i.xs = zext i32 %.sroa.012.0.i.i.i.i.i to i64  ; 2 uses
  br i1 %i.xr, label %bb.fe, label %.invoke.i.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.noexc43.i.i.i.i.i, %bb.fm, %bb.fj, %bb.fi, %bb.fh, %.invoke.i.i.i.i.i, %bb.fe, %bb.fc
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.noexc.i.i.i.i.i.i, %bb.fl
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.thread.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi73.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  call fastcc void @"_ZN4core3ptr113drop_in_place$LT$brotli..enc..brotli_bit_stream..MetaBlockSplit$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17hb9e224f650bfdf72E"(ptr noalias noundef align 8 dereferenceable(264) %i.am) #47, !noalias !5347
  br label %common.resume

bb.fe:                                            ; preds = %bb.fd
  %i.xt = load i64, ptr %i.bj, align 8, !alias.scope !5345, !noalias !5346, !noundef !21
  invoke void @_ZN6brotli3enc6encode32DecideOverLiteralContextModeling17h646b9ade2d57ecaeE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef %i.xs, i64 noundef range(i64 0, 4294967296) %i.ud, i64 noundef range(i64 0, 4294967296) %i.rd, i32 noundef %i.vf, i64 noundef %i.xt, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %bb.ff unwind label %.loopexit.i.i.i, !noalias !5347

bb.ff:                                            ; preds = %bb.fe
  %.pre.i.i.i.i.i = load i64, ptr %i.al, align 8, !noalias !5348 ; 2 uses
  %i.xu = icmp eq i64 %.pre.i.i.i.i.i, 1
  br i1 %i.xu, label %.invoke.i.i.i.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.xv = load i64, ptr %i.dk, align 8, !noalias !5348, !noundef !21
  %i.xw = load ptr, ptr %i.ak, align 8, !noalias !5348, !nonnull !21, !align !28, !noundef !21
  br label %.invoke.i.i.i.i.i

.invoke.i.i.i.i.i:                                ; preds = %bb.fg, %bb.ff, %bb.fd
  %i.xx = phi i64 [ %.pre.i.i.i.i.i, %bb.fg ], [ 1, %bb.fd ], [ 1, %bb.ff ]
  %i.xy = phi ptr [ %i.xw, %bb.fg ], [ inttoptr (i64 4 to ptr), %bb.fd ], [ inttoptr (i64 4 to ptr), %bb.ff ]
  %i.xz = phi i64 [ %i.xv, %bb.fg ], [ 0, %bb.fd ], [ 0, %bb.ff ]
  invoke fastcc void @_ZN6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternal17h9719acd4736b0fc5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef range(i64 0, 4294967296) %i.xs, i64 noundef range(i64 0, 4294967296) %i.rd, i8 noundef %i.ue, i8 noundef %i.uf, i8 noundef range(i8 0, 4) %i.ro, i64 noundef %i.xx, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.xy, i64 noundef %i.xz, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.uh, ptr noalias noundef nonnull align 8 dereferenceable(264) %i.am)
          to label %_ZN6brotli3enc9metablock26BrotliBuildMetaBlockGreedy17hdfe6d4830d36e55cE.exit.i.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !5347

_ZN6brotli3enc9metablock26BrotliBuildMetaBlockGreedy17hdfe6d4830d36e55cE.exit.i.i.i.i.i: ; preds = %.invoke.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !5348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5348
  br label %bb.fh

bb.fh:                                            ; preds = %_ZN6brotli3enc9metablock26BrotliBuildMetaBlockGreedy17hdfe6d4830d36e55cE.exit.i.i.i.i.i, %bb.fc
  %i.ya = load i32, ptr %i.dm, align 8, !noalias !5348, !noundef !21 ; 3 uses
  %spec.store.select.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ya, i32 544)
  %i.yb = zext nneg i32 %spec.store.select.i.i.i.i.i to i64
  invoke fastcc void @_ZN6brotli3enc9metablock24BrotliOptimizeHistograms17hcb5893b6cb61987bE(i64 noundef %i.yb, ptr noalias noundef align 8 dereferenceable(264) %i.am)
          to label %bb.fi unwind label %.loopexit.i.i.i, !noalias !5347

bb.fi:                                            ; preds = %bb.fh
  %i.yc = zext i32 %.sroa.012.0.i.i.i.i.i to i64  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5375)
  call void @llvm.experimental.noalias.scope.decl(metadata !5376)
  call void @llvm.experimental.noalias.scope.decl(metadata !5377)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5378
  invoke void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uc, i64 noundef %i.ub, i64 noundef range(i64 0, 4294967296) %i.yc, i64 noundef range(i64 1, 4294967296) %i.ud, i64 noundef range(i64 0, 4294967296) %i.rd)
          to label %.noexc40.i.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !5347

.noexc40.i.i.i.i.i:                               ; preds = %bb.fi
  %i.yd = load ptr, ptr %i.h, align 8, !noalias !5378, !nonnull !21, !align !29, !noundef !21
  %i.ye = load i64, ptr %i.dn, align 8, !noalias !5378, !noundef !21
  %i.yf = load ptr, ptr %i.do, align 8, !noalias !5378, !nonnull !21, !align !29, !noundef !21
  %i.yg = load i64, ptr %i.dp, align 8, !noalias !5378, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5378
  %i.yh = load i8, ptr %i.dq, align 1, !range !38, !alias.scope !5376, !noalias !5379, !noundef !21
  %i.yi = trunc nuw i8 %i.yh to i1
  br i1 %i.yi, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %.noexc44.i.i.i.i.i, %.noexc40.i.i.i.i.i
  %i.yj = zext i32 %i.ya to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5378
  %i.yk = load i8, ptr %i.dr, align 2, !range !38, !alias.scope !5376, !noalias !5379, !noundef !21
  %i.yl = trunc nuw i8 %i.yk to i1
  %i.ym = icmp ugt i32 %i.ya, 544
  %or.cond3.i.i.i.i.i.i = and i1 %i.ym, %i.yl
  %spec.store.select.i.i.i.i.i.i = select i1 %or.cond3.i.i.i.i.i.i, i64 544, i64 %i.yj
  invoke void @_ZN6brotli3enc17brotli_bit_stream30StoreCompressedMetaBlockHeader17he8486a6759b6de05E(i1 noundef zeroext false, i64 noundef range(i64 1, 4294967296) %i.ud, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i)
end_hunk_1
begin_hunk_2_@"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$27inject_flush_or_push_output17hc8af9be3c325611bE":bb.a
  store i64 %i.bd, ptr %i.az, align 8, !alias.scope !11681
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %bb.u, %bb.b, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit"
  %.sroa.0.0 = phi i1 [ true, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit" ], [ false, %bb.b ], [ true, %bb.u ], [ true, %bb.t ]
  ret i1 %.sroa.0.0

bb.o:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 8 uses
  %i.be = load i64, ptr %4, align 8, !noundef !21 ; 4 uses
  %i.bf = add i64 %i.be, %.sroa.0.0.i             ; 4 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %.not = icmp ugt i64 %i.bf, %3
  %or.cond14 = or i1 %i.bg, %.not
  br i1 %or.cond14, label %bb.q, label %bb.p, !prof !64

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val = load ptr, ptr %i.bi, align 8, !nonnull !21, !align !29, !noundef !21
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val15 = load i64, ptr %i.bj, align 8, !noundef !21
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5528
  %i.bl = tail call { ptr, i64 } @_ZN6brotli3enc6encode18GetNextOutInternal17h163bd09a2afd3dd7E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bh, ptr noalias noundef nonnull align 1 %.val, i64 noundef %.val15, ptr noalias noundef nonnull align 1 dereferenceable(16) %i.bk) ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 1      ; 2 uses
  %.not13 = icmp ugt i64 %.sroa.0.0.i, %i.bm
  br i1 %.not13, label %bb.s, label %bb.r, !prof !64

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.be, i64 noundef %i.bf, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1223) #46
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bn = extractvalue { ptr, i64 } %i.bl, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull readonly align 1 %i.bn, i64 %.sroa.0.0.i, i1 false), !alias.scope !11682, !noalias !11683
  store i64 %i.bf, ptr %4, align 8
  %i.bp = sub nuw i64 %i.j, %.sroa.0.0.i
  store i64 %i.bp, ptr %1, align 8
  %i.bq = load i32, ptr %i.bh, align 8, !range !59, !noundef !21
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.bs = icmp eq i32 %i.bq, 2
  br i1 %i.bs, label %bb.t, label %.sink.split

bb.s:                                             ; preds = %bb.p
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.0.0.i, i64 noundef %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #46
  unreachable

.sink.split:                                      ; preds = %bb.r
  %i.bt = trunc i64 %.sroa.0.0.i to i32
  %i.bu = load i32, ptr %i.br, align 4, !noundef !21
  %i.bv = add i32 %i.bu, %i.bt
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.sink.split
  %.sroa.6.0 = phi i32 [ undef, %bb.r ], [ %i.bv, %.sink.split ]
  store i32 %.sroa.6.0, ptr %i.br, align 4
  %i.bw = load i64, ptr %i.g, align 8, !noundef !21
  %i.bx = sub i64 %i.bw, %.sroa.0.0.i
  store i64 %i.bx, ptr %i.g, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 5520 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !noundef !21
  %i.ca = add i64 %i.bz, %.sroa.0.0.i             ; 2 uses
  store i64 %i.ca, ptr %i.by, align 8
  %i.cb = load i64, ptr %5, align 8, !range !52, !noundef !21
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.u, label %bb.n

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ca, ptr %i.cd, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN6brotli3enc6writer64CompressorWriterCustomIo$LT$ErrType$C$W$C$BufferType$C$Alloc$GT$14flush_or_close17h8a3a9b66814490d8E"(ptr noalias noundef nonnull align 8 dereferenceable(5664) %0, i8 noundef range(i8 1, 3) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 9 uses
  %i.d = alloca [984 x i8], align 8               ; 24 uses
  %i.e = alloca [984 x i8], align 8               ; 23 uses
  %i.f = alloca [984 x i8], align 8               ; 23 uses
  %i.g = alloca [152 x i8], align 8               ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [11272 x i8], align 4             ; 6 uses
  %i.k = alloca [280 x i8], align 2               ; 5 uses
  %i.l = alloca [140 x i8], align 1               ; 5 uses
  %i.m = alloca [1408 x i8], align 2              ; 5 uses
  %i.n = alloca [704 x i8], align 1               ; 5 uses
  %i.o = alloca [512 x i8], align 2               ; 5 uses
  %i.p = alloca [256 x i8], align 1               ; 5 uses
  %i.q = alloca [2192 x i8], align 8              ; 6 uses
  %i.r = alloca [2832 x i8], align 8              ; 6 uses
  %i.s = alloca [1040 x i8], align 8              ; 6 uses
  %i.t = alloca [152 x i8], align 8               ; 22 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [280 x i8], align 2               ; 5 uses
  %i.x = alloca [140 x i8], align 1               ; 5 uses
  %i.y = alloca [1408 x i8], align 2              ; 5 uses
  %i.z = alloca [704 x i8], align 1               ; 5 uses
  %i.aa = alloca [512 x i8], align 2              ; 5 uses
  %i.ab = alloca [256 x i8], align 1              ; 5 uses
  %i.ac = alloca [2192 x i8], align 8             ; 7 uses
  %i.ad = alloca [2832 x i8], align 8             ; 7 uses
  %i.ae = alloca [1040 x i8], align 8             ; 7 uses
  %i.af = alloca [512 x i8], align 2              ; 5 uses
  %i.ag = alloca [256 x i8], align 1              ; 5 uses
  %i.ah = alloca [1024 x i8], align 4             ; 5 uses
  %i.ai = alloca [152 x i8], align 8              ; 22 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [264 x i8], align 8              ; 43 uses
  %i.an = alloca [112 x i8], align 8              ; 10 uses
  %i.ao = alloca [8 x i8], align 8                ; 6 uses
  %i.ap = alloca [4 x i8], align 4                ; 5 uses
  %i.aq = alloca [8 x i8], align 8                ; 60 uses
  %i.ar = alloca [4 x i8], align 4                ; 7 uses
  %i.as = alloca [8 x i8], align 8                ; 7 uses
  %i.at = alloca [8 x i8], align 8                ; 6 uses
  %i.au = alloca [8 x i8], align 8                ; 7 uses
  %i.av = alloca [8 x i8], align 8                ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5608 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5580
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5576 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 246 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 11 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 11 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 5528 ; 5 uses
  %i.bh = icmp eq i8 %1, 2
  %i.bi = icmp eq i8 %1, 1                        ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5586 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5590 ; 11 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 15 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 15 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5584 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5589 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 12 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 5588
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 5560 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 5591 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 5592 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 12 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 5568 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 5593
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 6 uses
  %.sroa.7.0..sroa_idx.i23.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %.sroa.732.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 80 ; 2 uses
  %.sroa.737.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 128 ; 2 uses
  %.sroa.4.0..sroa_idx.i24.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i25.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %.sroa.429.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 56 ; 2 uses
  %.sroa.530.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %.sroa.631.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 72 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.am, i64 96 ; 2 uses
  %.sroa.434.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 104 ; 2 uses
  %.sroa.535.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 112 ; 2 uses
  %.sroa.636.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 120 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.am, i64 144 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.am, i64 152 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.am, i64 224
  %i.cy = getelementptr inbounds nuw i8, ptr %i.am, i64 160 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.am, i64 168 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 232
  %i.db = getelementptr inbounds nuw i8, ptr %i.am, i64 176 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.am, i64 184 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 240 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.am, i64 192 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.am, i64 200 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.am, i64 248
  %i.dh = getelementptr inbounds nuw i8, ptr %i.am, i64 208 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.am, i64 216 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.am, i64 256 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.dm = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.an, i64 97
  %i.dr = getelementptr inbounds nuw i8, ptr %i.an, i64 98
  %i.ds = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.16.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.4.0..sroa_idx.i30.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i31.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i32.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %.sroa.7.0..sroa_idx.i33.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 6 uses
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 6 uses
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 6 uses
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 6 uses
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 4 uses
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.2015.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 960 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 968 ; 9 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 976 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %.sroa.1629.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.417.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.518.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.619.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.720.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  %.sroa.821.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %.sroa.922.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 4 uses
  %.sroa.1023.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  %.sroa.1124.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.1225.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %.sroa.1326.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.1427.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %.sroa.1528.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.2034.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %.sroa.2135.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 968
  %.sroa.2236.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 976
  %i.du = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %.sroa.1650.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %.sroa.438.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.539.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.640.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.sroa.741.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %.sroa.842.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 4 uses
  %.sroa.943.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %.sroa.1044.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  %.sroa.1145.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.1246.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %.sroa.1347.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.sroa.1448.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %.sroa.1549.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.sroa.2055.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 960
  %.sroa.2156.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 968
  %.sroa.2257.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 976
  %i.dv = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.6.0..sroa_idx.i27.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.7.0..sroa_idx.i28.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.eg = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.eh = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.sroa.56.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %.sroa.67.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %.sroa.78.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.ei = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %.sroa.411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %.sroa.512.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %.sroa.613.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %.sroa.714.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.ej = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.ek = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.el = getelementptr inbounds nuw i8, ptr %i.s, i64 1032
  %i.em = getelementptr inbounds nuw i8, ptr %i.r, i64 2824
  %i.en = getelementptr inbounds nuw i8, ptr %i.q, i64 2184
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.612.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %.sroa.515.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.sroa.616.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.sroa.717.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %.sroa.420.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %.sroa.521.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  %.sroa.622.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %.sroa.723.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ai, i64 136
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ae, i64 1024
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ae, i64 1032
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ad, i64 2816
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ad, i64 2824
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ac, i64 2176
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ac, i64 2184
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 4624
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 4752
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 5520
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 5008
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 5616 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 5624 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 5632 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i64 0, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i64 0, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %.val16 = load ptr, ptr %i.aw, align 8, !nonnull !21, !align !29, !noundef !21 ; 2 uses
  %.val17 = load i64, ptr %i.ax, align 8, !noundef !21 ; 3 uses
  store i64 %.val17, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i64 0, ptr %i.as, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !11833)
  call void @llvm.experimental.noalias.scope.decl(metadata !11834)
  call void @llvm.experimental.noalias.scope.decl(metadata !11835)
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h976450b2f254cc2bE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ay)
  %i.fn = load i32, ptr %i.az, align 4, !alias.scope !11833, !noalias !11836, !noundef !21
  %.not.i = icmp eq i32 %i.fn, -1
  br i1 %.not.i, label %bb.c, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17hfa542ba2c4e9bbd1E.exit"

bb.c:                                             ; preds = %bb.b
  %i.fo = load i32, ptr %i.ba, align 8, !range !76, !alias.scope !11833, !noalias !11836, !noundef !21
  %i.fp = icmp samesign ugt i32 %i.fo, 2
  br i1 %i.fp, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17hfa542ba2c4e9bbd1E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.fq = load i32, ptr %i.bb, align 8, !alias.scope !11833, !noalias !11836, !noundef !21
  %switch.i = icmp ult i32 %i.fq, 2
  br i1 %switch.i, label %bb.e, label %.backedge.i.preheader

.backedge.i.preheader:                            ; preds = %bb.e, %bb.d
  br label %.backedge.i

bb.e:                                             ; preds = %bb.d
  %i.fr = load i8, ptr %i.bc, align 2, !range !38, !alias.scope !11833, !noalias !11836, !noundef !21
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %.backedge.i.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ft = call fastcc noundef zeroext i1 @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h7c30335cc7899e40E"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ay, i8 noundef range(i8 1, 3) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.av, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at, ptr noalias noundef nonnull align 1 %.val16, i64 noundef %.val17, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17hfa542ba2c4e9bbd1E.exit"

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.backedge.i.preheader
  %i.fu = load i64, ptr %i.bd, align 8, !alias.scope !11837, !noalias !11836, !noundef !21
  %i.fv = load i64, ptr %i.be, align 8, !alias.scope !11837, !noalias !11836, !noundef !21
  %i.fw = sub i64 %i.fu, %i.fv                    ; 2 uses
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h976450b2f254cc2bE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ay)
  %i.fx = load i32, ptr %i.bf, align 8, !alias.scope !11837, !noalias !11836, !noundef !21
  %i.fy = and i32 %i.fx, 63
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = shl nuw i64 1, %i.fz                    ; 2 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775807) i64 @llvm.usub.sat.i64(i64 %i.ga, i64 %i.fw)
  %.not5.i = icmp ugt i64 %i.ga, %i.fw
  br i1 %.not5.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %.backedge.i
  %i.gb = call fastcc noundef zeroext i1 @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$27inject_flush_or_push_output17hc8af9be3c325611bE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at, ptr noalias noundef nonnull align 1 %.val16, i64 noundef %.val17, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !noalias !11838
  br i1 %i.gb, label %.backedge.i.backedge, label %bb.j

bb.h:                                             ; preds = %.backedge.i
  %i.gc = load i64, ptr %i.av, align 8, !alias.scope !11834, !noalias !11839, !noundef !21 ; 3 uses
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ge = load i64, ptr %i.au, align 8, !alias.scope !11835, !noalias !11840, !noundef !21 ; 2 uses
  %.not21.i = icmp eq i64 %i.ge, 0
  br i1 %.not21.i, label %bb.hu, label %bb.hv, !prof !31

bb.j:                                             ; preds = %bb.g
  %i.gf = load i64, ptr %i.bg, align 8, !alias.scope !11833, !noalias !11836, !noundef !21
  %i.gg = icmp eq i64 %i.gf, 0
end_hunk_2
begin_hunk_3_@"_ZN6brotli3enc6writer64CompressorWriterCustomIo$LT$ErrType$C$W$C$BufferType$C$Alloc$GT$14flush_or_close17h8a3a9b66814490d8E":bb.a
  br i1 %i.ta, label %bb.du, label %bb.dt

bb.dq:                                            ; preds = %bb.do
  %.not.i.i.i.i = icmp ugt i64 %i.rq, %.val187.i.i
  br i1 %.not.i.i.i.i, label %bb.dr, label %bb.ds, !prof !30

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11878
  store ptr @230, ptr %i.v, align 8, !noalias !11878
  %i.tb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %i.tb, align 8, !noalias !11878
  %i.tc = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr null, ptr %i.tc, align 8, !noalias !11878
  %i.td = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.td, align 8, !noalias !11878
  %i.te = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 0, ptr %i.te, align 8, !noalias !11878
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @970) #46, !noalias !11879
  unreachable

bb.ds:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !11878
  store ptr inttoptr (i64 1 to ptr), ptr %i.ai, align 8, !noalias !11878
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !11878
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !11878
  store i64 0, ptr %.sroa.612.0..sroa_idx.i.i.i.i, align 8, !noalias !11878
  store i32 1, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !11878
  store ptr inttoptr (i64 4 to ptr), ptr %i.es, align 8, !noalias !11878
  store i64 0, ptr %i.et, align 8, !noalias !11878
  store ptr inttoptr (i64 1 to ptr), ptr %i.eu, align 8, !noalias !11878
  store i64 0, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !noalias !11878
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.515.0..sroa_idx.i.i.i.i, align 8, !noalias !11878
  store i64 0, ptr %.sroa.616.0..sroa_idx.i.i.i.i, align 8, !noalias !11878
  store i32 1, ptr %.sroa.717.0..sroa_idx.i.i.i.i, align 8, !noalias !11878
  store ptr inttoptr (i64 1 to ptr), ptr %i.ev, align 8, !noalias !11878
  store i64 0, ptr %.sroa.420.0..sroa_idx.i.i.i.i, align 8, !noalias !11878
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.521.0..sroa_idx.i.i.i.i, align 8, !noalias !11878
  store i64 0, ptr %.sroa.622.0..sroa_idx.i.i.i.i, align 8, !noalias !11878
  store i32 1, ptr %.sroa.723.0..sroa_idx.i.i.i.i, align 8, !noalias !11878
  store ptr inttoptr (i64 4 to ptr), ptr %i.ew, align 8, !noalias !11878
  store i64 0, ptr %i.ex, align 8, !noalias !11878
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4564c46130fee7a0E(ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %i.rq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.st, i64 noundef %i.su, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.sv, i64 noundef %i.sw, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cs, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i8 noundef 0), !noalias !11883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !11878
  br label %bb.dp

bb.dt:                                            ; preds = %bb.dp
  %i.tf = zext i32 %i.sz to i64
  %i.tg = add nsw i64 %i.tf, -1
  %i.th = lshr i64 %i.tg, 1
  %i.ti = call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.th, i1 false)
  %i.tj = sub nuw nsw i64 65, %i.ti
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !11878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ae, i8 0, i64 1032, i1 false), !noalias !11878
  store float 3.402000e+38, ptr %i.ez, align 8, !noalias !11878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !11878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ad, i8 0, i64 2824, i1 false), !noalias !11878
  store float 3.402000e+38, ptr %i.fb, align 8, !noalias !11878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !11878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ac, i8 0, i64 2184, i1 false), !noalias !11878
  store float 3.402000e+38, ptr %i.fd, align 8, !noalias !11878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !11878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.ab, i8 0, i64 256, i1 false), !noalias !11878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !11878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.aa, i8 0, i64 512, i1 false), !noalias !11878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !11878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(704) %i.z, i8 0, i64 704, i1 false), !noalias !11878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !11878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1408) %i.y, i8 0, i64 1408, i1 false), !noalias !11878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !11878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(140) %i.x, i8 0, i64 140, i1 false), !noalias !11878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !11878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(280) %i.w, i8 0, i64 280, i1 false), !noalias !11878
  call void @_ZN6brotli3enc17brotli_bit_stream15BuildHistograms17hf33d4e9a73aed5ffE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.rl, i64 noundef %i.rk, i64 noundef range(i64 0, 4294967296) %i.ss, i64 noundef range(i64 0, 4294967296) %i.ol, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %.val187.i.i, i64 noundef %i.rq, ptr noalias noundef nonnull align 8 dereferenceable(1040) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(2832) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(2192) %i.ac), !noalias !11882
  %i.tk = load i64, ptr %i.ey, align 8, !noalias !11878, !noundef !21
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ae, i64 noundef 256, i64 noundef %i.tk, i64 noundef 8, ptr noalias noundef nonnull align 1 %i.ab, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.aa, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11882
  %i.tl = load i64, ptr %i.fa, align 8, !noalias !11878, !noundef !21
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ad, i64 noundef 704, i64 noundef %i.tl, i64 noundef 10, ptr noalias noundef nonnull align 1 %i.z, i64 noundef 704, ptr noalias noundef nonnull align 2 %i.y, i64 noundef 704, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11882
  %i.tm = load i64, ptr %i.fc, align 8, !noalias !11878, !noundef !21
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ac, i64 noundef 544, i64 noundef %i.tm, i64 noundef %i.tj, ptr noalias noundef nonnull align 1 %i.x, i64 noundef 140, ptr noalias noundef nonnull align 2 %i.w, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11882
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.rl, i64 noundef %i.rk, i64 noundef range(i64 0, 4294967296) %i.ss, i64 noundef range(i64 0, 4294967296) %i.ol, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %.val187.i.i, i64 noundef %i.rq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ab, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.aa, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.y, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.x, i64 noundef 140, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.w, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !11878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !11878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !11878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !11878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !11878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !11878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !11878
  br label %bb.dv

bb.du:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !11878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ah, i8 0, i64 1024, i1 false), !noalias !11878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !11878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.ag, i8 0, i64 256, i1 false), !noalias !11878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !11878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.af, i8 0, i64 512, i1 false), !noalias !11878
  %.not26.i.i.i.i = icmp eq i64 %i.rq, 0
  br i1 %.not26.i.i.i.i, label %._crit_edge14.i.i.i.i, label %.lr.ph13.i.i.i.i

bb.dv:                                            ; preds = %._crit_edge14.i.i.i.i, %bb.dt
  br i1 %.sroa.0.0.i200.i.i, label %bb.dw, label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h61d2765af724312cE.exit.i.i.i

.lr.ph13.i.i.i.i:                                 ; preds = %bb.du, %._crit_edge.i.i.i.i
  %.sroa.027.111.i.i.i.i = phi i64 [ %.sroa.027.1.i.i.i.i, %._crit_edge.i.i.i.i ], [ 1, %bb.du ] ; 3 uses
  %.sroa.02.010.i.i.i.i = phi i64 [ %i.tx, %._crit_edge.i.i.i.i ], [ %i.ss, %bb.du ] ; 2 uses
  %.sroa.05.09.i.i.i.i = phi i64 [ %i.tu, %._crit_edge.i.i.i.i ], [ 0, %bb.du ]
  %.sroa.027.08.i.i.i.i = phi i64 [ %.sroa.027.111.i.i.i.i, %._crit_edge.i.i.i.i ], [ 0, %bb.du ] ; 3 uses
  %i.tn = icmp ult i64 %.sroa.027.08.i.i.i.i, %.val187.i.i
  br i1 %i.tn, label %bb.dx, label %bb.dy

._crit_edge14.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i, %bb.du
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.du ], [ %i.tu, %._crit_edge.i.i.i.i ]
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ah, i64 noundef 256, i64 noundef %.sroa.05.0.lcssa.i.i.i.i, i64 noundef 8, ptr noalias noundef nonnull align 1 %i.ag, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.af, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11882
  call void @_ZN6brotli3enc17brotli_bit_stream29StoreStaticCommandHuffmanTree17h94fc581fe61dfd4aE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11882
  call void @_ZN6brotli3enc17brotli_bit_stream30StoreStaticDistanceHuffmanTree17h4a629285af6547ffE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11882
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.rl, i64 noundef %i.rk, i64 noundef range(i64 0, 4294967296) %i.ss, i64 noundef range(i64 0, 4294967296) %i.ol, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %.val187.i.i, i64 noundef %i.rq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ag, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.af, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @_ZN6brotli3enc9constants23kStaticCommandCodeDepth17hc2b64d4d0d432e21E, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @_ZN6brotli3enc9constants22kStaticCommandCodeBits17h79c541a1c5f86137E, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @_ZN6brotli3enc9constants24kStaticDistanceCodeDepth17hdb40a6d6b71ad0daE, i64 noundef 64, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @_ZN6brotli3enc9constants23kStaticDistanceCodeBits17h6ce7b4025b69c8d0E, i64 noundef 64, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !11878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !11878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !11878
  br label %bb.dv

bb.dw:                                            ; preds = %bb.dv
  call void @_ZN6brotli3enc17brotli_bit_stream18JumpToByteBoundary17hd530db3bb0615915E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11882
  br label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h61d2765af724312cE.exit.i.i.i

bb.dx:                                            ; preds = %.lr.ph13.i.i.i.i
  %i.to = getelementptr inbounds nuw [16 x i8], ptr %.val186.i.i, i64 %.sroa.027.08.i.i.i.i ; 2 uses
  %i.tp = load i32, ptr %i.to, align 4, !alias.scope !11884, !noalias !11885, !noundef !21 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %i.tr = load i32, ptr %i.tq, align 4, !alias.scope !11884, !noalias !11885, !noundef !21
  %i.ts = zext i32 %i.tp to i64                   ; 2 uses
  %i.tt = icmp eq i32 %i.tp, 0
  br i1 %i.tt, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.dy:                                            ; preds = %.lr.ph13.i.i.i.i
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.027.08.i.i.i.i, i64 noundef %.val187.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @971) #46, !noalias !11882
  unreachable

._crit_edge.i.i.i.i:                              ; preds = %bb.ea, %bb.dx
  %.sroa.02.1.lcssa.i.i.i.i = phi i64 [ %.sroa.02.010.i.i.i.i, %bb.dx ], [ %i.ui, %bb.ea ]
  %i.tu = add i64 %.sroa.05.09.i.i.i.i, %i.ts     ; 2 uses
  %i.tv = and i32 %i.tr, 33554431
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = add i64 %.sroa.02.1.lcssa.i.i.i.i, %i.tw
  %i.ty = icmp ult i64 %.sroa.027.111.i.i.i.i, %i.rq ; 2 uses
  %i.tz = zext i1 %i.ty to i64
  %.sroa.027.1.i.i.i.i = add nuw nsw i64 %.sroa.027.111.i.i.i.i, %i.tz
  br i1 %i.ty, label %.lr.ph13.i.i.i.i, label %._crit_edge14.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dx, %bb.ea
  %.sroa.02.17.i.i.i.i = phi i64 [ %i.ui, %bb.ea ], [ %.sroa.02.010.i.i.i.i, %bb.dx ] ; 2 uses
  %.sroa.09.06.i.i.i.i = phi i64 [ %i.uj, %bb.ea ], [ %i.ts, %bb.dx ]
  %i.ua = and i64 %.sroa.02.17.i.i.i.i, %i.ol     ; 3 uses
  %i.ub = icmp ult i64 %i.ua, %i.rk
  br i1 %i.ub, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ua, i64 noundef %i.rk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @972) #46, !noalias !11882
  unreachable

bb.ea:                                            ; preds = %.lr.ph.i.i.i.i
  %i.uc = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.ua
  %i.ud = load i8, ptr %i.uc, align 1, !alias.scope !11886, !noalias !11887, !noundef !21
  %i.ue = zext i8 %i.ud to i64
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ue ; 2 uses
  %i.ug = load i32, ptr %i.uf, align 4, !noalias !11878, !noundef !21
  %i.uh = add i32 %i.ug, 1
  store i32 %i.uh, ptr %i.uf, align 4, !noalias !11878
  %i.ui = add i64 %.sroa.02.17.i.i.i.i, 1         ; 2 uses
  %i.uj = add nsw i64 %.sroa.09.06.i.i.i.i, -1    ; 2 uses
  %i.uk = icmp eq i64 %i.uj, 0
  br i1 %i.uk, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.eb:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !11869
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i23.i.i.i, i8 0, i64 16, i1 false), !alias.scope !11888, !noalias !11869
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.732.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !11888, !noalias !11869
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.737.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !11888, !noalias !11869
  store ptr inttoptr (i64 1 to ptr), ptr %i.am, align 8, !alias.scope !11888, !noalias !11869
  store i64 0, ptr %.sroa.4.0..sroa_idx.i24.i.i.i, align 8, !alias.scope !11888, !noalias !11869
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i25.i.i.i, align 8, !alias.scope !11888, !noalias !11869
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11888, !noalias !11869
  store ptr inttoptr (i64 1 to ptr), ptr %i.ct, align 8, !alias.scope !11888, !noalias !11869
  store i64 0, ptr %.sroa.429.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11888, !noalias !11869
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.530.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11888, !noalias !11869
  store i64 0, ptr %.sroa.631.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11888, !noalias !11869
  store ptr inttoptr (i64 1 to ptr), ptr %i.cu, align 8, !alias.scope !11888, !noalias !11869
  store i64 0, ptr %.sroa.434.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11888, !noalias !11869
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.535.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11888, !noalias !11869
  store i64 0, ptr %.sroa.636.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11888, !noalias !11869
  store ptr inttoptr (i64 4 to ptr), ptr %i.cv, align 8, !alias.scope !11888, !noalias !11869
  store i64 0, ptr %i.cw, align 8, !alias.scope !11888, !noalias !11869
  store ptr inttoptr (i64 4 to ptr), ptr %i.cy, align 8, !alias.scope !11888, !noalias !11869
  store i64 0, ptr %i.cz, align 8, !alias.scope !11888, !noalias !11869
  store ptr inttoptr (i64 8 to ptr), ptr %i.db, align 8, !alias.scope !11888, !noalias !11869
  store i64 0, ptr %i.dc, align 8, !alias.scope !11888, !noalias !11869
  store ptr inttoptr (i64 8 to ptr), ptr %i.de, align 8, !alias.scope !11888, !noalias !11869
  store i64 0, ptr %i.df, align 8, !alias.scope !11888, !noalias !11869
  store ptr inttoptr (i64 8 to ptr), ptr %i.dh, align 8, !alias.scope !11888, !noalias !11869
  store <6 x i64> zeroinitializer, ptr %i.di, align 8, !alias.scope !11888, !noalias !11869
  %i.ul = icmp samesign ult i32 %i.sp, 10
  br i1 %i.ul, label %bb.ej, label %bb.ei

bb.ec:                                            ; preds = %bb.dn
  %i.um = zext i32 %.sroa.012.0.i.i.i to i64      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11889)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !11890
  call void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.rl, i64 noundef %i.rk, i64 noundef range(i64 0, 4294967296) %i.um, i64 noundef range(i64 1, 4294967296) %i.rm, i64 noundef range(i64 0, 4294967296) %i.ol), !noalias !11891
  %i.un = load ptr, ptr %i.u, align 8, !noalias !11890, !nonnull !21, !align !29, !noundef !21
  %i.uo = load i64, ptr %i.eb, align 8, !noalias !11890, !noundef !21
  %i.up = load ptr, ptr %i.ec, align 8, !noalias !11890, !nonnull !21, !align !29, !noundef !21
  %i.uq = load i64, ptr %i.ed, align 8, !noalias !11890, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11890
  %i.ur = load i8, ptr %i.ee, align 1, !range !38, !alias.scope !11892, !noalias !11893, !noundef !21
  %i.us = trunc nuw i8 %i.ur to i1
  br i1 %i.us, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.eg, %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !11890
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.s, i8 0, i64 1032, i1 false), !noalias !11890
  store float 3.402000e+38, ptr %i.el, align 8, !noalias !11890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11890
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.r, i8 0, i64 2824, i1 false), !noalias !11890
  store float 3.402000e+38, ptr %i.em, align 8, !noalias !11890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !11890
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.q, i8 0, i64 2184, i1 false), !noalias !11890
  store float 3.402000e+38, ptr %i.en, align 8, !noalias !11890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11890
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.p, i8 0, i64 256, i1 false), !noalias !11890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11890
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.o, i8 0, i64 512, i1 false), !noalias !11890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11890
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(704) %i.n, i8 0, i64 704, i1 false), !noalias !11890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11890
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1408) %i.m, i8 0, i64 1408, i1 false), !noalias !11890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11890
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(140) %i.l, i8 0, i64 140, i1 false), !noalias !11890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11890
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(280) %i.k, i8 0, i64 280, i1 false), !noalias !11890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11890
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11272) %i.j, i8 0, i64 11272, i1 false), !noalias !11890
  %i.ut = load i32, ptr %i.eo, align 8, !alias.scope !11892, !noalias !11893, !noundef !21
  call void @_ZN6brotli3enc17brotli_bit_stream30StoreCompressedMetaBlockHeader17he8486a6759b6de05E(i1 noundef zeroext %.sroa.0.0.i200.i.i, i64 noundef range(i64 1, 4294967296) %i.rm, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11894
  call void @_ZN6brotli3enc17brotli_bit_stream15BuildHistograms17hf33d4e9a73aed5ffE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.rl, i64 noundef %i.rk, i64 noundef range(i64 0, 4294967296) %i.um, i64 noundef range(i64 0, 4294967296) %i.ol, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %.val187.i.i, i64 noundef %i.rq, ptr noalias noundef nonnull align 8 dereferenceable(1040) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(2832) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(2192) %i.q), !noalias !11894
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11894
  call void @_ZN6brotli3enc17brotli_bit_stream24BuildAndStoreHuffmanTree17h593bd11fb314b673E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.s, i64 noundef 256, i64 noundef 256, i64 noundef 256, ptr noalias noundef nonnull align 4 %i.j, i64 noundef 1409, ptr noalias noundef nonnull align 1 %i.p, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.o, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11894
  call void @_ZN6brotli3enc17brotli_bit_stream24BuildAndStoreHuffmanTree17h593bd11fb314b673E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.r, i64 noundef 704, i64 noundef 704, i64 noundef 704, ptr noalias noundef nonnull align 4 %i.j, i64 noundef 1409, ptr noalias noundef nonnull align 1 %i.n, i64 noundef 704, ptr noalias noundef nonnull align 2 %i.m, i64 noundef 704, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11894
  %i.uu = zext i32 %i.ut to i64
  call void @_ZN6brotli3enc17brotli_bit_stream24BuildAndStoreHuffmanTree17h593bd11fb314b673E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.q, i64 noundef 544, i64 noundef 140, i64 noundef %i.uu, ptr noalias noundef nonnull align 4 %i.j, i64 noundef 1409, ptr noalias noundef nonnull align 1 %i.l, i64 noundef 140, ptr noalias noundef nonnull align 2 %i.k, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11894
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.rl, i64 noundef %i.rk, i64 noundef range(i64 0, 4294967296) %i.um, i64 noundef range(i64 0, 4294967296) %i.ol, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %.val187.i.i, i64 noundef %i.rq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.p, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.o, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.m, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef 140, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.k, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11894
  br i1 %.sroa.0.0.i200.i.i, label %bb.eh, label %_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17hbfad71c86fe051d6E.exit.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %.not.i26.i.i.i = icmp ugt i64 %i.rq, %.val187.i.i
  br i1 %.not.i26.i.i.i, label %bb.ef, label %bb.eg, !prof !30

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11890
  store ptr @230, ptr %i.i, align 8, !noalias !11890
  %i.uv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.uv, align 8, !noalias !11890
  %i.uw = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.uw, align 8, !noalias !11890
  %i.ux = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ux, align 8, !noalias !11890
  %i.uy = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %i.uy, align 8, !noalias !11890
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @973) #46, !noalias !11891
  unreachable

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !11890
  store ptr inttoptr (i64 1 to ptr), ptr %i.t, align 8, !noalias !11890
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !11890
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !11890
  store i64 0, ptr %.sroa.6.0..sroa_idx.i27.i.i.i, align 8, !noalias !11890
  store i32 1, ptr %.sroa.7.0..sroa_idx.i28.i.i.i, align 8, !noalias !11890
  store ptr inttoptr (i64 4 to ptr), ptr %i.ef, align 8, !noalias !11890
  store i64 0, ptr %i.eg, align 8, !noalias !11890
  store ptr inttoptr (i64 1 to ptr), ptr %i.eh, align 8, !noalias !11890
  store i64 0, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !noalias !11890
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8, !noalias !11890
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i.i, align 8, !noalias !11890
  store i32 1, ptr %.sroa.78.0..sroa_idx.i.i.i.i, align 8, !noalias !11890
  store ptr inttoptr (i64 1 to ptr), ptr %i.ei, align 8, !noalias !11890
  store i64 0, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !noalias !11890
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !11890
  store i64 0, ptr %.sroa.613.0..sroa_idx.i.i.i.i, align 8, !noalias !11890
  store i32 1, ptr %.sroa.714.0..sroa_idx.i.i.i.i, align 8, !noalias !11890
  store ptr inttoptr (i64 4 to ptr), ptr %i.ej, align 8, !noalias !11890
  store i64 0, ptr %i.ek, align 8, !noalias !11890
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4564c46130fee7a0E(ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %i.rq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.un, i64 noundef %i.uo, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.up, i64 noundef %i.uq, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cs, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i8 noundef 0), !noalias !11895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11890
  br label %bb.ed

bb.eh:                                            ; preds = %bb.ed
  call void @_ZN6brotli3enc17brotli_bit_stream18JumpToByteBoundary17hd530db3bb0615915E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11894
  br label %_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17hbfad71c86fe051d6E.exit.i.i.i

_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17hbfad71c86fe051d6E.exit.i.i.i: ; preds = %bb.eh, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11890
  br label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h61d2765af724312cE.exit.i.i.i

bb.ei:                                            ; preds = %bb.eb
  %i.uz = zext i32 %.sroa.012.0.i.i.i to i64
  invoke fastcc void @_ZN6brotli3enc9metablock20BrotliBuildMetaBlock17h2be97dbed52f6456E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.rl, i64 noundef %i.rk, i64 noundef %i.uz, i64 noundef range(i64 0, 4294967296) %i.ol, ptr noalias noundef align 8 dereferenceable(112) %i.an, i8 noundef %i.rn, i8 noundef %i.ro, ptr noalias noundef nonnull align 4 %.val186.i.i, i64 noundef %.val187.i.i, i64 noundef %i.rq, i8 noundef range(i8 0, 4) %i.ow, ptr noalias noundef nonnull align 1 %i.cr, ptr noalias noundef align 8 dereferenceable(264) %i.am)
          to label %bb.en unwind label %.loopexit.i, !noalias !11868

bb.ej:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !11869
  store i64 1, ptr %i.al, align 8, !noalias !11869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !11869
  store ptr inttoptr (i64 4 to ptr), ptr %i.ak, align 8, !noalias !11869
  store i64 0, ptr %i.dk, align 8, !noalias !11869
  %i.va = load i32, ptr %i.dl, align 4, !alias.scope !11866, !noalias !11867, !noundef !21
  %i.vb = icmp eq i32 %i.va, 0
  %i.vc = zext i32 %.sroa.012.0.i.i.i to i64      ; 2 uses
  br i1 %i.vb, label %bb.ek, label %.invoke.i.i.i

.loopexit.i:                                      ; preds = %.noexc40.i.i.i, %bb.es, %bb.ep, %bb.eo, %bb.en, %.invoke.i.i.i, %bb.ek, %bb.ei
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i:                             ; preds = %.noexc.i.i.i.i, %bb.er
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.thread.i.i.i.i, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %lpad.phi73.i.i.i.i, %.thread.i.i.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call fastcc void @"_ZN4core3ptr113drop_in_place$LT$brotli..enc..brotli_bit_stream..MetaBlockSplit$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17hb9e224f650bfdf72E"(ptr noalias noundef align 8 dereferenceable(264) %i.am) #47, !noalias !11868
  br label %common.resume.i.i

bb.ek:                                            ; preds = %bb.ej
  %i.vd = load i64, ptr %i.bj, align 8, !alias.scope !11866, !noalias !11867, !noundef !21
  invoke void @_ZN6brotli3enc6encode32DecideOverLiteralContextModeling17h646b9ade2d57ecaeE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.rl, i64 noundef %i.rk, i64 noundef %i.vc, i64 noundef range(i64 0, 4294967296) %i.rm, i64 noundef range(i64 0, 4294967296) %i.ol, i32 noundef %i.sp, i64 noundef %i.vd, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %bb.el unwind label %.loopexit.i, !noalias !11868

bb.el:                                            ; preds = %bb.ek
  %.pre.i.i.i = load i64, ptr %i.al, align 8, !noalias !11869 ; 2 uses
  %i.ve = icmp eq i64 %.pre.i.i.i, 1
  br i1 %i.ve, label %.invoke.i.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.vf = load i64, ptr %i.dk, align 8, !noalias !11869, !noundef !21
  %i.vg = load ptr, ptr %i.ak, align 8, !noalias !11869, !nonnull !21, !align !28, !noundef !21
  br label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.em, %bb.el, %bb.ej
  %i.vh = phi i64 [ %.pre.i.i.i, %bb.em ], [ 1, %bb.ej ], [ 1, %bb.el ]
  %i.vi = phi ptr [ %i.vg, %bb.em ], [ inttoptr (i64 4 to ptr), %bb.ej ], [ inttoptr (i64 4 to ptr), %bb.el ]
  %i.vj = phi i64 [ %i.vf, %bb.em ], [ 0, %bb.ej ], [ 0, %bb.el ]
  invoke fastcc void @_ZN6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternal17h9719acd4736b0fc5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.rl, i64 noundef %i.rk, i64 noundef range(i64 0, 4294967296) %i.vc, i64 noundef range(i64 0, 4294967296) %i.ol, i8 noundef %i.rn, i8 noundef %i.ro, i8 noundef range(i8 0, 4) %i.ow, i64 noundef %i.vh, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.vi, i64 noundef %i.vj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %.val187.i.i, i64 noundef %i.rq, ptr noalias noundef nonnull align 8 dereferenceable(264) %i.am)
          to label %_ZN6brotli3enc9metablock26BrotliBuildMetaBlockGreedy17hdfe6d4830d36e55cE.exit.i.i.i unwind label %.loopexit.i, !noalias !11868

_ZN6brotli3enc9metablock26BrotliBuildMetaBlockGreedy17hdfe6d4830d36e55cE.exit.i.i.i: ; preds = %.invoke.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !11869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !11869
  br label %bb.en

bb.en:                                            ; preds = %_ZN6brotli3enc9metablock26BrotliBuildMetaBlockGreedy17hdfe6d4830d36e55cE.exit.i.i.i, %bb.ei
  %i.vk = load i32, ptr %i.dm, align 8, !noalias !11869, !noundef !21 ; 3 uses
  %spec.store.select.i.i.i = call i32 @llvm.umin.i32(i32 %i.vk, i32 544)
  %i.vl = zext nneg i32 %spec.store.select.i.i.i to i64
  invoke fastcc void @_ZN6brotli3enc9metablock24BrotliOptimizeHistograms17hcb5893b6cb61987bE(i64 noundef %i.vl, ptr noalias noundef align 8 dereferenceable(264) %i.am)
          to label %bb.eo unwind label %.loopexit.i, !noalias !11868

bb.eo:                                            ; preds = %bb.en
  %i.vm = zext i32 %.sroa.012.0.i.i.i to i64      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11896)
  call void @llvm.experimental.noalias.scope.decl(metadata !11897)
  call void @llvm.experimental.noalias.scope.decl(metadata !11898)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11899
  invoke void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.rl, i64 noundef %i.rk, i64 noundef range(i64 0, 4294967296) %i.vm, i64 noundef range(i64 1, 4294967296) %i.rm, i64 noundef range(i64 0, 4294967296) %i.ol)
          to label %.noexc37.i.i.i unwind label %.loopexit.i, !noalias !11868

.noexc37.i.i.i:                                   ; preds = %bb.eo
  %i.vn = load ptr, ptr %i.h, align 8, !noalias !11899, !nonnull !21, !align !29, !noundef !21
  %i.vo = load i64, ptr %i.dn, align 8, !noalias !11899, !noundef !21
  %i.vp = load ptr, ptr %i.do, align 8, !noalias !11899, !nonnull !21, !align !29, !noundef !21
  %i.vq = load i64, ptr %i.dp, align 8, !noalias !11899, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11899
  %i.vr = load i8, ptr %i.dq, align 1, !range !38, !alias.scope !11897, !noalias !11900, !noundef !21
  %i.vs = trunc nuw i8 %i.vr to i1
  br i1 %i.vs, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.noexc41.i.i.i, %.noexc37.i.i.i
  %i.vt = zext i32 %i.vk to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11899
end_hunk_3
