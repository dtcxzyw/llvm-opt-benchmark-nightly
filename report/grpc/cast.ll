Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/cast?download=true
inline.NumInlined: 33
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.evp_cipher_st = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }

@CAST_S_table0 = external local_unnamed_addr constant [256 x i32], align 16
@CAST_S_table1 = external local_unnamed_addr constant [256 x i32], align 16
@CAST_S_table2 = external local_unnamed_addr constant [256 x i32], align 16
@CAST_S_table3 = external local_unnamed_addr constant [256 x i32], align 16
@CAST_S_table4 = external local_unnamed_addr constant [256 x i32], align 16
@CAST_S_table5 = external local_unnamed_addr constant [256 x i32], align 16
@CAST_S_table6 = external local_unnamed_addr constant [256 x i32], align 16
@CAST_S_table7 = external local_unnamed_addr constant [256 x i32], align 16
@_ZL9cast5_ecb = internal constant %struct.evp_cipher_st { i32 109, i32 8, i32 16, i32 8, i32 132, i32 65, ptr @_ZL13cast_init_keyP17evp_cipher_ctx_stPKhS2_i, ptr @_ZL15cast_ecb_cipherP17evp_cipher_ctx_stPhPKhm, ptr null, ptr null }, align 8
@_ZL9cast5_cbc = internal constant %struct.evp_cipher_st { i32 108, i32 8, i32 16, i32 8, i32 132, i32 66, ptr @_ZL13cast_init_keyP17evp_cipher_ctx_stPKhS2_i, ptr @_ZL15cast_cbc_cipherP17evp_cipher_ctx_stPhPKhm, ptr null, ptr null }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @CAST_ecb_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %0, align 1, !tbaa !11
  %i.d = zext i8 %i.c to i32
  %i.e = shl nuw i32 %i.d, 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.b, align 1, !tbaa !11
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 16
  %i.j = or disjoint i32 %i.i, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.l = load i8, ptr %i.f, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = or disjoint i32 %i.n, %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.k, align 1, !tbaa !11
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r
  store i32 %i.s, ptr %i.a, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.u = load i8, ptr %i.p, align 1, !tbaa !11
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw i32 %i.v, 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.z = load i8, ptr %i.t, align 1, !tbaa !11
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = or disjoint i32 %i.ab, %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !11
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = or disjoint i32 %i.ag, %i.ac
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj
  store i32 %i.ak, ptr %i.x, align 4, !tbaa !12
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @CAST_encrypt(ptr noundef nonnull %i.a, ptr noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @CAST_decrypt(ptr noundef nonnull %i.a, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.al = load i32, ptr %i.a, align 4, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.al)
  store i32 %i.an, ptr %1, align 1, !tbaa !11
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %5 = load i8, ptr %4, align 1, !tbaa !12
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %5, ptr %i.am, align 1, !tbaa !11
  %i.ao = load i32, ptr %i.x, align 4, !tbaa !12  ; 3 uses
  %7 = lshr i32 %i.ao, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %8, ptr %6, align 1, !tbaa !11
  %10 = lshr i32 %i.ao, 8
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %11, ptr %9, align 1, !tbaa !11
  %13 = trunc i32 %i.ao to i8
  store i8 %13, ptr %12, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @CAST_encrypt(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12   ; 2 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !12
  %i.e = add i32 %i.d, %i.c                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = tail call noundef i32 @llvm.fshl.i32(i32 %i.e, i32 %i.e, i32 %i.g) ; 4 uses
  %i.i = lshr i32 %i.h, 8
  %i.j = and i32 %i.i, 255
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table0, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !12
  %i.n = and i32 %i.h, 255
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table1, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = lshr i32 %i.h, 24
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table2, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !12
  %i.v = lshr i32 %i.h, 16
  %i.w = and i32 %i.v, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table3, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12
  %i.aa = xor i32 %i.q, %i.m
  %.narrow = sub i32 %i.aa, %i.u
  %.narrow216 = add i32 %.narrow, %i.z
  %i.ab = xor i32 %.narrow216, %i.a               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.ae = xor i32 %i.ab, %i.ad                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !12
  %i.ah = tail call noundef i32 @llvm.fshl.i32(i32 %i.ae, i32 %i.ae, i32 %i.ag) ; 4 uses
  %i.ai = lshr i32 %i.ah, 8
  %i.aj = and i32 %i.ai, 255
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table0, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !12
  %i.an = and i32 %i.ah, 255
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table1, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !12
  %i.ar = lshr i32 %i.ah, 24
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table2, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !12
  %i.av = lshr i32 %i.ah, 16
  %i.aw = and i32 %i.av, 255
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table3, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12
  %i.ba = sub i32 %i.am, %i.aq
  %.narrow217 = add i32 %i.ba, %i.au
  %i.bb = xor i32 %i.az, %.narrow217
  %i.bc = xor i32 %i.bb, %i.c                     ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !12
  %i.bf = sub i32 %i.be, %i.bc                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !12
  %i.bi = tail call noundef i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 %i.bh) ; 4 uses
  %i.bj = lshr i32 %i.bi, 8
  %i.bk = and i32 %i.bj, 255
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table0, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !12
  %i.bo = and i32 %i.bi, 255
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table1, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !12
  %i.bs = lshr i32 %i.bi, 24
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table2, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !12
  %i.bw = lshr i32 %i.bi, 16
  %i.bx = and i32 %i.bw, 255
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table3, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !12
  %i.cb = add i32 %i.br, %i.bn
  %i.cc = xor i32 %i.cb, %i.bv
  %.narrow218 = sub i32 %i.cc, %i.ca
  %i.cd = xor i32 %.narrow218, %i.ab              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !12
  %i.cg = add i32 %i.cd, %i.cf                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !12
  %i.cj = tail call noundef i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 %i.ci) ; 4 uses
  %i.ck = lshr i32 %i.cj, 8
  %i.cl = and i32 %i.ck, 255
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table0, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !12
  %i.cp = and i32 %i.cj, 255
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table1, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !12
  %i.ct = lshr i32 %i.cj, 24
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table2, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !12
  %i.cx = lshr i32 %i.cj, 16
  %i.cy = and i32 %i.cx, 255
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table3, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !12
  %i.dc = xor i32 %i.cs, %i.co
  %.narrow219 = sub i32 %i.dc, %i.cw
  %.narrow220 = add i32 %.narrow219, %i.db
  %i.dd = xor i32 %.narrow220, %i.bc              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.df = load i32, ptr %i.de, align 4, !tbaa !12
  %i.dg = xor i32 %i.dd, %i.df                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !12
  %i.dj = tail call noundef i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 %i.di) ; 4 uses
  %i.dk = lshr i32 %i.dj, 8
  %i.dl = and i32 %i.dk, 255
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table0, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !12
  %i.dp = and i32 %i.dj, 255
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table1, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !12
  %i.dt = lshr i32 %i.dj, 24
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table2, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !12
  %i.dx = lshr i32 %i.dj, 16
  %i.dy = and i32 %i.dx, 255
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table3, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !12
  %i.ec = sub i32 %i.do, %i.ds
  %.narrow221 = add i32 %i.ec, %i.dw
  %i.ed = xor i32 %i.eb, %.narrow221
  %i.ee = xor i32 %i.ed, %i.cd                    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !12
  %i.eh = sub i32 %i.eg, %i.ee                    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !12
  %i.ek = tail call noundef i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 %i.ej) ; 4 uses
  %i.el = lshr i32 %i.ek, 8
  %i.em = and i32 %i.el, 255
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table0, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !12
  %i.eq = and i32 %i.ek, 255
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table1, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !12
  %i.eu = lshr i32 %i.ek, 24
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table2, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !12
  %i.ey = lshr i32 %i.ek, 16
  %i.ez = and i32 %i.ey, 255
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table3, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !12
  %i.fd = add i32 %i.et, %i.ep
  %i.fe = xor i32 %i.fd, %i.ex
  %.narrow222 = sub i32 %i.fe, %i.fc
  %i.ff = xor i32 %.narrow222, %i.dd              ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !12
  %i.fi = add i32 %i.ff, %i.fh                    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !12
  %i.fl = tail call noundef i32 @llvm.fshl.i32(i32 %i.fi, i32 %i.fi, i32 %i.fk) ; 4 uses
  %i.fm = lshr i32 %i.fl, 8
  %i.fn = and i32 %i.fm, 255
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table0, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !12
  %i.fr = and i32 %i.fl, 255
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table1, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !12
  %i.fv = lshr i32 %i.fl, 24
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table2, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !12
  %i.fz = lshr i32 %i.fl, 16
