Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_strfmt_num?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"0123456789ABCDEFPX\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"0123456789abcdefpx\00", align 1
@rescale_e = internal unnamed_addr constant [32 x i16] [i16 -308, i16 -289, i16 -270, i16 -250, i16 -231, i16 -212, i16 -193, i16 -173, i16 -154, i16 -135, i16 -115, i16 -96, i16 -77, i16 -58, i16 -38, i16 0, i16 0, i16 0, i16 39, i16 58, i16 77, i16 96, i16 116, i16 135, i16 154, i16 174, i16 193, i16 212, i16 231, i16 251, i16 270, i16 289], align 16
@rescale_n = internal unnamed_addr constant [32 x double] [double 1.000000e+308, double 1.000000e+289, double 1.000000e+270, double f0x73D658E3AB795204, double 1.000000e+231, double f0x6BF302CB5E6F642A, double 1.000000e+193, double 1.000000e+173, double 1.000000e+154, double f0x5BF6035CE8B6203D, double 1.000000e+115, double 1.000000e+96, double f0x4FEBA2BFD0D5FF5B, double f0x4BF97D4DF19D6057, double f0x47D2CED32A16A1B1, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double f0x37D5C72FB1552D83, double 1.000000e-58, double f0x2FF286D80EC190DC, double f0x2C0116805EFFAEAA, double f0x27D9379FEC069826, double 1.000000e-135, double f0x1FF573D68F903EA2, double f0x1BCFA885C8D117A6, double 1.000000e-193, double f0x13EAEE90B964B047, double f0x0FF8D71D360E13E2, double 1.000000e-251, double 1.000000e-270, double 1.000000e-289], align 16
@four_ulp_m_e = internal unnamed_addr constant [256 x i8] c"\22\EBD\EB\0E\EC\1C\EC7\EC\02\ED\03\ED\05\ED\09\ED\AE\EE#\EE\07\EF\8B\EF\1C\EF8\EFp\F0\DF\F0-\F0Y\F0\B2\F1$\F1H\F1\8F\F2\1D\F29\F2r\F3\E4\F3.\F3[\F4\B6\F4%\F4I\F4\0F\F5\03\F5;\F5\02\F6\03\F6\05\F6\01\F7\BB\F7&\F7K\F7\0F\F9\03\F9\06\F9\0C\FA\EF\F90\F9`\F9\BF\FA'\FAM\FA\99\FB\1F\FB>\FB{\FC\F5\FC1\FCb\FC\C4\FD\04\FEO\FD\10\FE \FE?\FE\02\FF\19\00\05\01\01\02\02\02\04\02\08\02\10\02 \02@\02\80\02\1A\024\02g\03\CD\03)\04R\04\A4\04!\04B\04\84\05\1B\055\05i\06\15\06*\06T\06\11\07\22\07D\07\02\08\03\08\06\08l\09\D7\09+\0AV\09\AC\0A#\0AE\0A\8A\0B\1C\0B7\0C\0B\0D\16\0D,\0DX\0D\B0\0D$\0DG\0D\8D\0E\1D\0E9\0Eq\0F\E2\0F.\0F[\0F\13\10%\10I\10\02\11\03\11\06\11", align 16
@ndigits_dec_threshold = internal unnamed_addr constant [11 x i32] [i32 0, i32 9, i32 99, i32 999, i32 9999, i32 99999, i32 999999, i32 9999999, i32 99999999, i32 999999999, i32 -1], align 16

