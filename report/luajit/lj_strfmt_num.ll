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
  %.not605 = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not605, i32 0, i32 2105376   ; 2 uses
  %i.o = and i32 %.sroa.0.4.extract.trunc, 1048575
  %.sroa.0.0.extract.trunc = trunc i64 %i.j to i32
  %i.p = or i32 %i.o, %.sroa.0.0.extract.trunc
  %.not606 = icmp eq i32 %i.p, 0
  br i1 %.not606, label %bb.c, label %.split

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
  %.not611 = icmp eq ptr %3, null
  br i1 %.not611, label %bb.g, label %lj_buf_more.exit630

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
  %scevgep1081 = getelementptr i8, ptr %.0511, i64 %i.am
  %i.an = add nsw i32 %i.w, -1
  br label %.loopexit867

.loopexit867:                                     ; preds = %.lr.ph1007.preheader, %.preheader866, %lj_buf_more.exit630
  %.2513 = phi ptr [ %.0511, %lj_buf_more.exit630 ], [ %.0511, %.preheader866 ], [ %scevgep1081, %.lr.ph1007.preheader ] ; 3 uses
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
end_hunk_0
begin_hunk_1_@lj_strfmt_wfnum:bb.a
  %.5494 = phi i32 [ %.3492, %bb.ad ], [ %i.eb, %.preheader871 ], [ %i.ep, %.lr.ph996.preheader ]
  %sum.shift = lshr i64 %.sroa.0.1, 52
  %i.eq = trunc i64 %sum.shift to i8
  %i.er = add i8 %i.eq, 48
  %i.es = getelementptr inbounds nuw i8, ptr %.9520, i64 1 ; 4 uses
  store i8 %i.er, ptr %.9520, align 1, !tbaa !16
  br i1 %i.cr, label %bb.ae, label %.loopexit868

bb.ae:                                            ; preds = %.loopexit872
  %i.et = getelementptr inbounds nuw i8, ptr %.9520, i64 2
  %i.eu = zext nneg i32 %.0478 to i64             ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eu ; 3 uses
  store i8 46, ptr %i.es, align 1, !tbaa !16
  %i.ew = icmp samesign ult i32 %.0478, 13
  br i1 %i.ew, label %.loopexit870, label %.preheader869

.preheader869:                                    ; preds = %bb.ae
  %.not1016 = icmp eq i32 %.0478, 13
  br i1 %.not1016, label %.lr.ph1005.preheader, label %.lr.ph1000.preheader

.lr.ph1000.preheader:                             ; preds = %.preheader869
  %i.ex = add nuw nsw i64 %i.eu, 1
  %i.ey = add nsw i32 %.0478, -14
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = sub nsw i64 %i.ex, %i.ez
  %scevgep1074 = getelementptr i8, ptr %.9520, i64 %i.fa
  %i.fb = add nsw i32 %.0478, -13
  %i.fc = zext nneg i32 %i.fb to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep1074, i8 48, i64 %i.fc, i1 false), !tbaa !16
  br label %.lr.ph1005.preheader

.loopexit870:                                     ; preds = %bb.ae
  %i.fd = shl nuw nsw i32 %.0478, 2
  %i.fe = sub nuw nsw i32 52, %i.fd
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = lshr i64 %.sroa.0.1, %i.ff
  %.not6031001 = icmp eq i32 %.0478, 0
  br i1 %.not6031001, label %.loopexit868, label %.lr.ph1005.preheader

.lr.ph1005.preheader:                             ; preds = %.lr.ph1000.preheader, %.preheader869, %.loopexit870
  %.sroa.0.21143 = phi i64 [ %i.fg, %.loopexit870 ], [ %.sroa.0.1, %.preheader869 ], [ %.sroa.0.1, %.lr.ph1000.preheader ] ; 3 uses
  %.24801142 = phi i32 [ %.0478, %.loopexit870 ], [ 13, %.preheader869 ], [ 13, %.lr.ph1000.preheader ] ; 3 uses
  %i.fh = zext nneg i32 %.24801142 to i64         ; 3 uses
  %xtraiter = and i32 %.24801142, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1005.prol.loopexit, label %.lr.ph1005.prol

.lr.ph1005.prol:                                  ; preds = %.lr.ph1005.preheader
  %i.fi = and i64 %.sroa.0.21143, 15
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !16
  %indvars.iv.next1079.prol = add nsw i64 %i.fh, -1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fh
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !16
  %i.fm = lshr i64 %.sroa.0.21143, 4
  br label %.lr.ph1005.prol.loopexit

.lr.ph1005.prol.loopexit:                         ; preds = %.lr.ph1005.prol, %.lr.ph1005.preheader
  %indvars.iv1078.unr = phi i64 [ %i.fh, %.lr.ph1005.preheader ], [ %indvars.iv.next1079.prol, %.lr.ph1005.prol ]
  %.sroa.0.31003.unr = phi i64 [ %.sroa.0.21143, %.lr.ph1005.preheader ], [ %i.fm, %.lr.ph1005.prol ]
  %i.fn = icmp eq i32 %.24801142, 1
  br i1 %i.fn, label %.loopexit868, label %.lr.ph1005

.lr.ph1005:                                       ; preds = %.lr.ph1005.prol.loopexit, %.lr.ph1005
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079.1, %.lr.ph1005 ], [ %indvars.iv1078.unr, %.lr.ph1005.prol.loopexit ] ; 3 uses
  %.sroa.0.31003 = phi i64 [ %i.fx, %.lr.ph1005 ], [ %.sroa.0.31003.unr, %.lr.ph1005.prol.loopexit ] ; 3 uses
  %i.fo = and i64 %.sroa.0.31003, 15
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv1078
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !16
  %i.fs = lshr i64 %.sroa.0.31003, 4
  %i.ft = and i64 %i.fs, 15
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !16
  %indvars.iv.next1079.1 = add nsw i64 %indvars.iv1078, -2 ; 2 uses
  %i.fw = getelementptr i8, ptr %.9520, i64 %indvars.iv1078
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !16
  %i.fx = lshr i64 %.sroa.0.31003, 8
  %i.fy = and i64 %indvars.iv.next1079.1, 4294967295
  %.not603.1 = icmp eq i64 %i.fy, 0
  br i1 %.not603.1, label %.loopexit868, label %.lr.ph1005, !llvm.loop !21

