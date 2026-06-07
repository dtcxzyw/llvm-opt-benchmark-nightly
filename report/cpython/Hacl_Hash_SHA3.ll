inline.NumInlined: 790
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Hacl_Hash_SHA3_hash_buf_s = type { i8, ptr }

@_Py_LibHacl_Hacl_Hash_SHA3_keccak_rotc = hidden local_unnamed_addr constant [24 x i32] [i32 1, i32 3, i32 6, i32 10, i32 15, i32 21, i32 28, i32 36, i32 45, i32 55, i32 2, i32 14, i32 27, i32 41, i32 56, i32 8, i32 25, i32 43, i32 62, i32 18, i32 39, i32 61, i32 20, i32 44], align 16
@_Py_LibHacl_Hacl_Hash_SHA3_keccak_piln = hidden local_unnamed_addr constant [24 x i32] [i32 10, i32 7, i32 11, i32 17, i32 18, i32 3, i32 5, i32 16, i32 8, i32 21, i32 24, i32 4, i32 15, i32 23, i32 19, i32 13, i32 12, i32 2, i32 20, i32 14, i32 22, i32 9, i32 6, i32 1], align 16
@_Py_LibHacl_Hacl_Hash_SHA3_keccak_rndc = hidden local_unnamed_addr constant [24 x i64] [i64 1, i64 32898, i64 -9223372036854742902, i64 -9223372034707259392, i64 32907, i64 2147483649, i64 -9223372034707259263, i64 -9223372036854743031, i64 138, i64 136, i64 2147516425, i64 2147483658, i64 2147516555, i64 -9223372036854775669, i64 -9223372036854742903, i64 -9223372036854743037, i64 -9223372036854743038, i64 -9223372036854775680, i64 32778, i64 -9223372034707292150, i64 -9223372034707259263, i64 -9223372036854742912, i64 2147483649, i64 -9223372034707259384], align 16
@.str.1 = private unnamed_addr constant [34 x i8] c"../Modules/_hacl/Hacl_Hash_SHA3.c\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"KaRaMeL incomplete match at %s:%d\0A\00", align 1
@switch.table.digest_.19 = private unnamed_addr constant [6 x i64] [i64 136, i64 144, i64 104, i64 72, i64 168, i64 136], align 8
@switch.table.digest_.20 = private unnamed_addr constant [4 x i32] [i32 136, i32 144, i32 104, i32 72], align 4
@switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len = private unnamed_addr constant [6 x i32] [i32 136, i32 144, i32 104, i32 72, i32 168, i32 136], align 4
@switch.table._Py_LibHacl_Hacl_Hash_SHA3_hash_len = private unnamed_addr constant [4 x i32] [i32 32, i32 28, i32 48, i32 64], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_init_(i8 noundef zeroext %0, ptr nofree noundef writeonly captures(none) initializes((0, 200)) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %1, i8 0, i64 200, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nofree nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %switch.tableidx = add i8 %0, -8                ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 6
  br i1 %i.b, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.f = mul i32 %switch.load, %3
  %i.g = zext nneg i8 %0 to i64
  %4 = getelementptr [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.g
  %switch.gep49 = getelementptr i8, ptr %4, i64 -32
  %switch.load50 = load i32, ptr %switch.gep49, align 4
  %i.h = udiv i32 %i.f, %switch.load50
  %i.i = zext nneg i32 %i.h to i64
  br label %switch.lookup48

switch.lookup48:                                  ; preds = %block_len.exit23, %switch.lookup
  %indvars.iv = phi i64 [ %indvars.iv.next, %block_len.exit23 ], [ 0, %switch.lookup ] ; 7 uses
  %i.j = icmp samesign ult i64 %indvars.iv, %i.i
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %switch.lookup48
  ret void

bb.d:                                             ; preds = %switch.lookup48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  switch i8 %0, label %bb.e [
    i8 9, label %block_len.exit19.thread
    i8 8, label %block_len.exit19
    i8 10, label %block_len.exit19.thread25
    i8 11, label %block_len.exit19.thread27
    i8 12, label %block_len.exit19.thread29
    i8 13, label %block_len.exit19
  ]

block_len.exit19.thread:                          ; preds = %bb.d
  %i.k = mul nuw nsw i64 %indvars.iv, 144
  %i.l = and i64 %i.k, 4294967280
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  br label %block_len.exit21.thread

block_len.exit19.thread25:                        ; preds = %bb.d
  %i.n = mul nuw nsw i64 %indvars.iv, 104
  %i.o = and i64 %i.n, 4294967288
  %i.p = getelementptr i8, ptr %2, i64 %i.o
  br label %block_len.exit21.thread34

block_len.exit19.thread27:                        ; preds = %bb.d
  %i.q = mul nuw nsw i64 %indvars.iv, 72
  %i.r = getelementptr i8, ptr %2, i64 %i.q
  br label %block_len.exit21.thread38

block_len.exit19.thread29:                        ; preds = %bb.d
  %i.s = mul nuw nsw i64 %indvars.iv, 168
  %i.t = and i64 %i.s, 4294967288
  %i.u = getelementptr i8, ptr %2, i64 %i.t
  br label %block_len.exit21.thread42

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

block_len.exit19:                                 ; preds = %bb.d, %bb.d
  %i.x = mul nuw nsw i64 %indvars.iv, 136
  %i.y = and i64 %i.x, 4294967288
  %i.z = getelementptr i8, ptr %2, i64 %i.y       ; 5 uses
  switch i8 %0, label %default.unreachable44 [
    i8 9, label %block_len.exit21.thread
    i8 8, label %block_len.exit21
    i8 10, label %block_len.exit21.thread34
    i8 11, label %block_len.exit21.thread38
    i8 12, label %block_len.exit21.thread42
    i8 13, label %block_len.exit21
  ]

default.unreachable44:                            ; preds = %block_len.exit19
  unreachable

block_len.exit21.thread:                          ; preds = %block_len.exit19.thread, %block_len.exit19
  %.ph = phi ptr [ %i.m, %block_len.exit19.thread ], [ %i.z, %block_len.exit19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 1 dereferenceable(144) %.ph, i64 144, i1 false)
  br label %block_len.exit23

block_len.exit21.thread34:                        ; preds = %block_len.exit19.thread25, %block_len.exit19
  %.ph33 = phi ptr [ %i.p, %block_len.exit19.thread25 ], [ %i.z, %block_len.exit19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.a, ptr noundef nonnull align 1 dereferenceable(104) %.ph33, i64 104, i1 false)
  br label %block_len.exit23

block_len.exit21.thread38:                        ; preds = %block_len.exit19.thread27, %block_len.exit19
  %.ph37 = phi ptr [ %i.r, %block_len.exit19.thread27 ], [ %i.z, %block_len.exit19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull align 1 dereferenceable(72) %.ph37, i64 72, i1 false)
  br label %block_len.exit23

block_len.exit21.thread42:                        ; preds = %block_len.exit19.thread29, %block_len.exit19
  %.ph41 = phi ptr [ %i.u, %block_len.exit19.thread29 ], [ %i.z, %block_len.exit19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, ptr noundef nonnull align 1 dereferenceable(168) %.ph41, i64 168, i1 false)
  br label %block_len.exit23

block_len.exit21:                                 ; preds = %block_len.exit19, %block_len.exit19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.a, ptr noundef nonnull align 1 dereferenceable(136) %i.z, i64 136, i1 false)
  br label %block_len.exit23

block_len.exit23:                                 ; preds = %block_len.exit21, %block_len.exit21.thread42, %block_len.exit21.thread38, %block_len.exit21.thread34, %block_len.exit21.thread
  call fastcc void @absorb_inner_32(ptr noundef %i.a, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %switch.lookup48, !llvm.loop !13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @absorb_inner_32(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef %1) unnamed_addr #4 {
.preheader:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val637 = load i64, ptr %i.b, align 1
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val636 = load i64, ptr %i.c, align 1
  %i.d = getelementptr i8, ptr %0, i64 48
  %.val635 = load i64, ptr %i.d, align 1
  %i.e = getelementptr i8, ptr %0, i64 56
  %.val634 = load i64, ptr %i.e, align 1
  %i.f = getelementptr i8, ptr %0, i64 64
  %.val633 = load i64, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %0, i64 72
  %.val632 = load i64, ptr %i.g, align 1
  %i.h = getelementptr i8, ptr %0, i64 80
  %.val631 = load i64, ptr %i.h, align 1
  %i.i = getelementptr i8, ptr %0, i64 88
  %.val630 = load i64, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %0, i64 96
  %.val629 = load i64, ptr %i.j, align 1
  %i.k = getelementptr i8, ptr %0, i64 104
  %.val628 = load i64, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %0, i64 112
  %.val627 = load i64, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %0, i64 120
  %.val626 = load i64, ptr %i.m, align 1
  %i.n = getelementptr i8, ptr %0, i64 128
  %.val625 = load i64, ptr %i.n, align 1
  %i.o = getelementptr i8, ptr %0, i64 136
  %.val624 = load i64, ptr %i.o, align 1
  %i.p = getelementptr i8, ptr %0, i64 144
  %.val623 = load i64, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %0, i64 152
  %.val622 = load i64, ptr %i.q, align 1
  %i.r = getelementptr i8, ptr %0, i64 160
  %.val621 = load i64, ptr %i.r, align 1
  %i.s = getelementptr i8, ptr %0, i64 168
  %.val620 = load i64, ptr %i.s, align 1
  %i.t = getelementptr i8, ptr %0, i64 176
  %.val619 = load i64, ptr %i.t, align 1
  %i.u = getelementptr i8, ptr %0, i64 184
  %.val618 = load i64, ptr %i.u, align 1
  %i.v = getelementptr i8, ptr %0, i64 192
  %.val617 = load i64, ptr %i.v, align 1
  %i.w = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.x = load <2 x i64>, ptr %0, align 1
  %i.y = load <2 x i64>, ptr %1, align 8, !tbaa !15
  %i.z = xor <2 x i64> %i.x, %i.y                 ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 16        ; 5 uses
  %i.ab = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ac = load <2 x i64>, ptr %i.a, align 1
  store <2 x i64> %i.z, ptr %1, align 8, !tbaa !15
  %i.ad = load <2 x i64>, ptr %i.aa, align 8, !tbaa !15
  %i.ae = xor <2 x i64> %i.ac, %i.ad
  store <2 x i64> %i.ae, ptr %i.aa, align 8, !tbaa !15
  %i.af = getelementptr i8, ptr %1, i64 32        ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !15
  %i.ah = xor i64 %.val637, %i.ag
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !15
  %i.ai = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.ak = xor i64 %.val636, %i.aj
  %i.al = getelementptr i8, ptr %1, i64 48        ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !15
  %i.an = xor i64 %.val635, %i.am
  %i.ao = getelementptr i8, ptr %1, i64 56        ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.aq = xor i64 %.val634, %i.ap
  %i.ar = getelementptr i8, ptr %1, i64 64        ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !15
  %i.at = xor i64 %.val633, %i.as
  %i.au = getelementptr i8, ptr %1, i64 72        ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !15
  %i.aw = xor i64 %.val632, %i.av
  %i.ax = getelementptr i8, ptr %1, i64 80        ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !15
  %i.az = xor i64 %.val631, %i.ay
  %i.ba = getelementptr i8, ptr %1, i64 88        ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !15
  %i.bc = xor i64 %.val630, %i.bb
  %i.bd = getelementptr i8, ptr %1, i64 96        ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !15
  %i.bf = xor i64 %.val629, %i.be
  %i.bg = getelementptr i8, ptr %1, i64 104       ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !15
  %i.bi = xor i64 %.val628, %i.bh
  %i.bj = getelementptr i8, ptr %1, i64 112       ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !15
  %i.bl = xor i64 %.val627, %i.bk
  %i.bm = getelementptr i8, ptr %1, i64 120       ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !15
  %i.bo = xor i64 %.val626, %i.bn
  %i.bp = getelementptr i8, ptr %1, i64 128       ; 3 uses
end_hunk_0
begin_hunk_1_@absorb_inner_32:.preheader
  %i.es = xor i64 %i.er, %i.dt                    ; 5 uses
  %i.et = xor i64 %i.es, %i.cu                    ; 2 uses
  %i.eu = xor i64 %i.es, %i.dk                    ; 3 uses
  store i64 %i.eu, ptr %i.al, align 8, !tbaa !15
  %i.ev = xor i64 %i.es, %i.dj                    ; 2 uses
  %i.ew = xor i64 %i.es, %i.di                    ; 2 uses
  %i.ex = xor i64 %i.es, %i.dh                    ; 2 uses
  %i.ey = tail call i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 1)
  %i.ez = xor i64 %i.ey, %i.dx                    ; 5 uses
  %i.fa = xor i64 %i.ez, %i.ct                    ; 3 uses
  store i64 %i.fa, ptr %i.aa, align 8, !tbaa !15
  %i.fb = xor i64 %i.ez, %i.dg                    ; 2 uses
  %i.fc = xor i64 %i.ez, %i.df                    ; 2 uses
  %i.fd = xor i64 %i.ez, %i.de                    ; 2 uses
  %i.fe = xor i64 %i.ez, %i.dd                    ; 3 uses
  store i64 %i.fe, ptr %i.ch, align 8, !tbaa !15
  %i.ff = tail call i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 1)
  %i.fg = xor i64 %i.ff, %i.eb                    ; 5 uses
  %i.fh = xor i64 %i.fg, %i.cs                    ; 2 uses
  %i.fi = xor i64 %i.fg, %i.dc                    ; 2 uses
  %i.fj = xor i64 %i.fg, %i.db                    ; 2 uses
  %i.fk = xor i64 %i.fg, %i.da                    ; 2 uses
  %i.fl = xor i64 %i.fg, %i.cz                    ; 2 uses
  %i.fm = tail call i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 1)
  %i.fn = xor i64 %i.ef, %i.fm                    ; 5 uses
  %i.fo = xor i64 %i.fn, %i.cr                    ; 2 uses
  %i.fp = xor i64 %i.fn, %i.cy                    ; 2 uses
  %i.fq = xor i64 %i.fn, %i.cx                    ; 2 uses
  %i.fr = xor i64 %i.fn, %i.cw                    ; 2 uses
  %i.fs = xor i64 %i.cv, %i.fn                    ; 2 uses
  %i.ft = tail call i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 1) ; 4 uses
  store i64 %i.ft, ptr %i.ax, align 8, !tbaa !15
  %i.fu = tail call i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 3) ; 4 uses
  store i64 %i.fu, ptr %i.ao, align 8, !tbaa !15
  %i.fv = tail call i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 6) ; 4 uses
  store i64 %i.fv, ptr %i.ba, align 8, !tbaa !15
  %i.fw = tail call i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 10) ; 4 uses
  store i64 %i.fw, ptr %i.bs, align 8, !tbaa !15
  %i.fx = tail call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 15) ; 4 uses
  store i64 %i.fx, ptr %i.bv, align 8, !tbaa !15
  %i.fy = tail call i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 21) ; 3 uses
  %i.fz = tail call i64 @llvm.fshl.i64(i64 %i.fh, i64 %i.fh, i64 28) ; 3 uses
  %i.ga = tail call i64 @llvm.fshl.i64(i64 %i.en, i64 %i.en, i64 36) ; 4 uses
  store i64 %i.ga, ptr %i.bp, align 8, !tbaa !15
  %i.gb = tail call i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 45) ; 3 uses
  %i.gc = tail call i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 55) ; 4 uses
  store i64 %i.gc, ptr %i.ce, align 8, !tbaa !15
  %i.gd = tail call i64 @llvm.fshl.i64(i64 %i.ex, i64 %i.ex, i64 2) ; 4 uses
  store i64 %i.gd, ptr %i.cn, align 8, !tbaa !15
  %i.ge = tail call i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 14) ; 3 uses
  %i.gf = tail call i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 27) ; 4 uses
  store i64 %i.gf, ptr %i.bm, align 8, !tbaa !15
  %i.gg = tail call i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 41) ; 4 uses
  store i64 %i.gg, ptr %i.ck, align 8, !tbaa !15
  %i.gh = tail call i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 56) ; 4 uses
  store i64 %i.gh, ptr %i.by, align 8, !tbaa !15
  %i.gi = tail call i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 8) ; 3 uses
  %i.gj = tail call i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 25) ; 3 uses
  %i.gk = tail call i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 43) ; 3 uses
  %i.gl = tail call i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 62) ; 4 uses
  store i64 %i.gl, ptr %i.cb, align 8, !tbaa !15
  %i.gm = tail call i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 18) ; 3 uses
  %i.gn = tail call i64 @llvm.fshl.i64(i64 %i.fq, i64 %i.fq, i64 39) ; 4 uses
  store i64 %i.gn, ptr %i.ch, align 8, !tbaa !15
  %i.go = tail call i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 61) ; 3 uses
  %i.gp = tail call i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 20) ; 3 uses
  %i.gq = tail call i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 44) ; 3 uses
  %i.gr = xor i64 %i.gq, -1
  %i.gs = and i64 %i.gk, %i.gr
  %i.gt = xor i64 %i.gk, -1
  %i.gu = and i64 %i.fy, %i.gt
  %i.gv = xor i64 %i.gu, %i.gq                    ; 2 uses
  %i.gw = xor i64 %i.fy, -1
  %i.gx = and i64 %i.ge, %i.gw
  %i.gy = xor i64 %i.gx, %i.gk                    ; 2 uses
  %i.gz = xor i64 %i.ge, -1
  %i.ha = and i64 %i.em, %i.gz
  %i.hb = xor i64 %i.ha, %i.fy                    ; 2 uses
  %i.hc = xor i64 %i.em, -1
  %i.hd = and i64 %i.gq, %i.hc
  %i.he = xor i64 %i.ge, %i.hd                    ; 2 uses
  store i64 %i.gv, ptr %i.w, align 8, !tbaa !15
  store i64 %i.gy, ptr %i.aa, align 8, !tbaa !15
  store i64 %i.hb, ptr %i.ab, align 8, !tbaa !15
  store i64 %i.he, ptr %i.af, align 8, !tbaa !15
  %i.hf = xor i64 %i.gp, -1
  %i.hg = and i64 %i.fu, %i.hf
  %i.hh = xor i64 %i.hg, %i.fz                    ; 2 uses
  %i.hi = xor i64 %i.fu, -1
  %i.hj = and i64 %i.gb, %i.hi
  %i.hk = xor i64 %i.hj, %i.gp                    ; 2 uses
  %i.hl = xor i64 %i.gb, -1
  %i.hm = and i64 %i.go, %i.hl
  %i.hn = xor i64 %i.hm, %i.fu                    ; 2 uses
  %i.ho = xor i64 %i.go, -1
  %i.hp = and i64 %i.fz, %i.ho
  %i.hq = xor i64 %i.hp, %i.gb                    ; 2 uses
  %i.hr = xor i64 %i.fz, -1
  %i.hs = and i64 %i.gp, %i.hr
  %i.ht = xor i64 %i.go, %i.hs                    ; 2 uses
  store i64 %i.hh, ptr %i.ai, align 8, !tbaa !15
  store i64 %i.hk, ptr %i.al, align 8, !tbaa !15
  store i64 %i.hn, ptr %i.ao, align 8, !tbaa !15
  store i64 %i.hq, ptr %i.ar, align 8, !tbaa !15
  store i64 %i.ht, ptr %i.au, align 8, !tbaa !15
  %i.hu = xor i64 %i.fv, -1
  %i.hv = and i64 %i.gj, %i.hu
  %i.hw = xor i64 %i.hv, %i.ft                    ; 2 uses
  %i.hx = xor i64 %i.gj, -1
  %i.hy = and i64 %i.gi, %i.hx
  %i.hz = xor i64 %i.hy, %i.fv                    ; 2 uses
  %i.ia = xor i64 %i.gi, -1
  %i.ib = and i64 %i.gm, %i.ia
  %i.ic = xor i64 %i.ib, %i.gj                    ; 2 uses
  %i.id = xor i64 %i.gm, -1
  %i.ie = and i64 %i.ft, %i.id
  %i.if = xor i64 %i.ie, %i.gi                    ; 2 uses
  %i.ig = xor i64 %i.ft, -1
  %i.ih = and i64 %i.fv, %i.ig
  %i.ii = xor i64 %i.gm, %i.ih                    ; 2 uses
  store i64 %i.hw, ptr %i.ax, align 8, !tbaa !15
  store i64 %i.hz, ptr %i.ba, align 8, !tbaa !15
  store i64 %i.ic, ptr %i.bd, align 8, !tbaa !15
  store i64 %i.if, ptr %i.bg, align 8, !tbaa !15
  store i64 %i.ii, ptr %i.bj, align 8, !tbaa !15
  %i.ij = xor i64 %i.ga, -1
  %i.ik = and i64 %i.fw, %i.ij
  %i.il = xor i64 %i.ik, %i.gf                    ; 2 uses
  %i.im = xor i64 %i.fw, -1
  %i.in = and i64 %i.fx, %i.im
  %i.io = xor i64 %i.in, %i.ga                    ; 2 uses
  %i.ip = xor i64 %i.fx, -1
  %i.iq = and i64 %i.gh, %i.ip
  %i.ir = xor i64 %i.iq, %i.fw                    ; 2 uses
  %i.is = xor i64 %i.gh, -1
  %i.it = and i64 %i.gf, %i.is
  %i.iu = xor i64 %i.it, %i.fx                    ; 2 uses
  %i.iv = xor i64 %i.gf, -1
  %i.iw = and i64 %i.ga, %i.iv
  %i.ix = xor i64 %i.gh, %i.iw                    ; 2 uses
  store i64 %i.il, ptr %i.bm, align 8, !tbaa !15
  store i64 %i.io, ptr %i.bp, align 8, !tbaa !15
  store i64 %i.ir, ptr %i.bs, align 8, !tbaa !15
  store i64 %i.iu, ptr %i.bv, align 8, !tbaa !15
  store i64 %i.ix, ptr %i.by, align 8, !tbaa !15
  %i.iy = xor i64 %i.gc, -1
  %i.iz = and i64 %i.gn, %i.iy
  %i.ja = xor i64 %i.iz, %i.gl                    ; 2 uses
  %i.jb = xor i64 %i.gn, -1
  %i.jc = and i64 %i.gg, %i.jb
  %i.jd = xor i64 %i.jc, %i.gc                    ; 2 uses
  %i.je = xor i64 %i.gg, -1
  %i.jf = and i64 %i.gd, %i.je
  %i.jg = xor i64 %i.jf, %i.gn                    ; 2 uses
  %i.jh = xor i64 %i.gd, -1
  %i.ji = and i64 %i.gl, %i.jh
  %i.jj = xor i64 %i.ji, %i.gg                    ; 2 uses
  %i.jk = xor i64 %i.gl, -1
  %i.jl = and i64 %i.gc, %i.jk
  %i.jm = xor i64 %i.gd, %i.jl                    ; 2 uses
  store i64 %i.ja, ptr %i.cb, align 8, !tbaa !15
  store i64 %i.jd, ptr %i.ce, align 8, !tbaa !15
  store i64 %i.jg, ptr %i.ch, align 8, !tbaa !15
  store i64 %i.jj, ptr %i.ck, align 8, !tbaa !15
  store i64 %i.jm, ptr %i.cn, align 8, !tbaa !15
  %i.jn = getelementptr [8 x i8], ptr @_Py_LibHacl_Hacl_Hash_SHA3_keccak_rndc, i64 %indvars.iv
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !15
  %i.jp = xor i64 %i.gs, %i.jo
  %i.jq = xor i64 %i.jp, %i.em                    ; 2 uses
  store i64 %i.jq, ptr %1, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond.not, label %bb.a, label %bb.b, !llvm.loop !17
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 18 uses
  %i.d = alloca [256 x i8], align 16              ; 5 uses
  %i.e = and i8 %0, -2
  %or.cond = icmp eq i8 %i.e, 12
  %. = select i1 %or.cond, i8 31, i8 6            ; 2 uses
  %switch.tableidx = add i8 %0, -8                ; 2 uses
  %i.f = icmp ult i8 %switch.tableidx, 6
  br i1 %i.f, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.i = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.i
  %switch.load = load i32, ptr %switch.gep, align 4 ; 3 uses
  %i.j = icmp eq i32 %3, %switch.load
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.k = zext nneg i32 %3 to i64                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 %i.k, i1 false)
  call fastcc void @absorb_inner_32(ptr noundef %i.a, ptr noundef %1)
  %.sroa.0.sroa.0.0.insert.ext = zext nneg i8 %. to i64
  %i.l = load i64, ptr %1, align 8, !tbaa !15
  %i.m = xor i64 %i.l, %.sroa.0.sroa.0.0.insert.ext
  store i64 %i.m, ptr %1, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.n = getelementptr i8, ptr %i.b, i64 %i.k
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  store i8 -128, ptr %i.o, align 1, !tbaa !18
  call fastcc void @absorb_inner_32(ptr noundef %i.b, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.d:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.p = urem i32 %3, %switch.load
  %i.q = zext i32 %3 to i64
  %i.r = getelementptr i8, ptr %2, i64 %i.q
  %i.s = zext nneg i32 %i.p to i64                ; 3 uses
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %i.r, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %i.u, i64 %i.s, i1 false)
  %i.v = getelementptr i8, ptr %i.c, i64 %i.s
  store i8 %., ptr %i.v, align 1, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %.val1292 = load i64, ptr %i.ah, align 16
  %i.ai = load <2 x i64>, ptr %i.c, align 16
  %i.aj = load <2 x i64>, ptr %1, align 8, !tbaa !15
  %i.ak = xor <2 x i64> %i.ai, %i.aj
  store <2 x i64> %i.ak, ptr %1, align 8, !tbaa !15
  %i.al = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.am = load <2 x i64>, ptr %i.w, align 16
  %i.an = load <2 x i64>, ptr %i.al, align 8, !tbaa !15
  %i.ao = xor <2 x i64> %i.am, %i.an
  store <2 x i64> %i.ao, ptr %i.al, align 8, !tbaa !15
  %i.ap = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.aq = load <2 x i64>, ptr %i.x, align 16
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !tbaa !15
  %i.as = xor <2 x i64> %i.aq, %i.ar
  store <2 x i64> %i.as, ptr %i.ap, align 8, !tbaa !15
  %i.at = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %i.au = load <2 x i64>, ptr %i.y, align 16
  %i.av = load <2 x i64>, ptr %i.at, align 8, !tbaa !15
  %i.aw = xor <2 x i64> %i.au, %i.av
  store <2 x i64> %i.aw, ptr %i.at, align 8, !tbaa !15
  %i.ax = getelementptr i8, ptr %1, i64 64        ; 2 uses
  %i.ay = load <2 x i64>, ptr %i.z, align 16
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !tbaa !15
  %i.ba = xor <2 x i64> %i.ay, %i.az
  store <2 x i64> %i.ba, ptr %i.ax, align 8, !tbaa !15
  %i.bb = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.bc = load <2 x i64>, ptr %i.aa, align 16
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !tbaa !15
  %i.be = xor <2 x i64> %i.bc, %i.bd
  store <2 x i64> %i.be, ptr %i.bb, align 8, !tbaa !15
  %i.bf = getelementptr i8, ptr %1, i64 96        ; 2 uses
  %i.bg = load <2 x i64>, ptr %i.ab, align 16
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !tbaa !15
  %i.bi = xor <2 x i64> %i.bg, %i.bh
  store <2 x i64> %i.bi, ptr %i.bf, align 8, !tbaa !15
  %i.bj = getelementptr i8, ptr %1, i64 112       ; 2 uses
  %i.bk = load <2 x i64>, ptr %i.ac, align 16
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !tbaa !15
  %i.bm = xor <2 x i64> %i.bk, %i.bl
  store <2 x i64> %i.bm, ptr %i.bj, align 8, !tbaa !15
  %i.bn = getelementptr i8, ptr %1, i64 128       ; 2 uses
  %i.bo = load <2 x i64>, ptr %i.ad, align 16
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !tbaa !15
  %i.bq = xor <2 x i64> %i.bo, %i.bp
  store <2 x i64> %i.bq, ptr %i.bn, align 8, !tbaa !15
  %i.br = getelementptr i8, ptr %1, i64 144       ; 2 uses
  %i.bs = load <2 x i64>, ptr %i.ae, align 16
  %i.bt = load <2 x i64>, ptr %i.br, align 8, !tbaa !15
  %i.bu = xor <2 x i64> %i.bs, %i.bt
  store <2 x i64> %i.bu, ptr %i.br, align 8, !tbaa !15
  %i.bv = getelementptr i8, ptr %1, i64 160       ; 2 uses
  %i.bw = load <2 x i64>, ptr %i.af, align 16
  %i.bx = load <2 x i64>, ptr %i.bv, align 8, !tbaa !15
  %i.by = xor <2 x i64> %i.bw, %i.bx
  store <2 x i64> %i.by, ptr %i.bv, align 8, !tbaa !15
  %i.bz = getelementptr i8, ptr %1, i64 176       ; 2 uses
  %i.ca = load <2 x i64>, ptr %i.ag, align 16
  %i.cb = load <2 x i64>, ptr %i.bz, align 8, !tbaa !15
  %i.cc = xor <2 x i64> %i.ca, %i.cb
  store <2 x i64> %i.cc, ptr %i.bz, align 8, !tbaa !15
  %i.cd = getelementptr i8, ptr %1, i64 192       ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !15
  %i.cf = xor i64 %.val1292, %i.ce
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  %i.cg = zext nneg i32 %switch.load to i64
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  store i8 -128, ptr %i.ci, align 1, !tbaa !18
  call fastcc void @absorb_inner_32(ptr noundef %i.d, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i8 @_Py_LibHacl_Hacl_Hash_SHA3_get_alg(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !18
  ret i8 %.sroa.0.0.copyload
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_SHA3_malloc(i8 noundef zeroext %0) local_unnamed_addr #6 {
bb.a:
  %.off = add i8 %0, -8
  %switch = icmp ult i8 %.off, 6
  br i1 %switch, label %block_len.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

block_len.exit:                                   ; preds = %bb.a
  %i.c = zext nneg i8 %0 to i64
  %1 = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.c
  %switch.gep = getelementptr i8, ptr %1, i64 -64
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.d = tail call noalias ptr @calloc(i64 noundef %switch.load, i64 noundef 1) #20 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %block_len.exit
  %i.f = tail call noalias dereferenceable_or_null(200) ptr @calloc(i64 noundef 25, i64 noundef 8) #20 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #19
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #21 ; 8 uses
  %cond = icmp eq ptr %i.h, null
  br i1 %cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %0, ptr %i.h, align 8, !tbaa !18
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.sroa.4.0..sroa_idx, i8 0, i64 7, i1 false)
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.f, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.f) #19
  tail call void @free(ptr noundef nonnull %i.d) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %block_len.exit
  %.3 = phi ptr [ null, %block_len.exit ], [ null, %bb.d ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  ret ptr %.3
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_free(ptr noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21
  tail call void @free(ptr noundef %.sroa.4.0.copyload) #19
  tail call void @free(ptr noundef %.sroa.5.0.copyload) #19
  tail call void @free(ptr noundef %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_SHA3_copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %.sroa.038.0.copyload = load i64, ptr %0, align 8 ; 4 uses
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.439.0.copyload = load ptr, ptr %.sroa.439.0..sroa_idx, align 8, !tbaa !19
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.540.0.copyload = load ptr, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !21
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.641.0.copyload = load i64, ptr %.sroa.641.0..sroa_idx, align 8, !tbaa !15
  %.sroa.036.sroa.0.0.extract.trunc = trunc i64 %.sroa.038.0.copyload to i8
  %.sroa.036.sroa.0.0.extract.trunc.off = add i8 %.sroa.036.sroa.0.0.extract.trunc, -8
  %switch = icmp ult i8 %.sroa.036.sroa.0.0.extract.trunc.off, 6
  br i1 %switch, label %block_len.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

block_len.exit:                                   ; preds = %bb.a
  %switch.tableidx = add i64 %.sroa.038.0.copyload, 248
  %i.c = and i64 %switch.tableidx, 255
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.c
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.d = tail call noalias ptr @calloc(i64 noundef %switch.load, i64 noundef 1) #20 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %switch.lookup

switch.lookup:                                    ; preds = %block_len.exit
  %switch.tableidx56 = add i64 %.sroa.038.0.copyload, 248
  %i.f = and i64 %switch.tableidx56, 255
  %switch.gep57 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.f
  %switch.load58 = load i64, ptr %switch.gep57, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.540.0.copyload, i64 %switch.load58, i1 false)
  %i.g = tail call noalias dereferenceable_or_null(200) ptr @calloc(i64 noundef 25, i64 noundef 8) #20 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = and i64 %.sroa.038.0.copyload, 255
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %switch.lookup
  tail call void @free(ptr noundef nonnull %i.d) #19
  br label %bb.g

bb.d:                                             ; preds = %switch.lookup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.g, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.439.0.copyload, i64 200, i1 false)
  %i.j = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #21 ; 6 uses
  %cond = icmp eq ptr %i.j, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.i, ptr %i.j, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.g, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.sroa.641.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.g) #19
  tail call void @free(ptr noundef nonnull %i.d) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f, %block_len.exit
  %.3 = phi ptr [ null, %block_len.exit ], [ null, %bb.c ], [ null, %bb.f ], [ %i.j, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_reset(ptr nofree noundef captures(none) initializes((24, 32)) %0) local_unnamed_addr #13 {
bb.a:
  %.sroa.0.sroa.4 = alloca [7 x i8], align 1      ; 4 uses
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !18
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.sroa.4, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.47.0..sroa_idx, i64 7, i1 false)
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.a = load <2 x ptr>, ptr %.sroa.58.0..sroa_idx, align 8, !tbaa !23
  %.sroa.58.0.copyload = load ptr, ptr %.sroa.58.0..sroa_idx, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.58.0.copyload, i8 0, i64 200, i1 false)
  store i8 %.sroa.0.0.copyload, ptr %0, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.sroa.4, i64 7, i1 false), !tbaa.struct !24
  store <2 x ptr> %i.a, ptr %.sroa.58.0..sroa_idx, align 8, !tbaa !23
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.4)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_SHA3_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.Hacl_Hash_SHA3_hash_buf_s, align 8 ; 2 uses
  %.sroa.697 = alloca [7 x i8], align 1           ; 2 uses
  %4 = alloca %struct.Hacl_Hash_SHA3_hash_buf_s, align 8 ; 3 uses
  %.sroa.0159.0.copyload = load i8, ptr %0, align 8, !tbaa !18 ; 28 uses
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.5162.0.copyload = load i64, ptr %.sroa.5162.0..sroa_idx, align 8, !tbaa !15 ; 13 uses
  %i.a = zext i32 %2 to i64                       ; 4 uses
  %i.b = xor i64 %.sroa.5162.0.copyload, -1
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i8 %.sroa.0159.0.copyload, -8 ; 2 uses
  %i.d = icmp ult i8 %switch.tableidx, 6
  br i1 %i.d, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.g = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.g
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.h = urem i64 %.sroa.5162.0.copyload, %switch.load
  %i.i = icmp eq i64 %i.h, 0
  %i.j = icmp ne i64 %.sroa.5162.0.copyload, 0    ; 4 uses
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.d, label %switch.lookup398