; Function Attrs: nounwind uwtable
define hidden noundef ptr @lj_strfmt_putfnum(ptr noundef returned %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @lj_strfmt_wfnum(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef null)
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lj_strfmt_wfnum(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 14 uses
  %i.b = alloca [9 x i8], align 1                 ; 14 uses
  %i.c = alloca [64 x i32], align 16              ; 46 uses
  %i.d = alloca [9 x i8], align 1                 ; 13 uses
  %i.e = alloca [9 x i8], align 1                 ; 13 uses
  %i.f = lshr i32 %1, 16
  %i.g = and i32 %i.f, 255                        ; 21 uses
  %i.h = lshr i32 %1, 24                          ; 4 uses
  %i.i = add nsw i32 %i.h, -1                     ; 6 uses
  %i.j = bitcast double %2 to i64                 ; 13 uses
  %.sroa.0.4.extract.shift = lshr i64 %i.j, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32 ; 5 uses
  %i.k = shl i32 %.sroa.0.4.extract.trunc, 1
  %i.l = icmp ugt i32 %i.k, -2097153
  br i1 %i.l, label %bb.b, label %bb.k, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.m = and i32 %1, 8192
  %.not605.a = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not605.a, i32 0, i32 2105376 ; 2 uses
  %i.o = and i32 %.sroa.0.4.extract.trunc, 1048575
  %.sroa.0.0.extract.trunc = trunc i64 %i.j to i32
  %i.p = or i32 %i.o, %.sroa.0.0.extract.trunc
  %.not606.a = icmp eq i32 %i.p, 0
  br i1 %.not606.a, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.q = xor i32 %i.n, 7233902                    ; 2 uses
  %i.r = and i32 %1, 2048
  %.not610.not = icmp eq i32 %i.r, 0
  br i1 %.not610.not, label %bb.f, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = xor i32 %i.n, 6909542                    ; 4 uses
  %.not607 = icmp sgt i64 %i.j, -1
  br i1 %.not607, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.t = and i32 %1, 512
  %.not608 = icmp eq i32 %i.t, 0
  br i1 %.not608, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.u = and i32 %1, 2048
  %.not609.not = icmp eq i32 %i.u, 0
  br i1 %.not609.not, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %.split, %bb.e
  %.0470730 = phi i32 [ %i.q, %.split ], [ %i.s, %bb.e ], [ %i.s, %bb.d ], [ %i.s, %bb.c ]
  %.0471728 = phi i8 [ 32, %.split ], [ 32, %bb.e ], [ 43, %bb.d ], [ 45, %bb.c ]
  br label %bb.f

bb.f:                                             ; preds = %.split, %bb.e, %.thread
  %.0470729 = phi i32 [ %.0470730, %.thread ], [ %i.s, %bb.e ], [ %i.q, %.split ] ; 3 uses
  %.0471727 = phi i8 [ %.0471728, %.thread ], [ 0, %bb.e ], [ 0, %.split ]
  %i.v = phi i1 [ true, %.thread ], [ false, %bb.e ], [ false, %.split ]
  %i.w = phi i32 [ 4, %.thread ], [ 3, %bb.e ], [ 3, %.split ] ; 5 uses
  %.not611.a = icmp eq ptr %3, null
  br i1 %.not611.a, label %bb.g, label %lj_buf_more.exit630

bb.g:                                             ; preds = %bb.f
  %i.x = tail call i32 @llvm.umax.i32(i32 %i.g, i32 %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.aa = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = icmp ugt i32 %i.x, %i.ae
  br i1 %i.af, label %bb.h, label %lj_buf_more.exit630, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef %i.x) #8
  br label %lj_buf_more.exit630

lj_buf_more.exit630:                              ; preds = %bb.h, %bb.g, %bb.f
  %.0511 = phi ptr [ %3, %bb.f ], [ %i.ag, %bb.h ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ah = and i32 %1, 256
  %.not612 = icmp eq i32 %i.ah, 0
  br i1 %.not612, label %.preheader866, label %.loopexit867

.preheader866:                                    ; preds = %lj_buf_more.exit630
  %i.ai = add nsw i32 %i.g, -1                    ; 2 uses
  %i.aj = icmp samesign ugt i32 %i.g, %i.w
  br i1 %i.aj, label %.lr.ph1007.preheader, label %.loopexit867

.lr.ph1007.preheader:                             ; preds = %.preheader866
  %i.ak = sub nsw i32 %i.ai, %i.w
  %i.al = zext i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0511, i8 32, i64 %i.am, i1 false), !tbaa !16
  %scevgep1096 = getelementptr i8, ptr %.0511, i64 %i.am
  %i.an = add nsw i32 %i.w, -1
  br label %.loopexit867

.loopexit867:                                     ; preds = %.lr.ph1007.preheader, %.preheader866, %lj_buf_more.exit630
  %.2513 = phi ptr [ %.0511, %lj_buf_more.exit630 ], [ %.0511, %.preheader866 ], [ %scevgep1096, %.lr.ph1007.preheader ] ; 3 uses
  %.1490 = phi i32 [ %i.g, %lj_buf_more.exit630 ], [ %i.ai, %.preheader866 ], [ %i.an, %.lr.ph1007.preheader ]
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit867
  %i.ao = getelementptr inbounds nuw i8, ptr %.2513, i64 1
  store i8 %.0471727, ptr %.2513, align 1, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit867
  %.3514 = phi ptr [ %i.ao, %bb.i ], [ %.2513, %.loopexit867 ] ; 4 uses
  %i.ap = lshr i32 %.0470729, 16
  %i.aq = trunc nuw nsw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %.3514, i64 1
  store i8 %i.aq, ptr %.3514, align 1, !tbaa !16
  %i.as = lshr i32 %.0470729, 8
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.3514, i64 2
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !16
  %i.av = trunc i32 %.0470729 to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.3514, i64 3
  store i8 %i.av, ptr %i.au, align 1, !tbaa !16
  br label %bb.dl

bb.k:                                             ; preds = %bb.a
  %i.ax = lshr i32 %1, 4
  %i.ay = and i32 %i.ax, 3                        ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.l, label %bb.af

bb.l:                                             ; preds = %bb.k
  %i.ba = and i32 %1, 8192
  %.not591 = icmp eq i32 %i.ba, 0                 ; 3 uses
  %i.bb = select i1 %.not591, ptr @.str.1, ptr @.str ; 3 uses
  %i.bc = lshr i32 %.sroa.0.4.extract.trunc, 20
  %i.bd = and i32 %i.bc, 2047                     ; 2 uses
  %.not592 = icmp sgt i64 %i.j, -1
  br i1 %.not592, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.be = and i32 %1, 512
  %.not593 = icmp eq i32 %i.be, 0
  br i1 %.not593, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bf = and i32 %1, 2048
  %.not594 = icmp eq i32 %i.bf, 0
  br i1 %.not594, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.o, %bb.n
  %i.bg = phi i32 [ 5, %bb.n ], [ 6, %bb.l ], [ 6, %bb.o ], [ 6, %bb.m ] ; 5 uses
  %.not601 = phi i1 [ true, %bb.n ], [ false, %bb.l ], [ false, %bb.o ], [ false, %bb.m ]
  %.0467 = phi i8 [ 0, %bb.n ], [ 45, %bb.l ], [ 32, %bb.o ], [ 43, %bb.m ]
  %.sroa.0.4.insert.insert = and i64 %i.j, 4503599627370495 ; 4 uses
  %.not595 = icmp eq i32 %i.bd, 0
  br i1 %.not595, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.0.4.insert.insert195 = or disjoint i64 %.sroa.0.4.insert.insert, 4503599627370496
  %i.bh = add nsw i32 %i.bd, -1023
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %.sroa.0.0.extract.trunc152 = trunc i64 %i.j to i32 ; 2 uses
  %.sroa.0.4.extract.shift197 = lshr i64 %.sroa.0.4.insert.insert, 32 ; 2 uses
  %.sroa.0.4.extract.trunc198 = trunc nuw nsw i64 %.sroa.0.4.extract.shift197 to i32 ; 2 uses
  %i.bi = or i32 %.sroa.0.4.extract.trunc198, %.sroa.0.0.extract.trunc152
  %.not596 = icmp eq i32 %i.bi, 0
  br i1 %.not596, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not597 = icmp eq i64 %.sroa.0.4.extract.shift197, 0 ; 2 uses
  %.sroa.0.0.extract.trunc152..sroa.0.4.extract.trunc198 = select i1 %.not597, i32 %.sroa.0.0.extract.trunc152, i32 %.sroa.0.4.extract.trunc198
  %. = select i1 %.not597, i32 52, i32 20
  %i.bj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.0.0.extract.trunc152..sroa.0.4.extract.trunc198, i1 true)
  %i.bk = xor i32 %i.bj, 31
  %i.bl = sub nuw nsw i32 %., %i.bk               ; 2 uses
  %i.bm = sub nuw nsw i32 -1022, %i.bl
  %i.bn = zext nneg i32 %i.bl to i64
  %i.bo = shl i64 %.sroa.0.4.insert.insert, %i.bn
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.sroa.0.0 = phi i64 [ %.sroa.0.4.insert.insert195, %bb.q ], [ %i.bo, %bb.s ], [ %.sroa.0.4.insert.insert, %bb.r ] ; 6 uses
  %.0468 = phi i32 [ %i.bh, %bb.q ], [ %i.bm, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.bp = icmp eq i32 %i.h, 0
  br i1 %i.bp, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.sroa.0.0.extract.trunc156 = trunc i64 %.sroa.0.0 to i32 ; 2 uses
  %.not598 = icmp eq i32 %.sroa.0.0.extract.trunc156, 0
  br i1 %.not598, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0.0.extract.trunc156, i1 true)
  %i.br = lshr i32 %i.bq, 2
  %i.bs = sub nuw nsw i32 13, %i.br
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %.sroa.0.4.extract.shift206 = lshr exact i64 %.sroa.0.0, 32
  %.sroa.0.4.extract.trunc207 = trunc nuw i64 %.sroa.0.4.extract.shift206 to i32
  %i.bt = or i32 %.sroa.0.4.extract.trunc207, 1048576
  %i.bu = tail call range(i32 0, 21) i32 @llvm.cttz.i32(i32 %i.bt, i1 true)
  %i.bv = lshr i32 %i.bu, 2
  %i.bw = sub nuw nsw i32 5, %i.bv
  br label %bb.z

bb.x:                                             ; preds = %bb.t
  %i.bx = icmp ult i32 %1, 234881024
  br i1 %i.bx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.by = shl nuw nsw i32 %i.i, 2
  %i.bz = sub nuw nsw i32 51, %i.by
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 1, %i.ca
  %i.cc = add i64 %.sroa.0.0, %i.cb
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.0478 = phi i32 [ %i.i, %bb.x ], [ %i.i, %bb.y ], [ %i.bs, %bb.v ], [ %i.bw, %bb.w ] ; 14 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.x ], [ %i.cc, %bb.y ], [ %.sroa.0.0, %bb.v ], [ %.sroa.0.0, %bb.w ] ; 4 uses
  %i.cd = icmp slt i32 %.0468, 0
  %spec.select617.a = tail call i32 @llvm.abs.i32(i32 %.0468, i1 true) ; 3 uses
  %spec.select618.a = select i1 %i.cd, i8 45, i8 43
  %i.ce = or i32 %spec.select617.a, 1
  %i.cf = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ce, i1 true)
  %i.cg = xor i32 %i.cf, 31
  %i.ch = mul nuw nsw i32 %i.cg, 77
  %i.ci = lshr i32 %i.ch, 8                       ; 5 uses
  %i.cj = add nuw nsw i32 %i.ci, 1                ; 2 uses
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @ndigits_dec_threshold, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !17
  %i.cn = icmp ugt i32 %spec.select617.a, %i.cm
  %i.co = zext i1 %i.cn to i32                    ; 5 uses
  %i.cp = and i32 %1, 4096
  %i.cq = or i32 %.0478, %i.cp
  %i.cr = icmp ne i32 %i.cq, 0                    ; 2 uses
  %i.cs = zext i1 %i.cr to i32                    ; 5 uses
  %i.ct = add nuw nsw i32 %i.bg, %i.cj
  %i.cu = add nuw nsw i32 %i.ct, %.0478
  %i.cv = add nuw nsw i32 %i.cu, %i.cs
  %i.cw = add nuw nsw i32 %i.cv, %i.co            ; 4 uses
  %.not599 = icmp eq ptr %3, null
  br i1 %.not599, label %bb.aa, label %lj_buf_more.exit628

