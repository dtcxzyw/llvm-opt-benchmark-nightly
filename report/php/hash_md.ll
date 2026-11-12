Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/hash_md?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 23
begin_hunk_0
@php_hash_md2_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.4, ptr @PHP_MD2InitArgs, ptr @PHP_MD2Update, ptr @PHP_MD2Final, ptr @php_hash_copy, ptr @php_hash_serialize, ptr @php_md2_unserialize, ptr @.str.5, i64 16, i64 16, i64 81, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@PADDING = internal constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16
@MD2_S = internal unnamed_addr constant [256 x i8] c").C\C9\A2\D8|\01=6T\A1\EC\F0\06\13b\A7\05\F3\C0\C7s\8C\98\93+\D9\BCL\82\CA\1E\9BW<\FD\D4\E0\16gBo\18\8A\17\E5\12\BEN\C4\D6\DA\9E\DEI\A0\FB\F5\8E\BB/\EEz\A9hy\91\15\B2\07?\94\C2\10\89\0B\22_!\80\7F]\9AZ\902'5>\CC\E7\BF\F7\97\03\FF\190\B3H\A5\B5\D1\D7^\92*\ACV\AA\C6O\B88\D2\96\A4}\B6v\FCk\E2\9Ct\04\F1E\9DpYdq\87 \86[\CFe\E6-\A8\02\1B`%\AD\AE\B0\B9\F6\1CFai4@~\0FUG\A3#\DDQ\AF:\C3\\\F9\CE\BA\C5\EA&,S\0Dn\85(\84\09\D3\DF\CD\F4A\81MRj\DC7\C8l\C1\AB\FA$\E1{\08\0C\BD\B1Jx\88\95\8B\E3c\E8m\E9\CB\D5\FE;\00\1D9\F2\EF\B7\0EfX\D0\E4\A6wr\F8\EBuK\0A1DP\B4\8F\ED\1F\1A\DB\99\8D3\9F\11\83\14", align 16

declare void @PHP_MD5InitArgs(ptr noundef, ptr noundef) #0

declare void @PHP_MD5Update(ptr noundef, ptr noundef, i64 noundef) #0

declare void @PHP_MD5Final(ptr noundef, ptr noundef) #0