.loopexit868:                                     ; preds = %.lr.ph1005.prol.loopexit, %.lr.ph1005, %.loopexit870, %.loopexit872
  %.10521 = phi ptr [ %i.es, %.loopexit872 ], [ %i.ev, %.loopexit870 ], [ %i.ev, %.lr.ph1005 ], [ %i.ev, %.lr.ph1005.prol.loopexit ] ; 3 uses
  %i.fz = select i1 %.not591, i8 112, i8 80
  %i.ga = getelementptr inbounds nuw i8, ptr %.10521, i64 1
  store i8 %i.fz, ptr %.10521, align 1, !tbaa !16
  %i.gb = getelementptr inbounds nuw i8, ptr %.10521, i64 2
  store i8 %spec.select618, ptr %i.ga, align 1, !tbaa !16
  %i.gc = tail call ptr @lj_strfmt_wint(ptr noundef nonnull %i.gb, i32 noundef %spec.select617) #8
  br label %bb.dl

bb.af:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.gd = lshr i32 %.sroa.0.4.extract.trunc, 20
  %i.ge = and i32 %i.gd, 2047                     ; 5 uses
  %.not = icmp sgt i64 %i.j, -1
  br i1 %.not, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.gf = and i32 %1, 512
  %.not554 = icmp eq i32 %i.gf, 0
  br i1 %.not554, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gg = and i32 %1, 2048
  %.not555 = icmp eq i32 %i.gg, 0
  br i1 %.not555, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.af, %bb.ai, %bb.ah
  %i.gh = phi i32 [ 0, %bb.ah ], [ 1, %bb.af ], [ 1, %bb.ai ], [ 1, %bb.ag ] ; 10 uses
  %.not573 = phi i1 [ true, %bb.ah ], [ false, %bb.af ], [ false, %bb.ai ], [ false, %bb.ag ] ; 2 uses
  %.0437 = phi i8 [ 0, %bb.ah ], [ 45, %bb.af ], [ 32, %bb.ai ], [ 43, %bb.ag ] ; 2 uses
  %isneg = icmp eq i32 %i.h, 0
  %i.gi = select i1 %isneg, i32 7, i32 0
  %i.gj = add nsw i32 %i.gi, %i.i                 ; 2 uses
  %i.gk = icmp eq i32 %i.ay, 3
  %i.gl = add nsw i32 %i.gj, -1                   ; 2 uses
  %i.gm = ashr i32 %i.gl, 31
  %i.gn = xor i32 %i.gm, %i.gl
  %.4482 = select i1 %i.gk, i32 %i.gn, i32 %i.gj  ; 17 uses
  %i.go = and i32 %1, 16
  %i.gp = icmp ne i32 %i.go, 0                    ; 2 uses
  %i.gq = icmp ult i32 %.4482, 14
  %or.cond = select i1 %i.gp, i1 %i.gq, i1 false
  %i.gr = fcmp une double %2, 0.000000e+00
  %or.cond3 = and i1 %i.gr, %or.cond
  br i1 %or.cond3, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.gs = lshr i32 %i.ge, 6                       ; 2 uses
  %i.gt = zext nneg i32 %i.gs to i64              ; 2 uses
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr @rescale_e, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !34
  %i.gw = sext i16 %i.gv to i32                   ; 2 uses
  %i.gx = add nsw i32 %i.gs, -15
  %.not556 = icmp ult i32 %i.gx, 3
  br i1 %.not556, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr @rescale_n, i64 %i.gt
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !36
  %i.ha = fmul double %2, %i.gz                   ; 2 uses
  %.not557 = icmp eq i32 %i.ge, 0
  br i1 %.not557, label %bb.am, label %bb.an, !prof !15

bb.am:                                            ; preds = %bb.al
  %i.hb = fmul double %i.ha, 1.000000e+10
  %i.hc = add nsw i32 %i.gw, -10
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.0.4.in = phi double [ %i.hb, %bb.am ], [ %i.ha, %bb.al ]
  %.0438 = phi i32 [ %i.hc, %bb.am ], [ %i.gw, %bb.al ]
  %.sroa.0.4 = bitcast double %.sroa.0.4.in to i64
  %i.hd = add i64 %.sroa.0.4, -2                  ; 2 uses
  %.sroa.0.4.extract.shift218 = lshr i64 %i.hd, 32
  %.sroa.0.4.extract.trunc219 = trunc nuw i64 %.sroa.0.4.extract.shift218 to i32 ; 2 uses
  %i.he = and i32 %.sroa.0.4.extract.trunc219, 1048575
  %i.hf = or disjoint i32 %i.he, 1048576
  %i.hg = lshr i32 %.sroa.0.4.extract.trunc219, 20
  %i.hh = and i32 %i.hg, 2047
  %i.hi = add nsw i32 %i.hh, -1075
  br label %._crit_edge.i

bb.ao:                                            ; preds = %nd_similar.exit, %nd_similar.exit.thread, %bb.ak, %bb.aj
  %i.hj = and i32 %.sroa.0.4.extract.trunc, 1048575 ; 4 uses
  store i32 %i.hj, ptr %i.c, align 16, !tbaa !17
  %i.hk = icmp eq i32 %i.ge, 0
  br i1 %i.hk, label %.thread854, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hl = or disjoint i32 %i.hj, 1048576          ; 3 uses
  store i32 %i.hl, ptr %i.c, align 16, !tbaa !17
  %i.hm = add nsw i32 %i.ge, -1043                ; 3 uses
  %i.hn = and i64 %i.j, 4294967295
  %.not590 = icmp eq i64 %i.hn, 0
  br i1 %.not590, label %nd_mul2k.exit.thread, label %bb.aq

.thread854:                                       ; preds = %bb.ao
  %i.ho = and i64 %i.j, 4294967295
  %.not590856 = icmp eq i64 %i.ho, 0
  br i1 %.not590856, label %.thread768, label %bb.aq

bb.aq:                                            ; preds = %.thread854, %bb.ap
  %i.hp = phi i32 [ %i.hj, %.thread854 ], [ %i.hl, %bb.ap ]
  %.1442857 = phi i32 [ -1042, %.thread854 ], [ %i.hm, %bb.ap ]
  %i.hq = add nsw i32 %.1442857, -32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.aq, %bb.an
  %i.hr = phi i32 [ %i.hf, %bb.an ], [ %i.hp, %bb.aq ]
  %.sroa.0.6 = phi i64 [ %i.hd, %bb.an ], [ %i.j, %bb.aq ] ; 6 uses
  %.2443 = phi i32 [ %i.hi, %bb.an ], [ %i.hq, %bb.aq ] ; 7 uses
  %.2440 = phi i32 [ %.0438, %bb.an ], [ 0, %bb.aq ] ; 4 uses
  %.sroa.0.0.extract.trunc162 = trunc i64 %.sroa.0.6 to i32
  %i.hs = tail call i32 @llvm.fshl.i32(i32 %i.hr, i32 %.sroa.0.0.extract.trunc162, i32 3) ; 2 uses
  store i32 %i.hs, ptr %i.c, align 16, !tbaa !17
  %i.ht = and i64 %.sroa.0.6, 536870911
  %i.hu = zext i32 %i.hs to i64
  %i.hv = shl nuw nsw i64 %i.hu, 29
  %i.hw = or disjoint i64 %i.hv, %i.ht            ; 3 uses
  %i.hx = udiv i64 %i.hw, 1000000000
  %i.hy = trunc nuw i64 %i.hx to i32              ; 2 uses
  %i.hz = trunc i64 %i.hw to i32
  %.neg59.i = mul i32 %i.hy, -1000000000
  %i.ia = add i32 %.neg59.i, %i.hz
  store i32 %i.ia, ptr %i.c, align 16, !tbaa !17
  %.not58.i = icmp samesign ult i64 %i.hw, 1000000000
  br i1 %.not58.i, label %nd_mul2k.exit, label %nd_mul2k.exit.thread1144