bb.aa:                                            ; preds = %bb.z
  %i.cx = tail call i32 @llvm.umax.i32(i32 %i.g, i32 %i.cw) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !32
  %i.da = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = trunc i64 %i.dd to i32
  %i.df = icmp ugt i32 %i.cx, %i.de
  br i1 %i.df, label %bb.ab, label %lj_buf_more.exit628, !prof !15

bb.ab:                                            ; preds = %bb.aa
  %i.dg = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef %i.cx) #8
  br label %lj_buf_more.exit628

lj_buf_more.exit628:                              ; preds = %bb.ab, %bb.aa, %bb.z
  %.4515 = phi ptr [ %3, %bb.z ], [ %i.dg, %bb.ab ], [ %i.da, %bb.aa ] ; 4 uses
  %i.dh = and i32 %1, 1280                        ; 2 uses
  %.not600 = icmp eq i32 %i.dh, 0
  br i1 %.not600, label %.preheader873, label %.loopexit874

.preheader873:                                    ; preds = %lj_buf_more.exit628
  %i.di = add nsw i32 %i.g, -1
  %i.dj = icmp samesign ugt i32 %i.g, %i.cw
  br i1 %i.dj, label %.lr.ph992.preheader, label %.loopexit874

.lr.ph992.preheader:                              ; preds = %.preheader873
  %i.dk = add nsw i32 %i.g, -2
  %i.dl = add nuw nsw i32 %.0478, %i.bg
  %i.dm = add nuw nsw i32 %i.dl, %i.ci
  %i.dn = add nuw nsw i32 %i.dm, %i.co
  %i.do = add nuw nsw i32 %i.dn, %i.cs
  %i.dp = sub nsw i32 %i.dk, %i.do
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4515, i8 32, i64 %i.dr, i1 false), !tbaa !16
  %scevgep1087.a = getelementptr i8, ptr %.4515, i64 %i.dr
  %i.ds = add nuw nsw i32 %.0478, %i.bg
  %i.dt = add nuw nsw i32 %i.ds, %i.ci
  %i.du = add nuw nsw i32 %i.dt, %i.co
  %i.dv = add nuw nsw i32 %i.du, %i.cs
  br label %.loopexit874

