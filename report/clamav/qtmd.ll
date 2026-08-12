inline.NumInlined: 13
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@extra_bits = internal unnamed_addr constant [42 x i8] c"\00\00\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12\13\13", align 16
@position_base = internal unnamed_addr constant [42 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384, i32 24576, i32 32768, i32 49152, i32 65536, i32 98304, i32 131072, i32 196608, i32 262144, i32 393216, i32 524288, i32 786432, i32 1048576, i32 1572864], align 16
@length_extra = internal unnamed_addr constant [27 x i8] c"\00\00\00\00\00\00\01\01\01\01\02\02\02\02\03\03\03\03\04\04\04\04\05\05\05\05\00", align 16
@length_base = internal unnamed_addr constant [27 x i8] c"\00\01\02\03\04\05\06\08\0A\0C\0E\12\16\1A\1E&.6>N^n~\9E\BE\DE\FE", align 16

; Function Attrs: nounwind uwtable
define ptr @qtmd_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw i32 1, %3                        ; 2 uses
  %.not = icmp eq ptr %0, null
  %i.b = add i32 %3, -22
  %or.cond = icmp ult i32 %i.b, -12
  %or.cond81 = or i1 %.not, %or.cond
  br i1 %or.cond81, label %qtmd_init_model.exit115, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %4, 1
  %i.d = and i32 %i.c, -2                         ; 2 uses
  %i.e = icmp slt i32 %4, 1
  br i1 %i.e, label %qtmd_init_model.exit115, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = tail call ptr %i.g(ptr noundef nonnull %0, i64 noundef 1864) #4 ; 137 uses
  %.not77 = icmp eq ptr %i.h, null
  br i1 %.not77, label %qtmd_init_model.exit115, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.j = zext i32 %i.a to i64
  %i.k = tail call ptr %i.i(ptr noundef nonnull %0, i64 noundef %i.j) #4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !11
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.n = zext nneg i32 %i.d to i64
  %i.o = tail call ptr %i.m(ptr noundef nonnull %0, i64 noundef %i.n) #4 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !19
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !11   ; 4 uses
  %.not78 = icmp eq ptr %i.q, null
  %.not79 = icmp eq ptr %i.o, null
  %or.cond80 = select i1 %.not78, i1 true, i1 %.not79
  br i1 %or.cond80, label %bb.e, label %vector.ph

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  tail call void %i.s(ptr noundef %i.q) #4
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !19
  tail call void %i.t(ptr noundef %i.u) #4
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !20
  tail call void %i.v(ptr noundef nonnull %i.h) #4
  br label %qtmd_init_model.exit115