nd_mul2k.exit:                                    ; preds = %._crit_edge.i
  %i.ib = icmp sgt i32 %.2443, -1
  br i1 %i.ib, label %bb.ar, label %._crit_edge1098

nd_mul2k.exit.thread1144:                         ; preds = %._crit_edge.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.hy, ptr %i.ic, align 4, !tbaa !17
  %i.id = icmp sgt i32 %.2443, -1
  br i1 %i.id, label %bb.ar, label %.thread1146

.thread1146:                                      ; preds = %nd_mul2k.exit.thread1144
  %i.ie = sub nsw i32 0, %.2443
  br label %bb.ax

nd_mul2k.exit.thread:                             ; preds = %bb.ap
  %i.if = icmp samesign ugt i32 %i.ge, 1042
  br i1 %i.if, label %bb.ar, label %.thread768

bb.ar:                                            ; preds = %nd_mul2k.exit.thread1144, %nd_mul2k.exit.thread, %nd_mul2k.exit
  %.3767 = phi i32 [ 0, %nd_mul2k.exit.thread ], [ %.2440, %nd_mul2k.exit ], [ %.2440, %nd_mul2k.exit.thread1144 ] ; 3 uses
  %.3444764 = phi i32 [ %i.hm, %nd_mul2k.exit.thread ], [ %.2443, %nd_mul2k.exit ], [ %.2443, %nd_mul2k.exit.thread1144 ] ; 7 uses
  %.2458761 = phi i32 [ 0, %nd_mul2k.exit.thread ], [ 0, %nd_mul2k.exit ], [ 1, %nd_mul2k.exit.thread1144 ] ; 3 uses
  %.sroa.0.7759 = phi i64 [ %i.j, %nd_mul2k.exit.thread ], [ %.sroa.0.6, %nd_mul2k.exit ], [ %.sroa.0.6, %nd_mul2k.exit.thread1144 ] ; 3 uses
  %i.ig = icmp samesign ugt i32 %.3444764, 28
  br i1 %i.ig, label %.preheader60.preheader.i, label %._crit_edge69.i631

.preheader60.preheader.i:                         ; preds = %bb.ar
  %i.ih = icmp samesign ult i32 %.3444764, 59
  %i.ii = and i32 %1, 48
  %.not.i644 = icmp eq i32 %i.ii, 32
  %or.cond.i = or i1 %.not.i644, %i.ih
  %i.ij = add nuw nsw i32 %i.h, 16
  %i.ik = lshr i32 %i.ij, 3
  %i.il = sub nsw i32 %.2458761, %i.ik
  %.044.i = select i1 %or.cond.i, i32 1, i32 %i.il
  br label %.preheader60.i645

.preheader60.i645:                                ; preds = %._crit_edge.i658.thread, %.preheader60.preheader.i
  %.068.i646 = phi i32 [ %.1.i664, %._crit_edge.i658.thread ], [ %.2458761, %.preheader60.preheader.i ] ; 4 uses
  %.04367.i647 = phi i32 [ %i.ja, %._crit_edge.i658.thread ], [ %.3444764, %.preheader60.preheader.i ]
  %.14566.i648 = phi i32 [ %.246.i663, %._crit_edge.i658.thread ], [ %.044.i, %.preheader60.preheader.i ] ; 4 uses
  %.04765.i649 = phi i32 [ %.148.i662, %._crit_edge.i658.thread ], [ 0, %.preheader60.preheader.i ] ; 6 uses
  %.not5761.i651 = icmp ugt i32 %.04765.i649, %.068.i646
  br i1 %.not5761.i651, label %._crit_edge.i658.thread, label %.lr.ph.i653.preheader

.lr.ph.i653.preheader:                            ; preds = %.preheader60.i645
  %4 = zext i32 %.04765.i649 to i64
  %5 = add i32 %.068.i646, 1                      ; 3 uses
  br label %.lr.ph.i653

.lr.ph.i653:                                      ; preds = %.lr.ph.i653.preheader, %.lr.ph.i653
  %.15262.i655.a = phi i64 [ %4, %.lr.ph.i653.preheader ], [ %indvars.iv.next1070, %.lr.ph.i653 ] ; 2 uses
  %.15262.i655 = phi i64 [ 0, %.lr.ph.i653.preheader ], [ %i.ir, %.lr.ph.i653 ]
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.15262.i655.a ; 2 uses
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
  %indvars.iv.next1070 = add nuw nsw i64 %.15262.i655.a, 1 ; 2 uses
  %lftr.wideiv1072 = trunc i64 %indvars.iv.next1070 to i32
  %exitcond1073.not = icmp eq i32 %5, %lftr.wideiv1072
  br i1 %exitcond1073.not, label %._crit_edge.i658, label %.lr.ph.i653, !llvm.loop !22

._crit_edge.i658:                                 ; preds = %.lr.ph.i653
  %.not58.i660 = icmp samesign ult i64 %i.iq, 1000000000
  br i1 %.not58.i660, label %._crit_edge.i658.thread, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i658
  %i.iv = zext i32 %5 to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iv
  store i32 %i.is, ptr %i.iw, align 4, !tbaa !17
  %i.ix = add i32 %.14566.i648, 1
  %i.iy = icmp eq i32 %.14566.i648, %.04765.i649
  %i.iz = zext i1 %i.iy to i32
  %spec.select.i661 = add i32 %.04765.i649, %i.iz
  br label %._crit_edge.i658.thread

