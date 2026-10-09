Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/qtmd?download=true
inline.NumInlined: 13
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 17
begin_hunk_0_@qtmd_init:bb.a
  store i32 32768, ptr %i.ab, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 50
  store i8 0, ptr %i.ac, align 2, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 0, ptr %i.ad, align 4, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr %i.o, ptr %i.ae, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %i.o, ptr %i.af, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store ptr %i.q, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.q, ptr %i.ah, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 105
  store i8 0, ptr %i.ai, align 1, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i8 0, ptr %i.aj, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i32 0, ptr %i.ak, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 2 uses
  store i32 4, ptr %i.al, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  store i32 64, ptr %i.an, align 4, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  store <8 x i16> <i16 0, i16 64, i16 1, i16 63, i16 2, i16 62, i16 3, i16 61>, ptr %i.am, align 8, !tbaa !39
  store <8 x i16> <i16 4, i16 60, i16 5, i16 59, i16 6, i16 58, i16 7, i16 57>, ptr %i.ap, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  store <8 x i16> <i16 8, i16 56, i16 9, i16 55, i16 10, i16 54, i16 11, i16 53>, ptr %i.aq, align 8, !tbaa !39
  store <8 x i16> <i16 12, i16 52, i16 13, i16 51, i16 14, i16 50, i16 15, i16 49>, ptr %i.ar, align 8, !tbaa !39
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  store <8 x i16> <i16 16, i16 48, i16 17, i16 47, i16 18, i16 46, i16 19, i16 45>, ptr %i.as, align 8, !tbaa !39
  store <8 x i16> <i16 20, i16 44, i16 21, i16 43, i16 22, i16 42, i16 23, i16 41>, ptr %i.at, align 8, !tbaa !39
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  store <8 x i16> <i16 24, i16 40, i16 25, i16 39, i16 26, i16 38, i16 27, i16 37>, ptr %i.au, align 8, !tbaa !39
  store <8 x i16> <i16 28, i16 36, i16 29, i16 35, i16 30, i16 34, i16 31, i16 33>, ptr %i.av, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  store <8 x i16> <i16 32, i16 32, i16 33, i16 31, i16 34, i16 30, i16 35, i16 29>, ptr %i.aw, align 8, !tbaa !39
  store <8 x i16> <i16 36, i16 28, i16 37, i16 27, i16 38, i16 26, i16 39, i16 25>, ptr %i.ax, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  store <8 x i16> <i16 40, i16 24, i16 41, i16 23, i16 42, i16 22, i16 43, i16 21>, ptr %i.ay, align 8, !tbaa !39
  store <8 x i16> <i16 44, i16 20, i16 45, i16 19, i16 46, i16 18, i16 47, i16 17>, ptr %i.az, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  store <8 x i16> <i16 48, i16 16, i16 49, i16 15, i16 50, i16 14, i16 51, i16 13>, ptr %i.ba, align 8, !tbaa !39
  store <8 x i16> <i16 52, i16 12, i16 53, i16 11, i16 54, i16 10, i16 55, i16 9>, ptr %i.bb, align 8, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  store <8 x i16> <i16 56, i16 8, i16 57, i16 7, i16 58, i16 6, i16 59, i16 5>, ptr %i.bc, align 8, !tbaa !39
  store <8 x i16> <i16 60, i16 4, i16 61, i16 3, i16 62, i16 2, i16 63, i16 1>, ptr %i.bd, align 8, !tbaa !39
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  store i16 64, ptr %i.be, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 514
  store i16 0, ptr %i.bf, align 2, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 516 ; 2 uses
  store i32 4, ptr %i.bg, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  store i32 64, ptr %i.bi, align 4, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 532
  store <8 x i16> <i16 64, i16 64, i16 65, i16 63, i16 66, i16 62, i16 67, i16 61>, ptr %i.bh, align 4, !tbaa !39
  store <8 x i16> <i16 68, i16 60, i16 69, i16 59, i16 70, i16 58, i16 71, i16 57>, ptr %i.bk, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 548
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 564
  store <8 x i16> <i16 72, i16 56, i16 73, i16 55, i16 74, i16 54, i16 75, i16 53>, ptr %i.bl, align 4, !tbaa !39
  store <8 x i16> <i16 76, i16 52, i16 77, i16 51, i16 78, i16 50, i16 79, i16 49>, ptr %i.bm, align 4, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 580
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 596
  store <8 x i16> <i16 80, i16 48, i16 81, i16 47, i16 82, i16 46, i16 83, i16 45>, ptr %i.bn, align 4, !tbaa !39
  store <8 x i16> <i16 84, i16 44, i16 85, i16 43, i16 86, i16 42, i16 87, i16 41>, ptr %i.bo, align 4, !tbaa !39
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 612
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 628
  store <8 x i16> <i16 88, i16 40, i16 89, i16 39, i16 90, i16 38, i16 91, i16 37>, ptr %i.bp, align 4, !tbaa !39
  store <8 x i16> <i16 92, i16 36, i16 93, i16 35, i16 94, i16 34, i16 95, i16 33>, ptr %i.bq, align 4, !tbaa !39
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 644
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 660
  store <8 x i16> <i16 96, i16 32, i16 97, i16 31, i16 98, i16 30, i16 99, i16 29>, ptr %i.br, align 4, !tbaa !39
  store <8 x i16> <i16 100, i16 28, i16 101, i16 27, i16 102, i16 26, i16 103, i16 25>, ptr %i.bs, align 4, !tbaa !39
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 676
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 692
  store <8 x i16> <i16 104, i16 24, i16 105, i16 23, i16 106, i16 22, i16 107, i16 21>, ptr %i.bt, align 4, !tbaa !39
  store <8 x i16> <i16 108, i16 20, i16 109, i16 19, i16 110, i16 18, i16 111, i16 17>, ptr %i.bu, align 4, !tbaa !39
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 708
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 724
  store <8 x i16> <i16 112, i16 16, i16 113, i16 15, i16 114, i16 14, i16 115, i16 13>, ptr %i.bv, align 4, !tbaa !39
  store <8 x i16> <i16 116, i16 12, i16 117, i16 11, i16 118, i16 10, i16 119, i16 9>, ptr %i.bw, align 4, !tbaa !39
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 740
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 756
  store <8 x i16> <i16 120, i16 8, i16 121, i16 7, i16 122, i16 6, i16 123, i16 5>, ptr %i.bx, align 4, !tbaa !39
  store <8 x i16> <i16 124, i16 4, i16 125, i16 3, i16 126, i16 2, i16 127, i16 1>, ptr %i.by, align 4, !tbaa !39
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 772
  store i16 128, ptr %i.bz, align 4, !tbaa !41
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 774
  store i16 0, ptr %i.ca, align 2, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 776 ; 2 uses
  store i32 4, ptr %i.cb, align 8, !tbaa !36
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 148
  store i32 64, ptr %i.cd, align 4, !tbaa !37
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !38
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 792
  store <8 x i16> <i16 128, i16 64, i16 129, i16 63, i16 130, i16 62, i16 131, i16 61>, ptr %i.cc, align 8, !tbaa !39
  store <8 x i16> <i16 132, i16 60, i16 133, i16 59, i16 134, i16 58, i16 135, i16 57>, ptr %i.cf, align 8, !tbaa !39
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 808
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 824
  store <8 x i16> <i16 136, i16 56, i16 137, i16 55, i16 138, i16 54, i16 139, i16 53>, ptr %i.cg, align 8, !tbaa !39
  store <8 x i16> <i16 140, i16 52, i16 141, i16 51, i16 142, i16 50, i16 143, i16 49>, ptr %i.ch, align 8, !tbaa !39
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 840
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 856
  store <8 x i16> <i16 144, i16 48, i16 145, i16 47, i16 146, i16 46, i16 147, i16 45>, ptr %i.ci, align 8, !tbaa !39
  store <8 x i16> <i16 148, i16 44, i16 149, i16 43, i16 150, i16 42, i16 151, i16 41>, ptr %i.cj, align 8, !tbaa !39
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 872
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 888
  store <8 x i16> <i16 152, i16 40, i16 153, i16 39, i16 154, i16 38, i16 155, i16 37>, ptr %i.ck, align 8, !tbaa !39
  store <8 x i16> <i16 156, i16 36, i16 157, i16 35, i16 158, i16 34, i16 159, i16 33>, ptr %i.cl, align 8, !tbaa !39
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 904
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 920
  store <8 x i16> <i16 160, i16 32, i16 161, i16 31, i16 162, i16 30, i16 163, i16 29>, ptr %i.cm, align 8, !tbaa !39
  store <8 x i16> <i16 164, i16 28, i16 165, i16 27, i16 166, i16 26, i16 167, i16 25>, ptr %i.cn, align 8, !tbaa !39
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 936
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 952
  store <8 x i16> <i16 168, i16 24, i16 169, i16 23, i16 170, i16 22, i16 171, i16 21>, ptr %i.co, align 8, !tbaa !39
  store <8 x i16> <i16 172, i16 20, i16 173, i16 19, i16 174, i16 18, i16 175, i16 17>, ptr %i.cp, align 8, !tbaa !39
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 968
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 984
  store <8 x i16> <i16 176, i16 16, i16 177, i16 15, i16 178, i16 14, i16 179, i16 13>, ptr %i.cq, align 8, !tbaa !39
  store <8 x i16> <i16 180, i16 12, i16 181, i16 11, i16 182, i16 10, i16 183, i16 9>, ptr %i.cr, align 8, !tbaa !39
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 1000
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 1016
  store <8 x i16> <i16 184, i16 8, i16 185, i16 7, i16 186, i16 6, i16 187, i16 5>, ptr %i.cs, align 8, !tbaa !39
  store <8 x i16> <i16 188, i16 4, i16 189, i16 3, i16 190, i16 2, i16 191, i16 1>, ptr %i.ct, align 8, !tbaa !39
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 1032
  store i16 192, ptr %i.cu, align 8, !tbaa !41
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 1034
  store i16 0, ptr %i.cv, align 2, !tbaa !42
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 1036 ; 2 uses
  store i32 4, ptr %i.cw, align 8, !tbaa !36
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 164
  store i32 64, ptr %i.cy, align 4, !tbaa !37
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !38
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 1052
  store <8 x i16> <i16 192, i16 64, i16 193, i16 63, i16 194, i16 62, i16 195, i16 61>, ptr %i.cx, align 4, !tbaa !39
  store <8 x i16> <i16 196, i16 60, i16 197, i16 59, i16 198, i16 58, i16 199, i16 57>, ptr %i.da, align 4, !tbaa !39
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 1068
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 1084
  store <8 x i16> <i16 200, i16 56, i16 201, i16 55, i16 202, i16 54, i16 203, i16 53>, ptr %i.db, align 4, !tbaa !39
  store <8 x i16> <i16 204, i16 52, i16 205, i16 51, i16 206, i16 50, i16 207, i16 49>, ptr %i.dc, align 4, !tbaa !39
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 1100
  %i.de = getelementptr inbounds nuw i8, ptr %i.h, i64 1116
  store <8 x i16> <i16 208, i16 48, i16 209, i16 47, i16 210, i16 46, i16 211, i16 45>, ptr %i.dd, align 4, !tbaa !39
  store <8 x i16> <i16 212, i16 44, i16 213, i16 43, i16 214, i16 42, i16 215, i16 41>, ptr %i.de, align 4, !tbaa !39
  %i.df = getelementptr inbounds nuw i8, ptr %i.h, i64 1132
  %i.dg = getelementptr inbounds nuw i8, ptr %i.h, i64 1148
  store <8 x i16> <i16 216, i16 40, i16 217, i16 39, i16 218, i16 38, i16 219, i16 37>, ptr %i.df, align 4, !tbaa !39
  store <8 x i16> <i16 220, i16 36, i16 221, i16 35, i16 222, i16 34, i16 223, i16 33>, ptr %i.dg, align 4, !tbaa !39
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 1164
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 1180
  store <8 x i16> <i16 224, i16 32, i16 225, i16 31, i16 226, i16 30, i16 227, i16 29>, ptr %i.dh, align 4, !tbaa !39
  store <8 x i16> <i16 228, i16 28, i16 229, i16 27, i16 230, i16 26, i16 231, i16 25>, ptr %i.di, align 4, !tbaa !39
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 1196
  %i.dk = getelementptr inbounds nuw i8, ptr %i.h, i64 1212
  store <8 x i16> <i16 232, i16 24, i16 233, i16 23, i16 234, i16 22, i16 235, i16 21>, ptr %i.dj, align 4, !tbaa !39
  store <8 x i16> <i16 236, i16 20, i16 237, i16 19, i16 238, i16 18, i16 239, i16 17>, ptr %i.dk, align 4, !tbaa !39
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 1228
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 1244
  store <8 x i16> <i16 240, i16 16, i16 241, i16 15, i16 242, i16 14, i16 243, i16 13>, ptr %i.dl, align 4, !tbaa !39
  store <8 x i16> <i16 244, i16 12, i16 245, i16 11, i16 246, i16 10, i16 247, i16 9>, ptr %i.dm, align 4, !tbaa !39
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 1260
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 1276
  store <8 x i16> <i16 248, i16 8, i16 249, i16 7, i16 250, i16 6, i16 251, i16 5>, ptr %i.dn, align 4, !tbaa !39
  store <8 x i16> <i16 252, i16 4, i16 253, i16 3, i16 254, i16 2, i16 255, i16 1>, ptr %i.do, align 4, !tbaa !39
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 1292
  store i16 256, ptr %i.dp, align 4, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %i.h, i64 1294
  store i16 0, ptr %i.dq, align 2, !tbaa !42
  %i.dr = shl nuw nsw i32 %3, 1                   ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 1296 ; 3 uses
  %i.du = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 24) ; 4 uses
  store i32 4, ptr %i.ds, align 8, !tbaa !36
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 180
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !37
  %i.dw = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store ptr %i.dt, ptr %i.dw, align 8, !tbaa !38
  %i.dx = or disjoint i32 %i.du, 1
  %wide.trip.count.i = zext nneg i32 %i.dx to i64 ; 2 uses
  %n.vec = and i64 %wide.trip.count.i, 24         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 1312
  %5 = trunc nuw nsw <4 x i32> %broadcast.splat to <4 x i16>
  %6 = add nsw <4 x i16> %5, <i16 0, i16 -1, i16 -2, i16 -3>
  %i.dz = trunc nuw nsw <4 x i32> %broadcast.splat to <4 x i16>
  %7 = add nsw <4 x i16> %i.dz, <i16 -4, i16 -5, i16 -6, i16 -7>
  %interleaved.vec162 = shufflevector <4 x i16> <i16 0, i16 1, i16 2, i16 3>, <4 x i16> %6, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec162, ptr %i.dt, align 8, !tbaa !39
  %interleaved.vec163.a = shufflevector <4 x i16> <i16 4, i16 5, i16 6, i16 7>, <4 x i16> %7, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec163.a, ptr %i.dy, align 8, !tbaa !39
  %i.ea = icmp eq i64 %n.vec, 8
  br i1 %i.ea, label %scalar.ph154.preheader, label %vector.body156.1

