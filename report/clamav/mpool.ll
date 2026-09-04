Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/mpool?download=true
inline.NumInlined: 35
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mpool_malloc:bb.a
  %i.fc = bitcast <4 x i1> %i.fb to i4
  %.not152.8 = icmp eq i4 %i.fc, 0
  br i1 %.not152.8, label %vector.body.interim147.8, label %to_bits.exit.i72

vector.body.interim147.8:                         ; preds = %vector.body.interim147.7
  %i.fd = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 114, i32 117, i32 121, i32 129> ; 2 uses
  %i.fe = bitcast <4 x i1> %i.fd to i4
  %.not152.9 = icmp eq i4 %i.fe, 0
  br i1 %.not152.9, label %vector.body.interim147.9, label %to_bits.exit.i72

vector.body.interim147.9:                         ; preds = %vector.body.interim147.8
  %i.ff = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 132, i32 144, i32 152, i32 153> ; 2 uses
  %i.fg = bitcast <4 x i1> %i.ff to i4
  %.not152.10 = icmp eq i4 %i.fg, 0
  br i1 %.not152.10, label %vector.body.interim147.10, label %to_bits.exit.i72

vector.body.interim147.10:                        ; preds = %vector.body.interim147.9
  %i.fh = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 154, i32 197, i32 257, i32 361> ; 2 uses
  %i.fi = bitcast <4 x i1> %i.fh to i4
  %.not152.11 = icmp eq i4 %i.fi, 0
  br i1 %.not152.11, label %vector.body.interim147.11, label %to_bits.exit.i72

vector.body.interim147.11:                        ; preds = %vector.body.interim147.10
  %i.fj = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 404, i32 405, i32 433, i32 487> ; 2 uses
  %i.fk = bitcast <4 x i1> %i.fj to i4
  %.not152.12 = icmp eq i4 %i.fk, 0
  br i1 %.not152.12, label %vector.body.interim147.12, label %to_bits.exit.i72

vector.body.interim147.12:                        ; preds = %vector.body.interim147.11
  %i.fl = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 515, i32 549, i32 579, i32 605> ; 2 uses
  %i.fm = bitcast <4 x i1> %i.fl to i4
  %.not152.13 = icmp eq i4 %i.fm, 0
  br i1 %.not152.13, label %vector.body.interim147.13, label %to_bits.exit.i72

vector.body.interim147.13:                        ; preds = %vector.body.interim147.12
  %i.fn = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 634, i32 698, i32 744, i32 785> ; 2 uses
  %i.fo = bitcast <4 x i1> %i.fn to i4
  %.not152.14 = icmp eq i4 %i.fo, 0
  br i1 %.not152.14, label %vector.body.interim147.14, label %to_bits.exit.i72

vector.body.interim147.14:                        ; preds = %vector.body.interim147.13
  %i.fp = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 840, i32 1177, i32 1537, i32 1667> ; 2 uses
  %i.fq = bitcast <4 x i1> %i.fp to i4
  %.not152.15 = icmp eq i4 %i.fq, 0
  br i1 %.not152.15, label %vector.body.interim147.15, label %to_bits.exit.i72

vector.body.interim147.15:                        ; preds = %vector.body.interim147.14
  %i.fr = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 2057, i32 2169, i32 2393, i32 2986> ; 2 uses
  %i.fs = bitcast <4 x i1> %i.fr to i4
  %.not152.16 = icmp eq i4 %i.fs, 0
  br i1 %.not152.16, label %vector.body.interim147.16, label %to_bits.exit.i72

vector.body.interim147.16:                        ; preds = %vector.body.interim147.15
  %i.ft = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 3222, i32 3434, i32 3754, i32 3833> ; 2 uses
  %i.fu = bitcast <4 x i1> %i.ft to i4
  %.not152.17 = icmp eq i4 %i.fu, 0
  br i1 %.not152.17, label %vector.body.interim147.17, label %to_bits.exit.i72