._crit_edge.i658.thread:                          ; preds = %.preheader60.i645, %bb.as, %._crit_edge.i658
  %.148.i662 = phi i32 [ %.04765.i649, %._crit_edge.i658 ], [ %spec.select.i661, %bb.as ], [ %.04765.i649, %.preheader60.i645 ] ; 2 uses
  %.246.i663 = phi i32 [ %.14566.i648, %._crit_edge.i658 ], [ %i.ix, %bb.as ], [ %.14566.i648, %.preheader60.i645 ]
  %.1.i664 = phi i32 [ %.068.i646, %._crit_edge.i658 ], [ %5, %bb.as ], [ %.068.i646, %.preheader60.i645 ] ; 2 uses
  %i.ja = add nsw i32 %.04367.i647, -29           ; 3 uses
  %i.jb = icmp ugt i32 %i.ja, 28
  br i1 %i.jb, label %.preheader60.i645, label %._crit_edge69.i631, !llvm.loop !23

._crit_edge69.i631:                               ; preds = %._crit_edge.i658.thread, %bb.ar
  %.047.lcssa.i = phi i32 [ 0, %bb.ar ], [ %.148.i662, %._crit_edge.i658.thread ] ; 2 uses
  %.043.lcssa.i = phi i32 [ %.3444764, %bb.ar ], [ %i.ja, %._crit_edge.i658.thread ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %.2458761, %bb.ar ], [ %.1.i664, %._crit_edge.i658.thread ] ; 4 uses
  %.not54.i632 = icmp eq i32 %.043.lcssa.i, 0
  %.not5574.i634 = icmp ugt i32 %.047.lcssa.i, %.0.lcssa.i
  %or.cond864 = select i1 %.not54.i632, i1 true, i1 %.not5574.i634
  br i1 %or.cond864, label %nd_mul2k.exit665, label %.lr.ph77.i635

.lr.ph77.i635:                                    ; preds = %._crit_edge69.i631
  %i.jc = zext nneg i32 %.043.lcssa.i to i64
  %6 = zext i32 %.047.lcssa.i to i64
  %7 = add i32 %.0.lcssa.i, 1                     ; 3 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph77.i635
  %.375.i637.a = phi i64 [ %indvars.iv.next1075, %bb.at ], [ %6, %.lr.ph77.i635 ] ; 2 uses
  %.375.i637 = phi i64 [ %i.ji, %bb.at ], [ 0, %.lr.ph77.i635 ]
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.375.i637.a ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !17
  %i.jf = zext i32 %i.je to i64
  %i.jg = shl nuw nsw i64 %i.jf, %i.jc
  %i.jh = or i64 %i.jg, %.375.i637                ; 3 uses
  %i.ji = udiv i64 %i.jh, 1000000000              ; 2 uses
  %i.jj = trunc nuw nsw i64 %i.ji to i32          ; 2 uses
  %i.jk = trunc i64 %i.jh to i32
  %.neg.i638 = mul i32 %i.jj, -1000000000
  %i.jl = add i32 %.neg.i638, %i.jk
  store i32 %i.jl, ptr %i.jd, align 4, !tbaa !17
  %indvars.iv.next1075 = add nuw nsw i64 %.375.i637.a, 1 ; 2 uses
  %lftr.wideiv1077 = trunc i64 %indvars.iv.next1075 to i32
  %exitcond1078.not = icmp eq i32 %7, %lftr.wideiv1077
  br i1 %exitcond1078.not, label %._crit_edge78.i640, label %bb.at, !llvm.loop !24

._crit_edge78.i640:                               ; preds = %bb.at
  %.not56.i642 = icmp samesign ult i64 %i.jh, 1000000000
  br i1 %.not56.i642, label %nd_mul2k.exit665, label %bb.au

bb.au:                                            ; preds = %._crit_edge78.i640
  %i.jm = zext i32 %7 to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jm
  store i32 %i.jj, ptr %i.jn, align 4, !tbaa !17
  br label %nd_mul2k.exit665

._crit_edge1098:                                  ; preds = %nd_mul2k.exit
  %.pre = load i32, ptr %i.c, align 16, !tbaa !17
  br label %.thread768

.thread768:                                       ; preds = %nd_mul2k.exit.thread, %.thread854, %._crit_edge1098
  %.2443.sink = phi i32 [ %.pre, %._crit_edge1098 ], [ %i.hl, %nd_mul2k.exit.thread ], [ %i.hj, %.thread854 ] ; 4 uses
  %.sroa.0.7758789 = phi i64 [ %.sroa.0.6, %._crit_edge1098 ], [ %i.j, %nd_mul2k.exit.thread ], [ %i.j, %.thread854 ] ; 3 uses
  %.3444763783 = phi i32 [ %.2443, %._crit_edge1098 ], [ %i.hm, %nd_mul2k.exit.thread ], [ -1042, %.thread854 ] ; 4 uses
  %.3766780 = phi i32 [ %.2440, %._crit_edge1098 ], [ 0, %nd_mul2k.exit.thread ], [ 0, %.thread854 ] ; 3 uses
  %i.jo = sub nsw i32 0, %.3444763783             ; 3 uses
  %.not116.i = icmp eq i32 %.2443.sink, 0
  br i1 %.not116.i, label %nd_mul2k.exit665, label %bb.av

bb.av:                                            ; preds = %.thread768
  %i.jp = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.2443.sink, i1 true) ; 3 uses
  %.not117.i = icmp samesign ult i32 %i.jp, %i.jo
  br i1 %.not117.i, label %.thread.i, label %bb.aw

.thread.i:                                        ; preds = %bb.av
  %i.jq = lshr exact i32 %.2443.sink, %i.jp
  store i32 %i.jq, ptr %i.c, align 16, !tbaa !17
  %i.jr = sub nuw nsw i32 %i.jo, %i.jp
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.js = lshr i32 %.2443.sink, %i.jo
  store i32 %i.js, ptr %i.c, align 16, !tbaa !17
  br label %nd_mul2k.exit665

bb.ax:                                            ; preds = %.thread1146, %.thread.i
  %.not.i666803 = phi i1 [ false, %.thread1146 ], [ true, %.thread.i ] ; 2 uses
  %.sroa.0.7758788 = phi i64 [ %.sroa.0.6, %.thread1146 ], [ %.sroa.0.7758789, %.thread.i ] ; 3 uses
  %.2458760785 = phi i32 [ 1, %.thread1146 ], [ 0, %.thread.i ] ; 7 uses
  %.3444763782 = phi i32 [ %.2443, %.thread1146 ], [ %.3444763783, %.thread.i ] ; 3 uses
  %.3766779 = phi i32 [ %.2440, %.thread1146 ], [ %.3766780, %.thread.i ] ; 3 uses
  %.1107.i = phi i32 [ %i.ie, %.thread1146 ], [ %i.jr, %.thread.i ] ; 5 uses
  %i.jt = icmp samesign ult i32 %.1107.i, 19
  %i.ju = and i32 %1, 48
  %i.jv = icmp eq i32 %i.ju, 32
  %or.cond.i667 = or i1 %i.jv, %i.jt
  br i1 %or.cond.i667, label %bb.ay, label %.thread158.i