bb.d:                                             ; preds = %switch.lookup
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable [
    i8 9, label %block_len.exit212
    i8 8, label %block_len.exit208
    i8 10, label %block_len.exit208.thread273
    i8 11, label %block_len.exit208.thread276
    i8 12, label %block_len.exit208.thread279
    i8 13, label %block_len.exit208
  ]

block_len.exit208.thread273:                      ; preds = %bb.d
  br label %block_len.exit212

block_len.exit208.thread276:                      ; preds = %bb.d
  br label %block_len.exit212

block_len.exit208.thread279:                      ; preds = %bb.d
  br label %block_len.exit212

default.unreachable:                              ; preds = %bb.d
  unreachable

switch.lookup398:                                 ; preds = %switch.lookup
  %i.k = zext nneg i8 %.sroa.0159.0.copyload to i64
  %5 = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.k
  %switch.gep399 = getelementptr i8, ptr %5, i64 -64
  %switch.load400 = load i64, ptr %switch.gep399, align 8
  %i.l = urem i64 %.sroa.5162.0.copyload, %switch.load400
  %i.m = trunc nuw nsw i64 %i.l to i32
  br label %block_len.exit208

block_len.exit208:                                ; preds = %bb.d, %bb.d, %switch.lookup398
  %.0194 = phi i32 [ %i.m, %switch.lookup398 ], [ 136, %bb.d ], [ 136, %bb.d ] ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable393 [
    i8 9, label %block_len.exit212
    i8 8, label %bb.e
    i8 10, label %bb.f
    i8 11, label %bb.g
    i8 12, label %bb.h
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %block_len.exit208, %block_len.exit208
  br label %block_len.exit212

bb.f:                                             ; preds = %block_len.exit208
  br label %block_len.exit212

bb.g:                                             ; preds = %block_len.exit208
  br label %block_len.exit212

bb.h:                                             ; preds = %block_len.exit208
  br label %block_len.exit212

default.unreachable393:                           ; preds = %block_len.exit208
  unreachable

block_len.exit212:                                ; preds = %bb.d, %block_len.exit208.thread279, %block_len.exit208.thread276, %block_len.exit208.thread273, %block_len.exit208, %bb.e, %bb.f, %bb.g, %bb.h
  %.0194272 = phi i32 [ %.0194, %block_len.exit208 ], [ %.0194, %bb.e ], [ %.0194, %bb.h ], [ %.0194, %bb.f ], [ %.0194, %bb.g ], [ 104, %block_len.exit208.thread273 ], [ 72, %block_len.exit208.thread276 ], [ 168, %block_len.exit208.thread279 ], [ 144, %bb.d ] ; 7 uses
  %.0.i211 = phi i32 [ 144, %block_len.exit208 ], [ 136, %bb.e ], [ 168, %bb.h ], [ 104, %bb.f ], [ 72, %bb.g ], [ 104, %block_len.exit208.thread273 ], [ 72, %block_len.exit208.thread276 ], [ 168, %block_len.exit208.thread279 ], [ 144, %bb.d ]
  %i.n = sub nsw i32 %.0.i211, %.0194272
  %.not = icmp ugt i32 %2, %i.n
  br i1 %.not, label %bb.i, label %switch.lookup402

switch.lookup402:                                 ; preds = %block_len.exit212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %.sroa.4119.0.copyload = load ptr, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %i.o = zext nneg i8 %.sroa.0159.0.copyload to i64
  %6 = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.o
  %switch.gep403 = getelementptr i8, ptr %6, i64 -64
  %switch.load404 = load i64, ptr %switch.gep403, align 8
  %i.p = urem i64 %.sroa.5162.0.copyload, %switch.load404
  %i.q = icmp eq i64 %i.p, 0
  %or.cond3 = and i1 %i.j, %i.q
  %switch.tableidx405 = add nsw i8 %.sroa.0159.0.copyload, -8
  %i.r = zext nneg i8 %switch.tableidx405 to i64  ; 2 uses
  br i1 %or.cond3, label %switch.lookup406, label %switch.lookup410

switch.lookup406:                                 ; preds = %switch.lookup402
  %switch.gep407 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.r
  %switch.load408 = load i64, ptr %switch.gep407, align 8
  br label %block_len.exit216

switch.lookup410:                                 ; preds = %switch.lookup402
  %switch.gep411 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.r
  %switch.load412 = load i64, ptr %switch.gep411, align 8
  %i.s = urem i64 %.sroa.5162.0.copyload, %switch.load412
  br label %block_len.exit216

block_len.exit216:                                ; preds = %switch.lookup406, %switch.lookup410
  %.0195 = phi i64 [ %i.s, %switch.lookup410 ], [ %switch.load408, %switch.lookup406 ]
  %i.t = getelementptr i8, ptr %.sroa.4119.0.copyload, i64 %.0195
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %1, i64 %i.a, i1 false)
  %i.u = add i64 %.sroa.5162.0.copyload, %i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %.sink.split