vector.body.interim147.17:                        ; preds = %vector.body.interim147.16
  %i.fv = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 4105, i32 4281, i32 4697, i32 4953> ; 2 uses
  %i.fw = bitcast <4 x i1> %i.fv to i4
  %.not152.18 = icmp eq i4 %i.fw, 0
  br i1 %.not152.18, label %vector.body.interim147.18, label %to_bits.exit.i72

vector.body.interim147.18:                        ; preds = %vector.body.interim147.17
  %i.fx = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 5257, i32 5827, i32 6265, i32 7177> ; 2 uses
  %i.fy = bitcast <4 x i1> %i.fx to i4
  %.not152.19 = icmp eq i4 %i.fy, 0
  br i1 %.not152.19, label %vector.body.interim147.19, label %to_bits.exit.i72

vector.body.interim147.19:                        ; preds = %vector.body.interim147.18
  %i.fz = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 8441, i32 9097, i32 16393, i32 32781> ; 2 uses
  %i.ga = bitcast <4 x i1> %i.fz to i4
  %.not152.20 = icmp eq i4 %i.ga, 0
  br i1 %.not152.20, label %vector.body.interim147.20, label %to_bits.exit.i72

vector.body.interim147.20:                        ; preds = %vector.body.interim147.19
  %i.gb = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 50962, i32 63505, i32 65559, i32 101913> ; 2 uses
  %i.gc = bitcast <4 x i1> %i.gb to i4
  %.not152.21 = icmp eq i4 %i.gc, 0
  br i1 %.not152.21, label %vector.body.interim147.21, label %to_bits.exit.i72

vector.body.interim147.21:                        ; preds = %vector.body.interim147.20
  %i.gd = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 131089, i32 262145, i32 507977, i32 524297> ; 2 uses
  %i.ge = bitcast <4 x i1> %i.gd to i4
  %.not152.22 = icmp eq i4 %i.ge, 0
  br i1 %.not152.22, label %vector.body.interim147.22, label %to_bits.exit.i72

vector.body.interim147.22:                        ; preds = %vector.body.interim147.21
  %i.gf = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 1048585, i32 2097153, i32 4194305, i32 8388609> ; 2 uses
  %i.gg = bitcast <4 x i1> %i.gf to i4
  %.not152.23 = icmp eq i4 %i.gg, 0
  br i1 %.not152.23, label %vector.body.interim147.23, label %to_bits.exit.i72

vector.body.interim147.23:                        ; preds = %vector.body.interim147.22
  %i.gh = icmp ult <4 x i32> %broadcast.splat142.fr, <i32 16777217, i32 33554433, i32 67108865, i32 134217729> ; 2 uses
  %i.gi = bitcast <4 x i1> %i.gh to i4
  %.not152.24 = icmp eq i4 %i.gi, 0
  br i1 %.not152.24, label %allocate_aligned.exit77, label %to_bits.exit.i72