.loopexit874:                                     ; preds = %.lr.ph992.preheader, %.preheader873, %lj_buf_more.exit628
  %.6517 = phi ptr [ %.4515, %lj_buf_more.exit628 ], [ %.4515, %.preheader873 ], [ %scevgep1087.a, %.lr.ph992.preheader ] ; 3 uses
  %.3492 = phi i32 [ %i.g, %lj_buf_more.exit628 ], [ %i.di, %.preheader873 ], [ %i.dv, %.lr.ph992.preheader ] ; 4 uses
  br i1 %.not601, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.loopexit874
  %i.dw = getelementptr inbounds nuw i8, ptr %.6517, i64 1
  store i8 %.0467, ptr %.6517, align 1, !tbaa !16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.loopexit874
  %.7518 = phi ptr [ %i.dw, %bb.ac ], [ %.6517, %.loopexit874 ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.7518, i64 1
  store i8 48, ptr %.7518, align 1, !tbaa !16
  %4 = select i1 %.not591, i8 120, i8 88
  %i.dy = getelementptr i8, ptr %.7518, i64 2     ; 3 uses
  store i8 %4, ptr %i.dx, align 1, !tbaa !16
  %i.dz = icmp eq i32 %i.dh, 1024
  br i1 %i.dz, label %.preheader871, label %.loopexit872

.preheader871:                                    ; preds = %bb.ad
  %i.ea = add nsw i32 %.3492, -1
  %i.eb = icmp ugt i32 %.3492, %i.cw
  br i1 %i.eb, label %.lr.ph996.preheader, label %.loopexit872

.lr.ph996.preheader:                              ; preds = %.preheader871
  %i.ec = add nsw i32 %.3492, -2
  %i.ed = add nuw nsw i32 %.0478, %i.bg
  %i.ee = add nuw nsw i32 %i.ed, %i.ci
  %i.ef = add nuw nsw i32 %i.ee, %i.co
  %i.eg = add nuw nsw i32 %i.ef, %i.cs
  %i.eh = sub nsw i32 %i.ec, %i.eg
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = add nuw nsw i64 %i.ei, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dy, i8 48, i64 %i.ej, i1 false), !tbaa !16
  %i.ek = getelementptr i8, ptr %.7518, i64 %i.ei
  %scevgep1088 = getelementptr i8, ptr %i.ek, i64 3
  %i.el = add nuw nsw i32 %.0478, %i.bg
  %i.em = add nuw nsw i32 %i.el, %i.ci
  %i.en = add nuw nsw i32 %i.em, %i.co
  %i.eo = add nuw nsw i32 %i.en, %i.cs
  br label %.loopexit872

