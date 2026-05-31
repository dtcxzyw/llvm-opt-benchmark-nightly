inline.NumInlined: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.des_context = type { [32 x i64], [32 x i64] }
%struct.des3_context = type { [96 x i64], [96 x i64] }

@SB1 = dso_local local_unnamed_addr global [64 x i64] [i64 16843776, i64 0, i64 65536, i64 16843780, i64 16842756, i64 66564, i64 4, i64 65536, i64 1024, i64 16843776, i64 16843780, i64 1024, i64 16778244, i64 16842756, i64 16777216, i64 4, i64 1028, i64 16778240, i64 16778240, i64 66560, i64 66560, i64 16842752, i64 16842752, i64 16778244, i64 65540, i64 16777220, i64 16777220, i64 65540, i64 0, i64 1028, i64 66564, i64 16777216, i64 65536, i64 16843780, i64 4, i64 16842752, i64 16843776, i64 16777216, i64 16777216, i64 1024, i64 16842756, i64 65536, i64 66560, i64 16777220, i64 1024, i64 4, i64 16778244, i64 66564, i64 16843780, i64 65540, i64 16842752, i64 16778244, i64 16777220, i64 1028, i64 66564, i64 16843776, i64 1028, i64 16778240, i64 16778240, i64 0, i64 65540, i64 66560, i64 0, i64 16842756], align 16
@LHs = internal unnamed_addr constant [16 x i64] [i64 0, i64 1, i64 256, i64 257, i64 65536, i64 65537, i64 65792, i64 65793, i64 16777216, i64 16777217, i64 16777472, i64 16777473, i64 16842752, i64 16842753, i64 16843008, i64 16843009], align 16
@RHs = internal unnamed_addr constant [16 x i64] [i64 0, i64 16777216, i64 65536, i64 16842752, i64 256, i64 16777472, i64 65792, i64 16843008, i64 1, i64 16777217, i64 65537, i64 16842753, i64 257, i64 16777473, i64 65793, i64 16843009], align 16
@SB8 = internal unnamed_addr constant [64 x i64] [i64 268439616, i64 4096, i64 262144, i64 268701760, i64 268435456, i64 268439616, i64 64, i64 268435456, i64 262208, i64 268697600, i64 268701760, i64 266240, i64 268701696, i64 266304, i64 4096, i64 64, i64 268697600, i64 268435520, i64 268439552, i64 4160, i64 266240, i64 262208, i64 268697664, i64 268701696, i64 4160, i64 0, i64 0, i64 268697664, i64 268435520, i64 268439552, i64 266304, i64 262144, i64 266304, i64 262144, i64 268701696, i64 4096, i64 64, i64 268697664, i64 4096, i64 266304, i64 268439552, i64 64, i64 268435520, i64 268697600, i64 268697664, i64 268435456, i64 262144, i64 268439616, i64 0, i64 268701760, i64 262208, i64 268435520, i64 268697600, i64 268439552, i64 268439616, i64 0, i64 268701760, i64 266240, i64 266240, i64 4160, i64 4160, i64 262208, i64 268435456, i64 268701696], align 16
@SB6 = internal unnamed_addr constant [64 x i64] [i64 536870928, i64 541065216, i64 16384, i64 541081616, i64 541065216, i64 16, i64 541081616, i64 4194304, i64 536887296, i64 4210704, i64 4194304, i64 536870928, i64 4194320, i64 536887296, i64 536870912, i64 16400, i64 0, i64 4194320, i64 536887312, i64 16384, i64 4210688, i64 536887312, i64 16, i64 541065232, i64 541065232, i64 0, i64 4210704, i64 541081600, i64 16400, i64 4210688, i64 541081600, i64 536870912, i64 536887296, i64 16, i64 541065232, i64 4210688, i64 541081616, i64 4194304, i64 16400, i64 536870928, i64 4194304, i64 536887296, i64 536870912, i64 16400, i64 536870928, i64 541081616, i64 4210688, i64 541065216, i64 4210704, i64 541081600, i64 0, i64 541065232, i64 16, i64 16384, i64 541065216, i64 4210704, i64 16384, i64 4194320, i64 536887312, i64 0, i64 541081600, i64 536870912, i64 4194320, i64 536887312], align 16
@SB4 = internal unnamed_addr constant [64 x i64] [i64 8396801, i64 8321, i64 8321, i64 128, i64 8396928, i64 8388737, i64 8388609, i64 8193, i64 0, i64 8396800, i64 8396800, i64 8396929, i64 129, i64 0, i64 8388736, i64 8388609, i64 1, i64 8192, i64 8388608, i64 8396801, i64 128, i64 8388608, i64 8193, i64 8320, i64 8388737, i64 1, i64 8320, i64 8388736, i64 8192, i64 8396928, i64 8396929, i64 129, i64 8388736, i64 8388609, i64 8396800, i64 8396929, i64 129, i64 0, i64 0, i64 8396800, i64 8320, i64 8388736, i64 8388737, i64 1, i64 8396801, i64 8321, i64 8321, i64 128, i64 8396929, i64 129, i64 1, i64 8192, i64 8388609, i64 8193, i64 8396928, i64 8388737, i64 8193, i64 8320, i64 8388608, i64 8396801, i64 128, i64 8388608, i64 8192, i64 8396928], align 16
@SB2 = internal unnamed_addr constant [64 x i64] [i64 2148565024, i64 2147516416, i64 32768, i64 1081376, i64 1048576, i64 32, i64 2148532256, i64 2147516448, i64 2147483680, i64 2148565024, i64 2148564992, i64 2147483648, i64 2147516416, i64 1048576, i64 32, i64 2148532256, i64 1081344, i64 1048608, i64 2147516448, i64 0, i64 2147483648, i64 32768, i64 1081376, i64 2148532224, i64 1048608, i64 2147483680, i64 0, i64 1081344, i64 32800, i64 2148564992, i64 2148532224, i64 32800, i64 0, i64 1081376, i64 2148532256, i64 1048576, i64 2147516448, i64 2148532224, i64 2148564992, i64 32768, i64 2148532224, i64 2147516416, i64 32, i64 2148565024, i64 1081376, i64 32, i64 32768, i64 2147483648, i64 32800, i64 2148564992, i64 1048576, i64 2147483680, i64 1048608, i64 2147516448, i64 2147483680, i64 1048608, i64 1081344, i64 0, i64 2147516416, i64 32800, i64 2147483648, i64 2148532256, i64 2148565024, i64 1081344], align 16
@SB7 = internal unnamed_addr constant [64 x i64] [i64 2097152, i64 69206018, i64 67110914, i64 0, i64 2048, i64 67110914, i64 2099202, i64 69208064, i64 69208066, i64 2097152, i64 0, i64 67108866, i64 2, i64 67108864, i64 69206018, i64 2050, i64 67110912, i64 2099202, i64 2097154, i64 67110912, i64 67108866, i64 69206016, i64 69208064, i64 2097154, i64 69206016, i64 2048, i64 2050, i64 69208066, i64 2099200, i64 2, i64 67108864, i64 2099200, i64 67108864, i64 2099200, i64 2097152, i64 67110914, i64 67110914, i64 69206018, i64 69206018, i64 2, i64 2097154, i64 67108864, i64 67110912, i64 2097152, i64 69208064, i64 2050, i64 2099202, i64 69208064, i64 2050, i64 67108866, i64 69208066, i64 69206016, i64 2099200, i64 0, i64 2, i64 69208066, i64 0, i64 2099202, i64 69206016, i64 2048, i64 67108866, i64 67110912, i64 2048, i64 2097154], align 16
@SB5 = internal unnamed_addr constant [64 x i64] [i64 256, i64 34078976, i64 34078720, i64 1107296512, i64 524288, i64 256, i64 1073741824, i64 34078720, i64 1074266368, i64 524288, i64 33554688, i64 1074266368, i64 1107296512, i64 1107820544, i64 524544, i64 1073741824, i64 33554432, i64 1074266112, i64 1074266112, i64 0, i64 1073742080, i64 1107820800, i64 1107820800, i64 33554688, i64 1107820544, i64 1073742080, i64 0, i64 1107296256, i64 34078976, i64 33554432, i64 1107296256, i64 524544, i64 524288, i64 1107296512, i64 256, i64 33554432, i64 1073741824, i64 34078720, i64 1107296512, i64 1074266368, i64 33554688, i64 1073741824, i64 1107820544, i64 34078976, i64 1074266368, i64 256, i64 33554432, i64 1107820544, i64 1107820800, i64 524544, i64 1107296256, i64 1107820800, i64 34078720, i64 0, i64 1074266112, i64 1107296256, i64 524544, i64 33554688, i64 1073742080, i64 524288, i64 0, i64 1074266112, i64 34078976, i64 1073742080], align 16
@SB3 = internal unnamed_addr constant [64 x i64] [i64 520, i64 134349312, i64 0, i64 134348808, i64 134218240, i64 0, i64 131592, i64 134218240, i64 131080, i64 134217736, i64 134217736, i64 131072, i64 134349320, i64 131080, i64 134348800, i64 520, i64 134217728, i64 8, i64 134349312, i64 512, i64 131584, i64 134348800, i64 134348808, i64 131592, i64 134218248, i64 131584, i64 131072, i64 134218248, i64 8, i64 134349320, i64 512, i64 134217728, i64 134349312, i64 134217728, i64 131080, i64 520, i64 131072, i64 134349312, i64 134218240, i64 0, i64 512, i64 131080, i64 134349320, i64 134218240, i64 134217736, i64 512, i64 0, i64 134348808, i64 134218248, i64 131072, i64 134217728, i64 134349320, i64 8, i64 131592, i64 131584, i64 134217736, i64 134348800, i64 134218248, i64 520, i64 134348800, i64 131592, i64 8, i64 134348808, i64 131584], align 16
@.str = private unnamed_addr constant [44 x i8] c"\0A Triple-DES Monte Carlo Test (ECB mode) - \00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" Test %d, key size = %3d bits: \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@DES3_keys = internal global [3 x [8 x i8]] [[8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"#Eg\89\AB\CD\EF\01", [8 x i8] c"Eg\89\AB\CD\EF\01#"], align 16
@DES3_enc_test = internal global [3 x [8 x i8]] [[8 x i8] c"j*\19\F4\1E\CA\85K", [8 x i8] c"\03\E6\9F[\FAX\EBB", [8 x i8] c"\DD\17\E8\B8\B47\D22"], align 16
@DES3_dec_test = internal global [3 x [8 x i8]] [[8 x i8] c"\CD\D6O/\94'\C1]", [8 x i8] c"i\96\C8\FAG\A2\AB\EB", [8 x i8] c"\83%9vD\09\1A\0A"], align 16
@str = private unnamed_addr constant [12 x i8] c"encryption\0A\00", align 1
@str.1 = private unnamed_addr constant [12 x i8] c"decryption\0A\00", align 1
@str.2 = private unnamed_addr constant [8 x i8] c"passed.\00", align 1
@str.3 = private unnamed_addr constant [8 x i8] c"failed!\00", align 1
@switch.table.des_main_ks = private unnamed_addr constant [16 x i64] [i64 1, i64 1, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 1, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 1], align 8
@switch.table.des_main_ks.4 = private unnamed_addr constant [16 x i64] [i64 27, i64 27, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 27, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 27], align 8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @des_main_ks(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !8
  %i.b = zext i8 %i.a to i64                      ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = zext i8 %i.m to i64
  %i.o = or disjoint i64 %i.g, %i.c
  %i.p = or disjoint i64 %i.o, %i.n
  %i.q = or disjoint i64 %i.p, %i.k               ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i32, ptr %i.r, align 1
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = lshr i64 %i.u, 4
  %i.w = xor i64 %i.v, %i.q
  %i.x = and i64 %i.w, 252645135                  ; 2 uses
  %i.y = xor i64 %i.x, %i.q                       ; 7 uses
  %i.z = shl nuw nsw i64 %i.x, 4
  %i.aa = xor i64 %i.z, %i.u
  %i.ab = and i64 %i.q, 269488144
  %i.ac = and i64 %i.aa, 4025479151
  %i.ad = or disjoint i64 %i.ac, %i.ab            ; 8 uses
  %i.ae = and i64 %i.y, 15
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @LHs, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !9
  %i.ah = shl i64 %i.ag, 3
  %i.ai = lshr i64 %i.y, 8
  %i.aj = and i64 %i.ai, 15
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @LHs, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !9
  %i.am = shl i64 %i.al, 2
  %i.an = or i64 %i.am, %i.ah
  %i.ao = lshr i64 %i.y, 16
  %i.ap = and i64 %i.ao, 15
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @LHs, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !9
  %i.as = shl i64 %i.ar, 1
  %i.at = or i64 %i.an, %i.as
  %i.au = lshr i64 %i.y, 24
  %i.av = and i64 %i.au, 15
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @LHs, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !9
  %i.ay = or i64 %i.at, %i.ax
  %i.az = lshr i64 %i.y, 5
  %i.ba = and i64 %i.az, 15
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @LHs, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !9
  %i.bd = shl i64 %i.bc, 7
  %i.be = or i64 %i.ay, %i.bd
  %i.bf = lshr i64 %i.y, 13
  %i.bg = and i64 %i.bf, 15
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @LHs, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !9
  %i.bj = shl i64 %i.bi, 6
  %i.bk = or i64 %i.be, %i.bj
  %i.bl = lshr i64 %i.y, 21
  %i.bm = and i64 %i.bl, 15
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @LHs, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !9
  %i.bp = shl i64 %i.bo, 5
  %i.bq = or i64 %i.bk, %i.bp
  %i.br = lshr i64 %i.b, 5
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @LHs, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !9
  %i.bu = shl i64 %i.bt, 4
  %i.bv = or i64 %i.bq, %i.bu
  %i.bw = lshr i64 %i.ad, 1
  %i.bx = and i64 %i.bw, 15
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @RHs, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !9
  %i.ca = shl i64 %i.bz, 3
  %i.cb = lshr i64 %i.ad, 9
  %i.cc = and i64 %i.cb, 15
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @RHs, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !9
  %i.cf = shl i64 %i.ce, 2
  %i.cg = or i64 %i.cf, %i.ca
  %i.ch = lshr i64 %i.ad, 17
  %i.ci = and i64 %i.ch, 15
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @RHs, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !9
  %i.cl = shl i64 %i.ck, 1
  %i.cm = or i64 %i.cg, %i.cl
  %i.cn = lshr i64 %i.ad, 25
  %i.co = and i64 %i.cn, 15
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr @RHs, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !9
  %i.cr = or i64 %i.cm, %i.cq
  %i.cs = lshr i64 %i.ad, 4
  %i.ct = and i64 %i.cs, 15
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr @RHs, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !9
  %i.cw = shl i64 %i.cv, 7
  %i.cx = or i64 %i.cr, %i.cw
  %i.cy = lshr i64 %i.ad, 12
  %i.cz = and i64 %i.cy, 15
  %i.da = getelementptr inbounds nuw [8 x i8], ptr @RHs, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !9
  %i.dc = shl i64 %i.db, 6
  %i.dd = or i64 %i.cx, %i.dc
  %i.de = lshr i64 %i.ad, 20
  %i.df = and i64 %i.de, 15
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @RHs, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !9
  %i.di = shl i64 %i.dh, 5
  %i.dj = or i64 %i.dd, %i.di
  %i.dk = lshr i64 %i.ad, 28
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr @RHs, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !9
  %i.dn = shl i64 %i.dm, 4
  %i.do = or i64 %i.dj, %i.dn
  %i.dp = and i64 %i.bv, 268435455
  %i.dq = and i64 %i.do, 268435455
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.0106 = phi ptr [ %0, %bb.a ], [ %i.iq, %bb.d ] ; 3 uses
  %.099105 = phi i64 [ %i.dq, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %.0100104 = phi i64 [ %i.dp, %bb.a ], [ %.1101, %bb.d ] ; 2 uses
  %.0102103 = phi i32 [ 0, %bb.a ], [ %i.ir, %bb.d ] ; 4 uses
  %2 = icmp samesign ult i32 %.0102103, 16
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %3 = zext nneg i32 %.0102103 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.des_main_ks, i64 %3
  %switch.load = load i64, ptr %switch.gep, align 8
  %4 = zext nneg i32 %.0102103 to i64
  %switch.gep114 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.des_main_ks.4, i64 %4
  %switch.load115 = load i64, ptr %switch.gep114, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink112 = phi i64 [ %switch.load, %bb.c ], [ 2, %bb.b ] ; 2 uses
  %.sink111 = phi i64 [ %switch.load115, %bb.c ], [ 26, %bb.b ] ; 2 uses
  %i.dr = shl nuw nsw i64 %.0100104, %.sink112    ; 6 uses
  %i.ds = lshr i64 %.0100104, %.sink111           ; 2 uses
  %i.dt = shl nuw nsw i64 %.099105, %.sink112     ; 15 uses
  %i.du = lshr i64 %.099105, %.sink111            ; 2 uses
  %.masked113 = and i64 %i.dt, 268435454
  %.1 = or i64 %.masked113, %i.du                 ; 6 uses
  %.masked = and i64 %i.dr, 268435454
  %.1101 = or i64 %.masked, %i.ds                 ; 15 uses
  %i.dv = shl nuw nsw i64 %.1101, 4
  %i.dw = and i64 %i.dv, 603979776
  %i.dx = shl nuw nsw i64 %i.ds, 28
  %i.dy = and i64 %i.dx, 268435456
  %i.dz = shl nuw nsw i64 %.1101, 14
  %i.ea = and i64 %i.dz, 134217728
  %i.eb = shl nuw nsw i64 %.1101, 18
  %i.ec = and i64 %i.eb, 34078720
  %i.ed = shl nuw nsw i64 %.1101, 6
  %i.ee = and i64 %i.ed, 16777216
  %i.ef = shl nuw nsw i64 %.1101, 9
  %i.eg = and i64 %i.ef, 2097152
  %i.eh = lshr exact i64 %i.dr, 1
  %i.ei = and i64 %i.eh, 1048576
  %i.ej = shl nuw nsw i64 %.1101, 10              ; 2 uses
  %i.ek = and i64 %i.ej, 262144
  %i.el = shl nuw nsw i64 %.1101, 2
  %i.em = and i64 %i.el, 131072
  %i.en = lshr i64 %i.dr, 10
  %i.eo = and i64 %i.en, 65536
  %i.ep = lshr i64 %i.dt, 13
  %i.eq = and i64 %i.ep, 8192
  %i.er = lshr i64 %i.dt, 4
  %i.es = and i64 %i.er, 4096
  %i.et = shl nuw nsw i64 %.1, 6
  %i.eu = and i64 %i.et, 2048
  %i.ev = lshr exact i64 %i.dt, 1
  %i.ew = and i64 %i.ev, 1024
  %i.ex = lshr i64 %.1, 14                        ; 2 uses
  %i.ey = and i64 %i.ex, 512
  %i.ez = and i64 %i.dt, 256
  %i.fa = lshr i64 %i.dt, 5
  %i.fb = and i64 %i.fa, 32
  %i.fc = lshr i64 %i.dt, 10
  %i.fd = and i64 %i.fc, 16
  %i.fe = lshr i64 %.1, 3                         ; 2 uses
  %i.ff = and i64 %i.fe, 8
  %i.fg = lshr i64 %i.dt, 18
  %i.fh = and i64 %i.fg, 4
  %i.fi = lshr i64 %i.dt, 26
  %i.fj = and i64 %i.fi, 2
  %i.fk = lshr i64 %i.dt, 24
  %i.fl = and i64 %i.fk, 1
  %i.fm = or disjoint i64 %i.eo, %i.ei
  %i.fn = or disjoint i64 %i.fm, %i.ez
  %i.fo = or disjoint i64 %i.fn, %i.dy
  %i.fp = or disjoint i64 %i.fo, %i.dw
  %i.fq = or disjoint i64 %i.fp, %i.ea
  %i.fr = or i64 %i.fq, %i.ec
  %i.fs = or i64 %i.fr, %i.ee
  %i.ft = or i64 %i.fs, %i.eg
  %i.fu = or i64 %i.ft, %i.ek
  %i.fv = or i64 %i.fu, %i.em
  %i.fw = or i64 %i.fv, %i.eq
  %i.fx = or i64 %i.fw, %i.es
  %i.fy = or i64 %i.fx, %i.ew
  %i.fz = or i64 %i.fy, %i.fb
  %i.ga = or i64 %i.fz, %i.fd
  %i.gb = or i64 %i.ga, %i.fh
  %i.gc = or i64 %i.gb, %i.fj
  %i.gd = or i64 %i.gc, %i.fl
  %i.ge = or i64 %i.gd, %i.eu
  %i.gf = or i64 %i.ge, %i.ey
  %i.gg = or i64 %i.gf, %i.ff
  %i.gh = getelementptr inbounds nuw i8, ptr %.0106, i64 8
  store i64 %i.gg, ptr %.0106, align 8, !tbaa !9
  %i.gi = shl nuw nsw i64 %.1101, 15              ; 2 uses
  %i.gj = and i64 %i.gi, 536870912
  %i.gk = shl nuw nsw i64 %.1101, 17
  %i.gl = and i64 %i.gk, 268435456
  %i.gm = and i64 %i.ej, 134217728
  %i.gn = shl nuw nsw i64 %.1101, 22
  %i.go = and i64 %i.gn, 67108864
  %i.gp = lshr i64 %i.dr, 2
  %i.gq = and i64 %i.gp, 33554432
  %i.gr = shl nuw nsw i64 %.1101, 1
  %i.gs = and i64 %i.gr, 16777216
  %i.gt = shl nuw nsw i64 %.1101, 16
  %i.gu = and i64 %i.gt, 2097152
  %i.gv = shl nuw nsw i64 %.1101, 11
  %i.gw = and i64 %i.gv, 1048576
  %i.gx = shl nuw nsw i64 %.1101, 3
  %i.gy = and i64 %i.gx, 524288
  %i.gz = lshr i64 %i.dr, 6
  %i.ha = and i64 %i.gz, 262144
  %i.hb = and i64 %i.gi, 131072
  %i.hc = lshr i64 %i.dr, 4
  %i.hd = and i64 %i.hc, 65536
  %i.he = lshr i64 %i.dt, 2
  %i.hf = and i64 %i.he, 8192
  %i.hg = shl nuw nsw i64 %.1, 8
  %i.hh = and i64 %i.hg, 4096
  %i.hi = and i64 %i.ex, 2056
  %i.hj = lshr i64 %i.dt, 9
  %i.hk = and i64 %i.hj, 1024
  %i.hl = and i64 %i.dt, 512
  %i.hm = shl nuw nsw i64 %.1, 7
  %i.hn = and i64 %i.hm, 256
  %i.ho = lshr i64 %i.dt, 7
  %i.hp = and i64 %i.ho, 32
  %i.hq = and i64 %i.fe, 17
  %i.hr = shl nuw nsw i64 %i.du, 2
  %i.hs = and i64 %i.hr, 4
  %i.ht = lshr i64 %i.dt, 21
  %i.hu = and i64 %i.ht, 2
  %i.hv = or disjoint i64 %i.ha, %i.gq
  %i.hw = or disjoint i64 %i.hv, %i.hd
  %i.hx = or disjoint i64 %i.hw, %i.hl
  %i.hy = or disjoint i64 %i.hx, %i.gl
  %i.hz = or disjoint i64 %i.hy, %i.gj
  %i.ia = or i64 %i.hz, %i.gm
  %i.ib = or i64 %i.ia, %i.go
  %i.ic = or i64 %i.ib, %i.gs
  %i.id = or i64 %i.ic, %i.gu
  %i.ie = or i64 %i.id, %i.gw
  %i.if = or i64 %i.ie, %i.gy
  %i.ig = or i64 %i.if, %i.hb
  %i.ih = or i64 %i.ig, %i.hf
  %i.ii = or i64 %i.ih, %i.hk
  %i.ij = or i64 %i.ii, %i.hp
  %i.ik = or i64 %i.ij, %i.hu
  %i.il = or i64 %i.ik, %i.hh
  %i.im = or i64 %i.il, %i.hi
  %i.in = or i64 %i.im, %i.hn
  %i.io = or i64 %i.in, %i.hq
  %i.ip = or i64 %i.io, %i.hs
  %i.iq = getelementptr inbounds nuw i8, ptr %.0106, i64 16
  store i64 %i.ip, ptr %i.gh, align 8, !tbaa !9
  %i.ir = add nuw nsw i32 %.0102103, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ir, 16
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !11

bb.e:                                             ; preds = %bb.d
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @des_set_key(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @des_main_ks(ptr noundef %0, ptr noundef %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !9
  store <2 x i64> %i.d, ptr %i.b, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !9
  store <2 x i64> %i.g, ptr %i.f, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = load <2 x i64>, ptr %i.h, align 8, !tbaa !9
  store <2 x i64> %i.j, ptr %i.i, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.m = load <2 x i64>, ptr %i.k, align 8, !tbaa !9
  store <2 x i64> %i.m, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.p = load <2 x i64>, ptr %i.n, align 8, !tbaa !9
  store <2 x i64> %i.p, ptr %i.o, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.s = load <2 x i64>, ptr %i.q, align 8, !tbaa !9
  store <2 x i64> %i.s, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.v = load <2 x i64>, ptr %i.t, align 8, !tbaa !9
  store <2 x i64> %i.v, ptr %i.u, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.y = load <2 x i64>, ptr %i.w, align 8, !tbaa !9
  store <2 x i64> %i.y, ptr %i.x, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ab = load <2 x i64>, ptr %i.z, align 8, !tbaa !9
  store <2 x i64> %i.ab, ptr %i.aa, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !tbaa !9
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !tbaa !9
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 432
end_hunk_0