.thread158.i:                                     ; preds = %bb.ax
  %i.jw = mul nuw nsw i32 %.2458760785, 29
  %i.jx = zext nneg i32 %.2458760785 to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !17
  %i.ka = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jz, i1 true)
  %i.kb = xor i32 %i.ka, 31
  %i.kc = sub nsw i32 %i.jw, %.1107.i
  %i.kd = add nsw i32 %i.kc, %i.kb
  %i.ke = sitofp i32 %i.kd to double
  %i.kf = fmul nnan double %i.ke, f0x3FD34413509F79FE
  %i.kg = fptosi double %i.kf to i32
  %i.kh = sub nsw i32 %i.kg, %i.i
  %i.ki = sdiv i32 %i.kh, 9
  %i.kj = add nsw i32 %i.ki, 62
  %.neg.lhs.trunc.i = trunc nsw i32 %i.i to i16
  %.neg136.i = sdiv i16 %.neg.lhs.trunc.i, -8
  %narrow1015 = add nsw i16 %.neg136.i, 61
  %i.kk = zext nneg i16 %narrow1015 to i32
  %i.kl = add nuw nsw i32 %.2458760785, %i.kk
  br label %.preheader.preheader.i

bb.ay:                                            ; preds = %bb.ax
  %i.km = icmp samesign ugt i32 %.1107.i, 8
  br i1 %i.km, label %.preheader.preheader.i, label %._crit_edge.i669

.preheader.preheader.i:                           ; preds = %bb.ay, %.thread158.i
  %.096162.i = phi i32 [ %i.kl, %.thread158.i ], [ -1, %bb.ay ]
  %.0100161.i = phi i32 [ %i.kj, %.thread158.i ], [ -1, %bb.ay ]
  br label %.preheader.i668

.preheader.i668:                                  ; preds = %bb.bi, %.preheader.preheader.i
  %.089145.i = phi i32 [ %.190.i, %bb.bi ], [ %.2458760785, %.preheader.preheader.i ] ; 9 uses
  %.197144.i = phi i32 [ %.298.i, %bb.bi ], [ %.096162.i, %.preheader.preheader.i ] ; 5 uses
  %.0101143.i = phi i32 [ %.2103.i, %bb.bi ], [ 0, %.preheader.preheader.i ] ; 8 uses
  %.2108142.i = phi i32 [ %i.ln, %bb.bi ], [ %.1107.i, %.preheader.preheader.i ]
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.preheader.i668
  %.085.i = phi i32 [ %i.kw, %bb.az ], [ %.089145.i, %.preheader.i668 ] ; 3 uses
  %.084.i = phi i32 [ %i.kt, %bb.az ], [ 0, %.preheader.i668 ]
  %i.kn = zext nneg i32 %.085.i to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kn ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !17 ; 2 uses
  %i.kq = lshr i32 %i.kp, 9
  %i.kr = add nuw nsw i32 %i.kq, %.084.i
  store i32 %i.kr, ptr %i.ko, align 4, !tbaa !17
  %i.ks = and i32 %i.kp, 511                      ; 2 uses
  %i.kt = mul nuw nsw i32 %i.ks, 1953125          ; 2 uses
  %i.ku = icmp eq i32 %.085.i, %.0101143.i
  %i.kv = add nuw nsw i32 %.085.i, 63
  %i.kw = and i32 %i.kv, 63
  br i1 %i.ku, label %bb.ba, label %bb.az

bb.ba:                                            ; preds = %bb.az
  %.not120.i = icmp eq i32 %.0101143.i, %.0100161.i
  %.not121.i = icmp eq i32 %.0101143.i, %.197144.i
  %or.cond127.i = select i1 %.not120.i, i1 true, i1 %.not121.i
  br i1 %or.cond127.i, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not124.i = icmp eq i32 %i.ks, 0
  br i1 %.not124.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kx = add nuw nsw i32 %.0101143.i, 63
  %i.ky = and i32 %i.kx, 63                       ; 2 uses
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kz
  store i32 %i.kt, ptr %i.la, align 4, !tbaa !17
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.1102.i = phi i32 [ %i.ky, %bb.bc ], [ %.0101143.i, %bb.bb ] ; 2 uses
  %i.lb = zext nneg i32 %.089145.i to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !17
  %.not125.i = icmp eq i32 %i.ld, 0
  br i1 %.not125.i, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.le = add nuw nsw i32 %.089145.i, 63
  %i.lf = and i32 %i.le, 63
  %i.lg = add i32 %.197144.i, -1
  br label %bb.bi

bb.bf:                                            ; preds = %bb.ba
  %i.lh = zext nneg i32 %.089145.i to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !17
  %.not122.i = icmp eq i32 %i.lj, 0
  br i1 %.not122.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %.not123.i = icmp eq i32 %.089145.i, %.0101143.i
  br i1 %.not123.i, label %nd_div2k.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lk = add nuw nsw i32 %.089145.i, 63
  %i.ll = and i32 %i.lk, 63
  %i.lm = add i32 %.197144.i, -1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf, %bb.be, %bb.bd
  %.2103.i = phi i32 [ %.1102.i, %bb.bd ], [ %.1102.i, %bb.be ], [ %.0101143.i, %bb.bf ], [ %.0101143.i, %bb.bh ] ; 2 uses
  %.298.i = phi i32 [ %.197144.i, %bb.bd ], [ %i.lg, %bb.be ], [ %.197144.i, %bb.bf ], [ %i.lm, %bb.bh ]
  %.190.i = phi i32 [ %.089145.i, %bb.bd ], [ %i.lf, %bb.be ], [ %.089145.i, %bb.bf ], [ %i.ll, %bb.bh ] ; 2 uses
  %i.ln = add nsw i32 %.2108142.i, -9             ; 3 uses
  %i.lo = icmp ugt i32 %i.ln, 8
  br i1 %i.lo, label %.preheader.i668, label %._crit_edge.i669, !llvm.loop !25