vector.body156.1:                                 ; preds = %vector.ph
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 1328
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 1344
  %8 = trunc nuw nsw <4 x i32> %broadcast.splat to <4 x i16>
  %9 = add nsw <4 x i16> %8, <i16 -8, i16 -9, i16 -10, i16 -11>
  %i.ed = trunc nuw nsw <4 x i32> %broadcast.splat to <4 x i16>
  %10 = add nsw <4 x i16> %i.ed, <i16 -12, i16 -13, i16 -14, i16 -15>
  %interleaved.vec162.1 = shufflevector <4 x i16> <i16 8, i16 9, i16 10, i16 11>, <4 x i16> %9, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec162.1, ptr %i.eb, align 8, !tbaa !39
  %interleaved.vec163.1.a = shufflevector <4 x i16> <i16 12, i16 13, i16 14, i16 15>, <4 x i16> %10, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec163.1.a, ptr %i.ec, align 8, !tbaa !39
  %i.ee = icmp eq i64 %n.vec, 16
  br i1 %i.ee, label %scalar.ph154.preheader, label %vector.body156.2

vector.body156.2:                                 ; preds = %vector.body156.1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 1360
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 1376
  %11 = trunc nuw nsw <4 x i32> %broadcast.splat to <4 x i16>
  %12 = add nsw <4 x i16> %11, <i16 -16, i16 -17, i16 -18, i16 -19>
  %i.eh = trunc nuw nsw <4 x i32> %broadcast.splat to <4 x i16>
  %13 = add nsw <4 x i16> %i.eh, <i16 -20, i16 -21, i16 -22, i16 -23>
  %interleaved.vec162.2 = shufflevector <4 x i16> <i16 16, i16 17, i16 18, i16 19>, <4 x i16> %12, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec162.2, ptr %i.ef, align 8, !tbaa !39
  %interleaved.vec163.2.a = shufflevector <4 x i16> <i16 20, i16 21, i16 22, i16 23>, <4 x i16> %13, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec163.2.a, ptr %i.eg, align 8, !tbaa !39
  br label %scalar.ph154.preheader