to_bits.exit.i72:                                 ; preds = %vector.body.interim147.23, %vector.body.interim147.22, %vector.body.interim147.21, %vector.body.interim147.20, %vector.body.interim147.19, %vector.body.interim147.18, %vector.body.interim147.17, %vector.body.interim147.16, %vector.body.interim147.15, %vector.body.interim147.14, %vector.body.interim147.13, %vector.body.interim147.12, %vector.body.interim147.11, %vector.body.interim147.10, %vector.body.interim147.9, %vector.body.interim147.8, %vector.body.interim147.7, %vector.body.interim147.6, %vector.body.interim147.5, %vector.body.interim147.4, %vector.body.interim147.3, %vector.body.interim147.2, %vector.body.interim147.1, %vector.body.interim147, %vector.ph140
  %index144.lcssa = phi i64 [ 0, %vector.ph140 ], [ 4, %vector.body.interim147 ], [ 8, %vector.body.interim147.1 ], [ 12, %vector.body.interim147.2 ], [ 16, %vector.body.interim147.3 ], [ 20, %vector.body.interim147.4 ], [ 24, %vector.body.interim147.5 ], [ 28, %vector.body.interim147.6 ], [ 32, %vector.body.interim147.7 ], [ 36, %vector.body.interim147.8 ], [ 40, %vector.body.interim147.9 ], [ 44, %vector.body.interim147.10 ], [ 48, %vector.body.interim147.11 ], [ 52, %vector.body.interim147.12 ], [ 56, %vector.body.interim147.13 ], [ 60, %vector.body.interim147.14 ], [ 64, %vector.body.interim147.15 ], [ 68, %vector.body.interim147.16 ], [ 72, %vector.body.interim147.17 ], [ 76, %vector.body.interim147.18 ], [ 80, %vector.body.interim147.19 ], [ 84, %vector.body.interim147.20 ], [ 88, %vector.body.interim147.21 ], [ 92, %vector.body.interim147.22 ], [ 96, %vector.body.interim147.23 ]
  %wide.load145.lcssa = phi <4 x i32> [ <i32 8, i32 11, i32 13, i32 16>, %vector.ph140 ], [ <i32 17, i32 19, i32 20, i32 21>, %vector.body.interim147 ], [ <i32 22, i32 23, i32 24, i32 25>, %vector.body.interim147.1 ], [ <i32 26, i32 27, i32 28, i32 29>, %vector.body.interim147.2 ], [ <i32 30, i32 31, i32 32, i32 33>, %vector.body.interim147.3 ], [ <i32 37, i32 40, i32 41, i32 48>, %vector.body.interim147.4 ], [ <i32 56, i32 72, i32 74, i32 75>, %vector.body.interim147.5 ], [ <i32 76, i32 78, i32 79, i32 80>, %vector.body.interim147.6 ], [ <i32 81, i32 101, i32 104, i32 109>, %vector.body.interim147.7 ], [ <i32 113, i32 116, i32 120, i32 128>, %vector.body.interim147.8 ], [ <i32 131, i32 143, i32 151, i32 152>, %vector.body.interim147.9 ], [ <i32 153, i32 196, i32 256, i32 360>, %vector.body.interim147.10 ], [ <i32 403, i32 404, i32 432, i32 486>, %vector.body.interim147.11 ], [ <i32 514, i32 548, i32 578, i32 604>, %vector.body.interim147.12 ], [ <i32 633, i32 697, i32 743, i32 784>, %vector.body.interim147.13 ], [ <i32 839, i32 1176, i32 1536, i32 1666>, %vector.body.interim147.14 ], [ <i32 2056, i32 2168, i32 2392, i32 2985>, %vector.body.interim147.15 ], [ <i32 3221, i32 3433, i32 3753, i32 3832>, %vector.body.interim147.16 ], [ <i32 4104, i32 4280, i32 4696, i32 4952>, %vector.body.interim147.17 ], [ <i32 5256, i32 5826, i32 6264, i32 7176>, %vector.body.interim147.18 ], [ <i32 8440, i32 9096, i32 16392, i32 32780>, %vector.body.interim147.19 ], [ <i32 50961, i32 63504, i32 65558, i32 101912>, %vector.body.interim147.20 ], [ <i32 131088, i32 262144, i32 507976, i32 524296>, %vector.body.interim147.21 ], [ <i32 1048584, i32 2097152, i32 4194304, i32 8388608>, %vector.body.interim147.22 ], [ <i32 16777216, i32 33554432, i32 67108864, i32 134217728>, %vector.body.interim147.23 ]
  %.lcssa = phi <4 x i1> [ %i.el, %vector.ph140 ], [ %i.en, %vector.body.interim147 ], [ %i.ep, %vector.body.interim147.1 ], [ %i.er, %vector.body.interim147.2 ], [ %i.et, %vector.body.interim147.3 ], [ %i.ev, %vector.body.interim147.4 ], [ %i.ex, %vector.body.interim147.5 ], [ %i.ez, %vector.body.interim147.6 ], [ %i.fb, %vector.body.interim147.7 ], [ %i.fd, %vector.body.interim147.8 ], [ %i.ff, %vector.body.interim147.9 ], [ %i.fh, %vector.body.interim147.10 ], [ %i.fj, %vector.body.interim147.11 ], [ %i.fl, %vector.body.interim147.12 ], [ %i.fn, %vector.body.interim147.13 ], [ %i.fp, %vector.body.interim147.14 ], [ %i.fr, %vector.body.interim147.15 ], [ %i.ft, %vector.body.interim147.16 ], [ %i.fv, %vector.body.interim147.17 ], [ %i.fx, %vector.body.interim147.18 ], [ %i.fz, %vector.body.interim147.19 ], [ %i.gb, %vector.body.interim147.20 ], [ %i.gd, %vector.body.interim147.21 ], [ %i.gf, %vector.body.interim147.22 ], [ %i.gh, %vector.body.interim147.23 ]
  %first.active.lane150 = tail call i64 @llvm.experimental.cttz.elts.i64.v4i1(<4 x i1> %.lcssa, i1 false) ; 2 uses
  %i.gj = extractelement <4 x i32> %wide.load145.lcssa, i64 %first.active.lane150
  %i.gk = add i64 %index144.lcssa, %first.active.lane150
  %i.gl = trunc i64 %i.gk to i8
  %i.gm = zext nneg i32 %i.gj to i64
  br label %allocate_aligned.exit77