._crit_edge.i669:                                 ; preds = %bb.bi, %bb.ay
  %.2108.lcssa.i = phi i32 [ %.1107.i, %bb.ay ], [ %i.ln, %bb.bi ] ; 4 uses
  %.0101.lcssa.i = phi i32 [ 0, %bb.ay ], [ %.2103.i, %bb.bi ] ; 4 uses
  %.089.lcssa.i = phi i32 [ %.2458760785, %bb.ay ], [ %.190.i, %bb.bi ]
  %.not118.i = icmp eq i32 %.2108.lcssa.i, 0
  br i1 %.not118.i, label %nd_div2k.exit, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i669
  %notmask.i = shl nsw i32 -1, %.2108.lcssa.i
  %i.lp = xor i32 %notmask.i, -1
  %i.lq = lshr i32 1000000000, %.2108.lcssa.i
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %bb.bj
  %.083.i = phi i32 [ %.089.lcssa.i, %bb.bj ], [ %i.ma, %bb.bk ] ; 3 uses
  %.0.i670 = phi i32 [ 0, %bb.bj ], [ %i.lx, %bb.bk ]
  %i.lr = zext nneg i32 %.083.i to i64
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lr ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !17 ; 2 uses
  %i.lu = lshr i32 %i.lt, %.2108.lcssa.i
  %i.lv = add i32 %i.lu, %.0.i670
  store i32 %i.lv, ptr %i.ls, align 4, !tbaa !17
  %i.lw = and i32 %i.lt, %i.lp
  %i.lx = mul i32 %i.lw, %i.lq                    ; 3 uses
  %i.ly = icmp eq i32 %.083.i, %.0101.lcssa.i
  %i.lz = add nuw nsw i32 %.083.i, 63
  %i.ma = and i32 %i.lz, 63
  br i1 %i.ly, label %bb.bl, label %bb.bk

bb.bl:                                            ; preds = %bb.bk
  %.not119.i = icmp eq i32 %i.lx, 0
  br i1 %.not119.i, label %nd_div2k.exit, label %.split815

.split815:                                        ; preds = %bb.bl
  %i.mb = add nuw nsw i32 %.0101.lcssa.i, 63
  %i.mc = and i32 %i.mb, 63                       ; 3 uses
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.md
  store i32 %i.lx, ptr %i.me, align 4, !tbaa !17
  br i1 %.not.i666803, label %nd_mul2k.exit665, label %bb.bm

nd_div2k.exit:                                    ; preds = %bb.bg, %._crit_edge.i669, %bb.bl
  %.4.i = phi i32 [ %.0101.lcssa.i, %bb.bl ], [ %.0101.lcssa.i, %._crit_edge.i669 ], [ %.089145.i, %bb.bg ] ; 2 uses
  br i1 %.not.i666803, label %nd_mul2k.exit665, label %bb.bm

bb.bm:                                            ; preds = %.split815, %nd_div2k.exit
  %.4.i824 = phi i32 [ %i.mc, %.split815 ], [ %.4.i, %nd_div2k.exit ]
  %i.mf = zext nneg i32 %.2458760785 to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.mf
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !17
  %.not559 = icmp eq i32 %i.mh, 0
  %i.mi = sext i1 %.not559 to i32
  %spec.select619 = add nsw i32 %.2458760785, %i.mi
  br label %nd_mul2k.exit665

nd_mul2k.exit665:                                 ; preds = %bb.aw, %.thread768, %.split815, %bb.au, %._crit_edge78.i640, %._crit_edge69.i631, %bb.bm, %nd_div2k.exit
  %.3765 = phi i32 [ %.3766779, %nd_div2k.exit ], [ %.3766779, %bb.bm ], [ %.3767, %bb.au ], [ %.3767, %._crit_edge78.i640 ], [ %.3767, %._crit_edge69.i631 ], [ %.3766779, %.split815 ], [ %.3766780, %bb.aw ], [ %.3766780, %.thread768 ] ; 2 uses
  %.3444762 = phi i32 [ %.3444763782, %nd_div2k.exit ], [ %.3444763782, %bb.bm ], [ %.3444764, %bb.au ], [ %.3444764, %._crit_edge78.i640 ], [ %.3444764, %._crit_edge69.i631 ], [ %.3444763782, %.split815 ], [ %.3444763783, %bb.aw ], [ %.3444763783, %.thread768 ]
  %.sroa.0.7757 = phi i64 [ %.sroa.0.7758788, %nd_div2k.exit ], [ %.sroa.0.7758788, %bb.bm ], [ %.sroa.0.7759, %bb.au ], [ %.sroa.0.7759, %._crit_edge78.i640 ], [ %.sroa.0.7759, %._crit_edge69.i631 ], [ %.sroa.0.7758788, %.split815 ], [ %.sroa.0.7758789, %bb.aw ], [ %.sroa.0.7758789, %.thread768 ]
  %.3459 = phi i32 [ 0, %nd_div2k.exit ], [ %spec.select619, %bb.bm ], [ %7, %bb.au ], [ %.0.lcssa.i, %._crit_edge78.i640 ], [ %.0.lcssa.i, %._crit_edge69.i631 ], [ 0, %.split815 ], [ 0, %bb.aw ], [ 0, %.thread768 ] ; 4 uses
  %.0449 = phi i32 [ %.4.i, %nd_div2k.exit ], [ %.4.i824, %bb.bm ], [ 0, %bb.au ], [ 0, %._crit_edge78.i640 ], [ 0, %._crit_edge69.i631 ], [ %i.mc, %.split815 ], [ 0, %bb.aw ], [ 0, %.thread768 ] ; 14 uses
  br i1 %i.gp, label %bb.bn, label %bb.cv

bb.bn:                                            ; preds = %nd_mul2k.exit665
  %.not560 = icmp eq i32 %.0449, 0                ; 2 uses
  %.phi.trans.insert = zext i32 %.3459 to i64     ; 2 uses
  %.phi.trans.insert1084 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.phi.trans.insert
  %.pre1085 = load i32, ptr %.phi.trans.insert1084, align 4, !tbaa !17 ; 2 uses
  %.not561 = icmp ne i32 %.pre1085, 0
  %or.cond1174.not = select i1 %.not560, i1 true, i1 %.not561
  br i1 %or.cond1174.not, label %.loopexit888, label %.preheader887

.preheader887:                                    ; preds = %bb.bn, %.preheader887
  %.4460 = phi i32 [ %i.mj, %.preheader887 ], [ 64, %bb.bn ]
  %i.mj = add i32 %.4460, -1                      ; 3 uses
  %i.mk = zext i32 %i.mj to i64                   ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !17 ; 2 uses
  %.not562 = icmp eq i32 %i.mm, 0
  br i1 %.not562, label %.preheader887, label %.loopexit888, !llvm.loop !26