bb.i:                                             ; preds = %block_len.exit212
  %i.v = icmp eq i32 %.0194272, 0
  br i1 %i.v, label %switch.lookup414, label %bb.o

switch.lookup414:                                 ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.697, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4160.0..sroa_idx, i64 7, i1 false)
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.5103.0.copyload = load ptr, ptr %.sroa.5103.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %.sroa.6104.0.copyload = load ptr, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21 ; 3 uses
  %i.w = zext nneg i8 %.sroa.0159.0.copyload to i64
  %7 = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.w
  %switch.gep415 = getelementptr i8, ptr %7, i64 -64
  %switch.load416 = load i64, ptr %switch.gep415, align 8
  %i.x = urem i64 %.sroa.5162.0.copyload, %switch.load416
  %i.y = icmp eq i64 %i.x, 0
  %or.cond5 = and i1 %i.j, %i.y
  br i1 %or.cond5, label %block_len.exit222, label %switch.lookup418

switch.lookup418:                                 ; preds = %switch.lookup414
  %i.z = zext nneg i8 %.sroa.0159.0.copyload to i64
  %8 = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.z
  %switch.gep419 = getelementptr i8, ptr %8, i64 -64
  %switch.load420 = load i64, ptr %switch.gep419, align 8
  %i.aa = urem i64 %.sroa.5162.0.copyload, %switch.load420
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %switch.lookup422, label %block_len.exit222