allocate_aligned.exit77:                          ; preds = %vector.body.interim147.23, %to_bits.exit.i72
  %.06.i2.i73 = phi i8 [ %i.gl, %to_bits.exit.i72 ], [ 100, %vector.body.interim147.23 ]
  %.0.i.i74 = phi i64 [ %i.gm, %to_bits.exit.i72 ], [ 0, %vector.body.interim147.23 ]
  %i.gn = and i64 %i.eh, 4294967295
  %i.go = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.gn ; 3 uses
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -2
  %i.gq = trunc i64 %i.eh to i32
  %i.gr = getelementptr inbounds i8, ptr %i.go, i64 -1
  store i8 %.06.i2.i73, ptr %i.gr, align 1, !tbaa !8
  %i.gs = sub i32 %i.gq, %i.ec
  %i.gt = trunc i32 %i.gs to i8
  store i8 %i.gt, ptr %i.gp, align 1, !tbaa !8
  %i.gu = load i64, ptr %i.dy, align 8, !tbaa !15
  %i.gv = add i64 %i.gu, %.0.i.i74
  store i64 %i.gv, ptr %i.dy, align 8, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %allocate_aligned.exit77, %bb.l, %allocate_aligned.exit, %bb.i, %to_bits.exit.thread
  %.0 = phi ptr [ null, %to_bits.exit.thread ], [ %i.aj, %bb.i ], [ %i.dd, %allocate_aligned.exit ], [ null, %bb.l ], [ %i.go, %allocate_aligned.exit77 ]
  ret ptr %.0
}

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @mpool_free(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -2 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8
  %i.d = load i8, ptr %i.a, align 1, !tbaa !8
  %i.e = zext i8 %i.d to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = zext i8 %i.c to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  store ptr %i.k, ptr %i.g, align 1, !tbaa !8
  store ptr %i.g, ptr %i.j, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @mpool_calloc(ptr nofree noundef captures(address, ret: address, provenance) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = mul i64 %2, %1                           ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @mpool_malloc(ptr noundef %0, i64 noundef %i.a) ; 3 uses
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 0, i64 %i.a, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.b, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @mpool_realloc(ptr nofree noundef captures(address, ret: address, provenance) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @mpool_malloc(ptr noundef %0, i64 noundef %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %1, i64 -2 ; 3 uses
  %.not41 = icmp eq i64 %2, 0
  br i1 %.not41, label %from_bits.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds i8, ptr %1, i64 -1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !8     ; 3 uses
  %3 = zext i8 %i.d to i64                        ; 2 uses
  %i.e = icmp ugt i8 %i.d, 99
  br i1 %i.e, label %from_bits.exit.thread, label %from_bits.exit

from_bits.exit.thread:                            ; preds = %bb.d, %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.11, i64 noundef %2) #11
  br label %bb.g

from_bits.exit:                                   ; preds = %bb.d
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @fragsz, i64 %3
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18
  %i.h = zext i32 %i.g to i64
  %i.i = load i8, ptr %i.b, align 1, !tbaa !8
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %.neg51 = add nsw i64 %i.h, -2
  %i.k = sub nsw i64 %.neg51, %i.j                ; 2 uses
  %.not43 = icmp ult i64 %i.k, %2
  br i1 %.not43, label %bb.f, label %bb.e

bb.e:                                             ; preds = %from_bits.exit
  %.not44 = icmp eq i8 %i.d, 0
  br i1 %.not44, label %bb.g, label %from_bits.exit48

from_bits.exit48:                                 ; preds = %bb.e
  %4 = add nuw nsw i64 %3, 4294967295
  %5 = and i64 %4, 4294967295
  %6 = getelementptr inbounds nuw [4 x i8], ptr @fragsz, i64 %5
  %i.l = load i32, ptr %6, align 4, !tbaa !18
  %i.m = zext i32 %i.l to i64
  %reass.sub = sub nsw i64 %i.m, %i.j
  %i.n = add nsw i64 %reass.sub, -2
  %i.o = icmp ult i64 %i.n, %2
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %from_bits.exit48, %from_bits.exit
  %i.p = tail call ptr @mpool_malloc(ptr noundef %0, i64 noundef %2) ; 3 uses
  %.not45 = icmp eq ptr %i.p, null
  br i1 %.not45, label %bb.g, label %mpool_free.exit

mpool_free.exit:                                  ; preds = %bb.f
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %1, i64 %i.q, i1 false)
  %i.r = load i8, ptr %i.c, align 1, !tbaa !8
  %i.s = load i8, ptr %i.b, align 1, !tbaa !8
  %i.t = zext i8 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.b, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = zext i8 %i.r to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  store ptr %i.z, ptr %i.v, align 1, !tbaa !8
  store ptr %i.v, ptr %i.y, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %from_bits.exit48, %bb.f, %mpool_free.exit, %from_bits.exit.thread, %bb.b
  %.0 = phi ptr [ null, %bb.f ], [ %i.p, %mpool_free.exit ], [ %i.a, %bb.b ], [ null, %from_bits.exit.thread ], [ %1, %from_bits.exit48 ], [ %1, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @mpool_realloc2(ptr nofree noundef captures(address, ret: address, provenance) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %mpool_realloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -2 ; 5 uses
  %.not41.i = icmp eq i64 %2, 0
  br i1 %.not41.i, label %from_bits.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds i8, ptr %1, i64 -1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8     ; 3 uses
  %3 = zext i8 %i.c to i64                        ; 2 uses
  %i.d = icmp ugt i8 %i.c, 99
  br i1 %i.d, label %from_bits.exit.thread.i, label %from_bits.exit.i

from_bits.exit.thread.i:                          ; preds = %bb.c, %bb.b
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.11, i64 noundef %2) #11
  br label %bb.f

from_bits.exit.i:                                 ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @fragsz, i64 %3
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18
  %i.g = zext i32 %i.f to i64
  %i.h = load i8, ptr %i.a, align 1, !tbaa !8
  %i.i = zext i8 %i.h to i64                      ; 2 uses
  %.neg51.i = add nsw i64 %i.g, -2
  %i.j = sub nsw i64 %.neg51.i, %i.i              ; 2 uses
  %.not43.i = icmp ult i64 %i.j, %2
  br i1 %.not43.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %from_bits.exit.i
  %.not44.i = icmp eq i8 %i.c, 0
  br i1 %.not44.i, label %mpool_free.exit, label %from_bits.exit48.i

from_bits.exit48.i:                               ; preds = %bb.d
  %4 = add nuw nsw i64 %3, 4294967295
  %5 = and i64 %4, 4294967295
  %6 = getelementptr inbounds nuw [4 x i8], ptr @fragsz, i64 %5
  %i.k = load i32, ptr %6, align 4, !tbaa !18
  %i.l = zext i32 %i.k to i64
  %reass.sub = sub nsw i64 %i.l, %i.i
  %i.m = add nsw i64 %reass.sub, -2
  %i.n = icmp ult i64 %i.m, %2
  br i1 %i.n, label %mpool_free.exit, label %bb.e

bb.e:                                             ; preds = %from_bits.exit48.i, %from_bits.exit.i
  %i.o = tail call ptr @mpool_malloc(ptr noundef %0, i64 noundef %2) ; 3 uses
  %.not45.i = icmp eq ptr %i.o, null
  br i1 %.not45.i, label %bb.f, label %mpool_free.exit.i

mpool_free.exit.i:                                ; preds = %bb.e
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %1, i64 %i.p, i1 false)
  %i.q = load i8, ptr %i.b, align 1, !tbaa !8
  %i.r = load i8, ptr %i.a, align 1, !tbaa !8
  %i.s = zext i8 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = zext i8 %i.q to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  store ptr %i.y, ptr %i.u, align 1, !tbaa !8
  store ptr %i.u, ptr %i.x, align 8, !tbaa !20
  br label %mpool_free.exit

mpool_realloc.exit:                               ; preds = %bb.a
  %i.z = tail call ptr @mpool_malloc(ptr noundef %0, i64 noundef %2)
  br label %mpool_free.exit

bb.f:                                             ; preds = %from_bits.exit.thread.i, %bb.e
  %i.aa = getelementptr inbounds i8, ptr %1, i64 -1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = load i8, ptr %i.a, align 1, !tbaa !8
  %i.ad = zext i8 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = zext i8 %i.ab to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  store ptr %i.aj, ptr %i.af, align 1, !tbaa !8
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !20
  br label %mpool_free.exit

mpool_free.exit:                                  ; preds = %mpool_realloc.exit, %bb.d, %from_bits.exit48.i, %mpool_free.exit.i, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ %i.z, %mpool_realloc.exit ], [ %i.o, %mpool_free.exit.i ], [ %1, %bb.d ], [ %1, %from_bits.exit48.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @cli_mpool_hex2str(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12 ; 4 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.13, ptr noundef nonnull %1, i64 noundef %i.a) #11
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = lshr exact i64 %i.a, 1                   ; 2 uses
  %i.d = add nuw i64 %i.c, 1                      ; 2 uses
  %i.e = tail call ptr @mpool_malloc(ptr noundef %0, i64 noundef %i.d) ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.14, i64 noundef %i.d) #11
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i32 @cli_hex2str_to(ptr noundef nonnull %1, ptr noundef nonnull %i.e, i64 noundef %i.a) #11
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %mpool_free.exit, label %bb.f

mpool_free.exit:                                  ; preds = %bb.e
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -2 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %i.l = load i8, ptr %i.i, align 1, !tbaa !8
  %i.m = zext i8 %i.l to i64
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.i, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = zext i8 %i.k to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  store ptr %i.s, ptr %i.o, align 1, !tbaa !8
  store ptr %i.o, ptr %i.r, align 8, !tbaa !20
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  store i8 0, ptr %i.t, align 1, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %mpool_free.exit, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %mpool_free.exit ], [ %i.e, %bb.f ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @cli_hex2str_to(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @cli_mpool_strdup(ptr nofree noundef captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.15) #11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = tail call ptr @mpool_malloc(ptr noundef %0, i64 noundef %i.c) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.16, i64 noundef %i.c) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.d, %bb.e ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @cli_mpool_strndup(ptr nofree noundef captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.17) #11
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @strnlen(ptr noundef nonnull %1, i64 noundef %2) #12 ; 3 uses
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = tail call ptr @mpool_malloc(ptr noundef %0, i64 noundef %i.c) ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.18, i64 noundef %i.c) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  store i8 0, ptr %i.e, align 1, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.d, %bb.f ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define ptr @cli_mpool_virname(ptr nofree noundef captures(address, ret: address, provenance) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %cli_mpool_strdup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 32) #12 ; 2 uses
  %.not18 = icmp eq ptr %i.a, null
  br i1 %.not18, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.19) #12 ; 2 uses
  %.not19 = icmp eq ptr %i.b, null
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 1, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.c = load i8, ptr %1, align 1, !tbaa !8
end_hunk_0