scalar.ph154.preheader:                           ; preds = %vector.body156.2, %vector.body156.1, %vector.ph
  br label %scalar.ph154

scalar.ph154:                                     ; preds = %scalar.ph154.preheader, %scalar.ph154
  %indvars.iv.i94 = phi i64 [ %indvars.iv.next.i95, %scalar.ph154 ], [ %n.vec, %scalar.ph154.preheader ] ; 4 uses
  %i.ei = trunc i64 %indvars.iv.i94 to i32
  %i.ej = trunc i64 %indvars.iv.i94 to i16
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.i94 ; 2 uses
  store i16 %i.ej, ptr %i.ek, align 2, !tbaa !41
  %i.el = sub i32 %i.du, %i.ei
  %i.em = trunc nuw nsw i32 %i.el to i16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  store i16 %i.em, ptr %i.en, align 2, !tbaa !42
  %indvars.iv.next.i95 = add nuw nsw i64 %indvars.iv.i94, 1 ; 2 uses
  %exitcond.not.i96 = icmp eq i64 %indvars.iv.next.i95, %wide.trip.count.i
  br i1 %exitcond.not.i96, label %qtmd_init_model.exit97, label %scalar.ph154, !llvm.loop !47

qtmd_init_model.exit97:                           ; preds = %scalar.ph154
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 1396 ; 4 uses
  %i.eq = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 36) ; 4 uses
  store i32 4, ptr %i.eo, align 8, !tbaa !36
  %i.er = getelementptr inbounds nuw i8, ptr %i.h, i64 196
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !37
  %i.es = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  store ptr %i.ep, ptr %i.es, align 8, !tbaa !38
  %i.et = or disjoint i32 %i.eq, 1
  %wide.trip.count.i98 = zext nneg i32 %i.et to i64 ; 2 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %scalar.ph168.preheader, label %vector.ph169