block_len.exit222:                                ; preds = %switch.lookup414, %switch.lookup418
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0159.0.copyload, ptr noundef %.sroa.5103.0.copyload, ptr noundef %.sroa.6104.0.copyload, i32 noundef 1)
  br label %switch.lookup422

switch.lookup422:                                 ; preds = %block_len.exit222, %switch.lookup418
  %i.ac = zext nneg i8 %.sroa.0159.0.copyload to i64
  %9 = getelementptr [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.ac
  %switch.gep423 = getelementptr i8, ptr %9, i64 -32
  %switch.load424 = load i32, ptr %switch.gep423, align 4
  %i.ad = urem i32 %2, %switch.load424
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %switch.lookup426

bb.j:                                             ; preds = %switch.lookup422
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable367 [
    i8 9, label %block_len.exit232.thread
    i8 8, label %block_len.exit232
    i8 10, label %block_len.exit232.thread294
    i8 11, label %block_len.exit232.thread296
    i8 12, label %block_len.exit232.thread298
    i8 13, label %block_len.exit232
  ]

block_len.exit232.thread:                         ; preds = %bb.j
  %i.af = add i32 %2, -144
  br label %block_len.exit236.thread

block_len.exit232.thread294:                      ; preds = %bb.j
  %i.ag = add i32 %2, -104
  br label %block_len.exit236.thread303

block_len.exit232.thread296:                      ; preds = %bb.j
  %i.ah = add i32 %2, -72
  br label %block_len.exit236.thread307

block_len.exit232.thread298:                      ; preds = %bb.j
  %i.ai = add i32 %2, -168
  br label %block_len.exit236.thread311

default.unreachable367:                           ; preds = %bb.j
  unreachable

switch.lookup426:                                 ; preds = %switch.lookup422
  %i.aj = zext nneg i8 %.sroa.0159.0.copyload to i64
  %10 = getelementptr [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.aj
  %switch.gep427 = getelementptr i8, ptr %10, i64 -32
  %switch.load428 = load i32, ptr %switch.gep427, align 4
  %i.ak = urem i32 %2, %switch.load428
  br label %block_len.exit232

block_len.exit232:                                ; preds = %bb.j, %bb.j, %switch.lookup426
  %.0197 = phi i32 [ %i.ak, %switch.lookup426 ], [ 136, %bb.j ], [ 136, %bb.j ]
  %i.al = sub i32 %2, %.0197                      ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable368 [
    i8 9, label %block_len.exit236.thread
    i8 8, label %block_len.exit236
    i8 10, label %block_len.exit236.thread303
    i8 11, label %block_len.exit236.thread307
    i8 12, label %block_len.exit236.thread311
    i8 13, label %block_len.exit236
  ]

default.unreachable368:                           ; preds = %block_len.exit232
  unreachable

block_len.exit236.thread:                         ; preds = %block_len.exit232.thread, %block_len.exit232
  %.ph = phi i32 [ %i.af, %block_len.exit232.thread ], [ %i.al, %block_len.exit232 ]
  %i.am = udiv i32 %.ph, 144
  br label %block_len.exit238.thread

block_len.exit236.thread303:                      ; preds = %block_len.exit232.thread294, %block_len.exit232
  %.ph302 = phi i32 [ %i.ag, %block_len.exit232.thread294 ], [ %i.al, %block_len.exit232 ]
  %i.an = udiv i32 %.ph302, 104
  br label %block_len.exit238.thread317

block_len.exit236.thread307:                      ; preds = %block_len.exit232.thread296, %block_len.exit232
  %.ph306 = phi i32 [ %i.ah, %block_len.exit232.thread296 ], [ %i.al, %block_len.exit232 ]
  %i.ao = udiv i32 %.ph306, 72
  br label %block_len.exit238.thread321

block_len.exit236.thread311:                      ; preds = %block_len.exit232.thread298, %block_len.exit232
  %.ph310 = phi i32 [ %i.ai, %block_len.exit232.thread298 ], [ %i.al, %block_len.exit232 ]
  %i.ap = udiv i32 %.ph310, 168
  br label %block_len.exit238.thread325

block_len.exit236:                                ; preds = %block_len.exit232, %block_len.exit232
  %i.aq = udiv i32 %i.al, 136                     ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable369 [
    i8 9, label %block_len.exit238.thread
    i8 8, label %block_len.exit238
    i8 10, label %block_len.exit238.thread317
    i8 11, label %block_len.exit238.thread321
    i8 12, label %block_len.exit238.thread325
    i8 13, label %block_len.exit238
  ]

default.unreachable369:                           ; preds = %block_len.exit236
  unreachable

block_len.exit238.thread:                         ; preds = %block_len.exit236.thread, %block_len.exit236
  %.ph313 = phi i32 [ %i.am, %block_len.exit236.thread ], [ %i.aq, %block_len.exit236 ]
  %i.ar = mul i32 %.ph313, 144                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %1, i64 %i.as
  br label %block_len.exit240

block_len.exit238.thread317:                      ; preds = %block_len.exit236.thread303, %block_len.exit236
  %.ph316 = phi i32 [ %i.an, %block_len.exit236.thread303 ], [ %i.aq, %block_len.exit236 ]
  %i.au = mul nuw i32 %.ph316, 104                ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr i8, ptr %1, i64 %i.av
  br label %block_len.exit240

block_len.exit238.thread321:                      ; preds = %block_len.exit236.thread307, %block_len.exit236
  %.ph320 = phi i32 [ %i.ao, %block_len.exit236.thread307 ], [ %i.aq, %block_len.exit236 ]
  %i.ax = mul nuw i32 %.ph320, 72                 ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %1, i64 %i.ay
  br label %block_len.exit240

block_len.exit238.thread325:                      ; preds = %block_len.exit236.thread311, %block_len.exit236
  %.ph324 = phi i32 [ %i.ap, %block_len.exit236.thread311 ], [ %i.aq, %block_len.exit236 ]
  %i.ba = mul i32 %.ph324, 168                    ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %1, i64 %i.bb
  br label %block_len.exit240

block_len.exit238:                                ; preds = %block_len.exit236, %block_len.exit236
  %i.bd = mul nuw i32 %i.aq, 136                  ; 6 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %1, i64 %i.be     ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable370 [
    i8 9, label %block_len.exit240
    i8 8, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.k
  ]

bb.k:                                             ; preds = %block_len.exit238, %block_len.exit238
  br label %block_len.exit240

bb.l:                                             ; preds = %block_len.exit238
  br label %block_len.exit240

bb.m:                                             ; preds = %block_len.exit238
  br label %block_len.exit240

bb.n:                                             ; preds = %block_len.exit238
  br label %block_len.exit240

default.unreachable370:                           ; preds = %block_len.exit238
  unreachable

block_len.exit240:                                ; preds = %block_len.exit238.thread325, %block_len.exit238.thread321, %block_len.exit238.thread317, %block_len.exit238.thread, %block_len.exit238, %bb.k, %bb.l, %bb.m, %bb.n
  %i.bg = phi ptr [ %i.bf, %block_len.exit238 ], [ %i.bf, %bb.k ], [ %i.at, %block_len.exit238.thread ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ], [ %i.aw, %block_len.exit238.thread317 ], [ %i.az, %block_len.exit238.thread321 ], [ %i.bc, %block_len.exit238.thread325 ], [ %i.bf, %bb.n ]
  %i.bh = phi i32 [ %i.bd, %block_len.exit238 ], [ %i.bd, %bb.k ], [ %i.ar, %block_len.exit238.thread ], [ %i.bd, %bb.l ], [ %i.bd, %bb.m ], [ %i.au, %block_len.exit238.thread317 ], [ %i.ax, %block_len.exit238.thread321 ], [ %i.ba, %block_len.exit238.thread325 ], [ %i.bd, %bb.n ] ; 2 uses
  %.0.i239 = phi i32 [ 144, %block_len.exit238 ], [ 136, %bb.k ], [ 144, %block_len.exit238.thread ], [ 104, %bb.l ], [ 72, %bb.m ], [ 104, %block_len.exit238.thread317 ], [ 72, %block_len.exit238.thread321 ], [ 168, %block_len.exit238.thread325 ], [ 168, %bb.n ]
  %i.bi = sub i32 %2, %i.bh
  %i.bj = udiv i32 %i.bh, %.0.i239
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0159.0.copyload, ptr noundef %.sroa.5103.0.copyload, ptr noundef %1, i32 noundef %i.bj)
  %i.bk = zext i32 %i.bi to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.6104.0.copyload, ptr align 1 %i.bg, i64 %i.bk, i1 false)
  %i.bl = add i64 %.sroa.5162.0.copyload, %i.a
  store i8 %.sroa.0159.0.copyload, ptr %0, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4160.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.697, i64 7, i1 false)
  store ptr %.sroa.5103.0.copyload, ptr %.sroa.5103.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