declare i32 @php_hash_copy(ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @php_hash_serialize(ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @php_hash_unserialize(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PHP_MD4InitArgs(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !13
  store i32 0, ptr %i.a, align 4, !tbaa !13
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @PHP_MD4Update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #2 {
._crit_edge:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13   ; 2 uses
  %i.c = lshr i32 %i.b, 3
  %i.d = and i32 %i.c, 63                         ; 3 uses
  %i.e = trunc i64 %2 to i32
  %i.f = shl i32 %i.e, 3                          ; 2 uses
  %i.g = add i32 %i.b, %i.f                       ; 2 uses
  store i32 %i.g, ptr %i.a, align 4, !tbaa !13
  %i.h = icmp ult i32 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13
  %i.k = zext i1 %i.h to i32
  %i.l = add i32 %i.j, %i.k
  %i.m = lshr i64 %2, 29
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = add i32 %i.l, %i.n
  store i32 %i.p, ptr %i.o, align 4, !tbaa !13
  %i.q = sub nuw nsw i32 64, %i.d
  %i.r = zext nneg i32 %i.q to i64                ; 5 uses
  %.not = icmp ult i64 %2, %i.r
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = zext nneg i32 %i.d to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.r, i1 false)
  tail call fastcc void @MD4Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.s)
  %i.v = add nuw nsw i64 %i.r, 63
  %i.w = icmp ult i64 %i.v, %2
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.031 = phi i64 [ %i.y, %.lr.ph ], [ %i.r, %bb.a ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.031
  tail call fastcc void @MD4Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.x)
  %i.y = add i64 %.031, 64                        ; 2 uses
  %i.z = add i64 %.031, 127
  %i.aa = icmp ult i64 %i.z, %2
  br i1 %i.aa, label %.lr.ph, label %.loopexit, !llvm.loop !0

bb.b:                                             ; preds = %._crit_edge
  %i.ab = zext nneg i32 %i.d to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.b
  %.028 = phi i64 [ %i.ab, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph ]
  %.1 = phi i64 [ 0, %bb.b ], [ %i.r, %bb.a ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.028
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %i.af = sub i64 %2, %.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %i.ae, i64 %i.af, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_MD4Final(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #3 {
Encode.exit:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.c = load i64, ptr %i.b, align 4
  store i64 %i.c, ptr %i.a, align 8
  %i.d = load i32, ptr %i.b, align 4, !tbaa !13   ; 2 uses
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 63                         ; 5 uses
  %i.g = icmp samesign ult i32 %i.f, 56
  %.v = select i1 %i.g, i32 56, i32 120
  %i.h = sub nsw i32 %.v, %i.f                    ; 4 uses
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = shl nsw i32 %i.h, 3                      ; 2 uses
  %i.k = add i32 %i.j, %i.d                       ; 2 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !13
  %i.l = icmp ult i32 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !13
  %i.o = zext i1 %i.l to i32
  %i.p = lshr i32 %i.h, 29
  %i.q = add i32 %i.p, %i.n
  %i.r = add i32 %i.q, %i.o
  store i32 %i.r, ptr %i.m, align 4, !tbaa !13
  %i.s = sub nuw nsw i32 64, %i.f                 ; 2 uses
  %.not.i = icmp ult i32 %i.h, %i.s
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %Encode.exit
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = zext nneg i32 %i.f to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 16 dereferenceable(1) @PADDING, i64 %i.t, i1 false)
  tail call fastcc void @MD4Transform(ptr noundef nonnull %1, ptr noundef nonnull %i.u)
  %i.x = add nuw nsw i64 %i.t, 63
  %i.y = icmp samesign ult i64 %i.x, %i.i
  br i1 %i.y, label %.lr.ph.i, label %PHP_MD4Update.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.031.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %i.t, %bb.a ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.031.i
  tail call fastcc void @MD4Transform(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.z)
  %i.aa = add nuw nsw i64 %.031.i, 64             ; 2 uses
  %i.ab = add nuw nsw i64 %.031.i, 127
  %i.ac = icmp samesign ult i64 %i.ab, %i.i
  br i1 %i.ac, label %.lr.ph.i, label %PHP_MD4Update.exit, !llvm.loop !0

bb.b:                                             ; preds = %Encode.exit
  %i.ad = zext nneg i32 %i.f to i64
  br label %PHP_MD4Update.exit

PHP_MD4Update.exit:                               ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.028.i = phi i64 [ %i.ad, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.a ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.028.i
  %i.ag = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.1.i
  %i.ah = sub i64 %i.i, %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.ag, i64 %i.ah, i1 false)
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !13  ; 3 uses
  %i.aj = lshr i32 %i.ai, 3
  %i.ak = and i32 %i.aj, 63                       ; 4 uses
  %i.al = add i32 %i.ai, 64
  store i32 %i.al, ptr %i.b, align 4, !tbaa !13
  %i.am = icmp ugt i32 %i.ai, -65
  %i.an = load i32, ptr %i.m, align 4, !tbaa !13
  %i.ao = zext i1 %i.am to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.m, align 4, !tbaa !13
  %.not.i10 = icmp samesign ult i32 %i.ak, 56
  br i1 %.not.i10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PHP_MD4Update.exit
  %i.aq = sub nuw nsw i32 64, %i.ak
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = zext nneg i32 %i.ak to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.a, i64 %i.ar, i1 false)
  tail call fastcc void @MD4Transform(ptr noundef nonnull %1, ptr noundef nonnull %i.ae)
  br label %PHP_MD4Update.exit15

bb.d:                                             ; preds = %PHP_MD4Update.exit
  %i.au = zext nneg i32 %i.ak to i64
  br label %PHP_MD4Update.exit15

PHP_MD4Update.exit15:                             ; preds = %bb.d, %bb.c
  %.028.i11 = phi i64 [ %i.au, %bb.d ], [ 0, %bb.c ]
  %.1.i12 = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.c ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.028.i11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i12
  %i.ax = sub nuw nsw i64 8, %.1.i12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull readonly align 1 %i.aw, i64 %i.ax, i1 false)
  %i.ay = load i32, ptr %1, align 4, !tbaa !13
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %0, align 1, !tbaa !15
  %i.ba = load i32, ptr %1, align 4, !tbaa !13
  %i.bb = lshr i32 %i.ba, 8
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !15
  %i.be = load i32, ptr %1, align 4, !tbaa !13
  %i.bf = lshr i32 %i.be, 16
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !15
  %i.bi = load i32, ptr %1, align 4, !tbaa !13
  %i.bj = lshr i32 %i.bi, 24
  %i.bk = trunc nuw i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !13
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !15
  %i.bq = load i32, ptr %i.bm, align 4, !tbaa !13
  %i.br = lshr i32 %i.bq, 8
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !15
  %i.bu = load i32, ptr %i.bm, align 4, !tbaa !13
  %i.bv = lshr i32 %i.bu, 16
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !15
  %2 = load i32, ptr %i.bm, align 4, !tbaa !13
  %3 = lshr i32 %2, 24
  %4 = trunc nuw i32 %3 to i8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %4, ptr %i.by, align 1, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !15
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !15
  %i.ch = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.ci = lshr i32 %i.ch, 16
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !15
  %5 = load i32, ptr %i.bz, align 4, !tbaa !13
  %6 = lshr i32 %5, 24
  %7 = trunc nuw i32 %6 to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %7, ptr %i.cl, align 1, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !13
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !15
  %i.cq = load i32, ptr %i.cm, align 4, !tbaa !13
  %i.cr = lshr i32 %i.cq, 8
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !15
  %i.cu = load i32, ptr %i.cm, align 4, !tbaa !13
  %i.cv = lshr i32 %i.cu, 16
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !15
  %8 = load i32, ptr %i.cm, align 4, !tbaa !13
  %9 = lshr i32 %8, 24
  %10 = trunc nuw i32 %9 to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %10, ptr %i.cy, align 1, !tbaa !15
  tail call void @explicit_bzero(ptr noundef nonnull %1, i64 noundef 88) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PHP_MD2InitArgs(ptr nofree noundef writeonly captures(none) initializes((0, 81)) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(81) %0, i8 0, i64 81, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @PHP_MD2Update(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !17    ; 2 uses
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %i.c to i64                      ; 3 uses
  %i.e = add i64 %2, %i.d
  %i.f = icmp ult i64 %i.e, 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %1, i64 %2, i1 false)
  %i.i = trunc i64 %2 to i8
  %i.j = load i8, ptr %i.b, align 1, !tbaa !17
  %i.k = add i8 %i.j, %i.i
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.l = sub nsw i64 16, %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %1, i64 %i.l, i1 false)
  tail call fastcc void @MD2_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  %i.m = load i8, ptr %i.b, align 1, !tbaa !17
  %i.n = zext i8 %i.m to i64
  %i.o = sub nsw i64 16, %i.n
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.o
  store i8 0, ptr %i.b, align 1, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0 = phi ptr [ %i.p, %bb.d ], [ %1, %bb.a ]    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %.not3738 = icmp ugt ptr %i.q, %i.a
  br i1 %.not3738, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %i.r = phi ptr [ %i.s, %.lr.ph ], [ %i.q, %bb.e ] ; 3 uses
  %.139 = phi ptr [ %i.r, %.lr.ph ], [ %.0, %bb.e ]
  tail call fastcc void @MD2_Transform(ptr noundef nonnull %0, ptr noundef %.139)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.not37 = icmp ugt ptr %i.s, %i.a
  br i1 %.not37, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.1.lcssa = phi ptr [ %.0, %bb.e ], [ %i.r, %.lr.ph ] ; 3 uses
  %i.t = icmp ult ptr %.1.lcssa, %i.a
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = ptrtoint ptr %i.a to i64
  %i.w = ptrtoint ptr %.1.lcssa to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %.1.lcssa, i64 %i.x, i1 false)
  %i.y = trunc i64 %i.x to i8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.f
  %.sink = phi i8 [ %i.y, %bb.f ], [ %i.k, %bb.c ]
  store i8 %.sink, ptr %i.b, align 1, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @PHP_MD2Final(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load i8, ptr %i.b, align 1, !tbaa !17    ; 2 uses
  %i.d = zext i8 %i.c to i32
  %i.e = zext i8 %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e
  %i.g = sub nsw i32 16, %i.d                     ; 2 uses
  %i.h = trunc i32 %i.g to i8
  %i.i = sext i32 %i.g to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.f, i8 %i.h, i64 %i.i, i1 false)
  tail call fastcc void @MD2_Transform(ptr noundef %1, ptr noundef nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call fastcc void @MD2_Transform(ptr noundef %1, ptr noundef nonnull %i.j)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @php_md2_unserialize(ptr noundef %0, i64 noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp eq i64 %1, 2
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @php_hash_unserialize_spec(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.5) #9 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = icmp ult i8 %i.g, 16
  %spec.select = select i1 %i.h, i32 0, i32 -2000
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b
  %.07 = phi i32 [ %spec.select, %bb.c ], [ %i.d, %bb.b ], [ -1, %bb.a ]
  ret i32 %.07
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MD4Transform(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !13     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13   ; 4 uses
  %i.h = load i32, ptr %1, align 1                ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 1              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 1              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 1              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 1              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i32, ptr %i.q, align 1              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i32, ptr %i.s, align 1              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.v = load i32, ptr %i.u, align 1              ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %i.w, align 1              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.z = load i32, ptr %i.y, align 1              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load i32, ptr %i.aa, align 1            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ad = load i32, ptr %i.ac, align 1            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load i32, ptr %i.ae, align 1            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ah = load i32, ptr %i.ag, align 1            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load i32, ptr %i.ai, align 1            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.al = load i32, ptr %i.ak, align 1            ; 3 uses
  %i.am = xor i32 %i.g, %i.e
  %i.an = and i32 %i.am, %i.c
  %i.ao = xor i32 %i.an, %i.g
  %i.ap = add i32 %i.h, %i.a
  %i.aq = add i32 %i.ap, %i.ao                    ; 2 uses
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 3) ; 5 uses
  %i.as = xor i32 %i.e, %i.c
  %i.at = and i32 %i.ar, %i.as
  %i.au = xor i32 %i.at, %i.e
  %i.av = add i32 %i.j, %i.g
  %i.aw = add i32 %i.av, %i.au                    ; 2 uses
  %i.ax = tail call i32 @llvm.fshl.i32(i32 %i.aw, i32 %i.aw, i32 7) ; 5 uses
  %i.ay = xor i32 %i.ar, %i.c
  %i.az = and i32 %i.ax, %i.ay
  %i.ba = xor i32 %i.az, %i.c
  %i.bb = add i32 %i.l, %i.e
  %i.bc = add i32 %i.bb, %i.ba                    ; 2 uses
  %i.bd = tail call i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 11) ; 5 uses
  %i.be = xor i32 %i.ax, %i.ar
  %i.bf = and i32 %i.bd, %i.be
  %i.bg = xor i32 %i.bf, %i.ar
  %i.bh = add i32 %i.n, %i.c
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %i.bj = tail call i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 19) ; 5 uses
end_hunk_0