.loopexit872:                                     ; preds = %.lr.ph996.preheader, %.preheader871, %bb.ad
  %.9520 = phi ptr [ %i.dy, %bb.ad ], [ %i.dy, %.preheader871 ], [ %scevgep1088, %.lr.ph996.preheader ] ; 5 uses
  %.5494 = phi i32 [ %.3492, %bb.ad ], [ %i.ea, %.preheader871 ], [ %i.eo, %.lr.ph996.preheader ]
  %sum.shift = lshr i64 %.sroa.0.1, 52
  %i.ep = trunc i64 %sum.shift to i8
  %i.eq = add i8 %i.ep, 48
  %i.er = getelementptr inbounds nuw i8, ptr %.9520, i64 1 ; 4 uses
  store i8 %i.eq, ptr %.9520, align 1, !tbaa !16
  br i1 %i.cr, label %bb.ae, label %.loopexit868

bb.ae:                                            ; preds = %.loopexit872
  %i.es = getelementptr inbounds nuw i8, ptr %.9520, i64 2
  %i.et = zext nneg i32 %.0478 to i64             ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.et ; 3 uses
  store i8 46, ptr %i.er, align 1, !tbaa !16
  %i.ev = icmp samesign ult i32 %.0478, 13
  br i1 %i.ev, label %.loopexit870, label %.preheader869

.preheader869:                                    ; preds = %bb.ae
  %.not1016 = icmp eq i32 %.0478, 13
  br i1 %.not1016, label %.lr.ph1005.preheader, label %.lr.ph1000.preheader

.lr.ph1000.preheader:                             ; preds = %.preheader869
  %i.ew = add nuw nsw i64 %i.et, 1
  %i.ex = add nsw i32 %.0478, -14
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = sub nsw i64 %i.ew, %i.ey
  %scevgep1089 = getelementptr i8, ptr %.9520, i64 %i.ez
  %i.fa = add nsw i32 %.0478, -13
  %i.fb = zext nneg i32 %i.fa to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep1089, i8 48, i64 %i.fb, i1 false), !tbaa !16
  br label %.lr.ph1005.preheader

.loopexit870:                                     ; preds = %bb.ae
  %i.fc = shl nuw nsw i32 %.0478, 2
  %i.fd = sub nuw nsw i32 52, %i.fc
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = lshr i64 %.sroa.0.1, %i.fe
  %.not6031001 = icmp eq i32 %.0478, 0
  br i1 %.not6031001, label %.loopexit868, label %.lr.ph1005.preheader

.lr.ph1005.preheader:                             ; preds = %.lr.ph1000.preheader, %.preheader869, %.loopexit870
  %.sroa.0.21159 = phi i64 [ %i.ff, %.loopexit870 ], [ %.sroa.0.1, %.preheader869 ], [ %.sroa.0.1, %.lr.ph1000.preheader ] ; 3 uses
  %.24801158 = phi i32 [ %.0478, %.loopexit870 ], [ 13, %.preheader869 ], [ 13, %.lr.ph1000.preheader ] ; 3 uses
  %i.fg = zext nneg i32 %.24801158 to i64         ; 3 uses
  %xtraiter = and i32 %.24801158, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1005.prol.loopexit, label %.lr.ph1005.prol

.lr.ph1005.prol:                                  ; preds = %.lr.ph1005.preheader
  %i.fh = and i64 %.sroa.0.21159, 15
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !16
  %indvars.iv.next1094.prol = add nsw i64 %i.fg, -1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fg
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !16
  %i.fl = lshr i64 %.sroa.0.21159, 4
  br label %.lr.ph1005.prol.loopexit

.lr.ph1005.prol.loopexit:                         ; preds = %.lr.ph1005.prol, %.lr.ph1005.preheader
  %indvars.iv1093.unr = phi i64 [ %i.fg, %.lr.ph1005.preheader ], [ %indvars.iv.next1094.prol, %.lr.ph1005.prol ]
  %.sroa.0.31003.unr = phi i64 [ %.sroa.0.21159, %.lr.ph1005.preheader ], [ %i.fl, %.lr.ph1005.prol ]
  %i.fm = icmp eq i32 %.24801158, 1
  br i1 %i.fm, label %.loopexit868, label %.lr.ph1005