bb.o:                                             ; preds = %bb.i
  %.sroa.454.0.copyload328 = load ptr, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable374 [
    i8 9, label %block_len.exit242.thread
    i8 8, label %block_len.exit242
    i8 10, label %block_len.exit242.thread330
    i8 11, label %block_len.exit242.thread334
    i8 12, label %block_len.exit242.thread338
    i8 13, label %block_len.exit242
  ]

block_len.exit242.thread:                         ; preds = %bb.o
  %i.bm = sub nsw i32 144, %.0194272              ; 2 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr i8, ptr %1, i64 %i.bn
  br label %block_len.exit244

block_len.exit242.thread330:                      ; preds = %bb.o
  %i.bp = sub nsw i32 104, %.0194272              ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr i8, ptr %1, i64 %i.bq
  br label %block_len.exit244

block_len.exit242.thread334:                      ; preds = %bb.o
  %i.bs = sub nsw i32 72, %.0194272               ; 2 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr i8, ptr %1, i64 %i.bt
  br label %block_len.exit244

block_len.exit242.thread338:                      ; preds = %bb.o
  %i.bv = sub nuw nsw i32 168, %.0194272          ; 2 uses
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = getelementptr i8, ptr %1, i64 %i.bw
  br label %block_len.exit244

default.unreachable374:                           ; preds = %bb.o
  unreachable

block_len.exit242:                                ; preds = %bb.o, %bb.o
  %i.by = sub nsw i32 136, %.0194272              ; 6 uses
  %i.bz = zext i32 %i.by to i64                   ; 6 uses
  %i.ca = getelementptr i8, ptr %1, i64 %i.bz     ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable389 [
    i8 9, label %block_len.exit244
    i8 8, label %bb.p
    i8 10, label %bb.q
    i8 11, label %bb.r
    i8 12, label %bb.s
    i8 13, label %bb.p
  ]

bb.p:                                             ; preds = %block_len.exit242, %block_len.exit242
  br label %block_len.exit244

bb.q:                                             ; preds = %block_len.exit242
  br label %block_len.exit244

bb.r:                                             ; preds = %block_len.exit242
  br label %block_len.exit244

bb.s:                                             ; preds = %block_len.exit242
  br label %block_len.exit244

default.unreachable389:                           ; preds = %block_len.exit242
  unreachable

block_len.exit244:                                ; preds = %block_len.exit242.thread338, %block_len.exit242.thread334, %block_len.exit242.thread330, %block_len.exit242.thread, %block_len.exit242, %bb.p, %bb.q, %bb.r, %bb.s
  %i.cb = phi ptr [ %i.ca, %block_len.exit242 ], [ %i.ca, %bb.p ], [ %i.bo, %block_len.exit242.thread ], [ %i.ca, %bb.q ], [ %i.ca, %bb.r ], [ %i.br, %block_len.exit242.thread330 ], [ %i.bu, %block_len.exit242.thread334 ], [ %i.bx, %block_len.exit242.thread338 ], [ %i.ca, %bb.s ] ; 2 uses
  %i.cc = phi i64 [ %i.bz, %block_len.exit242 ], [ %i.bz, %bb.p ], [ %i.bn, %block_len.exit242.thread ], [ %i.bz, %bb.q ], [ %i.bz, %bb.r ], [ %i.bq, %block_len.exit242.thread330 ], [ %i.bt, %block_len.exit242.thread334 ], [ %i.bw, %block_len.exit242.thread338 ], [ %i.bz, %bb.s ] ; 2 uses
  %i.cd = phi i32 [ %i.by, %block_len.exit242 ], [ %i.by, %bb.p ], [ %i.bm, %block_len.exit242.thread ], [ %i.by, %bb.q ], [ %i.by, %bb.r ], [ %i.bp, %block_len.exit242.thread330 ], [ %i.bs, %block_len.exit242.thread334 ], [ %i.bv, %block_len.exit242.thread338 ], [ %i.by, %bb.s ] ; 2 uses
  %.0.i243 = phi i64 [ 144, %block_len.exit242 ], [ 136, %bb.p ], [ 144, %block_len.exit242.thread ], [ 104, %bb.q ], [ 72, %bb.r ], [ 104, %block_len.exit242.thread330 ], [ 72, %block_len.exit242.thread334 ], [ 168, %block_len.exit242.thread338 ], [ 168, %bb.s ]
  %i.ce = urem i64 %.sroa.5162.0.copyload, %.0.i243
  %i.cf = icmp eq i64 %i.ce, 0
  %or.cond10 = and i1 %i.j, %i.cf
  %switch.tableidx429 = add nsw i8 %.sroa.0159.0.copyload, -8
  %i.cg = zext nneg i8 %switch.tableidx429 to i64 ; 2 uses
  br i1 %or.cond10, label %switch.lookup430, label %switch.lookup434