vector.ph169:                                     ; preds = %qtmd_init_model.exit97
  %n.vec170 = and i64 %wide.trip.count.i98, 56    ; 2 uses
  %broadcast.splatinsert171 = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat172 = shufflevector <4 x i32> %broadcast.splatinsert171, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph169
  %index174 = phi i64 [ 0, %vector.ph169 ], [ %index.next181, %vector.body173 ] ; 3 uses
  %vec.ind175 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph169 ], [ %vec.ind.next182, %vector.body173 ] ; 3 uses
  %vec.ind176 = phi <4 x i16> [ <i16 0, i16 1, i16 2, i16 3>, %vector.ph169 ], [ %vec.ind.next183, %vector.body173 ] ; 3 uses
  %step.add177 = add <4 x i32> %vec.ind175, splat (i32 4)
  %step.add178 = add <4 x i16> %vec.ind176, splat (i16 4)
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %index174
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %index174
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %14 = sub <4 x i32> %broadcast.splat172, %vec.ind175
  %i.ex = sub <4 x i32> %broadcast.splat172, %step.add177
  %i.ey = trunc nuw nsw <4 x i32> %14 to <4 x i16>
  %i.ez = trunc nuw nsw <4 x i32> %i.ex to <4 x i16>
  %interleaved.vec179 = shufflevector <4 x i16> %vec.ind176, <4 x i16> %i.ey, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec179, ptr %i.eu, align 2, !tbaa !39
  %interleaved.vec180.a = shufflevector <4 x i16> %step.add178, <4 x i16> %i.ez, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec180.a, ptr %i.ew, align 2, !tbaa !39
  %index.next181 = add nuw i64 %index174, 8       ; 2 uses
  %vec.ind.next182 = add <4 x i32> %vec.ind175, splat (i32 8)
  %vec.ind.next183 = add <4 x i16> %vec.ind176, splat (i16 8)
  %i.fa = icmp eq i64 %index.next181, %n.vec170
  br i1 %i.fa, label %scalar.ph168.preheader, label %vector.body173, !llvm.loop !48