end_hunk_0
begin_hunk_1_@CAST_set_key:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @CAST_cfb64_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 10 uses
  %i.b = load i32, ptr %5, align 4, !tbaa !12     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not = icmp eq i32 %6, 0
  %.not107115 = icmp eq i64 %2, 0                 ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader109

.preheader109:                                    ; preds = %bb.a
  br i1 %.not107115, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader109
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not107115, label %.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 7
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.s, %bb.d ]
  %.0100114 = phi i32 [ %i.b, %.lr.ph ], [ %i.bi, %bb.d ] ; 3 uses
  %.0103113 = phi ptr [ %0, %.lr.ph ], [ %i.ba, %bb.d ] ; 2 uses
  %.0105112 = phi ptr [ %1, %.lr.ph ], [ %i.bg, %bb.d ] ; 2 uses
  %i.s = add i64 %.in, -1                         ; 2 uses
  %i.t = icmp eq i32 %.0100114, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load i8, ptr %4, align 1, !tbaa !11
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw i32 %i.v, 24
  %i.x = load i8, ptr %i.c, align 1, !tbaa !11
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 16
  %i.aa = or disjoint i32 %i.z, %i.w
  %i.ab = load i8, ptr %i.d, align 1, !tbaa !11
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 8
  %i.ae = or disjoint i32 %i.aa, %i.ad
  %i.af = load i8, ptr %i.e, align 1, !tbaa !11
  %i.ag = zext i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !12
  %i.ai = load i8, ptr %i.f, align 1, !tbaa !11
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw i32 %i.aj, 24
  %i.al = load i8, ptr %i.g, align 1, !tbaa !11
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 16
  %i.ao = or disjoint i32 %i.an, %i.ak
  %i.ap = load i8, ptr %i.h, align 1, !tbaa !11
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 8
  %i.as = or disjoint i32 %i.ao, %i.ar
  %i.at = load i8, ptr %i.i, align 1, !tbaa !11
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au
  store i32 %i.av, ptr %i.j, align 4, !tbaa !12
  call void @CAST_encrypt(ptr noundef nonnull %i.a, ptr noundef %3)
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !12
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  store i32 %i.ax, ptr %4, align 1, !tbaa !11
  %i.ay = load i32, ptr %i.j, align 4, !tbaa !12
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  store i32 %i.az, ptr %i.f, align 1, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %.0103113, i64 1
  %i.bb = load i8, ptr %.0103113, align 1, !tbaa !11
  %i.bc = sext i32 %.0100114 to i64
  %i.bd = getelementptr inbounds i8, ptr %4, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bf = xor i8 %i.be, %i.bb                     ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0105112, i64 1
  store i8 %i.bf, ptr %.0105112, align 1, !tbaa !11
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !11
  %i.bh = add nsw i32 %.0100114, 1
  %i.bi = and i32 %i.bh, 7                        ; 2 uses
  %.not108 = icmp eq i64 %i.s, 0
  br i1 %.not108, label %.loopexit, label %bb.b, !llvm.loop !27