switch.lookup430:                                 ; preds = %block_len.exit244
  %switch.gep431 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.cg
  %switch.load432 = load i64, ptr %switch.gep431, align 8
  br label %block_len.exit246

switch.lookup434:                                 ; preds = %block_len.exit244
  %switch.gep435 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.cg
  %switch.load436 = load i64, ptr %switch.gep435, align 8
  %i.ch = urem i64 %.sroa.5162.0.copyload, %switch.load436
  br label %block_len.exit246

block_len.exit246:                                ; preds = %switch.lookup430, %switch.lookup434
  %.0198 = phi i64 [ %i.ch, %switch.lookup434 ], [ %switch.load432, %switch.lookup430 ]
  %i.ci = getelementptr i8, ptr %.sroa.454.0.copyload328, i64 %.0198
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %1, i64 %i.cc, i1 false)
  %i.cj = add i64 %i.cc, %.sroa.5162.0.copyload   ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  store ptr %.sroa.454.0.copyload328, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21
  store i64 %i.cj, ptr %.sroa.5162.0..sroa_idx, align 8, !tbaa !15
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !18 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %i.cl = zext nneg i8 %.sroa.0159.0.copyload to i64
  %11 = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.cl
  %switch.gep439.a = getelementptr i8, ptr %11, i64 -64
  %switch.load440 = load i64, ptr %switch.gep439.a, align 8
  %i.cm = urem i64 %i.cj, %switch.load440
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = icmp ne i64 %i.cj, 0
  %or.cond12 = and i1 %i.co, %i.cn
  br i1 %or.cond12, label %block_len.exit252, label %switch.lookup442

switch.lookup442:                                 ; preds = %block_len.exit246
  %i.cp = zext nneg i8 %.sroa.0159.0.copyload to i64
  %12 = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.cp
  %switch.gep443 = getelementptr i8, ptr %12, i64 -64
  %switch.load444 = load i64, ptr %switch.gep443, align 8
  %i.cq = urem i64 %i.cj, %switch.load444
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %switch.lookup448, label %block_len.exit252

block_len.exit252:                                ; preds = %block_len.exit246, %switch.lookup442
  %switch.tableidx459 = add i8 %.sroa.0.0.copyload, -8 ; 2 uses
  %i.cs = icmp ult i8 %switch.tableidx459, 6
  br i1 %i.cs, label %switch.lookup460.a, label %bb.t

bb.t:                                             ; preds = %block_len.exit252
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ct, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup460.a:                               ; preds = %block_len.exit252
  %switch.tableidx445 = shl nuw nsw i8 %.sroa.0159.0.copyload, 3
  %i.cv = add nsw i8 %switch.tableidx445, -64
  %switch.shiftamt = zext nneg i8 %i.cv to i48
  %switch.downshift = lshr i48 -131218626015096, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i8
  %i.cw = shl nuw nsw i8 %switch.tableidx459, 3
  %switch.shiftamt462 = zext nneg i8 %i.cw to i48
  %switch.downshift463 = lshr i48 -131218626015096, %switch.shiftamt462
  %switch.masked464 = trunc i48 %switch.downshift463 to i8
  %i.cx = udiv i8 %switch.masked, %switch.masked464
  %.zext381 = zext nneg i8 %i.cx to i32
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0.0.copyload, ptr noundef %.sroa.5.0.copyload, ptr noundef %.sroa.454.0.copyload328, i32 noundef %.zext381)
  br label %switch.lookup448

switch.lookup448:                                 ; preds = %switch.lookup460.a, %switch.lookup442
  %i.cy = sub i32 %2, %i.cd                       ; 9 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = zext nneg i8 %.sroa.0159.0.copyload to i64
  %13 = getelementptr [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.da
  %switch.gep449 = getelementptr i8, ptr %13, i64 -32
  %switch.load450 = load i32, ptr %switch.gep449, align 4
  %i.db = urem i32 %i.cy, %switch.load450
  %i.dc = icmp ne i32 %i.db, 0
  %.not203 = icmp eq i32 %2, %i.cd
  %or.cond206 = select i1 %i.dc, i1 true, i1 %.not203
  br i1 %or.cond206, label %switch.lookup452, label %bb.u

bb.u:                                             ; preds = %switch.lookup448
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable386 [
    i8 9, label %block_len.exit262.thread
    i8 8, label %block_len.exit262
    i8 10, label %block_len.exit262.thread343
    i8 11, label %block_len.exit262.thread345
    i8 12, label %block_len.exit262.thread347
    i8 13, label %block_len.exit262
  ]

block_len.exit262.thread:                         ; preds = %bb.u
  %i.dd = add i32 %i.cy, -144
  br label %block_len.exit266.thread

block_len.exit262.thread343:                      ; preds = %bb.u
  %i.de = add i32 %i.cy, -104
  br label %block_len.exit266.thread353

block_len.exit262.thread345:                      ; preds = %bb.u
  %i.df = add i32 %i.cy, -72
  br label %block_len.exit266.thread357

block_len.exit262.thread347:                      ; preds = %bb.u
  %i.dg = add i32 %i.cy, -168
  br label %block_len.exit266.thread361

default.unreachable386:                           ; preds = %bb.u
  unreachable

switch.lookup452:                                 ; preds = %switch.lookup448
  %i.dh = zext nneg i8 %.sroa.0159.0.copyload to i64
  %14 = getelementptr [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.dh
  %switch.gep453 = getelementptr i8, ptr %14, i64 -32
  %switch.load454 = load i32, ptr %switch.gep453, align 4
  %i.di = urem i32 %i.cy, %switch.load454
  br label %block_len.exit262

block_len.exit262:                                ; preds = %bb.u, %bb.u, %switch.lookup452
  %.0200 = phi i32 [ %i.di, %switch.lookup452 ], [ 136, %bb.u ], [ 136, %bb.u ]
  %i.dj = sub i32 %i.cy, %.0200                   ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable384 [
    i8 9, label %block_len.exit266.thread
    i8 8, label %block_len.exit266
    i8 10, label %block_len.exit266.thread353
    i8 11, label %block_len.exit266.thread357
    i8 12, label %block_len.exit266.thread361
    i8 13, label %block_len.exit266
  ]

default.unreachable384:                           ; preds = %block_len.exit262
  unreachable

block_len.exit266.thread:                         ; preds = %block_len.exit262.thread, %block_len.exit262
  %.ph349 = phi i32 [ %i.dd, %block_len.exit262.thread ], [ %i.dj, %block_len.exit262 ]
  %i.dk = udiv i32 %.ph349, 144
  br label %block_len.exit268

block_len.exit266.thread353:                      ; preds = %block_len.exit262.thread343, %block_len.exit262
  %.ph352 = phi i32 [ %i.de, %block_len.exit262.thread343 ], [ %i.dj, %block_len.exit262 ]
  %i.dl = udiv i32 %.ph352, 104
  br label %block_len.exit268

block_len.exit266.thread357:                      ; preds = %block_len.exit262.thread345, %block_len.exit262
  %.ph356 = phi i32 [ %i.df, %block_len.exit262.thread345 ], [ %i.dj, %block_len.exit262 ]
  %i.dm = udiv i32 %.ph356, 72
  br label %block_len.exit268

block_len.exit266.thread361:                      ; preds = %block_len.exit262.thread347, %block_len.exit262
  %.ph360 = phi i32 [ %i.dg, %block_len.exit262.thread347 ], [ %i.dj, %block_len.exit262 ]
  %i.dn = udiv i32 %.ph360, 168
  br label %block_len.exit268

block_len.exit266:                                ; preds = %block_len.exit262, %block_len.exit262
  %i.do = udiv i32 %i.dj, 136                     ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable385 [
    i8 9, label %block_len.exit268
    i8 8, label %bb.v
    i8 10, label %bb.w
    i8 11, label %bb.x
    i8 12, label %bb.y
    i8 13, label %bb.v
  ]

bb.v:                                             ; preds = %block_len.exit266, %block_len.exit266
  br label %block_len.exit268

bb.w:                                             ; preds = %block_len.exit266
  br label %block_len.exit268

bb.x:                                             ; preds = %block_len.exit266
  br label %block_len.exit268

bb.y:                                             ; preds = %block_len.exit266
  br label %block_len.exit268

default.unreachable385:                           ; preds = %block_len.exit266
  unreachable

block_len.exit268:                                ; preds = %block_len.exit266.thread361, %block_len.exit266.thread357, %block_len.exit266.thread353, %block_len.exit266.thread, %block_len.exit266, %bb.v, %bb.w, %bb.x, %bb.y
  %i.dp = phi i32 [ %i.do, %block_len.exit266 ], [ %i.do, %bb.v ], [ %i.dk, %block_len.exit266.thread ], [ %i.do, %bb.w ], [ %i.do, %bb.x ], [ %i.dl, %block_len.exit266.thread353 ], [ %i.dm, %block_len.exit266.thread357 ], [ %i.dn, %block_len.exit266.thread361 ], [ %i.do, %bb.y ]
  %.0.i267 = phi i32 [ 144, %block_len.exit266 ], [ 136, %bb.v ], [ 144, %block_len.exit266.thread ], [ 104, %bb.w ], [ 72, %bb.x ], [ 104, %block_len.exit266.thread353 ], [ 72, %block_len.exit266.thread357 ], [ 168, %block_len.exit266.thread361 ], [ 168, %bb.y ]
  %switch.tableidx455 = add i8 %.sroa.0.0.copyload, -8 ; 2 uses
  %i.dq = icmp ult i8 %switch.tableidx455, 6
  br i1 %i.dq, label %switch.lookup456, label %bb.z

bb.z:                                             ; preds = %block_len.exit268
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ds = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup456:                                 ; preds = %block_len.exit268
  %i.dt = mul i32 %.0.i267, %i.dp                 ; 3 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr i8, ptr %i.cb, i64 %i.du
  %i.dw = sub i32 %i.cy, %i.dt
  %i.dx = zext nneg i8 %switch.tableidx455 to i64
  %switch.gep457 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.dx
  %switch.load458 = load i32, ptr %switch.gep457, align 4
  %i.dy = udiv i32 %i.dt, %switch.load458
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0.0.copyload, ptr noundef %.sroa.5.0.copyload, ptr noundef %i.cb, i32 noundef %i.dy)
  %i.dz = zext i32 %i.dw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.454.0.copyload328, ptr align 1 %i.dv, i64 %i.dz, i1 false)
  %i.ea = add i64 %i.cj, %i.cz
  store i8 %.sroa.0.0.copyload, ptr %0, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4160.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.ck, i64 7, i1 false)
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

