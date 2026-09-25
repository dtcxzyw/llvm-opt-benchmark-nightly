Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/format?download=true
inline.NumInlined: 5789
inline.NumDeleted: 1347
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 176
begin_hunk_0_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS1_12float_writerIwEEEEvRKNS0_18basic_format_specsIwEEOT_:bb.a

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit49, label %.lr.ph.i.i.i.i45.preheader

.lr.ph.i.i.i.i45.preheader:                       ; preds = %bb.j, %middle.block
  %.06.i.i.i.i46.ph = phi ptr [ %i.ae, %bb.j ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i45

.lr.ph.i.i.i.i45:                                 ; preds = %.lr.ph.i.i.i.i45.preheader, %.lr.ph.i.i.i.i45
  %.06.i.i.i.i46 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i45 ], [ %.06.i.i.i.i46.ph, %.lr.ph.i.i.i.i45.preheader ] ; 2 uses
  store i32 %i.ag, ptr %.06.i.i.i.i46, align 4, !tbaa !112
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i46, i64 4 ; 2 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.bs, %i.bj
  br i1 %.not.i.i.i.i47, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit49, label %.lr.ph.i.i.i.i45, !llvm.loop !3363

_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit49:            ; preds = %.lr.ph.i.i.i.i45, %middle.block, %bb.i
  %.0.i.i48 = phi ptr [ %i.ae, %bb.i ], [ %i.bj, %middle.block ], [ %i.bj, %.lr.ph.i.i.i.i45 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = and i32 %i.bv, 255                      ; 2 uses
  %.not.i50 = icmp eq i32 %i.bw, 0
  br i1 %.not.i50, label %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit52, label %bb.k

bb.k:                                             ; preds = %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit49
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !64
  %i.ca = sext i8 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i48, i64 4
  store i32 %i.ca, ptr %.0.i.i48, align 4, !tbaa !112
  br label %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit52

_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit52: ; preds = %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit49, %bb.k
  %i.cc = phi ptr [ %i.cb, %bb.k ], [ %.0.i.i48, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit49 ]
  %i.cd = tail call noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyIPwEET_S6_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %i.cc) ; 4 uses
  %i.ce = sub nuw nsw i64 %i.ah, %i.bh
  %.idx.i.i53 = shl nuw nsw i64 %i.ce, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i53
  %i.cg = shl nuw nsw i64 %i.d, 2
  %i.ch = add i64 %i.c, %i.bh
  %i.ci = shl i64 %i.ch, 2
  %i.cj = add nsw i64 %i.cg, -4
  %i.ck = sub i64 %i.cj, %i.ci                    ; 2 uses
  %i.cl = lshr exact i64 %i.ck, 2
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check89 = icmp ult i64 %i.ck, 28
  br i1 %min.iters.check89, label %.lr.ph.i.i.i.i54.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit52
  %n.vec91 = and i64 %i.cm, 9223372036854775800   ; 3 uses
  %i.cn = shl i64 %n.vec91, 2
  %i.co = getelementptr i8, ptr %i.cd, i64 %i.cn
  %broadcast.splatinsert92 = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat93 = shufflevector <4 x i32> %broadcast.splatinsert92, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph90
  %index95 = phi i64 [ 0, %vector.ph90 ], [ %index.next97, %vector.body94 ] ; 2 uses
  %i.cp = shl i64 %index95, 2
  %next.gep96 = getelementptr i8, ptr %i.cd, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep96, i64 16
  store <4 x i32> %broadcast.splat93, ptr %next.gep96, align 4, !tbaa !112
  store <4 x i32> %broadcast.splat93, ptr %i.cq, align 4, !tbaa !112
  %index.next97 = add nuw i64 %index95, 8         ; 2 uses
  %i.cr = icmp eq i64 %index.next97, %n.vec91
  br i1 %i.cr, label %middle.block98, label %vector.body94, !llvm.loop !3364

middle.block98:                                   ; preds = %vector.body94
  %cmp.n99 = icmp eq i64 %i.cm, %n.vec91
  br i1 %cmp.n99, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58, label %.lr.ph.i.i.i.i54.preheader