scalar.ph168.preheader:                           ; preds = %vector.body173, %qtmd_init_model.exit97
  %indvars.iv.i99.ph = phi i64 [ 0, %qtmd_init_model.exit97 ], [ %n.vec170, %vector.body173 ]
  br label %scalar.ph168

scalar.ph168:                                     ; preds = %scalar.ph168.preheader, %scalar.ph168
  %indvars.iv.i99 = phi i64 [ %indvars.iv.next.i100, %scalar.ph168 ], [ %indvars.iv.i99.ph, %scalar.ph168.preheader ] ; 4 uses
  %i.fb = trunc i64 %indvars.iv.i99 to i32
  %i.fc = trunc i64 %indvars.iv.i99 to i16
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.i99 ; 2 uses
  store i16 %i.fc, ptr %i.fd, align 2, !tbaa !41
  %i.fe = sub i32 %i.eq, %i.fb
  %i.ff = trunc nuw nsw i32 %i.fe to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !42
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i101 = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i98
  br i1 %exitcond.not.i101, label %qtmd_init_model.exit102, label %scalar.ph168, !llvm.loop !49

qtmd_init_model.exit102:                          ; preds = %scalar.ph168
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.fi = getelementptr inbounds nuw i8, ptr %i.h, i64 1544 ; 4 uses
  store i32 4, ptr %i.fh, align 8, !tbaa !36
  %i.fj = getelementptr inbounds nuw i8, ptr %i.h, i64 212
  store i32 %i.dr, ptr %i.fj, align 4, !tbaa !37
  %i.fk = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  store ptr %i.fi, ptr %i.fk, align 8, !tbaa !38
  %i.fl = or disjoint i32 %i.dr, 1
  %wide.trip.count.i103 = zext nneg i32 %i.fl to i64 ; 2 uses
  %min.iters.check187 = icmp ult i32 %3, 4
  br i1 %min.iters.check187, label %scalar.ph186.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %qtmd_init_model.exit102
  %n.vec189 = and i64 %wide.trip.count.i103, 56   ; 2 uses
  %broadcast.splatinsert190 = insertelement <4 x i32> poison, i32 %i.dr, i64 0
  %broadcast.splat191 = shufflevector <4 x i32> %broadcast.splatinsert190, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph188
  %index193 = phi i64 [ 0, %vector.ph188 ], [ %index.next200, %vector.body192 ] ; 3 uses
  %vec.ind194 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph188 ], [ %vec.ind.next201, %vector.body192 ] ; 3 uses
  %vec.ind195 = phi <4 x i16> [ <i16 0, i16 1, i16 2, i16 3>, %vector.ph188 ], [ %vec.ind.next202, %vector.body192 ] ; 3 uses
  %step.add196 = add <4 x i32> %vec.ind194, splat (i32 4)
  %step.add197 = add <4 x i16> %vec.ind195, splat (i16 4)
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index193
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index193
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %15 = sub <4 x i32> %broadcast.splat191, %vec.ind194
  %i.fp = sub <4 x i32> %broadcast.splat191, %step.add196
  %i.fq = trunc nuw nsw <4 x i32> %15 to <4 x i16>
  %i.fr = trunc nuw nsw <4 x i32> %i.fp to <4 x i16>
  %interleaved.vec198 = shufflevector <4 x i16> %vec.ind195, <4 x i16> %i.fq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec198, ptr %i.fm, align 2, !tbaa !39
  %interleaved.vec199.a = shufflevector <4 x i16> %step.add197, <4 x i16> %i.fr, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec199.a, ptr %i.fo, align 2, !tbaa !39
  %index.next200 = add nuw i64 %index193, 8       ; 2 uses
  %vec.ind.next201 = add <4 x i32> %vec.ind194, splat (i32 8)
  %vec.ind.next202 = add <4 x i16> %vec.ind195, splat (i16 8)
  %i.fs = icmp eq i64 %index.next200, %n.vec189
  br i1 %i.fs, label %scalar.ph186.preheader, label %vector.body192, !llvm.loop !50