.sink.split:                                      ; preds = %block_len.exit240, %switch.lookup456, %block_len.exit216
  %.sroa.4119.0.copyload.sink = phi ptr [ %.sroa.4119.0.copyload, %block_len.exit216 ], [ %.sroa.454.0.copyload328, %switch.lookup456 ], [ %.sroa.6104.0.copyload, %block_len.exit240 ]
  %.sink = phi i64 [ %i.u, %block_len.exit216 ], [ %i.ea, %switch.lookup456 ], [ %i.bl, %block_len.exit240 ]
  store ptr %.sroa.4119.0.copyload.sink, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21
  store i64 %.sink, ptr %.sroa.5162.0..sroa_idx, align 8, !tbaa !15
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ 3, %bb.a ], [ 0, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: nofree nounwind uwtable
define hidden zeroext range(i8 0, 2) i8 @_Py_LibHacl_Hacl_Hash_SHA3_digest(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !18 ; 3 uses
  %i.a = and i8 %.sroa.0.0.copyload.i, -2
  %or.cond = icmp eq i8 %i.a, 12
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i8 %.sroa.0.0.copyload.i, -8 ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 4
  br i1 %i.b, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 234) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_hash_len, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call fastcc void @digest_(i8 noundef zeroext %.sroa.0.0.copyload.i, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %switch.load)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i8 [ 0, %switch.lookup ], [ 1, %bb.a ]
  ret i8 %.0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @digest_(i8 noundef zeroext %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 1, 0) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [25 x i64], align 16              ; 15 uses
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.441.0.copyload = load ptr, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !19 ; 5 uses
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.542.0.copyload = load ptr, ptr %.sroa.542.0..sroa_idx, align 8, !tbaa !21 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !15 ; 3 uses
  %switch.tableidx = add i8 %0, -8                ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 6
  br i1 %i.b, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.digest_.19, i64 %i.e
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.f = urem i64 %.sroa.6.0.copyload, %switch.load
  %i.g = icmp eq i64 %i.f, 0
  %i.h = icmp ne i64 %.sroa.6.0.copyload, 0
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.c, label %switch.lookup112

bb.c:                                             ; preds = %switch.lookup
  switch i8 %0, label %default.unreachable [
    i8 9, label %block_len.exit57.thread
    i8 8, label %block_len.exit57
    i8 10, label %block_len.exit57.thread75
    i8 11, label %block_len.exit57.thread78
    i8 12, label %block_len.exit57.thread81
    i8 13, label %block_len.exit57
  ]

block_len.exit57.thread:                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.441.0.copyload, i64 200, i1 false)
  br label %block_len.exit61

block_len.exit57.thread75:                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.441.0.copyload, i64 200, i1 false)
  br label %block_len.exit61

block_len.exit57.thread78:                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.441.0.copyload, i64 200, i1 false)
  br label %block_len.exit61

block_len.exit57.thread81:                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.441.0.copyload, i64 200, i1 false)
  br label %block_len.exit61

default.unreachable:                              ; preds = %bb.c
  unreachable

switch.lookup112:                                 ; preds = %switch.lookup
  %i.i = zext nneg i8 %0 to i64
  %4 = getelementptr [8 x i8], ptr @switch.table.digest_.19, i64 %i.i
  %switch.gep113 = getelementptr i8, ptr %4, i64 -64
  %switch.load114 = load i64, ptr %switch.gep113, align 8
  %i.j = urem i64 %.sroa.6.0.copyload, %switch.load114
  %i.k = trunc nuw nsw i64 %i.j to i32
  br label %block_len.exit57

block_len.exit57:                                 ; preds = %bb.c, %bb.c, %switch.lookup112
  %.054 = phi i32 [ %i.k, %switch.lookup112 ], [ 136, %bb.c ], [ 136, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.441.0.copyload, i64 200, i1 false)
  switch i8 %0, label %default.unreachable109 [
    i8 9, label %block_len.exit61
    i8 8, label %bb.d
    i8 10, label %bb.e
    i8 11, label %bb.f
    i8 12, label %bb.g
    i8 13, label %bb.d
  ]

bb.d:                                             ; preds = %block_len.exit57, %block_len.exit57
  br label %block_len.exit61

bb.e:                                             ; preds = %block_len.exit57
  br label %block_len.exit61

bb.f:                                             ; preds = %block_len.exit57
  br label %block_len.exit61

bb.g:                                             ; preds = %block_len.exit57
  br label %block_len.exit61

default.unreachable109:                           ; preds = %block_len.exit57
  unreachable

block_len.exit61:                                 ; preds = %block_len.exit57.thread81, %block_len.exit57.thread78, %block_len.exit57.thread75, %block_len.exit57.thread, %block_len.exit57, %bb.d, %bb.e, %bb.f, %bb.g
  %.05474 = phi i32 [ %.054, %block_len.exit57 ], [ %.054, %bb.d ], [ 144, %block_len.exit57.thread ], [ %.054, %bb.e ], [ %.054, %bb.f ], [ 104, %block_len.exit57.thread75 ], [ 72, %block_len.exit57.thread78 ], [ 168, %block_len.exit57.thread81 ], [ %.054, %bb.g ] ; 8 uses
  %.0.i60 = phi i8 [ -112, %block_len.exit57 ], [ -120, %bb.d ], [ -112, %block_len.exit57.thread ], [ 104, %bb.e ], [ 72, %bb.f ], [ 104, %block_len.exit57.thread75 ], [ 72, %block_len.exit57.thread78 ], [ -88, %block_len.exit57.thread81 ], [ -88, %bb.g ]
  %.lhs.trunc = trunc nuw i32 %.05474 to i8       ; 2 uses
  %i.l = urem i8 %.lhs.trunc, %.0.i60
  %i.m = icmp eq i8 %i.l, 0
  %i.n = icmp ne i32 %.05474, 0
  %or.cond3 = and i1 %i.n, %i.m
  br i1 %or.cond3, label %bb.h, label %switch.lookup116

bb.h:                                             ; preds = %block_len.exit61
  switch i8 %0, label %default.unreachable101 [
    i8 9, label %block_len.exit63.thread
    i8 8, label %block_len.exit63
    i8 10, label %block_len.exit63.thread85
    i8 11, label %block_len.exit63.thread87
    i8 12, label %block_len.exit63.thread89
    i8 13, label %block_len.exit63
  ]

block_len.exit63.thread:                          ; preds = %bb.h
  %i.o = zext nneg i32 %.05474 to i64
  %i.p = getelementptr i8, ptr %.sroa.542.0.copyload, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -144
  br label %block_len.exit67

block_len.exit63.thread85:                        ; preds = %bb.h
  %i.r = zext nneg i32 %.05474 to i64
  %i.s = getelementptr i8, ptr %.sroa.542.0.copyload, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -104
  br label %block_len.exit67

block_len.exit63.thread87:                        ; preds = %bb.h
  %i.u = zext nneg i32 %.05474 to i64
  %i.v = getelementptr i8, ptr %.sroa.542.0.copyload, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -72
  br label %block_len.exit67

block_len.exit63.thread89:                        ; preds = %bb.h
  %i.x = zext nneg i32 %.05474 to i64
  %i.y = getelementptr i8, ptr %.sroa.542.0.copyload, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -168
  br label %block_len.exit67

default.unreachable101:                           ; preds = %bb.h
  unreachable

switch.lookup116:                                 ; preds = %block_len.exit61
  %switch.tableidx115 = shl nuw nsw i8 %0, 3
  %i.aa = add nsw i8 %switch.tableidx115, -64
  %switch.shiftamt = zext nneg i8 %i.aa to i48
  %switch.downshift = lshr i48 -131218626015096, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i8
  %i.ab = urem i8 %.lhs.trunc, %switch.masked
  %i.ac = zext i8 %i.ab to i64
  br label %block_len.exit63

block_len.exit63:                                 ; preds = %bb.h, %bb.h, %switch.lookup116
  %.055 = phi i64 [ %i.ac, %switch.lookup116 ], [ 136, %bb.h ], [ 136, %bb.h ]
  %i.ad = zext nneg i32 %.05474 to i64
  %i.ae = getelementptr i8, ptr %.sroa.542.0.copyload, i64 %i.ad
  %i.af = sub nsw i64 0, %.055
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.af
  br label %block_len.exit67

block_len.exit67:                                 ; preds = %block_len.exit63, %block_len.exit63.thread89, %block_len.exit63.thread87, %block_len.exit63.thread85, %block_len.exit63.thread
  %i.ah = phi ptr [ %i.q, %block_len.exit63.thread ], [ %i.z, %block_len.exit63.thread89 ], [ %i.w, %block_len.exit63.thread87 ], [ %i.t, %block_len.exit63.thread85 ], [ %i.ag, %block_len.exit63 ]
  call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %0, ptr noundef nonnull %i.a, ptr noundef %.sroa.542.0.copyload, i32 noundef 0)
  call void @_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3(i8 noundef zeroext %0, ptr noundef nonnull %i.a, ptr noundef %i.ah, i32 noundef %.05474)
  %i.ai = and i8 %0, 14
  %switch.selectcmp = icmp eq i8 %i.ai, 12
  br i1 %switch.selectcmp, label %block_len.exit69, label %switch.lookup118

block_len.exit69:                                 ; preds = %block_len.exit67
  %i.aj = icmp eq i8 %0, 13
  %. = select i1 %i.aj, i32 136, i32 168
  call fastcc void @squeeze(ptr noundef %i.a, i32 noundef %., i32 noundef %3, ptr noundef %2)
  br label %bb.i

switch.lookup118:                                 ; preds = %block_len.exit67
  %switch.tableidx117 = add nsw i8 %0, -8         ; 2 uses
  %i.ak = zext nneg i8 %switch.tableidx117 to i64
  %switch.gep119 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.digest_.20, i64 %i.ak
  %switch.load120 = load i32, ptr %switch.gep119, align 4
  %i.al = zext nneg i8 %switch.tableidx117 to i64
  %switch.gep121 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_hash_len, i64 %i.al
  %switch.load122 = load i32, ptr %switch.gep121, align 4
  call fastcc void @squeeze(ptr noundef %i.a, i32 noundef %switch.load120, i32 noundef %switch.load122, ptr noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %switch.lookup118, %block_len.exit69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define hidden zeroext range(i8 0, 3) i8 @_Py_LibHacl_Hacl_Hash_SHA3_squeeze(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !18 ; 2 uses
  %i.a = and i8 %.sroa.0.0.copyload.i, -2
  %or.cond = icmp eq i8 %i.a, 12
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @digest_(i8 noundef zeroext %.sroa.0.0.copyload.i, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i8 [ 1, %bb.a ], [ 0, %bb.c ], [ 2, %bb.b ]
  ret i8 %.0
}

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 72, 169) i32 @_Py_LibHacl_Hacl_Hash_SHA3_block_len(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !18
  %switch.tableidx = add i8 %.sroa.0.0.copyload.i, -8 ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 6
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.d
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load
}

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 28, 65) i32 @_Py_LibHacl_Hacl_Hash_SHA3_hash_len(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !18
  %switch.tableidx = add i8 %.sroa.0.0.copyload.i, -8 ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 234) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_hash_len, i64 %i.d
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_Py_LibHacl_Hacl_Hash_SHA3_is_shake(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !18
  %i.a = and i8 %.sroa.0.0.copyload.i, -2
  %i.b = icmp eq i8 %i.a, 12
  ret i1 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef %2) local_unnamed_addr #4 {