.lr.ph.i.i.i.i54.preheader:                       ; preds = %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit52, %middle.block98
  %.06.i.i.i.i55.ph = phi ptr [ %i.cd, %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit52 ], [ %i.co, %middle.block98 ]
  br label %.lr.ph.i.i.i.i54

.lr.ph.i.i.i.i54:                                 ; preds = %.lr.ph.i.i.i.i54.preheader, %.lr.ph.i.i.i.i54
  %.06.i.i.i.i55 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i54 ], [ %.06.i.i.i.i55.ph, %.lr.ph.i.i.i.i54.preheader ] ; 2 uses
  store i32 %i.ag, ptr %.06.i.i.i.i55, align 4, !tbaa !112
  %i.cs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i55, i64 4 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.cs, %i.cf
  br i1 %.not.i.i.i.i56, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58, label %.lr.ph.i.i.i.i54, !llvm.loop !3365

bb.l:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit41
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = lshr i32 %i.cu, 8
  %i.cw = and i32 %i.cv, 255                      ; 2 uses
  %.not.i59 = icmp eq i32 %i.cw, 0
  br i1 %.not.i59, label %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit61, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !64
  %i.da = sext i8 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.da, ptr %i.ae, align 4, !tbaa !112
  br label %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit61

_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit61: ; preds = %bb.l, %bb.m
  %i.dc = phi ptr [ %i.db, %bb.m ], [ %i.ae, %bb.l ]
  %i.dd = tail call noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyIPwEET_S6_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %i.dc) ; 4 uses
  %.idx.i.i62 = shl nuw nsw i64 %i.ah, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx.i.i62
  %i.df = shl nuw nsw i64 %i.d, 2
  %i.dg = shl i64 %i.c, 2
  %i.dh = add nsw i64 %i.df, -4
  %i.di = sub i64 %i.dh, %i.dg                    ; 2 uses
  %i.dj = lshr exact i64 %i.di, 2
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check115 = icmp ult i64 %i.di, 28
  br i1 %min.iters.check115, label %.lr.ph.i.i.i.i63.preheader, label %vector.ph116

vector.ph116:                                     ; preds = %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit61
  %n.vec117 = and i64 %i.dk, 9223372036854775800  ; 3 uses
  %i.dl = shl i64 %n.vec117, 2
  %i.dm = getelementptr i8, ptr %i.dd, i64 %i.dl
  %broadcast.splatinsert118 = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat119 = shufflevector <4 x i32> %broadcast.splatinsert118, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph116
  %index121 = phi i64 [ 0, %vector.ph116 ], [ %index.next123, %vector.body120 ] ; 2 uses
  %i.dn = shl i64 %index121, 2
  %next.gep122 = getelementptr i8, ptr %i.dd, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep122, i64 16
  store <4 x i32> %broadcast.splat119, ptr %next.gep122, align 4, !tbaa !112
  store <4 x i32> %broadcast.splat119, ptr %i.do, align 4, !tbaa !112
  %index.next123 = add nuw i64 %index121, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next123, %n.vec117
  br i1 %i.dp, label %middle.block124, label %vector.body120, !llvm.loop !3366

middle.block124:                                  ; preds = %vector.body120
  %cmp.n125 = icmp eq i64 %i.dk, %n.vec117
  br i1 %cmp.n125, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58, label %.lr.ph.i.i.i.i63.preheader

.lr.ph.i.i.i.i63.preheader:                       ; preds = %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit61, %middle.block124
  %.06.i.i.i.i64.ph = phi ptr [ %i.dd, %_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit61 ], [ %i.dm, %middle.block124 ]
  br label %.lr.ph.i.i.i.i63

