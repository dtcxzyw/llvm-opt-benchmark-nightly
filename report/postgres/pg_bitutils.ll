Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_bitutils?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pg_leftmost_one_pos = local_unnamed_addr constant [256 x i8] c"\00\00\01\01\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07", align 16
@pg_rightmost_one_pos = local_unnamed_addr constant [256 x i8] c"\00\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\05\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\06\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\05\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\07\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\05\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\06\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\05\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00", align 16
@pg_number_of_ones = local_unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i64 @pg_popcount_portable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, 7
  %i.c = and i64 %i.b, -8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = icmp eq ptr %0, %i.d
  %i.f = icmp sgt i32 %1, 7
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %2 = tail call i32 @llvm.smin.i32(i32 %1, i32 15)
  %i.g = add nuw i32 %1, 7
  %3 = sub i32 %i.g, %2                           ; 2 uses
  %i.h = lshr i32 %3, 3
  %narrow = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp ult i32 %3, 24
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, 1073741820               ; 4 uses
  %i.j = shl nuw nsw i64 %n.vec, 3
  %i.k = getelementptr i8, ptr %0, i64 %i.j       ; 2 uses
  %i.l = trunc nuw nsw i64 %n.vec to i32
  %i.m = shl i32 %i.l, 3
  %i.n = sub i32 %1, %i.m                         ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi40 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.o = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.o  ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load41 = load <2 x i64>, ptr %i.p, align 8
  %i.q = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.r = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load41)
  %i.s = add <2 x i64> %i.q, %vec.phi             ; 2 uses
  %i.t = add <2 x i64> %i.r, %vec.phi40           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !6

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.t, %i.s
  %i.v = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader43