bb.e:                                             ; preds = %.lr.ph119, %bb.g
  %.in121 = phi i64 [ %2, %.lr.ph119 ], [ %i.bj, %bb.g ]
  %.1101118 = phi i32 [ %i.b, %.lr.ph119 ], [ %i.cz, %bb.g ] ; 3 uses
  %.1104117 = phi ptr [ %0, %.lr.ph119 ], [ %i.cr, %bb.g ] ; 2 uses
  %.1106116 = phi ptr [ %1, %.lr.ph119 ], [ %i.cx, %bb.g ] ; 2 uses
  %i.bj = add i64 %.in121, -1                     ; 2 uses
  %i.bk = icmp eq i32 %.1101118, 0
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bl = load i8, ptr %4, align 1, !tbaa !11
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw i32 %i.bm, 24
  %i.bo = load i8, ptr %i.k, align 1, !tbaa !11
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 16
  %i.br = or disjoint i32 %i.bq, %i.bn
  %i.bs = load i8, ptr %i.l, align 1, !tbaa !11
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 8
  %i.bv = or disjoint i32 %i.br, %i.bu
  %i.bw = load i8, ptr %i.m, align 1, !tbaa !11
  %i.bx = zext i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bv, %i.bx
  store i32 %i.by, ptr %i.a, align 4, !tbaa !12
  %i.bz = load i8, ptr %i.n, align 1, !tbaa !11
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw i32 %i.ca, 24
  %i.cc = load i8, ptr %i.o, align 1, !tbaa !11
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 16
  %i.cf = or disjoint i32 %i.ce, %i.cb
  %i.cg = load i8, ptr %i.p, align 1, !tbaa !11
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 8
  %i.cj = or disjoint i32 %i.cf, %i.ci
  %i.ck = load i8, ptr %i.q, align 1, !tbaa !11
  %i.cl = zext i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.cj, %i.cl
  store i32 %i.cm, ptr %i.r, align 4, !tbaa !12
  call void @CAST_encrypt(ptr noundef nonnull %i.a, ptr noundef %3)
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !12
  %i.co = tail call i32 @llvm.bswap.i32(i32 %i.cn)
  store i32 %i.co, ptr %4, align 1, !tbaa !11
  %i.cp = load i32, ptr %i.r, align 4, !tbaa !12
  %i.cq = tail call i32 @llvm.bswap.i32(i32 %i.cp)
  store i32 %i.cq, ptr %i.n, align 1, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cr = getelementptr inbounds nuw i8, ptr %.1104117, i64 1
  %i.cs = load i8, ptr %.1104117, align 1, !tbaa !11 ; 2 uses
  %i.ct = sext i32 %.1101118 to i64
  %i.cu = getelementptr inbounds i8, ptr %4, i64 %i.ct ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !11
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !11
  %i.cw = xor i8 %i.cv, %i.cs
  %i.cx = getelementptr inbounds nuw i8, ptr %.1106116, i64 1
  store i8 %i.cw, ptr %.1106116, align 1, !tbaa !11
  %i.cy = add nsw i32 %.1101118, 1
  %i.cz = and i32 %i.cy, 7                        ; 2 uses
  %.not107 = icmp eq i64 %i.bj, 0
  br i1 %.not107, label %.loopexit, label %bb.e, !llvm.loop !28