.lr.ph.i.i.i.i63:                                 ; preds = %.lr.ph.i.i.i.i63.preheader, %.lr.ph.i.i.i.i63
  %.06.i.i.i.i64 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i63 ], [ %.06.i.i.i.i64.ph, %.lr.ph.i.i.i.i63.preheader ] ; 2 uses
  store i32 %i.ag, ptr %.06.i.i.i.i64, align 4, !tbaa !112
  %i.dq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i64, i64 4 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.dq, %i.de
  br i1 %.not.i.i.i.i65, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58, label %.lr.ph.i.i.i.i63, !llvm.loop !3367

_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58.sink.split: ; preds = %bb.h, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit, %bb.d, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit
  %.sink = phi ptr [ %i.o, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit ], [ %i.x, %bb.d ], [ %i.bg, %bb.h ], [ %i.al, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit ]
  %i.dr = tail call noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyIPwEET_S6_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %.sink) ; 0 uses
  br label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58

_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58:            ; preds = %.lr.ph.i.i.i.i54, %.lr.ph.i.i.i.i63, %middle.block98, %middle.block124, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit58.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyIPwEET_S6_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !654  ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !655  ; 4 uses
  %i.e = add i32 %i.d, %i.b                       ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 9 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = and i32 %i.h, 255
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !653    ; 7 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !64
  %i.m = sext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %i.m, ptr %1, align 4, !tbaa !112
  %i.o = load i32, ptr %i.f, align 8, !tbaa !658
  %i.p = sub nsw i32 %i.o, %i.b                   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = load i32, ptr %i.g, align 4
  %i.s = and i32 %i.r, 536870912
  %i.t = icmp ne i32 %i.s, 0
  %i.u = select i1 %i.q, i1 %i.t, i1 false        ; 2 uses
  %i.v = icmp sgt i32 %i.b, 1                     ; 2 uses
  %or.cond = select i1 %i.v, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.c, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !656
  %i.y = getelementptr i8, ptr %1, i64 8          ; 6 uses
  store i32 %i.x, ptr %i.n, align 4, !tbaa !112
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.z = zext nneg i32 %i.b to i64                ; 6 uses
  %i.aa = add nsw i64 %i.z, -1                    ; 2 uses
  %min.iters.check520 = icmp ult i32 %i.b, 29
  br i1 %min.iters.check520, label %.lr.ph.i.i.i.i.i.i.preheader546, label %vector.memcheck511

vector.memcheck511:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ab = shl nuw nsw i64 %i.z, 2
  %i.ac = getelementptr i8, ptr %1, i64 %i.ab
  %scevgep513.a = getelementptr i8, ptr %i.ac, i64 4
  %scevgep514.a = getelementptr i8, ptr %i.k, i64 1
  %scevgep515 = getelementptr i8, ptr %i.k, i64 %i.z
  %bound0516 = icmp ult ptr %i.y, %scevgep515
  %bound1517 = icmp ult ptr %scevgep514.a, %scevgep513.a
  %found.conflict518 = and i1 %bound0516, %bound1517
  br i1 %found.conflict518, label %.lr.ph.i.i.i.i.i.i.preheader546, label %vector.ph521

vector.ph521:                                     ; preds = %vector.memcheck511
  %n.vec522 = and i64 %i.aa, -8                   ; 5 uses
  %i.ad = sub nsw i64 %i.z, %n.vec522
  %i.ae = shl nsw i64 %n.vec522, 2
  %i.af = getelementptr i8, ptr %i.y, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.k, i64 %n.vec522
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph521
  %index524 = phi i64 [ 0, %vector.ph521 ], [ %index.next529, %vector.body523 ] ; 3 uses
  %i.ah = shl i64 %index524, 2
  %next.gep525.a = getelementptr i8, ptr %i.y, i64 %i.ah ; 2 uses
  %next.gep526 = getelementptr i8, ptr %i.k, i64 %index524 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep526, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep526, i64 5
  %wide.load527.a = load <4 x i8>, ptr %i.ai, align 1, !tbaa !64, !alias.scope !3420
  %wide.load528 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !64, !alias.scope !3420
  %i.ak = sext <4 x i8> %wide.load527.a to <4 x i32>
  %i.al = sext <4 x i8> %wide.load528 to <4 x i32>
  %i.am = getelementptr i8, ptr %next.gep525.a, i64 16
  store <4 x i32> %i.ak, ptr %next.gep525.a, align 4, !tbaa !112, !alias.scope !3421, !noalias !3420
  store <4 x i32> %i.al, ptr %i.am, align 4, !tbaa !112, !alias.scope !3421, !noalias !3420
  %index.next529 = add nuw i64 %index524, 8       ; 2 uses
  %i.an = icmp eq i64 %index.next529, %n.vec522
  br i1 %i.an, label %middle.block530, label %vector.body523, !llvm.loop !3371