vector.ph:                                        ; preds = %bb.d
  store ptr %0, ptr %i.h, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %1, ptr %i.w, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %2, ptr %i.x, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  store i32 %i.d, ptr %i.y, align 4, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 %i.a, ptr %i.z, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 0, ptr %i.aa, align 4, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 32768, ptr %i.ab, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 50
  store i8 0, ptr %i.ac, align 2, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 0, ptr %i.ad, align 4, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr %i.o, ptr %i.ae, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %i.o, ptr %i.af, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store ptr %i.q, ptr %i.ag, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.q, ptr %i.ah, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 105
  store i8 0, ptr %i.ai, align 1, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i8 0, ptr %i.aj, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i32 0, ptr %i.ak, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 2 uses
  store i32 4, ptr %i.al, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  store i32 64, ptr %i.an, align 4, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  store <8 x i16> <i16 0, i16 64, i16 1, i16 63, i16 2, i16 62, i16 3, i16 61>, ptr %i.am, align 8, !tbaa !40
  store <8 x i16> <i16 4, i16 60, i16 5, i16 59, i16 6, i16 58, i16 7, i16 57>, ptr %i.ap, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  store <8 x i16> <i16 8, i16 56, i16 9, i16 55, i16 10, i16 54, i16 11, i16 53>, ptr %i.aq, align 8, !tbaa !40
  store <8 x i16> <i16 12, i16 52, i16 13, i16 51, i16 14, i16 50, i16 15, i16 49>, ptr %i.ar, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  store <8 x i16> <i16 16, i16 48, i16 17, i16 47, i16 18, i16 46, i16 19, i16 45>, ptr %i.as, align 8, !tbaa !40
  store <8 x i16> <i16 20, i16 44, i16 21, i16 43, i16 22, i16 42, i16 23, i16 41>, ptr %i.at, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  store <8 x i16> <i16 24, i16 40, i16 25, i16 39, i16 26, i16 38, i16 27, i16 37>, ptr %i.au, align 8, !tbaa !40
  store <8 x i16> <i16 28, i16 36, i16 29, i16 35, i16 30, i16 34, i16 31, i16 33>, ptr %i.av, align 8, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  store <8 x i16> <i16 32, i16 32, i16 33, i16 31, i16 34, i16 30, i16 35, i16 29>, ptr %i.aw, align 8, !tbaa !40
  store <8 x i16> <i16 36, i16 28, i16 37, i16 27, i16 38, i16 26, i16 39, i16 25>, ptr %i.ax, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  store <8 x i16> <i16 40, i16 24, i16 41, i16 23, i16 42, i16 22, i16 43, i16 21>, ptr %i.ay, align 8, !tbaa !40
  store <8 x i16> <i16 44, i16 20, i16 45, i16 19, i16 46, i16 18, i16 47, i16 17>, ptr %i.az, align 8, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  store <8 x i16> <i16 48, i16 16, i16 49, i16 15, i16 50, i16 14, i16 51, i16 13>, ptr %i.ba, align 8, !tbaa !40
  store <8 x i16> <i16 52, i16 12, i16 53, i16 11, i16 54, i16 10, i16 55, i16 9>, ptr %i.bb, align 8, !tbaa !40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  store <8 x i16> <i16 56, i16 8, i16 57, i16 7, i16 58, i16 6, i16 59, i16 5>, ptr %i.bc, align 8, !tbaa !40
  store <8 x i16> <i16 60, i16 4, i16 61, i16 3, i16 62, i16 2, i16 63, i16 1>, ptr %i.bd, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  store i16 64, ptr %i.be, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 514
  store i16 0, ptr %i.bf, align 2, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 516 ; 2 uses
  store i32 4, ptr %i.bg, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  store i32 64, ptr %i.bi, align 4, !tbaa !38
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 532
  store <8 x i16> <i16 64, i16 64, i16 65, i16 63, i16 66, i16 62, i16 67, i16 61>, ptr %i.bh, align 4, !tbaa !40
  store <8 x i16> <i16 68, i16 60, i16 69, i16 59, i16 70, i16 58, i16 71, i16 57>, ptr %i.bk, align 4, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 548
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 564
  store <8 x i16> <i16 72, i16 56, i16 73, i16 55, i16 74, i16 54, i16 75, i16 53>, ptr %i.bl, align 4, !tbaa !40
  store <8 x i16> <i16 76, i16 52, i16 77, i16 51, i16 78, i16 50, i16 79, i16 49>, ptr %i.bm, align 4, !tbaa !40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 580
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 596
  store <8 x i16> <i16 80, i16 48, i16 81, i16 47, i16 82, i16 46, i16 83, i16 45>, ptr %i.bn, align 4, !tbaa !40
  store <8 x i16> <i16 84, i16 44, i16 85, i16 43, i16 86, i16 42, i16 87, i16 41>, ptr %i.bo, align 4, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 612
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 628
  store <8 x i16> <i16 88, i16 40, i16 89, i16 39, i16 90, i16 38, i16 91, i16 37>, ptr %i.bp, align 4, !tbaa !40
  store <8 x i16> <i16 92, i16 36, i16 93, i16 35, i16 94, i16 34, i16 95, i16 33>, ptr %i.bq, align 4, !tbaa !40
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 644
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 660
  store <8 x i16> <i16 96, i16 32, i16 97, i16 31, i16 98, i16 30, i16 99, i16 29>, ptr %i.br, align 4, !tbaa !40
  store <8 x i16> <i16 100, i16 28, i16 101, i16 27, i16 102, i16 26, i16 103, i16 25>, ptr %i.bs, align 4, !tbaa !40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 676
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 692
  store <8 x i16> <i16 104, i16 24, i16 105, i16 23, i16 106, i16 22, i16 107, i16 21>, ptr %i.bt, align 4, !tbaa !40
  store <8 x i16> <i16 108, i16 20, i16 109, i16 19, i16 110, i16 18, i16 111, i16 17>, ptr %i.bu, align 4, !tbaa !40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 708
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 724
  store <8 x i16> <i16 112, i16 16, i16 113, i16 15, i16 114, i16 14, i16 115, i16 13>, ptr %i.bv, align 4, !tbaa !40
  store <8 x i16> <i16 116, i16 12, i16 117, i16 11, i16 118, i16 10, i16 119, i16 9>, ptr %i.bw, align 4, !tbaa !40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 740
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 756
  store <8 x i16> <i16 120, i16 8, i16 121, i16 7, i16 122, i16 6, i16 123, i16 5>, ptr %i.bx, align 4, !tbaa !40
  store <8 x i16> <i16 124, i16 4, i16 125, i16 3, i16 126, i16 2, i16 127, i16 1>, ptr %i.by, align 4, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 772
  store i16 128, ptr %i.bz, align 4, !tbaa !41
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 774
  store i16 0, ptr %i.ca, align 2, !tbaa !43
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 776 ; 2 uses
  store i32 4, ptr %i.cb, align 8, !tbaa !37
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 148
  store i32 64, ptr %i.cd, align 4, !tbaa !38
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !39
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 792
  store <8 x i16> <i16 128, i16 64, i16 129, i16 63, i16 130, i16 62, i16 131, i16 61>, ptr %i.cc, align 8, !tbaa !40
  store <8 x i16> <i16 132, i16 60, i16 133, i16 59, i16 134, i16 58, i16 135, i16 57>, ptr %i.cf, align 8, !tbaa !40
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 808
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 824
  store <8 x i16> <i16 136, i16 56, i16 137, i16 55, i16 138, i16 54, i16 139, i16 53>, ptr %i.cg, align 8, !tbaa !40
  store <8 x i16> <i16 140, i16 52, i16 141, i16 51, i16 142, i16 50, i16 143, i16 49>, ptr %i.ch, align 8, !tbaa !40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 840
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 856
  store <8 x i16> <i16 144, i16 48, i16 145, i16 47, i16 146, i16 46, i16 147, i16 45>, ptr %i.ci, align 8, !tbaa !40
  store <8 x i16> <i16 148, i16 44, i16 149, i16 43, i16 150, i16 42, i16 151, i16 41>, ptr %i.cj, align 8, !tbaa !40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 872
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 888
  store <8 x i16> <i16 152, i16 40, i16 153, i16 39, i16 154, i16 38, i16 155, i16 37>, ptr %i.ck, align 8, !tbaa !40
  store <8 x i16> <i16 156, i16 36, i16 157, i16 35, i16 158, i16 34, i16 159, i16 33>, ptr %i.cl, align 8, !tbaa !40
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 904
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 920
  store <8 x i16> <i16 160, i16 32, i16 161, i16 31, i16 162, i16 30, i16 163, i16 29>, ptr %i.cm, align 8, !tbaa !40
  store <8 x i16> <i16 164, i16 28, i16 165, i16 27, i16 166, i16 26, i16 167, i16 25>, ptr %i.cn, align 8, !tbaa !40
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 936
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 952
  store <8 x i16> <i16 168, i16 24, i16 169, i16 23, i16 170, i16 22, i16 171, i16 21>, ptr %i.co, align 8, !tbaa !40
  store <8 x i16> <i16 172, i16 20, i16 173, i16 19, i16 174, i16 18, i16 175, i16 17>, ptr %i.cp, align 8, !tbaa !40
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 968
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 984
  store <8 x i16> <i16 176, i16 16, i16 177, i16 15, i16 178, i16 14, i16 179, i16 13>, ptr %i.cq, align 8, !tbaa !40
  store <8 x i16> <i16 180, i16 12, i16 181, i16 11, i16 182, i16 10, i16 183, i16 9>, ptr %i.cr, align 8, !tbaa !40
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 1000
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 1016
  store <8 x i16> <i16 184, i16 8, i16 185, i16 7, i16 186, i16 6, i16 187, i16 5>, ptr %i.cs, align 8, !tbaa !40
  store <8 x i16> <i16 188, i16 4, i16 189, i16 3, i16 190, i16 2, i16 191, i16 1>, ptr %i.ct, align 8, !tbaa !40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 1032
  store i16 192, ptr %i.cu, align 8, !tbaa !41
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 1034
  store i16 0, ptr %i.cv, align 2, !tbaa !43
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 1036 ; 2 uses
  store i32 4, ptr %i.cw, align 8, !tbaa !37
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 164
  store i32 64, ptr %i.cy, align 4, !tbaa !38
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !39
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 1052
  store <8 x i16> <i16 192, i16 64, i16 193, i16 63, i16 194, i16 62, i16 195, i16 61>, ptr %i.cx, align 4, !tbaa !40
  store <8 x i16> <i16 196, i16 60, i16 197, i16 59, i16 198, i16 58, i16 199, i16 57>, ptr %i.da, align 4, !tbaa !40
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 1068
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 1084
  store <8 x i16> <i16 200, i16 56, i16 201, i16 55, i16 202, i16 54, i16 203, i16 53>, ptr %i.db, align 4, !tbaa !40
  store <8 x i16> <i16 204, i16 52, i16 205, i16 51, i16 206, i16 50, i16 207, i16 49>, ptr %i.dc, align 4, !tbaa !40
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 1100
  %i.de = getelementptr inbounds nuw i8, ptr %i.h, i64 1116
  store <8 x i16> <i16 208, i16 48, i16 209, i16 47, i16 210, i16 46, i16 211, i16 45>, ptr %i.dd, align 4, !tbaa !40
end_hunk_0