scalar.ph186.preheader:                           ; preds = %vector.body192, %qtmd_init_model.exit102
  %indvars.iv.i104.ph = phi i64 [ 0, %qtmd_init_model.exit102 ], [ %n.vec189, %vector.body192 ]
  br label %scalar.ph186

scalar.ph186:                                     ; preds = %scalar.ph186.preheader, %scalar.ph186
  %indvars.iv.i104 = phi i64 [ %indvars.iv.next.i105, %scalar.ph186 ], [ %indvars.iv.i104.ph, %scalar.ph186.preheader ] ; 4 uses
  %i.ft = trunc i64 %indvars.iv.i104 to i32
  %i.fu = trunc i64 %indvars.iv.i104 to i16
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i104 ; 2 uses
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !41
  %i.fw = sub i32 %i.dr, %i.ft
  %i.fx = trunc nuw nsw i32 %i.fw to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  store i16 %i.fx, ptr %i.fy, align 2, !tbaa !42
  %indvars.iv.next.i105 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %exitcond.not.i106 = icmp eq i64 %indvars.iv.next.i105, %wide.trip.count.i103
  br i1 %exitcond.not.i106, label %qtmd_init_model.exit107, label %scalar.ph186, !llvm.loop !51

qtmd_init_model.exit107:                          ; preds = %scalar.ph186
  %i.fz = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.ga = getelementptr inbounds nuw i8, ptr %i.h, i64 1716 ; 2 uses
  store i32 4, ptr %i.fz, align 8, !tbaa !36
  %i.gb = getelementptr inbounds nuw i8, ptr %i.h, i64 228
  store i32 27, ptr %i.gb, align 4, !tbaa !37
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  store ptr %i.ga, ptr %i.gc, align 8, !tbaa !38
  store <8 x i16> <i16 0, i16 27, i16 1, i16 26, i16 2, i16 25, i16 3, i16 24>, ptr %i.ga, align 4, !tbaa !39
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 1732
  store <8 x i16> <i16 4, i16 23, i16 5, i16 22, i16 6, i16 21, i16 7, i16 20>, ptr %i.gd, align 4, !tbaa !39
  %i.ge = getelementptr inbounds nuw i8, ptr %i.h, i64 1748
  store <8 x i16> <i16 8, i16 19, i16 9, i16 18, i16 10, i16 17, i16 11, i16 16>, ptr %i.ge, align 4, !tbaa !39
  %i.gf = getelementptr inbounds nuw i8, ptr %i.h, i64 1764
  store <8 x i16> <i16 12, i16 15, i16 13, i16 14, i16 14, i16 13, i16 15, i16 12>, ptr %i.gf, align 4, !tbaa !39
  %i.gg = getelementptr inbounds nuw i8, ptr %i.h, i64 1780
  store <8 x i16> <i16 16, i16 11, i16 17, i16 10, i16 18, i16 9, i16 19, i16 8>, ptr %i.gg, align 4, !tbaa !39
  %i.gh = getelementptr inbounds nuw i8, ptr %i.h, i64 1796
  store <8 x i16> <i16 20, i16 7, i16 21, i16 6, i16 22, i16 5, i16 23, i16 4>, ptr %i.gh, align 4, !tbaa !39
  %i.gi = getelementptr inbounds nuw i8, ptr %i.h, i64 1812
  store <8 x i16> <i16 24, i16 3, i16 25, i16 2, i16 26, i16 1, i16 27, i16 0>, ptr %i.gi, align 4, !tbaa !39
  %i.gj = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.gk = getelementptr inbounds nuw i8, ptr %i.h, i64 1828 ; 2 uses
  store i32 4, ptr %i.gj, align 8, !tbaa !36
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 244
  store i32 7, ptr %i.gl, align 4, !tbaa !37
  %i.gm = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  store ptr %i.gk, ptr %i.gm, align 8, !tbaa !38
  store <8 x i16> <i16 0, i16 7, i16 1, i16 6, i16 2, i16 5, i16 3, i16 4>, ptr %i.gk, align 4, !tbaa !39
  %i.gn = getelementptr inbounds nuw i8, ptr %i.h, i64 1844
  store <8 x i16> <i16 4, i16 3, i16 5, i16 2, i16 6, i16 1, i16 7, i16 0>, ptr %i.gn, align 4, !tbaa !39
  br label %qtmd_init_model.exit115