.loopexit:                                        ; preds = %bb.d, %bb.g, %.preheader109, %.preheader
  %.2102 = phi i32 [ %i.cz, %bb.g ], [ %i.b, %.preheader ], [ %i.b, %.preheader109 ], [ %i.bi, %bb.d ]
  store i32 %.2102, ptr %5, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_cast5_ecb() local_unnamed_addr #4 {
bb.a:
  ret ptr @_ZL9cast5_ecb
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_cast5_cbc() local_unnamed_addr #4 {
bb.a:
  ret ptr @_ZL9cast5_cbc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZL13cast_init_keyP17evp_cipher_ctx_stPKhS2_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = zext i32 %i.d to i64
  tail call void @CAST_set_key(ptr noundef %i.b, i64 noundef %i.e, ptr noundef %1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZL15cast_ecb_cipherP17evp_cipher_ctx_stPhPKhm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = icmp ugt i64 %3, 7
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %CAST_ecb_encrypt.exit
  %.012 = phi i64 [ %3, %.lr.ph ], [ %i.aw, %CAST_ecb_encrypt.exit ]
  %.0811 = phi ptr [ %2, %.lr.ph ], [ %i.au, %CAST_ecb_encrypt.exit ] ; 9 uses
  %.0910 = phi ptr [ %1, %.lr.ph ], [ %i.av, %CAST_ecb_encrypt.exit ] ; 6 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.h = getelementptr inbounds nuw i8, ptr %.0811, i64 1
  %i.i = load i8, ptr %.0811, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw i32 %i.j, 24
  %i.l = getelementptr inbounds nuw i8, ptr %.0811, i64 2
  %i.m = load i8, ptr %i.h, align 1, !tbaa !11
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 16
  %i.p = or disjoint i32 %i.o, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %.0811, i64 3
  %i.r = load i8, ptr %i.l, align 1, !tbaa !11
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = or disjoint i32 %i.p, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.0811, i64 4
  %i.w = load i8, ptr %i.q, align 1, !tbaa !11
  %i.x = zext i8 %i.w to i32
  %i.y = or disjoint i32 %i.u, %i.x
  store i32 %i.y, ptr %i.a, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %.0811, i64 5
  %i.aa = load i8, ptr %i.v, align 1, !tbaa !11
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw i32 %i.ab, 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811, i64 6
  %i.ae = load i8, ptr %i.z, align 1, !tbaa !11
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 16
  %i.ah = or disjoint i32 %i.ag, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811, i64 7
  %i.aj = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 8
  %i.am = or disjoint i32 %i.ah, %i.al
  %i.an = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ao = zext i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !12
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @CAST_encrypt(ptr noundef nonnull %i.a, ptr noundef readonly %i.c)
  br label %CAST_ecb_encrypt.exit

bb.d:                                             ; preds = %bb.b
  call void @CAST_decrypt(ptr noundef nonnull %i.a, ptr noundef readonly %i.c)
  br label %CAST_ecb_encrypt.exit

CAST_ecb_encrypt.exit:                            ; preds = %bb.c, %bb.d
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910, i64 4
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  store i32 %i.as, ptr %.0910, align 1, !tbaa !11
  %5 = load i8, ptr %4, align 1, !tbaa !12
  %6 = getelementptr inbounds nuw i8, ptr %.0910, i64 5
  store i8 %5, ptr %i.ar, align 1, !tbaa !11
  %i.at = load i32, ptr %i.f, align 4, !tbaa !12  ; 3 uses
  %7 = lshr i32 %i.at, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %.0910, i64 6
  store i8 %8, ptr %6, align 1, !tbaa !11
  %10 = lshr i32 %i.at, 8
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %.0910, i64 7
  store i8 %11, ptr %9, align 1, !tbaa !11
  %13 = trunc i32 %i.at to i8
  store i8 %13, ptr %12, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.au = getelementptr inbounds nuw i8, ptr %.0811, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0910, i64 8
  %i.aw = add i64 %.012, -8                       ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, 7
  br i1 %i.ax, label %bb.b, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %CAST_ecb_encrypt.exit, %bb.a
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZL15cast_cbc_cipherP17evp_cipher_ctx_stPhPKhm(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20
  tail call void @CAST_cbc_encrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef %i.b, ptr noundef nonnull %i.c, i32 noundef %i.e)
  ret i32 1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"_ZTS11cast_key_st", !7, i64 0, !8, i64 128}
!14 = !{!13, !8, i64 128}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!"p1 _ZTS13evp_cipher_st", !16, i64 0}
!18 = !{!"_ZTS17evp_cipher_ctx_st", !17, i64 0, !16, i64 8, !16, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !7, i64 36, !7, i64 52, !7, i64 68, !8, i64 100, !8, i64 104, !8, i64 108, !7, i64 112, !8, i64 144}
!19 = !{!18, !16, i64 16}
!20 = !{!18, !8, i64 28}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15, !25, !26}
!24 = distinct !{!24, !15}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = !{!18, !8, i64 24}
!30 = distinct !{!30, !15}
end_hunk_1