.loopexit888:                                     ; preds = %.preheader887, %bb.bn
  %.pre-phi = phi i64 [ %.phi.trans.insert, %bb.bn ], [ %i.mk, %.preheader887 ] ; 2 uses
  %i.mn = phi i32 [ %.pre1085, %bb.bn ], [ %i.mm, %.preheader887 ] ; 3 uses
  %.5461 = phi i32 [ %.3459, %bb.bn ], [ %i.mj, %.preheader887 ] ; 7 uses
  %.0434 = phi i32 [ -1, %bb.bn ], [ -577, %.preheader887 ]
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre-phi
  %i.mp = or i32 %i.mn, 1
  %i.mq = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.mp, i1 true)
  %i.mr = xor i32 %i.mq, 31
  %i.ms = mul nuw nsw i32 %i.mr, 77
  %i.mt = lshr i32 %i.ms, 8                       ; 2 uses
  %i.mu = add nuw nsw i32 %i.mt, 1                ; 2 uses
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr @ndigits_dec_threshold, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !17
  %i.my = icmp ugt i32 %i.mn, %i.mx
  %i.mz = zext i1 %i.my to i32                    ; 2 uses
  %i.na = add nuw nsw i32 %i.mu, %i.mz            ; 7 uses
  %i.nb = mul nuw i32 %.5461, 9
  %i.nc = add i32 %.0434, %i.nb
  %i.nd = add i32 %i.nc, %i.na                    ; 4 uses
  %.not563 = icmp eq i32 %.3765, 0
  br i1 %.not563, label %bb.ca, label %bb.bo

bb.bo:                                            ; preds = %.loopexit888
  %i.ne = add nsw i32 %.3444762, 70
  %i.nf = and i64 %.sroa.0.7757, 4503599627370494
  %narrow = icmp eq i64 %i.nf, 4503599627370494
  %i.ng = zext i1 %narrow to i32
  %i.nh = add nsw i32 %i.ne, %i.ng
  %i.ni = shl nsw i32 %i.nh, 1
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds i8, ptr @four_ulp_m_e, i64 %i.nj ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 3 uses
  store i32 %i.mn, ptr %i.nl, align 4, !tbaa !17
  %i.nm = add nuw i32 %.5461, 63
  %i.nn = and i32 %i.nm, 63
  %i.no = zext nneg i32 %i.nn to i64              ; 2 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.no ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !17
  %i.nr = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  store i32 %i.nq, ptr %i.nr, align 16, !tbaa !17
  %i.ns = add nuw i32 %.5461, 62
  %i.nt = and i32 %i.ns, 63
  %i.nu = zext nneg i32 %i.nt to i64              ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !17
  %i.nx = getelementptr inbounds nuw i8, ptr %i.c, i64 124 ; 2 uses
  store i32 %i.nw, ptr %i.nx, align 4, !tbaa !17
  %i.ny = load i8, ptr %i.nk, align 2, !tbaa !16
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nk, i64 1
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !16  ; 4 uses
  %i.ob = sext i8 %i.oa to i32
  %i.oc = icmp sgt i8 %i.oa, -1
  br i1 %i.oc, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.od = udiv i8 %i.oa, 9
  %.zext = zext nneg i8 %i.od to i32              ; 2 uses
  %.neg38.i = mul nsw i32 %.zext, -9
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %.nonneg.i = sub i8 8, %i.oa
  %i.oe = udiv i8 %.nonneg.i, 9
  %.zext862 = zext nneg i8 %i.oe to i32           ; 2 uses
  %i.of = sub nuw nsw i32 64, %.zext862
  %.neg.i671 = mul nuw nsw i32 %.zext862, 9
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.neg.sink.i = phi i32 [ %.neg.i671, %bb.bq ], [ %.neg38.i, %bb.bp ]
  %.031.i = phi i32 [ %i.of, %bb.bq ], [ %.zext, %bb.bp ] ; 2 uses
  %.sink59.i = zext i8 %i.ny to i32
  %i.og = add nsw i32 %.neg.sink.i, %i.ob
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [4 x i8], ptr @ndigits_dec_threshold, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !17
  %i.ok = add i32 %i.oj, 1
  %i.ol = mul i32 %i.ok, %.sink59.i
  %i.om = zext nneg i32 %.031.i to i64
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.om ; 3 uses
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !17
  %i.op = add i32 %i.ol, %i.oo                    ; 3 uses
  %i.oq = icmp ugt i32 %i.op, 999999999
  br i1 %i.oq, label %.lr.ph.i673, label %._crit_edge.i672, !prof !19

.lr.ph.i673:                                      ; preds = %bb.br, %bb.bt
  %i.or = phi i32 [ %i.pe, %bb.bt ], [ %i.op, %bb.br ]
  %i.os = phi ptr [ %i.pc, %bb.bt ], [ %i.on, %bb.br ]
  %.13248.i = phi i32 [ %i.pa, %bb.bt ], [ %.031.i, %bb.br ] ; 2 uses
  %i.ot = add i32 %i.or, -1000000000
  store i32 %i.ot, ptr %i.os, align 4, !tbaa !17
  %i.ou = icmp eq i32 %.13248.i, %.5461
  br i1 %i.ou, label %bb.bs, label %bb.bt, !prof !15

bb.bs:                                            ; preds = %.lr.ph.i673
  %i.ov = add nuw nsw i32 %.5461, 1
  %i.ow = and i32 %i.ov, 63
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ox
  store i32 1, ptr %i.oy, align 4, !tbaa !17
  br label %nd_add_m10e.exit

._crit_edge.i672:                                 ; preds = %bb.bt, %bb.br
  %.lcssa46.i = phi ptr [ %i.on, %bb.br ], [ %i.pc, %bb.bt ]
  %.lcssa.i = phi i32 [ %i.op, %bb.br ], [ %i.pe, %bb.bt ]
  store i32 %.lcssa.i, ptr %.lcssa46.i, align 4, !tbaa !17
  br label %nd_add_m10e.exit

bb.bt:                                            ; preds = %.lr.ph.i673
  %i.oz = add nuw nsw i32 %.13248.i, 1
  %i.pa = and i32 %i.oz, 63                       ; 2 uses
  %i.pb = zext nneg i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pb ; 3 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !17
  %i.pe = add i32 %i.pd, 1                        ; 3 uses
  %i.pf = icmp ugt i32 %i.pe, 999999999
  br i1 %i.pf, label %.lr.ph.i673, label %._crit_edge.i672, !prof !20

nd_add_m10e.exit:                                 ; preds = %bb.bs, %._crit_edge.i672
  %i.pg = add nsw i32 %.4482, 1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %.not.i674 = icmp ugt i32 %i.na, %i.pg
  br i1 %.not.i674, label %bb.by, label %bb.bu

bb.bu:                                            ; preds = %nd_add_m10e.exit
  %i.ph = load i32, ptr %i.mo, align 4, !tbaa !17
  %i.pi = load i32, ptr %i.nl, align 4, !tbaa !17
  %.not32.i = icmp eq i32 %i.ph, %i.pi
  br i1 %.not32.i, label %bb.bv, label %nd_similar.exit.thread, !prof !37