.preheader:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = getelementptr i8, ptr %1, i64 32
  %.val637 = load i64, ptr %i.b, align 1
  %i.c = getelementptr i8, ptr %1, i64 40
  %.val636 = load i64, ptr %i.c, align 1
  %i.d = getelementptr i8, ptr %1, i64 48
  %.val635 = load i64, ptr %i.d, align 1
  %i.e = getelementptr i8, ptr %1, i64 56
  %.val634 = load i64, ptr %i.e, align 1
  %i.f = getelementptr i8, ptr %1, i64 64
  %.val633 = load i64, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %1, i64 72
  %.val632 = load i64, ptr %i.g, align 1
  %i.h = getelementptr i8, ptr %1, i64 80
  %.val631 = load i64, ptr %i.h, align 1
  %i.i = getelementptr i8, ptr %1, i64 88
  %.val630 = load i64, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %1, i64 96
  %.val629 = load i64, ptr %i.j, align 1
  %i.k = getelementptr i8, ptr %1, i64 104
  %.val628 = load i64, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %1, i64 112
  %.val627 = load i64, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %1, i64 120
  %.val626 = load i64, ptr %i.m, align 1
  %i.n = getelementptr i8, ptr %1, i64 128
  %.val625 = load i64, ptr %i.n, align 1
  %i.o = getelementptr i8, ptr %1, i64 136
  %.val624 = load i64, ptr %i.o, align 1
  %i.p = getelementptr i8, ptr %1, i64 144
  %.val623 = load i64, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %1, i64 152
  %.val622 = load i64, ptr %i.q, align 1
  %i.r = getelementptr i8, ptr %1, i64 160
  %.val621 = load i64, ptr %i.r, align 1
  %i.s = getelementptr i8, ptr %1, i64 168
  %.val620 = load i64, ptr %i.s, align 1
  %i.t = getelementptr i8, ptr %1, i64 176
  %.val619 = load i64, ptr %i.t, align 1
  %i.u = getelementptr i8, ptr %1, i64 184
  %.val618 = load i64, ptr %i.u, align 1
  %i.v = getelementptr i8, ptr %1, i64 192
  %.val617 = load i64, ptr %i.v, align 1
  %i.w = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.x = load <2 x i64>, ptr %1, align 1
  %i.y = load <2 x i64>, ptr %2, align 8, !tbaa !15
  %i.z = xor <2 x i64> %i.x, %i.y                 ; 2 uses
  %i.aa = getelementptr i8, ptr %2, i64 16        ; 5 uses
  %i.ab = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ac = load <2 x i64>, ptr %i.a, align 1
  store <2 x i64> %i.z, ptr %2, align 8, !tbaa !15
  %i.ad = load <2 x i64>, ptr %i.aa, align 8, !tbaa !15
  %i.ae = xor <2 x i64> %i.ac, %i.ad
  store <2 x i64> %i.ae, ptr %i.aa, align 8, !tbaa !15
  %i.af = getelementptr i8, ptr %2, i64 32        ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !15
  %i.ah = xor i64 %.val637, %i.ag
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !15
  %i.ai = getelementptr i8, ptr %2, i64 40        ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.ak = xor i64 %.val636, %i.aj
  %i.al = getelementptr i8, ptr %2, i64 48        ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !15
  %i.an = xor i64 %.val635, %i.am
  %i.ao = getelementptr i8, ptr %2, i64 56        ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.aq = xor i64 %.val634, %i.ap
  %i.ar = getelementptr i8, ptr %2, i64 64        ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !15
  %i.at = xor i64 %.val633, %i.as
  %i.au = getelementptr i8, ptr %2, i64 72        ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !15
  %i.aw = xor i64 %.val632, %i.av
  %i.ax = getelementptr i8, ptr %2, i64 80        ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !15
  %i.az = xor i64 %.val631, %i.ay
  %i.ba = getelementptr i8, ptr %2, i64 88        ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !15
  %i.bc = xor i64 %.val630, %i.bb
  %i.bd = getelementptr i8, ptr %2, i64 96        ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !15
  %i.bf = xor i64 %.val629, %i.be
  %i.bg = getelementptr i8, ptr %2, i64 104       ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !15
  %i.bi = xor i64 %.val628, %i.bh
  %i.bj = getelementptr i8, ptr %2, i64 112       ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !15
  %i.bl = xor i64 %.val627, %i.bk
  %i.bm = getelementptr i8, ptr %2, i64 120       ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !15
  %i.bo = xor i64 %.val626, %i.bn
  %i.bp = getelementptr i8, ptr %2, i64 128       ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !15
  %i.br = xor i64 %.val625, %i.bq
  %i.bs = getelementptr i8, ptr %2, i64 136       ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !15
  %i.bu = xor i64 %.val624, %i.bt
  %i.bv = getelementptr i8, ptr %2, i64 144       ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !15
  %i.bx = xor i64 %.val623, %i.bw
  %i.by = getelementptr i8, ptr %2, i64 152       ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !15
  %i.ca = xor i64 %.val622, %i.bz
  %i.cb = getelementptr i8, ptr %2, i64 160       ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !15
  %i.cd = xor i64 %.val621, %i.cc
  %i.ce = getelementptr i8, ptr %2, i64 168       ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !15
  %i.cg = xor i64 %.val620, %i.cf
  %i.ch = getelementptr i8, ptr %2, i64 176       ; 4 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !15
  %i.cj = xor i64 %.val619, %i.ci
  %i.ck = getelementptr i8, ptr %2, i64 184       ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !15
  %i.cm = xor i64 %.val618, %i.cl
  %i.cn = getelementptr i8, ptr %2, i64 192       ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !15
  %i.cp = xor i64 %.val617, %i.co
  %.promoted = load i64, ptr %i.w, align 8, !tbaa !15
  %.promoted657 = load i64, ptr %i.aa, align 8, !tbaa !15
  %.promoted658 = load i64, ptr %i.ab, align 8, !tbaa !15
  %.promoted659 = load i64, ptr %i.af, align 8, !tbaa !15
  %i.cq = extractelement <2 x i64> %i.z, i64 0
  br label %bb.b

bb.a:                                             ; preds = %bb.b
  ret void

bb.b:                                             ; preds = %.preheader, %bb.b
  %i.cr = phi i64 [ %.promoted659, %.preheader ], [ %i.he, %bb.b ] ; 2 uses
  %i.cs = phi i64 [ %.promoted658, %.preheader ], [ %i.hb, %bb.b ] ; 2 uses
  %i.ct = phi i64 [ %.promoted657, %.preheader ], [ %i.gy, %bb.b ] ; 2 uses
  %i.cu = phi i64 [ %.promoted, %.preheader ], [ %i.gv, %bb.b ] ; 2 uses
  %i.cv = phi i64 [ %i.cp, %.preheader ], [ %i.jm, %bb.b ] ; 2 uses
  %i.cw = phi i64 [ %i.ca, %.preheader ], [ %i.ix, %bb.b ] ; 2 uses
  %i.cx = phi i64 [ %i.bl, %.preheader ], [ %i.ii, %bb.b ] ; 2 uses
  %i.cy = phi i64 [ %i.aw, %.preheader ], [ %i.ht, %bb.b ] ; 2 uses
  %i.cz = phi i64 [ %i.cm, %.preheader ], [ %i.jj, %bb.b ] ; 2 uses
  %i.da = phi i64 [ %i.bx, %.preheader ], [ %i.iu, %bb.b ] ; 2 uses
  %i.db = phi i64 [ %i.bi, %.preheader ], [ %i.if, %bb.b ] ; 2 uses
  %i.dc = phi i64 [ %i.at, %.preheader ], [ %i.hq, %bb.b ] ; 2 uses
  %i.dd = phi i64 [ %i.cj, %.preheader ], [ %i.jg, %bb.b ] ; 2 uses
  %i.de = phi i64 [ %i.bu, %.preheader ], [ %i.ir, %bb.b ] ; 2 uses
  %i.df = phi i64 [ %i.bf, %.preheader ], [ %i.ic, %bb.b ] ; 2 uses
  %i.dg = phi i64 [ %i.aq, %.preheader ], [ %i.hn, %bb.b ] ; 2 uses
  %i.dh = phi i64 [ %i.cg, %.preheader ], [ %i.jd, %bb.b ] ; 2 uses
  %i.di = phi i64 [ %i.br, %.preheader ], [ %i.io, %bb.b ] ; 2 uses
  %i.dj = phi i64 [ %i.bc, %.preheader ], [ %i.hz, %bb.b ] ; 2 uses
  %i.dk = phi i64 [ %i.an, %.preheader ], [ %i.hk, %bb.b ] ; 2 uses
  %i.dl = phi i64 [ %i.cd, %.preheader ], [ %i.ja, %bb.b ] ; 2 uses
  %i.dm = phi i64 [ %i.bo, %.preheader ], [ %i.il, %bb.b ] ; 2 uses
  %i.dn = phi i64 [ %i.az, %.preheader ], [ %i.hw, %bb.b ] ; 2 uses
  %i.do = phi i64 [ %i.ak, %.preheader ], [ %i.hh, %bb.b ] ; 2 uses
  %i.dp = phi i64 [ %i.cq, %.preheader ], [ %i.jq, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.dq = xor i64 %i.do, %i.dp
  %i.dr = xor i64 %i.dq, %i.dn
  %i.ds = xor i64 %i.dr, %i.dm
  %i.dt = xor i64 %i.ds, %i.dl                    ; 3 uses
  %i.du = xor i64 %i.dk, %i.cu
  %i.dv = xor i64 %i.du, %i.dj
  %i.dw = xor i64 %i.dv, %i.di
  %i.dx = xor i64 %i.dw, %i.dh                    ; 3 uses
  %i.dy = xor i64 %i.dg, %i.ct
  %i.dz = xor i64 %i.dy, %i.df
  %i.ea = xor i64 %i.dz, %i.de
  %i.eb = xor i64 %i.ea, %i.dd                    ; 3 uses
  %i.ec = xor i64 %i.dc, %i.cs
  %i.ed = xor i64 %i.ec, %i.db
  %i.ee = xor i64 %i.ed, %i.da
  %i.ef = xor i64 %i.ee, %i.cz                    ; 3 uses
  %i.eg = xor i64 %i.cy, %i.cr
  %i.eh = xor i64 %i.eg, %i.cx
  %i.ei = xor i64 %i.eh, %i.cw
  %i.ej = xor i64 %i.ei, %i.cv                    ; 3 uses
  %i.ek = tail call i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 1)
  %i.el = xor i64 %i.ej, %i.ek                    ; 5 uses
  %i.em = xor i64 %i.el, %i.dp                    ; 4 uses
  store i64 %i.em, ptr %2, align 8, !tbaa !15
  %i.en = xor i64 %i.el, %i.do                    ; 2 uses
  %i.eo = xor i64 %i.el, %i.dn                    ; 2 uses
  %i.ep = xor i64 %i.el, %i.dm                    ; 2 uses
  %i.eq = xor i64 %i.el, %i.dl                    ; 3 uses
  store i64 %i.eq, ptr %i.cb, align 8, !tbaa !15
  %i.er = tail call i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 1)
  %i.es = xor i64 %i.er, %i.dt                    ; 5 uses
end_hunk_1