.lr.ph.preheader43:                               ; preds = %.lr.ph.preheader, %middle.block
  %.021.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.01120.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.v, %middle.block ]
  %.01219.ph = phi i32 [ %1, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %.lr.ph
  %.021 = phi ptr [ %i.w, %.lr.ph ], [ %.021.ph, %.lr.ph.preheader43 ] ; 2 uses
  %.01120 = phi i64 [ %i.z, %.lr.ph ], [ %.01120.ph, %.lr.ph.preheader43 ]
  %.01219 = phi i32 [ %i.aa, %.lr.ph ], [ %.01219.ph, %.lr.ph.preheader43 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.021, i64 8 ; 2 uses
  %i.x = load i64, ptr %.021, align 8
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.x)
  %i.z = add i64 %i.y, %.01120                    ; 2 uses
  %i.aa = add nsw i32 %.01219, -8                 ; 2 uses
  %i.ab = icmp samesign ugt i32 %.01219, 15
  br i1 %i.ab, label %.lr.ph, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.a
  %.015 = phi ptr [ %0, %bb.a ], [ %i.k, %middle.block ], [ %i.w, %.lr.ph ] ; 2 uses
  %.113 = phi i32 [ %1, %bb.a ], [ %i.n, %middle.block ], [ %i.aa, %.lr.ph ] ; 5 uses
  %.1 = phi i64 [ 0, %bb.a ], [ %i.v, %middle.block ], [ %i.z, %.lr.ph ] ; 3 uses
  %.not24 = icmp eq i32 %.113, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %.loopexit
  %xtraiter = and i32 %.113, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph28.prol.loopexit, label %.lr.ph28.prol

.lr.ph28.prol:                                    ; preds = %.lr.ph28.preheader, %.lr.ph28.prol
  %.227.prol = phi i64 [ %i.aj, %.lr.ph28.prol ], [ %.1, %.lr.ph28.preheader ]
  %.21426.prol = phi i32 [ %i.ac, %.lr.ph28.prol ], [ %.113, %.lr.ph28.preheader ]
  %.11625.prol = phi ptr [ %i.ad, %.lr.ph28.prol ], [ %.015, %.lr.ph28.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph28.prol ], [ 0, %.lr.ph28.preheader ]
  %i.ac = add i32 %.21426.prol, -1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.11625.prol, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.11625.prol, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i64
  %i.aj = add i64 %.227.prol, %i.ai               ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph28.prol.loopexit, label %.lr.ph28.prol, !llvm.loop !8

.lr.ph28.prol.loopexit:                           ; preds = %.lr.ph28.prol, %.lr.ph28.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph28.preheader ], [ %i.aj, %.lr.ph28.prol ]
  %.227.unr = phi i64 [ %.1, %.lr.ph28.preheader ], [ %i.aj, %.lr.ph28.prol ]
  %.21426.unr = phi i32 [ %.113, %.lr.ph28.preheader ], [ %i.ac, %.lr.ph28.prol ]
  %.11625.unr = phi ptr [ %.015, %.lr.ph28.preheader ], [ %i.ad, %.lr.ph28.prol ]
  %i.ak = icmp ult i32 %.113, 4
  br i1 %i.ak, label %._crit_edge, label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.prol.loopexit, %.lr.ph28
  %.227 = phi i64 [ %i.bn, %.lr.ph28 ], [ %.227.unr, %.lr.ph28.prol.loopexit ]
  %.21426 = phi i32 [ %i.bg, %.lr.ph28 ], [ %.21426.unr, %.lr.ph28.prol.loopexit ]
  %.11625 = phi ptr [ %i.bh, %.lr.ph28 ], [ %.11625.unr, %.lr.ph28.prol.loopexit ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.11625, i64 1
  %i.am = load i8, ptr %.11625, align 1
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = add i64 %.227, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.11625, i64 2
  %i.at = load i8, ptr %i.al, align 1
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = add i64 %i.ar, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.11625, i64 3
  %i.ba = load i8, ptr %i.as, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i64
  %i.bf = add i64 %i.ay, %i.be
  %i.bg = add i32 %.21426, -4                     ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.11625, i64 4
  %i.bi = load i8, ptr %i.az, align 1
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i64
  %i.bn = add i64 %i.bf, %i.bm                    ; 2 uses
  %.not.3 = icmp eq i32 %i.bg, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph28, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph28.prol.loopexit, %.lr.ph28, %.loopexit
  %.2.lcssa = phi i64 [ %.1, %.loopexit ], [ %.lcssa.unr, %.lr.ph28.prol.loopexit ], [ %i.bn, %.lr.ph28 ]
  ret i64 %.2.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i64 @pg_popcount_masked_portable(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i8 %2 to i64
  %i.b = mul nuw i64 %i.a, 72340172838076673      ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = add i64 %i.c, 7
  %i.e = and i64 %i.d, -8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = icmp eq ptr %0, %i.f
  %i.h = icmp sgt i32 %1, 7
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %3 = tail call i32 @llvm.smin.i32(i32 %1, i32 15)
  %i.i = add nuw i32 %1, 7
  %4 = sub i32 %i.i, %3                           ; 2 uses
  %i.j = lshr i32 %4, 3
  %narrow = add nuw nsw i32 %i.j, 1
  %i.k = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp ult i32 %4, 24
  br i1 %min.iters.check, label %.lr.ph.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.k, 1073741820               ; 4 uses
  %i.l = shl nuw nsw i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %0, i64 %i.l       ; 2 uses
  %i.n = trunc nuw nsw i64 %n.vec to i32
  %i.o = shl i32 %i.n, 3
  %i.p = sub i32 %1, %i.o                         ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi43 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %i.q = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.q  ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load44 = load <2 x i64>, ptr %i.r, align 8
  %i.s = and <2 x i64> %wide.load, %broadcast.splat
  %i.t = and <2 x i64> %wide.load44, %broadcast.splat
  %i.u = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.s)
  %i.v = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.t)
  %i.w = add <2 x i64> %i.u, %vec.phi             ; 2 uses
  %i.x = add <2 x i64> %i.v, %vec.phi43           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.x, %i.w
  %i.z = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.k
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader46