bb.bv:                                            ; preds = %bb.bu
  %i.pj = sub nuw i32 %i.pg, %i.na                ; 3 uses
  %i.pk = icmp ugt i32 %i.pj, 8
  br i1 %i.pk, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.pl = load i32, ptr %i.np, align 4, !tbaa !17
  %i.pm = load i32, ptr %i.nr, align 16, !tbaa !17
  %.not33.i = icmp eq i32 %i.pl, %i.pm
  br i1 %.not33.i, label %bb.bx, label %nd_similar.exit.thread, !prof !37

bb.bx:                                            ; preds = %bb.bw
  %i.pn = add i32 %i.pj, -9
  br label %bb.bz

bb.by:                                            ; preds = %nd_add_m10e.exit
  %reass.sub.i = add nsw i32 %.4482, 10
  %i.po = sub i32 %reass.sub.i, %i.na
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bv
  %.pre-phi1087 = phi i64 [ %.pre-phi, %bb.by ], [ %i.nu, %bb.bx ], [ %i.no, %bb.bv ]
  %.025.i = phi ptr [ %i.nl, %bb.by ], [ %i.nx, %bb.bx ], [ %i.nr, %bb.bv ]
  %.0.i675 = phi i32 [ %i.po, %bb.by ], [ %i.pn, %bb.bx ], [ %i.pj, %bb.bv ]
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre-phi1087
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !17 ; 3 uses
  %i.pr = udiv i32 %i.pq, 10000                   ; 2 uses
  %.neg.i.i = mul i32 %i.pr, -10000
  %i.ps = add i32 %.neg.i.i, %i.pq                ; 2 uses
  %i.pt = udiv i32 %i.pq, 100000000               ; 2 uses
  %.neg42.i.i = mul nsw i32 %i.pt, -10000
  %i.pu = add nsw i32 %.neg42.i.i, %i.pr          ; 2 uses
  %i.pv = trunc nuw nsw i32 %i.pt to i8
  %i.pw = add nuw nsw i8 %i.pv, 48
  %i.px = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.pw, ptr %i.a, align 1, !tbaa !16
  %i.py = mul i32 %i.pu, 8389
  %i.pz = lshr i32 %i.py, 23                      ; 2 uses
  %.neg43.i.i = mul nsw i32 %i.pz, -1000
  %i.qa = add nsw i32 %.neg43.i.i, %i.pu          ; 2 uses
  %i.qb = trunc i32 %i.pz to i8
  %i.qc = add i8 %i.qb, 48
  %i.qd = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.qc, ptr %i.px, align 1, !tbaa !16
  %i.qe = mul nsw i32 %i.qa, 41
  %i.qf = lshr i32 %i.qe, 12                      ; 2 uses
  %.neg44.i.i = mul nsw i32 %i.qf, -100
  %i.qg = add nsw i32 %.neg44.i.i, %i.qa          ; 2 uses
  %i.qh = trunc i32 %i.qf to i8
  %i.qi = add i8 %i.qh, 48
  %i.qj = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.qi, ptr %i.qd, align 1, !tbaa !16
  %i.qk = mul i32 %i.qg, 103
  %i.ql = lshr i32 %i.qk, 10                      ; 2 uses
  %.neg45.i.i = mul nuw nsw i32 %i.ql, 246
  %i.qm = add nsw i32 %.neg45.i.i, %i.qg
  %i.qn = trunc i32 %i.ql to i8
  %i.qo = add i8 %i.qn, 48
  %i.qp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.qo, ptr %i.qj, align 1, !tbaa !16
  %i.qq = trunc i32 %i.qm to i8
  %i.qr = add i8 %i.qq, 48
  %i.qs = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.qr, ptr %i.qp, align 1, !tbaa !16
  %i.qt = mul i32 %i.ps, 8389
  %i.qu = lshr i32 %i.qt, 23                      ; 2 uses
  %.neg46.i.i = mul nsw i32 %i.qu, -1000
  %i.qv = add i32 %.neg46.i.i, %i.ps              ; 2 uses
  %i.qw = trunc i32 %i.qu to i8
  %i.qx = add i8 %i.qw, 48
  %i.qy = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.qx, ptr %i.qs, align 1, !tbaa !16
  %i.qz = mul i32 %i.qv, 41
  %i.ra = lshr i32 %i.qz, 12                      ; 2 uses
  %.neg47.i.i = mul nsw i32 %i.ra, -100
  %i.rb = add i32 %.neg47.i.i, %i.qv              ; 2 uses
  %i.rc = trunc i32 %i.ra to i8
  %i.rd = add i8 %i.rc, 48
  %i.re = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.rd, ptr %i.qy, align 1, !tbaa !16
  %i.rf = mul i32 %i.rb, 103
  %i.rg = lshr i32 %i.rf, 10                      ; 2 uses
  %.neg48.i.i = mul nuw nsw i32 %i.rg, 246
  %i.rh = add i32 %.neg48.i.i, %i.rb
  %i.ri = trunc i32 %i.rg to i8
  %i.rj = add i8 %i.ri, 48
  %i.rk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.rj, ptr %i.re, align 1, !tbaa !16
  %i.rl = trunc i32 %i.rh to i8
  %i.rm = add i8 %i.rl, 48
  store i8 %i.rm, ptr %i.rk, align 1, !tbaa !16
  %i.rn = load i32, ptr %.025.i, align 4, !tbaa !17 ; 3 uses
  %i.ro = udiv i32 %i.rn, 10000                   ; 2 uses
  %.neg.i35.i = mul i32 %i.ro, -10000
  %i.rp = add i32 %.neg.i35.i, %i.rn              ; 2 uses
  %i.rq = udiv i32 %i.rn, 100000000               ; 2 uses
  %.neg42.i36.i = mul nsw i32 %i.rq, -10000
  %i.rr = add nsw i32 %.neg42.i36.i, %i.ro        ; 2 uses
  %i.rs = trunc nuw nsw i32 %i.rq to i8
  %i.rt = add nuw nsw i8 %i.rs, 48
  %i.ru = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.rt, ptr %i.b, align 1, !tbaa !16
  %i.rv = mul i32 %i.rr, 8389
  %i.rw = lshr i32 %i.rv, 23                      ; 2 uses
  %.neg43.i37.i = mul nsw i32 %i.rw, -1000
  %i.rx = add nsw i32 %.neg43.i37.i, %i.rr        ; 2 uses
  %i.ry = trunc i32 %i.rw to i8
  %i.rz = add i8 %i.ry, 48
  %i.sa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.rz, ptr %i.ru, align 1, !tbaa !16
end_hunk_1