.lr.ph1005:                                       ; preds = %.lr.ph1005.prol.loopexit, %.lr.ph1005
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094.1, %.lr.ph1005 ], [ %indvars.iv1093.unr, %.lr.ph1005.prol.loopexit ] ; 3 uses
  %.sroa.0.31003 = phi i64 [ %i.fw, %.lr.ph1005 ], [ %.sroa.0.31003.unr, %.lr.ph1005.prol.loopexit ] ; 3 uses
  %i.fn = and i64 %.sroa.0.31003, 15
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv1093
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !16
  %i.fr = lshr i64 %.sroa.0.31003, 4
  %i.fs = and i64 %i.fr, 15
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !16
  %indvars.iv.next1094.1 = add nsw i64 %indvars.iv1093, -2 ; 2 uses
  %i.fv = getelementptr i8, ptr %.9520, i64 %indvars.iv1093
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !16
  %i.fw = lshr i64 %.sroa.0.31003, 8
  %i.fx = and i64 %indvars.iv.next1094.1, 4294967295
  %.not603.1 = icmp eq i64 %i.fx, 0
  br i1 %.not603.1, label %.loopexit868, label %.lr.ph1005, !llvm.loop !21

.loopexit868:                                     ; preds = %.lr.ph1005.prol.loopexit, %.lr.ph1005, %.loopexit870, %.loopexit872
  %.10521 = phi ptr [ %i.er, %.loopexit872 ], [ %i.eu, %.loopexit870 ], [ %i.eu, %.lr.ph1005 ], [ %i.eu, %.lr.ph1005.prol.loopexit ] ; 3 uses
  %5 = select i1 %.not591, i8 112, i8 80
  %i.fy = getelementptr inbounds nuw i8, ptr %.10521, i64 1
  store i8 %5, ptr %.10521, align 1, !tbaa !16
  %i.fz = getelementptr inbounds nuw i8, ptr %.10521, i64 2
  store i8 %spec.select618.a, ptr %i.fy, align 1, !tbaa !16
  %i.ga = tail call ptr @lj_strfmt_wint(ptr noundef nonnull %i.fz, i32 noundef %spec.select617.a) #8
  br label %bb.dl

bb.af:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.gb = lshr i32 %.sroa.0.4.extract.trunc, 20
  %i.gc = and i32 %i.gb, 2047                     ; 5 uses
  %.not = icmp sgt i64 %i.j, -1
  br i1 %.not, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.gd = and i32 %1, 512
  %.not554 = icmp eq i32 %i.gd, 0
  br i1 %.not554, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ge = and i32 %1, 2048
  %.not555 = icmp eq i32 %i.ge, 0
  br i1 %.not555, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.af, %bb.ai, %bb.ah
  %i.gf = phi i32 [ 0, %bb.ah ], [ 1, %bb.af ], [ 1, %bb.ai ], [ 1, %bb.ag ] ; 10 uses
  %.not573 = phi i1 [ true, %bb.ah ], [ false, %bb.af ], [ false, %bb.ai ], [ false, %bb.ag ] ; 2 uses
  %.0437 = phi i8 [ 0, %bb.ah ], [ 45, %bb.af ], [ 32, %bb.ai ], [ 43, %bb.ag ] ; 2 uses
  %isneg = icmp eq i32 %i.h, 0
  %i.gg = select i1 %isneg, i32 7, i32 0
  %i.gh = add nsw i32 %i.gg, %i.i                 ; 2 uses
  %i.gi = icmp eq i32 %i.ay, 3
  %i.gj = add nsw i32 %i.gh, -1                   ; 2 uses
  %i.gk = ashr i32 %i.gj, 31
  %i.gl = xor i32 %i.gk, %i.gj
  %.4482 = select i1 %i.gi, i32 %i.gl, i32 %i.gh  ; 17 uses
  %i.gm = and i32 %1, 16
  %i.gn = icmp ne i32 %i.gm, 0                    ; 2 uses
  %i.go = icmp ult i32 %.4482, 14
  %or.cond = select i1 %i.gn, i1 %i.go, i1 false
  %i.gp = fcmp une double %2, 0.000000e+00
  %or.cond3 = and i1 %i.gp, %or.cond
  br i1 %or.cond3, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.gq = lshr i32 %i.gc, 6                       ; 2 uses
  %i.gr = zext nneg i32 %i.gq to i64              ; 2 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr @rescale_e, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !34
  %i.gu = sext i16 %i.gt to i32                   ; 2 uses
  %i.gv = add nsw i32 %i.gq, -15
  %.not556 = icmp ult i32 %i.gv, 3
  br i1 %.not556, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr @rescale_n, i64 %i.gr
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !36
  %i.gy = fmul double %2, %i.gx                   ; 2 uses
  %.not557 = icmp eq i32 %i.gc, 0
  br i1 %.not557, label %bb.am, label %bb.an, !prof !15