.lr.ph.preheader46:                               ; preds = %.lr.ph.preheader, %middle.block
  %.024.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.01423.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  %.01722.ph = phi i32 [ %1, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader46, %.lr.ph
  %.024 = phi ptr [ %i.aa, %.lr.ph ], [ %.024.ph, %.lr.ph.preheader46 ] ; 2 uses
  %.01423 = phi i64 [ %i.ae, %.lr.ph ], [ %.01423.ph, %.lr.ph.preheader46 ]
  %.01722 = phi i32 [ %i.af, %.lr.ph ], [ %.01722.ph, %.lr.ph.preheader46 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.024, i64 8 ; 2 uses
  %i.ab = load i64, ptr %.024, align 8
  %i.ac = and i64 %i.ab, %i.b
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ac)
  %i.ae = add i64 %i.ad, %.01423                  ; 2 uses
  %i.af = add nsw i32 %.01722, -8                 ; 2 uses
  %i.ag = icmp samesign ugt i32 %.01722, 15
  br i1 %i.ag, label %.lr.ph, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.a
  %.118 = phi i32 [ %1, %bb.a ], [ %i.p, %middle.block ], [ %i.af, %.lr.ph ] ; 5 uses
  %.015 = phi ptr [ %0, %bb.a ], [ %i.m, %middle.block ], [ %i.aa, %.lr.ph ] ; 3 uses
  %.1 = phi i64 [ 0, %bb.a ], [ %i.z, %middle.block ], [ %i.ae, %.lr.ph ] ; 3 uses
  %.not27 = icmp eq i32 %.118, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph31.preheader

.lr.ph31.preheader:                               ; preds = %.loopexit
  %xtraiter = and i32 %.118, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph31.prol.loopexit, label %.lr.ph31.prol

.lr.ph31.prol:                                    ; preds = %.lr.ph31.preheader
  %i.ah = add nsw i32 %.118, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %.015, i64 1
  %i.aj = load i8, ptr %.015, align 1
  %i.ak = and i8 %i.aj, %2
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i64
  %i.ap = add i64 %.1, %i.ao                      ; 2 uses
  br label %.lr.ph31.prol.loopexit

.lr.ph31.prol.loopexit:                           ; preds = %.lr.ph31.prol, %.lr.ph31.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph31.preheader ], [ %i.ap, %.lr.ph31.prol ]
  %.230.unr = phi i64 [ %.1, %.lr.ph31.preheader ], [ %i.ap, %.lr.ph31.prol ]
  %.11629.unr = phi ptr [ %.015, %.lr.ph31.preheader ], [ %i.ai, %.lr.ph31.prol ]
  %.21928.unr = phi i32 [ %.118, %.lr.ph31.preheader ], [ %i.ah, %.lr.ph31.prol ]
  %i.aq = icmp eq i32 %.118, 1
  br i1 %i.aq, label %._crit_edge, label %.lr.ph31

.lr.ph31:                                         ; preds = %.lr.ph31.prol.loopexit, %.lr.ph31
  %.230 = phi i64 [ %i.bh, %.lr.ph31 ], [ %.230.unr, %.lr.ph31.prol.loopexit ]
  %.11629 = phi ptr [ %i.ba, %.lr.ph31 ], [ %.11629.unr, %.lr.ph31.prol.loopexit ] ; 3 uses
  %.21928 = phi i32 [ %i.az, %.lr.ph31 ], [ %.21928.unr, %.lr.ph31.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.11629, i64 1
  %i.as = load i8, ptr %.11629, align 1
  %i.at = and i8 %i.as, %2
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = add i64 %.230, %i.ax
  %i.az = add i32 %.21928, -2                     ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.11629, i64 2
  %i.bb = load i8, ptr %i.ar, align 1
  %i.bc = and i8 %i.bb, %2
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = add i64 %i.ay, %i.bg                    ; 2 uses
  %.not.1 = icmp eq i32 %i.az, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph31, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph31.prol.loopexit, %.lr.ph31, %.loopexit
  %.2.lcssa = phi i64 [ %.1, %.loopexit ], [ %.lcssa.unr, %.lr.ph31.prol.loopexit ], [ %i.bh, %.lr.ph31 ]
  ret i64 %.2.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!"llvm.loop.isvectorized", i32 1}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = distinct !{!6, !3, !4, !5}
!7 = distinct !{!7, !3, !5, !4}
!8 = distinct !{!8, !10}
!9 = distinct !{!9, !3}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !3, !4, !5}
!12 = distinct !{!12, !3, !5, !4}
!13 = distinct !{!13, !3}
end_hunk_0