middle.block530:                                  ; preds = %vector.body523
  %cmp.n531 = icmp eq i64 %i.aa, %n.vec522
  br i1 %cmp.n531, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, label %.lr.ph.i.i.i.i.i.i.preheader546

.lr.ph.i.i.i.i.i.i.preheader546:                  ; preds = %vector.memcheck511, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block530
  %.012.i.i.i.i.i.i.in.ph = phi i64 [ %i.z, %vector.memcheck511 ], [ %i.z, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block530 ]
  %.0811.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck511 ], [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block530 ]
  %.0910.i.i.i.i.i.i.pn.ph = phi ptr [ %i.k, %vector.memcheck511 ], [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block530 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader546, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.in = phi i64 [ %.012.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.in.ph, %.lr.ph.i.i.i.i.i.i.preheader546 ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader546 ] ; 2 uses
  %.0910.i.i.i.i.i.i.pn = phi ptr [ %.0910.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.pn.ph, %.lr.ph.i.i.i.i.i.i.preheader546 ]
  %.0910.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.pn, i64 1 ; 2 uses
  %.012.i.i.i.i.i.i = add nsw i64 %.012.i.i.i.i.i.i.in, -1
  %i.ao = load i8, ptr %.0910.i.i.i.i.i.i, align 1, !tbaa !64
  %i.ap = sext i8 %i.ao to i32
  store i32 %i.ap, ptr %.0811.i.i.i.i.i.i, align 4, !tbaa !112
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ar = icmp samesign ugt i64 %.012.i.i.i.i.i.i.in, 2
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, !llvm.loop !3372

_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block530, %bb.b, %bb.c
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.n, %bb.b ], [ %i.af, %middle.block530 ], [ %i.aq, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  br i1 %i.u, label %bb.d, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit

bb.d:                                             ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit
  %i.as = zext nneg i32 %i.p to i64
  %.idx.i.i = shl nuw nsw i64 %i.as, 2            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i.i, i64 %.idx.i.i ; 3 uses
  %i.au = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.av = lshr exact i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check536 = icmp ult i64 %i.au, 28
  br i1 %min.iters.check536, label %.lr.ph.i.i.i.i.preheader, label %vector.ph537

vector.ph537:                                     ; preds = %bb.d
  %n.vec538 = and i64 %i.aw, 9223372036854775800  ; 3 uses
  %i.ax = shl i64 %n.vec538, 2
  %i.ay = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i, i64 %i.ax
  br label %vector.body539

vector.body539:                                   ; preds = %vector.body539, %vector.ph537
  %index540 = phi i64 [ 0, %vector.ph537 ], [ %index.next542, %vector.body539 ] ; 2 uses
  %i.az = shl i64 %index540, 2
  %next.gep541 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep541, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep541, align 4, !tbaa !112
  store <4 x i32> splat (i32 48), ptr %i.ba, align 4, !tbaa !112
  %index.next542 = add nuw i64 %index540, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next542, %n.vec538
  br i1 %i.bb, label %middle.block543, label %vector.body539, !llvm.loop !3373

middle.block543:                                  ; preds = %vector.body539
  %cmp.n544 = icmp eq i64 %i.aw, %n.vec538
  br i1 %cmp.n544, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d, %middle.block543
  %.06.i.i.i.i.ph = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %bb.d ], [ %i.ay, %middle.block543 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i, align 4, !tbaa !112
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.at
  br i1 %.not.i.i.i.i, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3374

_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i, %middle.block543, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit
  %.1108 = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit ], [ %i.at, %middle.block543 ], [ %i.at, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.bd = load i32, ptr %i.g, align 4
  %i.be = and i32 %i.bd, 16777216
  %.not129 = icmp eq i32 %i.be, 0
  %i.bf = select i1 %.not129, i32 101, i32 69
  %i.bg = getelementptr inbounds nuw i8, ptr %.1108, i64 4
  store i32 %i.bf, ptr %.1108, align 4, !tbaa !112
  %i.bh = add nsw i32 %i.e, -1
  %i.bi = icmp slt i32 %i.e, 1
  %spec.select.i = select i1 %i.bi, i32 45, i32 43
  %spec.select23.i = tail call i32 @llvm.abs.i32(i32 %i.bh, i1 true) ; 5 uses
  store i32 %spec.select.i, ptr %i.bg, align 4, !tbaa !112
  %.017.i = getelementptr inbounds nuw i8, ptr %.1108, i64 8 ; 3 uses
  %i.bj = icmp samesign ugt i32 %spec.select23.i, 99
  br i1 %i.bj, label %bb.e, label %_ZN10duckdb_fmt2v68internal14write_exponentIwPwEET0_iS4_.exit

bb.e:                                             ; preds = %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit
  %i.bk = udiv i32 %spec.select23.i, 100
  %i.bl = urem i32 %spec.select23.i, 100
  %i.bm = shl nuw nsw i32 %i.bk, 1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bn ; 2 uses
  %i.bp = icmp samesign ugt i32 %spec.select23.i, 999
  br i1 %i.bp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bq = load i8, ptr %i.bo, align 2, !tbaa !64
  %i.br = sext i8 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %.1108, i64 12
  store i32 %i.br, ptr %.017.i, align 4, !tbaa !112
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.118.i = phi ptr [ %i.bs, %bb.f ], [ %.017.i, %bb.e ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !64
  %i.bv = sext i8 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %.118.i, i64 4
  store i32 %i.bv, ptr %.118.i, align 4, !tbaa !112
  br label %_ZN10duckdb_fmt2v68internal14write_exponentIwPwEET0_iS4_.exit

_ZN10duckdb_fmt2v68internal14write_exponentIwPwEET0_iS4_.exit: ; preds = %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit, %bb.g
  %.2.i = phi ptr [ %i.bw, %bb.g ], [ %.017.i, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit ] ; 3 uses
  %.1.i = phi i32 [ %i.bl, %bb.g ], [ %spec.select23.i, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit ]
  %i.bx = shl nuw nsw i32 %.1.i, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !64
  %i.cb = sext i8 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  store i32 %i.cb, ptr %.2.i, align 4, !tbaa !112
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !64
  %i.cf = sext i8 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !112
  br label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187

bb.h:                                             ; preds = %bb.a
  %.not124 = icmp slt i32 %i.d, 0
  br i1 %.not124, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = and i32 %i.h, 16711680
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = icmp sgt i32 %i.e, 3
  %or.cond3 = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond3, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ck = urem i32 %i.e, 3                        ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  %spec.select = select i1 %i.cl, i32 3, i32 %i.ck
  %i.cm = load ptr, ptr %0, align 8               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145
  %.0105254 = phi i32 [ 0, %bb.j ], [ %i.eo, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145 ] ; 5 uses
  %.2253 = phi ptr [ %1, %bb.j ], [ %.5, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145 ] ; 3 uses
  %storemerge252 = phi i32 [ %spec.select, %bb.j ], [ 3, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145 ] ; 5 uses
  %i.cn = icmp sgt i32 %.0105254, 0
  br i1 %i.cn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.co = load i32, ptr %i.g, align 4
  %i.cp = shl i32 %i.co, 8
  %i.cq = ashr i32 %i.cp, 24
  %i.cr = getelementptr inbounds nuw i8, ptr %.2253, i64 4
  store i32 %i.cq, ptr %.2253, align 4, !tbaa !112
  br label %bb.m

end_hunk_0