bb.am:                                            ; preds = %bb.al
  %i.gz = fmul double %i.gy, 1.000000e+10
  %i.ha = add nsw i32 %i.gu, -10
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.0.4.in = phi double [ %i.gz, %bb.am ], [ %i.gy, %bb.al ]
  %.0438 = phi i32 [ %i.ha, %bb.am ], [ %i.gu, %bb.al ]
  %.sroa.0.4 = bitcast double %.sroa.0.4.in to i64
  %i.hb = add i64 %.sroa.0.4, -2                  ; 2 uses
  %.sroa.0.4.extract.shift218 = lshr i64 %i.hb, 32
  %.sroa.0.4.extract.trunc219 = trunc nuw i64 %.sroa.0.4.extract.shift218 to i32 ; 2 uses
  %i.hc = and i32 %.sroa.0.4.extract.trunc219, 1048575
  %i.hd = or disjoint i32 %i.hc, 1048576
  %i.he = lshr i32 %.sroa.0.4.extract.trunc219, 20
  %i.hf = and i32 %i.he, 2047
  %i.hg = add nsw i32 %i.hf, -1075
  br label %._crit_edge.i

bb.ao:                                            ; preds = %nd_similar.exit, %nd_similar.exit.thread, %bb.ak, %bb.aj
  %i.hh = and i32 %.sroa.0.4.extract.trunc, 1048575 ; 4 uses
  store i32 %i.hh, ptr %i.c, align 16, !tbaa !17
  %i.hi = icmp eq i32 %i.gc, 0
  br i1 %i.hi, label %.thread854, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hj = or disjoint i32 %i.hh, 1048576          ; 3 uses
  store i32 %i.hj, ptr %i.c, align 16, !tbaa !17
  %i.hk = add nsw i32 %i.gc, -1043                ; 3 uses
  %i.hl = and i64 %i.j, 4294967295
  %.not590 = icmp eq i64 %i.hl, 0
  br i1 %.not590, label %nd_mul2k.exit.thread, label %bb.aq

.thread854:                                       ; preds = %bb.ao
  %i.hm = and i64 %i.j, 4294967295
  %.not590856 = icmp eq i64 %i.hm, 0
  br i1 %.not590856, label %.thread768, label %bb.aq

bb.aq:                                            ; preds = %.thread854, %bb.ap
  %i.hn = phi i32 [ %i.hh, %.thread854 ], [ %i.hj, %bb.ap ]
  %.1442857 = phi i32 [ -1042, %.thread854 ], [ %i.hk, %bb.ap ]
  %i.ho = add nsw i32 %.1442857, -32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.aq, %bb.an
  %i.hp = phi i32 [ %i.hd, %bb.an ], [ %i.hn, %bb.aq ]
  %.sroa.0.6 = phi i64 [ %i.hb, %bb.an ], [ %i.j, %bb.aq ] ; 6 uses
  %.2443 = phi i32 [ %i.hg, %bb.an ], [ %i.ho, %bb.aq ] ; 7 uses
  %.2440 = phi i32 [ %.0438, %bb.an ], [ 0, %bb.aq ] ; 4 uses
  %.sroa.0.0.extract.trunc162 = trunc i64 %.sroa.0.6 to i32
  %i.hq = tail call i32 @llvm.fshl.i32(i32 %i.hp, i32 %.sroa.0.0.extract.trunc162, i32 3) ; 2 uses
  store i32 %i.hq, ptr %i.c, align 16, !tbaa !17
  %i.hr = and i64 %.sroa.0.6, 536870911
  %i.hs = zext i32 %i.hq to i64
  %i.ht = shl nuw nsw i64 %i.hs, 29
  %i.hu = or disjoint i64 %i.ht, %i.hr            ; 3 uses
  %i.hv = udiv i64 %i.hu, 1000000000
  %i.hw = trunc nuw i64 %i.hv to i32              ; 2 uses
  %i.hx = trunc i64 %i.hu to i32
  %.neg59.i = mul i32 %i.hw, -1000000000
  %i.hy = add i32 %.neg59.i, %i.hx
  store i32 %i.hy, ptr %i.c, align 16, !tbaa !17
  %.not58.i = icmp samesign ult i64 %i.hu, 1000000000
  br i1 %.not58.i, label %nd_mul2k.exit, label %nd_mul2k.exit.thread1160

nd_mul2k.exit:                                    ; preds = %._crit_edge.i
  %i.hz = icmp sgt i32 %.2443, -1
  br i1 %i.hz, label %bb.ar, label %._crit_edge1098

nd_mul2k.exit.thread1160:                         ; preds = %._crit_edge.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.hw, ptr %i.ia, align 4, !tbaa !17
  %i.ib = icmp sgt i32 %.2443, -1
  br i1 %i.ib, label %bb.ar, label %.thread1162

.thread1162:                                      ; preds = %nd_mul2k.exit.thread1160
  %i.ic = sub nsw i32 0, %.2443
  br label %bb.ax