qtmd_init_model.exit115:                          ; preds = %qtmd_init_model.exit107, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.e ], [ %i.h, %qtmd_init_model.exit107 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @qtmd_decompress(ptr nofree noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 33 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 10 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 3 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %sext = shl i64 %i.k, 32
  %i.l = ashr exact i64 %sext, 32
  %i.m = icmp sgt i64 %i.l, %1
  %spec.select = select i1 %i.m, i64 %1, i64 %i.k ; 2 uses
  %.0889 = trunc i64 %spec.select to i32          ; 3 uses
  %.not1222 = icmp eq i32 %.0889, 0
  br i1 %.not1222, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = tail call i32 %i.p(ptr noundef %i.r, ptr noundef %i.h, i32 noundef %.0889) #4
  %.not1223 = icmp eq i32 %i.s, %.0889
  br i1 %.not1223, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 4, ptr %i.c, align 4, !tbaa !28
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !32
  %sext1224 = shl i64 %spec.select, 32
  %i.u = ashr exact i64 %sext1224, 32             ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u ; 2 uses
  store ptr %i.v, ptr %i.g, align 8, !tbaa !32
  %i.w = sub nsw i64 %1, %i.u
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.x = phi ptr [ %i.v, %bb.f ], [ %i.h, %bb.c ] ; 3 uses
  %.01124 = phi i64 [ %i.w, %bb.f ], [ %1, %bb.c ] ; 4 uses
  %i.y = icmp eq i64 %.01124, 0
  br i1 %i.y, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 26 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 26 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !34  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !17 ; 21 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !25 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !26 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !63 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 46 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !65 ; 2 uses
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !31  ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.x to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = icmp slt i64 %i.aw, %.01124
  br i1 %i.ax, label %.lr.ph2156, label %._crit_edge2157

.lr.ph2156:                                       ; preds = %bb.h
  %i.ay = zext i8 %i.ag to i32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 50 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 16 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 12 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = insertelement <2 x ptr> poison, ptr %i.ai, i64 0
  %i.by = shufflevector <2 x ptr> %i.bx, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph2156, %bb.hh
  %i.ca = phi ptr [ %i.x, %.lr.ph2156 ], [ %i.amw, %bb.hh ] ; 2 uses
  %i.cb = phi ptr [ %i.at, %.lr.ph2156 ], [ %i.amx, %bb.hh ] ; 2 uses
  %.08242154 = phi i16 [ %i.as, %.lr.ph2156 ], [ %.18, %bb.hh ]
  %.08412153 = phi i16 [ %i.aq, %.lr.ph2156 ], [ %.18859, %bb.hh ]
  %.08612152 = phi i16 [ %i.ao, %.lr.ph2156 ], [ %.18879, %bb.hh ]
  %.09182151 = phi i32 [ %i.ak, %.lr.ph2156 ], [ %.5923, %bb.hh ] ; 5 uses
  %.09272150 = phi i32 [ %i.am, %.lr.ph2156 ], [ %.5932, %bb.hh ] ; 3 uses
  %.09342149 = phi i32 [ %i.ay, %.lr.ph2156 ], [ %.47, %bb.hh ] ; 4 uses
  %.09542148 = phi i32 [ %i.ae, %.lr.ph2156 ], [ %.471001, %bb.hh ] ; 3 uses
  %.010032147 = phi ptr [ %i.ac, %.lr.ph2156 ], [ %.70, %bb.hh ] ; 3 uses
  %.010522146 = phi ptr [ %i.aa, %.lr.ph2156 ], [ %.701122, %bb.hh ] ; 3 uses
  %.111252145 = phi i64 [ %.01124, %.lr.ph2156 ], [ %.31127, %bb.hh ] ; 5 uses
  %i.cc = load i8, ptr %i.az, align 2, !tbaa !27
  %.not1225 = icmp eq i8 %i.cc, 0
  br i1 %.not1225, label %.preheader, label %bb.x

.preheader:                                       ; preds = %bb.i
  %i.cd = icmp slt i32 %.09342149, 16
  br i1 %i.cd, label %.lr.ph, label %._crit_edge
end_hunk_0