nd_mul2k.exit.thread:                             ; preds = %bb.ap
  %i.id = icmp samesign ugt i32 %i.gc, 1042
  br i1 %i.id, label %bb.ar, label %.thread768

bb.ar:                                            ; preds = %nd_mul2k.exit.thread1160, %nd_mul2k.exit.thread, %nd_mul2k.exit
  %.3767 = phi i32 [ 0, %nd_mul2k.exit.thread ], [ %.2440, %nd_mul2k.exit ], [ %.2440, %nd_mul2k.exit.thread1160 ] ; 3 uses
  %.3444764 = phi i32 [ %i.hk, %nd_mul2k.exit.thread ], [ %.2443, %nd_mul2k.exit ], [ %.2443, %nd_mul2k.exit.thread1160 ] ; 7 uses
  %.2458761 = phi i32 [ 0, %nd_mul2k.exit.thread ], [ 0, %nd_mul2k.exit ], [ 1, %nd_mul2k.exit.thread1160 ] ; 3 uses
  %.sroa.0.7759 = phi i64 [ %i.j, %nd_mul2k.exit.thread ], [ %.sroa.0.6, %nd_mul2k.exit ], [ %.sroa.0.6, %nd_mul2k.exit.thread1160 ] ; 3 uses
  %i.ie = icmp samesign ugt i32 %.3444764, 28
  br i1 %i.ie, label %.preheader60.preheader.i, label %._crit_edge69.i631

.preheader60.preheader.i:                         ; preds = %bb.ar
  %i.if = icmp samesign ult i32 %.3444764, 59
  %i.ig = and i32 %1, 48
  %.not.i644 = icmp eq i32 %i.ig, 32
  %or.cond.i = or i1 %.not.i644, %i.if
  %i.ih = add nuw nsw i32 %i.h, 16
  %i.ii = lshr i32 %i.ih, 3
  %i.ij = sub nsw i32 %.2458761, %i.ii
  %.044.i = select i1 %or.cond.i, i32 1, i32 %i.ij
  br label %.preheader60.i645

.preheader60.i645:                                ; preds = %._crit_edge.i658.thread, %.preheader60.preheader.i
  %.068.i646 = phi i32 [ %.1.i664, %._crit_edge.i658.thread ], [ %.2458761, %.preheader60.preheader.i ] ; 4 uses
  %.04367.i647 = phi i32 [ %i.ja, %._crit_edge.i658.thread ], [ %.3444764, %.preheader60.preheader.i ]
  %.14566.i648 = phi i32 [ %.246.i663, %._crit_edge.i658.thread ], [ %.044.i, %.preheader60.preheader.i ] ; 4 uses
  %.04765.i649 = phi i32 [ %.148.i662, %._crit_edge.i658.thread ], [ 0, %.preheader60.preheader.i ] ; 6 uses
  %.not5761.i651 = icmp ugt i32 %.04765.i649, %.068.i646
  br i1 %.not5761.i651, label %._crit_edge.i658.thread, label %.lr.ph.i653.preheader

.lr.ph.i653.preheader:                            ; preds = %.preheader60.i645
  %i.ik = zext i32 %.04765.i649 to i64
  %i.il = add i32 %.068.i646, 1                   ; 3 uses
  br label %.lr.ph.i653

.lr.ph.i653:                                      ; preds = %.lr.ph.i653.preheader, %.lr.ph.i653
  %indvars.iv1069 = phi i64 [ %i.ik, %.lr.ph.i653.preheader ], [ %indvars.iv.next1070, %.lr.ph.i653 ] ; 2 uses
  %.15262.i655 = phi i64 [ 0, %.lr.ph.i653.preheader ], [ %i.ir, %.lr.ph.i653 ]
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv1069 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !17
  %i.io = zext i32 %i.in to i64
  %i.ip = shl nuw nsw i64 %i.io, 29
  %i.iq = or i64 %i.ip, %.15262.i655              ; 3 uses
  %i.ir = udiv i64 %i.iq, 1000000000              ; 2 uses
  %i.is = trunc nuw i64 %i.ir to i32              ; 2 uses
  %i.it = trunc i64 %i.iq to i32
  %.neg59.i656 = mul i32 %i.is, -1000000000
  %i.iu = add i32 %.neg59.i656, %i.it
  store i32 %i.iu, ptr %i.im, align 4, !tbaa !17
  %indvars.iv.next1070 = add nuw nsw i64 %indvars.iv1069, 1 ; 2 uses
  %lftr.wideiv1072 = trunc i64 %indvars.iv.next1070 to i32
  %exitcond1073.not = icmp eq i32 %i.il, %lftr.wideiv1072
  br i1 %exitcond1073.not, label %._crit_edge.i658, label %.lr.ph.i653, !llvm.loop !22

._crit_edge.i658:                                 ; preds = %.lr.ph.i653
  %.not58.i660 = icmp samesign ult i64 %i.iq, 1000000000
  br i1 %.not58.i660, label %._crit_edge.i658.thread, label %bb.as

end_hunk_0
