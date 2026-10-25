Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/chunkset_avx2?download=true
inline.NumInlined: 39
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lut_rem_pair_s = type { i16, i16 }

@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@perm_idx_lut = internal unnamed_addr constant [29 x %struct.lut_rem_pair_s] [%struct.lut_rem_pair_s { i16 0, i16 2 }, %struct.lut_rem_pair_s zeroinitializer, %struct.lut_rem_pair_s { i16 32, i16 2 }, %struct.lut_rem_pair_s { i16 64, i16 2 }, %struct.lut_rem_pair_s { i16 96, i16 4 }, %struct.lut_rem_pair_s zeroinitializer, %struct.lut_rem_pair_s { i16 128, i16 5 }, %struct.lut_rem_pair_s { i16 160, i16 22 }, %struct.lut_rem_pair_s { i16 192, i16 21 }, %struct.lut_rem_pair_s { i16 224, i16 20 }, %struct.lut_rem_pair_s { i16 256, i16 6 }, %struct.lut_rem_pair_s { i16 288, i16 4 }, %struct.lut_rem_pair_s { i16 320, i16 2 }, %struct.lut_rem_pair_s zeroinitializer, %struct.lut_rem_pair_s { i16 352, i16 15 }, %struct.lut_rem_pair_s { i16 368, i16 14 }, %struct.lut_rem_pair_s { i16 384, i16 13 }, %struct.lut_rem_pair_s { i16 400, i16 12 }, %struct.lut_rem_pair_s { i16 416, i16 11 }, %struct.lut_rem_pair_s { i16 432, i16 10 }, %struct.lut_rem_pair_s { i16 448, i16 9 }, %struct.lut_rem_pair_s { i16 464, i16 8 }, %struct.lut_rem_pair_s { i16 480, i16 7 }, %struct.lut_rem_pair_s { i16 496, i16 6 }, %struct.lut_rem_pair_s { i16 512, i16 5 }, %struct.lut_rem_pair_s { i16 528, i16 4 }, %struct.lut_rem_pair_s { i16 544, i16 3 }, %struct.lut_rem_pair_s { i16 560, i16 2 }, %struct.lut_rem_pair_s { i16 576, i16 1 }], align 16
@permute_table = internal unnamed_addr constant <{ [591 x i8], [241 x i8] }> <{ [591 x i8] c"\00\01\02\00\01\02\00\01\02\00\01\02\00\01\02\00\01\02\00\01\02\00\01\02\00\01\02\00\01\02\00\01\00\01\02\03\04\00\01\02\03\04\00\01\02\03\04\00\01\02\03\04\00\01\02\03\04\00\01\02\03\04\00\01\00\01\02\03\04\05\00\01\02\03\04\05\00\01\02\03\04\05\00\01\02\03\04\05\00\01\02\03\04\05\00\01\00\01\02\03\04\05\06\00\01\02\03\04\05\06\00\01\02\03\04\05\06\00\01\02\03\04\05\06\00\01\02\03\00\01\02\03\04\05\06\07\08\00\01\02\03\04\05\06\07\08\00\01\02\03\04\05\06\07\08\00\01\02\03\04\00\01\02\03\04\05\06\07\08\09\00\01\02\03\04\05\06\07\08\09\00\01\02\03\04\05\06\07\08\09\00\01\00\01\02\03\04\05\06\07\08\09\0A\00\01\02\03\04\05\06\07\08\09\0A\00\01\02\03\04\05\06\07\08\09\00\01\02\03\04\05\06\07\08\09\0A\0B\00\01\02\03\04\05\06\07\08\09\0A\0B\00\01\02\03\04\05\06\07\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\00\01\02\03\04\05\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\00\01\02\03\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\00\01\10\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\10\11\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\10\11\12\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\10\11\12\13\00\01\02\03\04\05\06\07\08\09\0A\0B\10\11\12\13\14\00\01\02\03\04\05\06\07\08\09\0A\10\11\12\13\14\15\00\01\02\03\04\05\06\07\08\09\10\11\12\13\14\15\16\00\01\02\03\04\05\06\07\08\10\11\12\13\14\15\16\17\00\01\02\03\04\05\06\07\10\11\12\13\14\15\16\17\18\00\01\02\03\04\05\06\10\11\12\13\14\15\16\17\18\19\00\01\02\03\04\05\10\11\12\13\14\15\16\17\18\19\1A\00\01\02\03\04\10\11\12\13\14\15\16\17\18\19\1A\1B\00\01\02\03\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\00\01\02\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\00\01\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E", [241 x i8] zeroinitializer }>, align 32

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden ptr @chunkmemset_safe_avx2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = alloca <4 x i64>, align 32               ; 9 uses
  %i.d = tail call i32 @llvm.umin.i32(i32 %2, i32 %3) ; 15 uses
  %i.e = icmp ult i32 %3, 32
  br i1 %i.e, label %.preheader, label %bb.b, !prof !12

.preheader:                                       ; preds = %bb.a
  %.not1926 = icmp eq i32 %i.d, 0
  br i1 %.not1926, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.f = tail call i32 @llvm.umin.i32(i32 %3, i32 %2) ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %i.f, 8
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -8
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader62, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.g, 24                       ; 6 uses
  %i.i = trunc nuw nsw i64 %n.vec to i32
  %i.j = sub nsw i32 %i.d, %i.i
  %4 = getelementptr i8, ptr %1, i64 %n.vec
  %5 = getelementptr i8, ptr %0, i64 %n.vec       ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 4
  %wide.load = load <4 x i8>, ptr %1, align 1, !tbaa !13
  %wide.load59 = load <4 x i8>, ptr %i.k, align 1, !tbaa !13
  %i.l = getelementptr i8, ptr %0, i64 4
  store <4 x i8> %wide.load, ptr %0, align 1, !tbaa !13
  store <4 x i8> %wide.load59, ptr %i.l, align 1, !tbaa !13
  %6 = icmp eq i64 %n.vec, 8
  br i1 %6, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.ph
  %next.gep = getelementptr i8, ptr %1, i64 8
  %next.gep58 = getelementptr i8, ptr %0, i64 8
  %i.m = getelementptr i8, ptr %1, i64 12
  %wide.load.a = load <4 x i8>, ptr %next.gep, align 1, !tbaa !13
  %wide.load59.a = load <4 x i8>, ptr %i.m, align 1, !tbaa !13
  %i.n = getelementptr i8, ptr %0, i64 12
  store <4 x i8> %wide.load.a, ptr %next.gep58, align 1, !tbaa !13
  store <4 x i8> %wide.load59.a, ptr %i.n, align 1, !tbaa !13
  %i.o = icmp eq i64 %n.vec, 16
  br i1 %i.o, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body
  %next.gep.2 = getelementptr i8, ptr %1, i64 16
  %next.gep58.2 = getelementptr i8, ptr %0, i64 16
  %7 = getelementptr i8, ptr %1, i64 20
  %wide.load.2 = load <4 x i8>, ptr %next.gep.2, align 1, !tbaa !13
  %wide.load59.2 = load <4 x i8>, ptr %7, align 1, !tbaa !13
  %8 = getelementptr i8, ptr %0, i64 20
  store <4 x i8> %wide.load.2, ptr %next.gep58.2, align 1, !tbaa !13
  store <4 x i8> %wide.load59.2, ptr %8, align 1, !tbaa !13
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader62

.lr.ph.preheader62:                               ; preds = %.lr.ph.preheader, %middle.block
  %.01529.ph = phi i32 [ %i.d, %.lr.ph.preheader ], [ %i.j, %middle.block ] ; 4 uses
  %.01628.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %4, %middle.block ] ; 2 uses
  %.01727.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %5, %middle.block ] ; 2 uses
  %i.p = add nsw i32 %.01529.ph, -1
  %xtraiter = and i32 %.01529.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader62, %.lr.ph.prol
  %.01529.prol = phi i32 [ %i.t, %.lr.ph.prol ], [ %.01529.ph, %.lr.ph.preheader62 ]
  %.01628.prol = phi ptr [ %i.q, %.lr.ph.prol ], [ %.01628.ph, %.lr.ph.preheader62 ] ; 2 uses
  %.01727.prol = phi ptr [ %i.s, %.lr.ph.prol ], [ %.01727.ph, %.lr.ph.preheader62 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader62 ]
  %i.q = getelementptr inbounds nuw i8, ptr %.01628.prol, i64 1 ; 2 uses
  %i.r = load i8, ptr %.01628.prol, align 1, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.01727.prol, i64 1 ; 3 uses
  store i8 %i.r, ptr %.01727.prol, align 1, !tbaa !13
  %i.t = add i32 %.01529.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !21

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader62
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader62 ], [ %i.s, %.lr.ph.prol ]
  %.01529.unr = phi i32 [ %.01529.ph, %.lr.ph.preheader62 ], [ %i.t, %.lr.ph.prol ]
  %.01628.unr = phi ptr [ %.01628.ph, %.lr.ph.preheader62 ], [ %i.q, %.lr.ph.prol ]
  %.01727.unr = phi ptr [ %.01727.ph, %.lr.ph.preheader62 ], [ %i.s, %.lr.ph.prol ]
  %i.u = icmp ult i32 %i.p, 7
  br i1 %i.u, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01529 = phi i32 [ %i.at, %.lr.ph ], [ %.01529.unr, %.lr.ph.prol.loopexit ]
  %.01628 = phi ptr [ %i.aq, %.lr.ph ], [ %.01628.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01727 = phi ptr [ %i.as, %.lr.ph ], [ %.01727.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01628, i64 1
  %i.w = load i8, ptr %.01628, align 1, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.01727, i64 1
  store i8 %i.w, ptr %.01727, align 1, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.01628, i64 2
  %i.z = load i8, ptr %i.v, align 1, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %.01727, i64 2
  store i8 %i.z, ptr %i.x, align 1, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.01628, i64 3
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.01727, i64 3
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.01628, i64 4
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.01727, i64 4
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.01628, i64 5
  %i.ai = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.01727, i64 5
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.01628, i64 6
  %i.al = load i8, ptr %i.ah, align 1, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.01727, i64 6
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.01628, i64 7
  %i.ao = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.01727, i64 7
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.01628, i64 8
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.01727, i64 8 ; 2 uses
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !13
  %i.at = add i32 %.01529, -8                     ; 2 uses
  %.not19.7 = icmp eq i32 %i.at, 0
  br i1 %.not19.7, label %.loopexit, label %.lr.ph, !llvm.loop !22

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.au = ptrtoint ptr %0 to i64
  %i.av = ptrtoint ptr %1 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = tail call i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 10 uses
  %i.ay = icmp slt i64 %i.aw, 0
  br i1 %i.ay, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.az = zext i32 %i.d to i64                    ; 3 uses
  %i.ba = icmp samesign ult i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %i.az, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  br label %chunkmemset_avx2.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.bc = icmp eq i64 %i.ax, 1
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load i8, ptr %1, align 1, !tbaa !13
  %i.be = zext i32 %i.d to i64                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %i.bd, i64 %i.be, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  br label %chunkmemset_avx2.exit

bb.h:                                             ; preds = %bb.f
  %i.bg = icmp samesign ugt i64 %i.ax, 31
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bh = add i32 %i.d, 31
  %i.bi = and i32 %i.bh, 31
  %narrow.i.i = add nuw nsw i32 %i.bi, 1          ; 2 uses
  %.val.i.i = load <4 x i64>, ptr %1, align 1, !tbaa !13
  store <4 x i64> %.val.i.i, ptr %0, align 1, !tbaa !13
  %i.bj = zext nneg i32 %narrow.i.i to i64        ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj ; 2 uses
  %i.bl = sub i32 %i.d, %narrow.i.i               ; 2 uses
  %.not20.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not20.i.i, label %chunkmemset_avx2.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bj
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.023.i.i = phi i32 [ %i.bp, %.lr.ph.i.i ], [ %i.bl, %.lr.ph.preheader.i.i ]
  %.01522.i.i = phi ptr [ %i.bo, %.lr.ph.i.i ], [ %i.bm, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01621.i.i = phi ptr [ %i.bn, %.lr.ph.i.i ], [ %i.bk, %.lr.ph.preheader.i.i ] ; 2 uses
  %.015.val.i.i = load <4 x i64>, ptr %.01522.i.i, align 1, !tbaa !13
  store <4 x i64> %.015.val.i.i, ptr %.01621.i.i, align 1, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.01621.i.i, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01522.i.i, i64 32
  %i.bp = add i32 %.023.i.i, -32                  ; 2 uses
  %.not.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i, label %chunkmemset_avx2.exit, label %.lr.ph.i.i, !llvm.loop !0

bb.j:                                             ; preds = %bb.h
  %i.bq = icmp ult i32 %i.d, 17
  br i1 %i.bq, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.br = icmp samesign ugt i64 %i.ax, 15
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bs = add nuw nsw i32 %i.d, 15
  %i.bt = and i32 %i.bs, 15
  %narrow.i83.i = add nuw nsw i32 %i.bt, 1        ; 2 uses
  %.val.i84.i = load <2 x i64>, ptr %1, align 1, !tbaa !13
  store <2 x i64> %.val.i84.i, ptr %0, align 1, !tbaa !13
  %i.bu = zext nneg i32 %narrow.i83.i to i64      ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu ; 2 uses
  %i.bw = sub nsw i32 %i.d, %narrow.i83.i         ; 2 uses
  %.not20.i85.i = icmp eq i32 %i.bw, 0
  br i1 %.not20.i85.i, label %chunkmemset_avx2.exit, label %.lr.ph.preheader.i86.i

.lr.ph.preheader.i86.i:                           ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %i.bu
  br label %.lr.ph.i87.i

.lr.ph.i87.i:                                     ; preds = %.lr.ph.i87.i, %.lr.ph.preheader.i86.i
  %.023.i88.i = phi i32 [ %i.ca, %.lr.ph.i87.i ], [ %i.bw, %.lr.ph.preheader.i86.i ]
  %.01522.i89.i = phi ptr [ %i.bz, %.lr.ph.i87.i ], [ %i.bx, %.lr.ph.preheader.i86.i ] ; 2 uses
  %.01621.i90.i = phi ptr [ %i.by, %.lr.ph.i87.i ], [ %i.bv, %.lr.ph.preheader.i86.i ] ; 2 uses
  %.015.val.i91.i = load <2 x i64>, ptr %.01522.i89.i, align 1, !tbaa !13
  store <2 x i64> %.015.val.i91.i, ptr %.01621.i90.i, align 1, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %.01621.i90.i, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01522.i89.i, i64 16
  %i.ca = add i32 %.023.i88.i, -16                ; 2 uses
  %.not.i92.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i92.i, label %chunkmemset_avx2.exit, label %.lr.ph.i87.i, !llvm.loop !1

bb.m:                                             ; preds = %bb.k
  %i.cb = trunc i64 %i.ax to i1
  %i.cc = icmp eq i64 %i.ax, 6
  %or.cond.i = or i1 %i.cc, %i.cb
  br i1 %or.cond.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.val7798.i = load <16 x i8>, ptr %1, align 1, !tbaa !13
  %i.cd = add nuw nsw i64 %i.ax, 4294967293
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @perm_idx_lut, i64 %i.ce
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.cf, align 4, !tbaa !18
  %i.cg = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.cg
  %i.ci = load <16 x i8>, ptr %i.ch, align 16, !tbaa !13
  %i.cj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.val7798.i, <16 x i8> %i.ci) ; 2 uses
  %i.ck = bitcast <16 x i8> %i.cj to <2 x i64>
  %i.cl = icmp eq i32 %i.d, 16
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store <16 x i8> %i.cj, ptr %0, align 1, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.067.i = phi ptr [ %i.cm, %bb.o ], [ %0, %bb.n ]
  %.0.i = phi i32 [ 0, %bb.o ], [ %i.d, %bb.n ]
  %i.cn = shufflevector <2 x i64> %i.ck, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.cn, ptr %i.c, align 32, !tbaa !13
  br label %.loopexit.i

bb.q:                                             ; preds = %bb.m, %bb.j
  %i.co = tail call range(i64 0, 6) i64 @llvm.ctpop.i64(i64 %i.ax)
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %.split.i, label %bb.v

.split.i:                                         ; preds = %bb.q
  %i.cq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aw, i1 true)
  switch i64 %i.cq, label %bb.v [
    i64 1, label %bb.r
    i64 2, label %bb.s
    i64 3, label %bb.t
    i64 4, label %bb.u
  ]

bb.r:                                             ; preds = %.split.i
  %.val79.i = load i16, ptr %1, align 1, !tbaa !13
  %i.cr = insertelement <16 x i16> poison, i16 %.val79.i, i64 0
  %i.cs = shufflevector <16 x i16> %i.cr, <16 x i16> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ct = bitcast <16 x i16> %i.cs to <4 x i64>
  store <16 x i16> %i.cs, ptr %i.c, align 32, !tbaa !13
  br label %bb.y

bb.s:                                             ; preds = %.split.i
  %.val80.i = load i32, ptr %1, align 1, !tbaa !13
  %i.cu = insertelement <8 x i32> poison, i32 %.val80.i, i64 0
  %i.cv = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cw = bitcast <8 x i32> %i.cv to <4 x i64>
  store <8 x i32> %i.cv, ptr %i.c, align 32, !tbaa !13
  br label %bb.y

bb.t:                                             ; preds = %.split.i
  %.val81.i = load i64, ptr %1, align 1, !tbaa !13
  %i.cx = insertelement <4 x i64> poison, i64 %.val81.i, i64 0
  %i.cy = shufflevector <4 x i64> %i.cx, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i64> %i.cy, ptr %i.c, align 32, !tbaa !13
  br label %bb.y

bb.u:                                             ; preds = %.split.i
  %.val82.i = load <2 x i64>, ptr %1, align 1, !tbaa !13
  %i.cz = shufflevector <2 x i64> %.val82.i, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  store <4 x i64> %i.cz, ptr %i.c, align 32, !tbaa !13
  br label %bb.y

bb.v:                                             ; preds = %.split.i, %bb.q
  %i.da = add nuw nsw i64 %i.ax, 4294967293
  %i.db = and i64 %i.da, 4294967295
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr @perm_idx_lut, i64 %i.db ; 2 uses
  %.sroa.0.0.copyload.i94.i = load i16, ptr %i.dc, align 4, !tbaa !18 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %.sroa.5.0.copyload.i.i = load i16, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !tbaa !18
  %i.dd = zext i16 %.sroa.5.0.copyload.i.i to i32
  %i.de = icmp samesign ult i64 %i.ax, 16
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.df = zext i16 %.sroa.0.0.copyload.i94.i to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.df
  %i.dh = load <32 x i8>, ptr %i.dg, align 32, !tbaa !13
  %i.di = load <16 x i8>, ptr %1, align 1, !tbaa !13
  %i.dj = add <32 x i8> %i.dh, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %i.dk = shufflevector <16 x i8> %i.di, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dl = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.dk, <32 x i8> %i.dj)
  %i.dm = bitcast <32 x i8> %i.dl to <4 x i64>
  br label %GET_CHUNK_MAG.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dn = load <2 x i64>, ptr %1, align 1, !tbaa !13 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dp = load <16 x i8>, ptr %i.do, align 1, !tbaa !13
  %i.dq = zext i16 %.sroa.0.0.copyload.i94.i to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.dq
  %i.ds = load <16 x i8>, ptr %i.dr, align 16, !tbaa !13 ; 2 uses
  %i.dt = icmp slt <16 x i8> %i.ds, splat (i8 16)
  %i.du = bitcast <2 x i64> %i.dn to <16 x i8>
  %i.dv = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.du, <16 x i8> %i.ds)
  %i.dw = select <16 x i1> %i.dt, <16 x i8> %i.dv, <16 x i8> %i.dp
  %i.dx = bitcast <16 x i8> %i.dw to <2 x i64>
  %i.dy = shufflevector <2 x i64> %i.dn, <2 x i64> %i.dx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %GET_CHUNK_MAG.exit.i

GET_CHUNK_MAG.exit.i:                             ; preds = %bb.x, %bb.w
  %.0.i.i = phi <4 x i64> [ %i.dm, %bb.w ], [ %i.dy, %bb.x ] ; 2 uses
  store <4 x i64> %.0.i.i, ptr %i.c, align 32, !tbaa !13
  %i.dz = sub nsw i32 32, %i.dd
  br label %bb.y

bb.y:                                             ; preds = %GET_CHUNK_MAG.exit.i, %bb.u, %bb.t, %bb.s, %bb.r
  %.0..0..val.i = phi <4 x i64> [ %.0.i.i, %GET_CHUNK_MAG.exit.i ], [ %i.ct, %bb.r ], [ %i.cw, %bb.s ], [ %i.cy, %bb.t ], [ %i.cz, %bb.u ] ; 3 uses
  %.097.i = phi i32 [ %i.dz, %GET_CHUNK_MAG.exit.i ], [ 32, %bb.r ], [ 32, %bb.s ], [ 32, %bb.t ], [ 32, %bb.u ] ; 4 uses
  %i.ea = icmp ugt i32 %i.d, 63
  br i1 %i.ea, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.y
  %i.eb = zext i32 %.097.i to i64
  %i.ec = shl nsw i32 %.097.i, 1                  ; 2 uses
  %i.ed = zext i32 %i.ec to i64
  br label %bb.z

.preheader.i:                                     ; preds = %bb.z, %bb.y
  %.168.lcssa.i = phi ptr [ %0, %bb.y ], [ %i.eh, %bb.z ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %i.d, %bb.y ], [ %i.ei, %bb.z ] ; 3 uses
  %i.ee = icmp samesign ugt i32 %.1.lcssa.i, 31
  br i1 %i.ee, label %.lr.ph106.i, label %.loopexit.i

.lr.ph106.i:                                      ; preds = %.preheader.i
  %i.ef = zext i32 %.097.i to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.z, %.lr.ph.i
  %.1102.i = phi i32 [ %i.d, %.lr.ph.i ], [ %i.ei, %bb.z ]
  %.168101.i = phi ptr [ %0, %.lr.ph.i ], [ %i.eh, %bb.z ] ; 3 uses
  store <4 x i64> %.0..0..val.i, ptr %.168101.i, align 1, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %.168101.i, i64 %i.eb
  store <4 x i64> %.0..0..val.i, ptr %i.eg, align 1, !tbaa !13
  %i.eh = getelementptr inbounds nuw i8, ptr %.168101.i, i64 %i.ed ; 2 uses
  %i.ei = sub i32 %.1102.i, %i.ec                 ; 3 uses
  %i.ej = icmp ugt i32 %i.ei, 63
  br i1 %i.ej, label %bb.z, label %.preheader.i, !llvm.loop !2

bb.aa:                                            ; preds = %bb.aa, %.lr.ph106.i
  %.2105.i = phi i32 [ %.1.lcssa.i, %.lr.ph106.i ], [ %i.ek, %bb.aa ]
  %.269104.i = phi ptr [ %.168.lcssa.i, %.lr.ph106.i ], [ %i.el, %bb.aa ] ; 2 uses
  store <4 x i64> %.0..0..val.i, ptr %.269104.i, align 1, !tbaa !13
  %i.ek = sub i32 %.2105.i, %.097.i               ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.269104.i, i64 %i.ef ; 2 uses
  %i.em = icmp ugt i32 %i.ek, 31
  br i1 %i.em, label %bb.aa, label %.loopexit.i, !llvm.loop !3

.loopexit.i:                                      ; preds = %bb.aa, %.preheader.i, %bb.p
  %.370.i = phi ptr [ %.067.i, %bb.p ], [ %.168.lcssa.i, %.preheader.i ], [ %i.el, %bb.aa ] ; 3 uses
  %.3.i = phi i32 [ %.0.i, %bb.p ], [ %.1.lcssa.i, %.preheader.i ], [ %i.ek, %bb.aa ] ; 2 uses
  %.not.i = icmp eq i32 %.3.i, 0
  br i1 %.not.i, label %chunkmemset_avx2.exit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit.i
  %i.en = zext nneg i32 %.3.i to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.370.i, ptr nonnull align 32 %i.c, i64 %i.en, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %.370.i, i64 %i.en
  br label %chunkmemset_avx2.exit

chunkmemset_avx2.exit:                            ; preds = %.lr.ph.i87.i, %.lr.ph.i.i, %bb.e, %bb.g, %bb.i, %bb.l, %.loopexit.i, %bb.ab
  %.066.i = phi ptr [ %i.bb, %bb.e ], [ %i.bf, %bb.g ], [ %.370.i, %.loopexit.i ], [ %i.bn, %.lr.ph.i.i ], [ %i.eo, %bb.ab ], [ %i.bk, %bb.i ], [ %i.bv, %bb.l ], [ %i.by, %.lr.ph.i87.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader, %bb.b, %chunkmemset_avx2.exit
  %.0 = phi ptr [ %0, %bb.b ], [ %.066.i, %chunkmemset_avx2.exit ], [ %0, %.preheader ], [ %5, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.as, %.lr.ph ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @inflate_fast_avx2(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca <4 x i64>, align 32               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 14 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !53     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !54
  %i.g = add i32 %i.f, -14
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !56   ; 3 uses
  %i.n = sub i32 %1, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %i.p
  %i.r = add i32 %i.m, -259
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.s ; 2 uses
  %i.u = zext i32 %i.m to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.u ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.x = load i32, ptr %i.w, align 64, !tbaa !62  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !64 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !65 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 32, !tbaa !67
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !68 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !69 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.an = load i32, ptr %i.am, align 4, !tbaa !70
  %notmask = shl nsw i32 -1, %i.an
  %i.ao = xor i32 %notmask, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !71
  %notmask252 = shl nsw i32 -1, %i.aq
  %i.ar = xor i32 %notmask252, -1
  %.not = icmp eq i32 %i.x, 0
  %.not253 = icmp ult ptr %i.k, %i.ad
  %or.cond = select i1 %.not, i1 true, i1 %.not253
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 260
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.au = load i32, ptr %i.at, align 4, !tbaa !72
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.av
  %i.ax = icmp ule ptr %i.as, %i.aw
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ay = phi i1 [ %i.ax, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.az = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.ba = zext nneg i32 %i.ar to i64
  %i.bb = ptrtoint ptr %i.q to i64
  %i.bc = ptrtoint ptr %i.v to i64                ; 4 uses
  %i.bd = icmp eq i32 %i.ab, 0
  br label %bb.d

bb.d:                                             ; preds = %chunkcopy_safe.exit300, %bb.c
  %.0227 = phi ptr [ %i.d, %bb.c ], [ %.2229, %chunkcopy_safe.exit300 ] ; 2 uses
  %.0222 = phi ptr [ %i.k, %bb.c ], [ %.3225, %chunkcopy_safe.exit300 ] ; 4 uses
  %.0215 = phi i32 [ %i.ah, %bb.c ], [ %.5220, %chunkcopy_safe.exit300 ] ; 3 uses
  %.0212 = phi i64 [ %i.af, %bb.c ], [ %.5, %chunkcopy_safe.exit300 ]
  %.0227.val = load i64, ptr %.0227, align 1, !tbaa !13
  %i.be = zext nneg i32 %.0215 to i64
  %i.bf = shl i64 %.0227.val, %i.be
  %i.bg = or i64 %i.bf, %.0212                    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0227, i64 7
  %i.bi = lshr i32 %.0215, 3
  %i.bj = and i32 %i.bi, 7
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 %i.bl ; 6 uses
  %i.bn = or i32 %.0215, 56                       ; 2 uses
  %i.bo = and i64 %i.bg, %i.az
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bo ; 4 uses
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !74  ; 2 uses
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !75
  %i.bu = trunc i16 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.0222, i64 1 ; 2 uses
  store i8 %i.bu, ptr %.0222, align 1, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !76  ; 2 uses
  %i.by = zext i8 %i.bx to i32
  %i.bz = zext nneg i8 %i.bx to i64
  %i.ca = lshr i64 %i.bg, %i.bz                   ; 3 uses
  %i.cb = sub i32 %i.bn, %i.by                    ; 2 uses
  %i.cc = and i64 %i.ca, %i.az
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cc ; 4 uses
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !74  ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e, %bb.d
  %.ph = phi i8 [ %i.bq, %bb.d ], [ %i.ce, %bb.e ]
  %.1223.ph = phi ptr [ %.0222, %bb.d ], [ %i.bv, %bb.e ]
  %.1216.ph = phi i32 [ %i.bn, %bb.d ], [ %i.cb, %bb.e ]
  %.1213.ph = phi i64 [ %i.bg, %bb.d ], [ %i.ca, %bb.e ]
  %.0211.ph = phi ptr [ %i.bp, %bb.d ], [ %i.cd, %bb.e ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0211.ph, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !76  ; 2 uses
  %i.ci = zext i8 %i.ch to i32
  %i.cj = zext nneg i8 %i.ch to i64
  %i.ck = lshr i64 %.1213.ph, %i.cj
  %i.cl = sub i32 %.1216.ph, %i.ci
  br label %.lr.ph.preheader

bb.f:                                             ; preds = %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !75
  %i.co = trunc i16 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.0222, i64 2 ; 2 uses
  store i8 %i.co, ptr %i.bv, align 1, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !76  ; 2 uses
  %i.cs = zext i8 %i.cr to i32
  %i.ct = zext nneg i8 %i.cr to i64
  %i.cu = lshr i64 %i.ca, %i.ct                   ; 2 uses
  %i.cv = and i64 %i.cu, %i.az
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cv ; 4 uses
  %.pre = load i8, ptr %i.cw, align 2, !tbaa !74  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !76  ; 2 uses
  %i.cz = zext i8 %i.cy to i32
  %i.da = zext nneg i8 %i.cy to i64
  %i.db = lshr i64 %i.cu, %i.da                   ; 2 uses
  %i.dc = add nuw nsw i32 %i.cs, %i.cz
  %i.dd = sub i32 %i.cb, %i.dc                    ; 2 uses
  %i.de = icmp eq i8 %.pre, 0
  br i1 %i.de, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.f
  %i.df = phi i32 [ %i.cl, %.thread ], [ %i.dd, %bb.f ]
  %i.dg = phi i64 [ %i.ck, %.thread ], [ %i.db, %bb.f ]
  %.0211584 = phi ptr [ %.0211.ph, %.thread ], [ %i.cw, %bb.f ]
  %.1223582 = phi ptr [ %.1223.ph, %.thread ], [ %i.cp, %bb.f ] ; 25 uses
  %i.dh = phi i8 [ %.ph, %.thread ], [ %.pre, %bb.f ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.bx, %bb.f
  %.1223583 = phi ptr [ %i.cp, %bb.f ], [ %.1223582, %bb.bx ] ; 2 uses
  %.1.lcssa = phi ptr [ %i.cw, %bb.f ], [ %i.zc, %bb.bx ]
  %.lcssa406 = phi i64 [ %i.db, %bb.f ], [ %i.zh, %bb.bx ]
  %.lcssa403 = phi i32 [ %i.dd, %bb.f ], [ %i.zi, %bb.bx ]
  %i.di = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 2
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !75
  %i.dk = trunc i16 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %.1223583, i64 1
  store i8 %i.dk, ptr %.1223583, align 1, !tbaa !13
  br label %chunkcopy_safe.exit300

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bx
  %.in = phi i8 [ %i.zj, %bb.bx ], [ %i.dh, %.lr.ph.preheader ]
  %i.dm = phi i32 [ %i.zi, %bb.bx ], [ %i.df, %.lr.ph.preheader ] ; 4 uses
  %i.dn = phi i64 [ %i.zh, %bb.bx ], [ %i.dg, %.lr.ph.preheader ] ; 6 uses
  %.1457 = phi ptr [ %i.zc, %bb.bx ], [ %.0211584, %.lr.ph.preheader ] ; 2 uses
  %i.do = zext i8 %.in to i32                     ; 5 uses
  %i.dp = and i32 %i.do, 16
  %.not254 = icmp eq i32 %i.dp, 0
  br i1 %.not254, label %bb.bw, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %.1457, i64 2
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !75
  %i.ds = and i32 %i.do, 15                       ; 3 uses
  %notmask257 = shl nsw i32 -1, %i.ds
  %i.dt = xor i32 %notmask257, -1
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = and i64 %i.dn, %i.du
  %i.dw = zext i16 %i.dr to i64
  %i.dx = add nuw nsw i64 %i.dv, %i.dw            ; 8 uses
  %i.dy = trunc nuw nsw i64 %i.dx to i32          ; 10 uses
  %i.dz = zext nneg i32 %i.ds to i64
  %i.ea = lshr i64 %i.dn, %i.dz                   ; 3 uses
  %i.eb = sub i32 %i.dm, %i.ds                    ; 5 uses
  %i.ec = and i64 %i.ea, %i.ba
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ec ; 4 uses
  %i.ee = icmp ult i32 %i.eb, 28
  br i1 %i.ee, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val = load i64, ptr %i.bm, align 1, !tbaa !13
  %i.ef = zext nneg i32 %i.eb to i64
  %i.eg = shl i64 %.val, %i.ef
  %i.eh = or i64 %i.eg, %i.ea
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bm, i64 7
  %i.ej = lshr i32 %i.eb, 3
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = sub nsw i64 0, %i.ek
  %i.em = getelementptr inbounds i8, ptr %i.ei, i64 %i.el
  %i.en = or i32 %i.eb, 56
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1228 = phi ptr [ %i.em, %bb.h ], [ %i.bm, %bb.g ] ; 17 uses
  %.3218 = phi i32 [ %i.en, %bb.h ], [ %i.eb, %bb.g ]
  %.3 = phi i64 [ %i.eh, %bb.h ], [ %i.ea, %bb.g ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !76  ; 2 uses
  %i.eq = zext i8 %i.ep to i32
  %i.er = zext nneg i8 %i.ep to i64
  %i.es = lshr i64 %.3, %i.er                     ; 2 uses
  %i.et = sub i32 %.3218, %i.eq                   ; 2 uses
  %i.eu = load i8, ptr %i.ed, align 2, !tbaa !74
  %i.ev = zext i8 %i.eu to i32                    ; 3 uses
  %i.ew = and i32 %i.ev, 16
  %.not258460 = icmp eq i32 %i.ew, 0
  br i1 %.not258460, label %.lr.ph463, label %._crit_edge464

._crit_edge464:                                   ; preds = %bb.bu, %bb.i
  %.2.lcssa = phi ptr [ %i.ed, %bb.i ], [ %i.yh, %bb.bu ]
  %.lcssa414 = phi i64 [ %i.es, %bb.i ], [ %i.ym, %bb.bu ] ; 2 uses
  %.lcssa412 = phi i32 [ %i.et, %bb.i ], [ %i.yn, %bb.bu ]
  %.lcssa = phi i32 [ %i.ev, %bb.i ], [ %i.yp, %bb.bu ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !75
  %i.ez = and i32 %.lcssa, 15                     ; 3 uses
  %notmask260 = shl nsw i32 -1, %i.ez
  %i.fa = xor i32 %notmask260, -1
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = and i64 %.lcssa414, %i.fb
  %i.fd = zext i16 %i.ey to i64
  %i.fe = add nuw nsw i64 %i.fc, %i.fd            ; 22 uses
  %i.ff = trunc nuw nsw i64 %i.fe to i32          ; 4 uses
  %i.fg = zext nneg i32 %i.ez to i64
  %i.fh = lshr i64 %.lcssa414, %i.fg              ; 16 uses
  %i.fi = sub i32 %.lcssa412, %i.ez               ; 16 uses
  %i.fj = ptrtoint ptr %.1223582 to i64           ; 2 uses
  %i.fk = sub i64 %i.fj, %i.bb
  %i.fl = trunc i64 %i.fk to i32                  ; 2 uses
  %i.fm = icmp ugt i32 %i.ff, %i.fl
  br i1 %i.fm, label %bb.j, label %bb.ar

bb.j:                                             ; preds = %._crit_edge464
  %i.fn = sub nuw nsw i32 %i.ff, %i.fl            ; 7 uses
  %i.fo = icmp ugt i32 %i.fn, %i.z
  br i1 %i.fo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 16209, ptr %i.fp, align 8, !tbaa !77
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str, ptr %i.fq, align 8, !tbaa !78
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fr = sub i32 %i.x, %i.fn
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.fs
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %.not262 = icmp ult i32 %i.ab, %i.fn
  br i1 %.not262, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fu = sub nuw i32 %i.ab, %i.fn
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.fv
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.fx = sub nuw nsw i32 %i.fn, %i.ab            ; 5 uses
  %i.fy = sub i32 %i.x, %i.fx
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.fz ; 2 uses
  %i.gb = icmp ult i32 %i.fx, %i.dy
  br i1 %i.gb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gc = sub nuw nsw i32 %i.dy, %i.fx
  %i.gd = zext nneg i32 %i.fx to i64
  %i.ge = tail call fastcc ptr @CHUNKCOPY_SAFE(ptr noundef %.1223582, ptr noundef %i.ga, i64 noundef %i.gd, ptr noundef %i.v)
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p, %bb.m
  %.0392 = phi i32 [ %i.dy, %bb.m ], [ %i.gc, %bb.q ], [ %i.dy, %bb.p ], [ %i.dy, %bb.o ] ; 3 uses
  %.2224 = phi ptr [ %.1223582, %bb.m ], [ %i.ge, %bb.q ], [ %.1223582, %bb.p ], [ %.1223582, %bb.o ] ; 20 uses
  %.0210 = phi i32 [ %i.fn, %bb.m ], [ %i.ab, %bb.q ], [ %i.fx, %bb.p ], [ %i.fn, %bb.o ] ; 3 uses
  %.0 = phi ptr [ %i.ft, %bb.m ], [ %i.ad, %bb.q ], [ %i.ga, %bb.p ], [ %i.fw, %bb.o ] ; 18 uses
  %i.gf = icmp ult i32 %.0210, %.0392
  br i1 %i.gf, label %bb.s, label %bb.ah

bb.s:                                             ; preds = %bb.r
  %i.gg = sub nuw nsw i32 %.0392, %.0210          ; 4 uses
  %i.gh = zext nneg i32 %.0210 to i64             ; 2 uses
  br i1 %i.ay, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gi = tail call fastcc ptr @CHUNKCOPY_SAFE(ptr noundef %.2224, ptr noundef %.0, i64 noundef %i.gh, ptr noundef %i.v) ; 3 uses
  %i.gj = sub nsw i64 0, %i.fe
  %i.gk = getelementptr inbounds i8, ptr %i.gi, i64 %i.gj
  %i.gl = icmp ugt i32 %i.gg, %i.ff
  %i.gm = icmp samesign ult i64 %i.fe, 32
  %or.cond16.i = and i1 %i.gm, %i.gl
  br i1 %or.cond16.i, label %.lr.ph.i, label %chunkunroll_avx2.exit

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %.1393 = phi i32 [ %i.gp, %.lr.ph.i ], [ %i.gg, %bb.t ]
  %.0390 = phi i32 [ %i.gq, %.lr.ph.i ], [ %i.ff, %bb.t ] ; 4 uses
  %.017.i = phi ptr [ %i.go, %.lr.ph.i ], [ %i.gi, %bb.t ] ; 2 uses
  %.val.i = load <4 x i64>, ptr %i.gk, align 1, !tbaa !13
  store <4 x i64> %.val.i, ptr %.017.i, align 1, !tbaa !13
  %i.gn = zext nneg i32 %.0390 to i64
  %i.go = getelementptr inbounds nuw i8, ptr %.017.i, i64 %i.gn ; 2 uses
  %i.gp = sub i32 %.1393, %.0390                  ; 3 uses
  %i.gq = shl nuw nsw i32 %.0390, 1               ; 3 uses
  %i.gr = icmp ult i32 %i.gq, %i.gp
  %i.gs = icmp ult i32 %.0390, 16
  %or.cond.i = and i1 %i.gs, %i.gr
  br i1 %or.cond.i, label %.lr.ph.i, label %chunkunroll_avx2.exit.loopexit, !llvm.loop !23

chunkunroll_avx2.exit.loopexit:                   ; preds = %.lr.ph.i
  %i.gt = zext nneg i32 %i.gq to i64
  br label %chunkunroll_avx2.exit

chunkunroll_avx2.exit:                            ; preds = %chunkunroll_avx2.exit.loopexit, %bb.t
  %.2394 = phi i32 [ %i.gg, %bb.t ], [ %i.gp, %chunkunroll_avx2.exit.loopexit ]
  %.1391 = phi i64 [ %i.fe, %bb.t ], [ %i.gt, %chunkunroll_avx2.exit.loopexit ]
  %.0.lcssa.i = phi ptr [ %i.gi, %bb.t ], [ %i.go, %chunkunroll_avx2.exit.loopexit ] ; 2 uses
  %i.gu = sub nsw i64 0, %.1391
  %i.gv = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 %i.gu
  %i.gw = zext i32 %.2394 to i64
  %i.gx = tail call fastcc ptr @CHUNKCOPY_SAFE(ptr noundef %.0.lcssa.i, ptr noundef %i.gv, i64 noundef %i.gw, ptr noundef %i.v)
  br label %chunkcopy_safe.exit300

bb.u:                                             ; preds = %bb.s
  %i.gy = ptrtoint ptr %.2224 to i64              ; 2 uses
  %i.gz = sub i64 %i.bc, %i.gy
  %i.ha = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.gh, i64 %i.gz) ; 5 uses
  %i.hb = icmp uge ptr %.0, %.2224
  %i.hc = getelementptr inbounds nuw i8, ptr %.2224, i64 %i.ha ; 3 uses
  %i.hd = icmp ult ptr %.0, %i.hc
  %i.he = select i1 %i.hb, i1 %i.hd, i1 false
  %i.hf = icmp uge ptr %.2224, %.0
  %i.hg = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ha
  %i.hh = icmp ult ptr %.2224, %i.hg
  %i.hi = select i1 %i.hf, i1 %i.hh, i1 false
  %or.cond.i266 = select i1 %i.he, i1 true, i1 %i.hi
  br i1 %or.cond.i266, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2224, ptr align 1 %.0, i64 %i.ha, i1 false)
  br label %chunkcopy_safe.exit

bb.w:                                             ; preds = %bb.u
  %i.hj = icmp eq ptr %.2224, %.0
  br i1 %i.hj, label %chunkcopy_safe.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hk = ptrtoint ptr %.0 to i64
  %i.hl = sub i64 %i.hk, %i.gy
  %i.hm = tail call i64 @llvm.abs.i64(i64 %i.hl, i1 true)
  %.not87.i = icmp eq i64 %i.ha, 0
  br i1 %.not87.i, label %chunkcopy_safe.exit, label %.lr.ph92.i

.loopexit.i:                                      ; preds = %.lr.ph84.i.prol.loopexit, %.lr.ph84.i, %middle.block743, %vec.epilog.middle.block758, %bb.ab
  %.469.lcssa.i = phi ptr [ %.368.i, %bb.ab ], [ %i.jf, %vec.epilog.middle.block758 ], [ %i.iv, %middle.block743 ], [ %.lcssa889.unr, %.lr.ph84.i.prol.loopexit ], [ %i.kl, %.lr.ph84.i ] ; 2 uses
  %.4.lcssa.i = phi ptr [ %.364.i, %bb.ab ], [ %i.je, %vec.epilog.middle.block758 ], [ %i.iu, %middle.block743 ], [ %.lcssa890.unr, %.lr.ph84.i.prol.loopexit ], [ %i.kj, %.lr.ph84.i ]
  %.not.i = icmp eq i64 %i.ho, 0
  br i1 %.not.i, label %chunkcopy_safe.exit, label %.lr.ph92.i, !llvm.loop !24

.lr.ph92.i:                                       ; preds = %bb.x, %.loopexit.i
  %.06090.i = phi i64 [ %i.ho, %.loopexit.i ], [ %i.ha, %bb.x ] ; 2 uses
  %.06189.i = phi ptr [ %.4.lcssa.i, %.loopexit.i ], [ %.0, %bb.x ] ; 3 uses
  %.06588.i = phi ptr [ %.469.lcssa.i, %.loopexit.i ], [ %.2224, %bb.x ] ; 3 uses
  %i.hn = tail call i64 @llvm.umin.i64(i64 %i.hm, i64 %.06090.i) ; 6 uses
  %i.ho = sub nuw nsw i64 %.06090.i, %i.hn        ; 2 uses
  %i.hp = icmp samesign ugt i64 %i.hn, 15
  br i1 %i.hp, label %.lr.ph.i268.preheader, label %._crit_edge.i

.lr.ph.i268.preheader:                            ; preds = %.lr.ph92.i
  %i.hq = add nsw i64 %i.hn, -16                  ; 2 uses
  %i.hr = lshr i64 %i.hq, 4
  %i.hs = add nuw nsw i64 %i.hr, 1
  %xtraiter914 = and i64 %i.hs, 3                 ; 2 uses
  %lcmp.mod915.not = icmp eq i64 %xtraiter914, 0
  br i1 %lcmp.mod915.not, label %.lr.ph.i268.prol.loopexit, label %.lr.ph.i268.prol

.lr.ph.i268.prol:                                 ; preds = %.lr.ph.i268.preheader, %.lr.ph.i268.prol
  %.076.i.prol = phi i64 [ %i.hv, %.lr.ph.i268.prol ], [ %i.hn, %.lr.ph.i268.preheader ]
  %.16275.i.prol = phi ptr [ %i.hu, %.lr.ph.i268.prol ], [ %.06189.i, %.lr.ph.i268.preheader ] ; 2 uses
  %.16674.i.prol = phi ptr [ %i.ht, %.lr.ph.i268.prol ], [ %.06588.i, %.lr.ph.i268.preheader ] ; 2 uses
  %prol.iter916 = phi i64 [ %prol.iter916.next, %.lr.ph.i268.prol ], [ 0, %.lr.ph.i268.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674.i.prol, ptr noundef nonnull align 1 dereferenceable(16) %.16275.i.prol, i64 16, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %.16674.i.prol, i64 16 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.16275.i.prol, i64 16 ; 3 uses
  %i.hv = add i64 %.076.i.prol, -16               ; 3 uses
  %prol.iter916.next = add i64 %prol.iter916, 1   ; 2 uses
  %prol.iter916.cmp.not = icmp eq i64 %prol.iter916.next, %xtraiter914
  br i1 %prol.iter916.cmp.not, label %.lr.ph.i268.prol.loopexit, label %.lr.ph.i268.prol, !llvm.loop !25

.lr.ph.i268.prol.loopexit:                        ; preds = %.lr.ph.i268.prol, %.lr.ph.i268.preheader
  %.076.i.unr = phi i64 [ %i.hn, %.lr.ph.i268.preheader ], [ %i.hv, %.lr.ph.i268.prol ]
  %.16275.i.unr = phi ptr [ %.06189.i, %.lr.ph.i268.preheader ], [ %i.hu, %.lr.ph.i268.prol ]
  %.16674.i.unr = phi ptr [ %.06588.i, %.lr.ph.i268.preheader ], [ %i.ht, %.lr.ph.i268.prol ]
  %.lcssa888.unr = phi ptr [ poison, %.lr.ph.i268.preheader ], [ %i.ht, %.lr.ph.i268.prol ]
  %.lcssa887.unr = phi ptr [ poison, %.lr.ph.i268.preheader ], [ %i.hu, %.lr.ph.i268.prol ]
  %.lcssa886.unr = phi i64 [ poison, %.lr.ph.i268.preheader ], [ %i.hv, %.lr.ph.i268.prol ]
  %i.hw = icmp ult i64 %i.hq, 48
  br i1 %i.hw, label %._crit_edge.i, label %.lr.ph.i268

.lr.ph.i268:                                      ; preds = %.lr.ph.i268.prol.loopexit, %.lr.ph.i268
  %.076.i = phi i64 [ %i.if, %.lr.ph.i268 ], [ %.076.i.unr, %.lr.ph.i268.prol.loopexit ]
  %.16275.i = phi ptr [ %i.ie, %.lr.ph.i268 ], [ %.16275.i.unr, %.lr.ph.i268.prol.loopexit ] ; 5 uses
  %.16674.i = phi ptr [ %i.id, %.lr.ph.i268 ], [ %.16674.i.unr, %.lr.ph.i268.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674.i, ptr noundef nonnull align 1 dereferenceable(16) %.16275.i, i64 16, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %.16674.i, i64 16
  %i.hy = getelementptr inbounds nuw i8, ptr %.16275.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hx, ptr noundef nonnull align 1 dereferenceable(16) %i.hy, i64 16, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %.16674.i, i64 32
  %i.ia = getelementptr inbounds nuw i8, ptr %.16275.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hz, ptr noundef nonnull align 1 dereferenceable(16) %i.ia, i64 16, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %.16674.i, i64 48
  %i.ic = getelementptr inbounds nuw i8, ptr %.16275.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ib, ptr noundef nonnull align 1 dereferenceable(16) %i.ic, i64 16, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %.16674.i, i64 64 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.16275.i, i64 64 ; 2 uses
  %i.if = add i64 %.076.i, -64                    ; 3 uses
  %i.ig = icmp ugt i64 %i.if, 15
  br i1 %i.ig, label %.lr.ph.i268, label %._crit_edge.i, !llvm.loop !26

._crit_edge.i:                                    ; preds = %.lr.ph.i268.prol.loopexit, %.lr.ph.i268, %.lr.ph92.i
  %.166.lcssa.i = phi ptr [ %.06588.i, %.lr.ph92.i ], [ %.lcssa888.unr, %.lr.ph.i268.prol.loopexit ], [ %i.id, %.lr.ph.i268 ] ; 3 uses
  %.162.lcssa.i = phi ptr [ %.06189.i, %.lr.ph92.i ], [ %.lcssa887.unr, %.lr.ph.i268.prol.loopexit ], [ %i.ie, %.lr.ph.i268 ] ; 3 uses
  %.0.lcssa.i267 = phi i64 [ %i.hn, %.lr.ph92.i ], [ %.lcssa886.unr, %.lr.ph.i268.prol.loopexit ], [ %i.if, %.lr.ph.i268 ] ; 3 uses
  %i.ih = icmp samesign ugt i64 %.0.lcssa.i267, 7
  br i1 %i.ih, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge.i
  %i.ii = load i64, ptr %.162.lcssa.i, align 1
  store i64 %i.ii, ptr %.166.lcssa.i, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %.166.lcssa.i, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %.162.lcssa.i, i64 8
  %i.il = add nsw i64 %.0.lcssa.i267, -8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i
  %.267.i = phi ptr [ %i.ij, %bb.y ], [ %.166.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.263.i = phi ptr [ %i.ik, %bb.y ], [ %.162.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.1.i = phi i64 [ %i.il, %bb.y ], [ %.0.lcssa.i267, %._crit_edge.i ] ; 3 uses
  %i.im = icmp samesign ugt i64 %.1.i, 3
  br i1 %i.im, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.in = load i32, ptr %.263.i, align 1
  store i32 %i.in, ptr %.267.i, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %.267.i, i64 4
  %i.ip = getelementptr inbounds nuw i8, ptr %.263.i, i64 4
  %i.iq = add nsw i64 %.1.i, -4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.368.i = phi ptr [ %i.io, %bb.aa ], [ %.267.i, %bb.z ] ; 7 uses
  %.364.i = phi ptr [ %i.ip, %bb.aa ], [ %.263.i, %bb.z ] ; 7 uses
  %.2.i = phi i64 [ %i.iq, %bb.aa ], [ %.1.i, %bb.z ] ; 11 uses
  %.not7279.i = icmp eq i64 %.2.i, 0
  br i1 %.not7279.i, label %.loopexit.i, label %iter.check745

iter.check745:                                    ; preds = %bb.ab
  %.364.i727 = ptrtoaddr ptr %.364.i to i64
  %.368.i726 = ptrtoaddr ptr %.368.i to i64
  %min.iters.check729 = icmp ult i64 %.2.i, 8
  %i.ir = sub i64 %.364.i727, %.368.i726
  %diff.check728 = icmp ugt i64 %i.ir, -128
  %or.cond839 = select i1 %min.iters.check729, i1 true, i1 %diff.check728
  br i1 %or.cond839, label %.lr.ph84.i.preheader, label %vector.main.loop.iter.check730

vector.main.loop.iter.check730:                   ; preds = %iter.check745
  %min.iters.check731 = icmp ult i64 %.2.i, 128
  br i1 %min.iters.check731, label %vec.epilog.ph749, label %vector.ph732

vector.ph732:                                     ; preds = %vector.main.loop.iter.check730
  %i.is = and i64 %.2.i, 120
  %n.vec733 = and i64 %.2.i, -128                 ; 5 uses
  %i.it = and i64 %.2.i, 127
  %i.iu = getelementptr i8, ptr %.364.i, i64 %n.vec733 ; 2 uses
  %i.iv = getelementptr i8, ptr %.368.i, i64 %n.vec733 ; 2 uses
  br label %vector.body734

vector.body734:                                   ; preds = %vector.ph732, %vector.body734
  %index735 = phi i64 [ 0, %vector.ph732 ], [ %index.next742, %vector.body734 ] ; 3 uses
  %next.gep736 = getelementptr i8, ptr %.364.i, i64 %index735 ; 4 uses
  %next.gep737 = getelementptr i8, ptr %.368.i, i64 %index735 ; 4 uses
  %i.iw = getelementptr i8, ptr %next.gep736, i64 32
  %i.ix = getelementptr i8, ptr %next.gep736, i64 64
  %i.iy = getelementptr i8, ptr %next.gep736, i64 96
  %wide.load738 = load <32 x i8>, ptr %next.gep736, align 1, !tbaa !13
  %wide.load739 = load <32 x i8>, ptr %i.iw, align 1, !tbaa !13
  %wide.load740 = load <32 x i8>, ptr %i.ix, align 1, !tbaa !13
  %wide.load741 = load <32 x i8>, ptr %i.iy, align 1, !tbaa !13
  %i.iz = getelementptr i8, ptr %next.gep737, i64 32
  %i.ja = getelementptr i8, ptr %next.gep737, i64 64
  %i.jb = getelementptr i8, ptr %next.gep737, i64 96
  store <32 x i8> %wide.load738, ptr %next.gep737, align 1, !tbaa !13
  store <32 x i8> %wide.load739, ptr %i.iz, align 1, !tbaa !13
  store <32 x i8> %wide.load740, ptr %i.ja, align 1, !tbaa !13
  store <32 x i8> %wide.load741, ptr %i.jb, align 1, !tbaa !13
  %index.next742 = add nuw i64 %index735, 128     ; 2 uses
  %i.jc = icmp eq i64 %index.next742, %n.vec733
  br i1 %i.jc, label %middle.block743, label %vector.body734, !llvm.loop !27

middle.block743:                                  ; preds = %vector.body734
  %cmp.n744 = icmp eq i64 %.2.i, %n.vec733
  br i1 %cmp.n744, label %.loopexit.i, label %vec.epilog.iter.check746

vec.epilog.iter.check746:                         ; preds = %middle.block743
  %min.epilog.iters.check748 = icmp eq i64 %i.is, 0
  br i1 %min.epilog.iters.check748, label %.lr.ph84.i.preheader, label %vec.epilog.ph749, !prof !20

vec.epilog.ph749:                                 ; preds = %vector.main.loop.iter.check730, %vec.epilog.iter.check746
  %vec.epilog.resume.val750 = phi i64 [ %n.vec733, %vec.epilog.iter.check746 ], [ 0, %vector.main.loop.iter.check730 ]
  %n.vec751 = and i64 %.2.i, -8                   ; 4 uses
  %i.jd = and i64 %.2.i, 7
  %i.je = getelementptr i8, ptr %.364.i, i64 %n.vec751 ; 2 uses
  %i.jf = getelementptr i8, ptr %.368.i, i64 %n.vec751 ; 2 uses
  br label %vec.epilog.vector.body752

vec.epilog.vector.body752:                        ; preds = %vec.epilog.vector.body752, %vec.epilog.ph749
  %index753 = phi i64 [ %vec.epilog.resume.val750, %vec.epilog.ph749 ], [ %index.next757, %vec.epilog.vector.body752 ] ; 3 uses
  %next.gep754 = getelementptr i8, ptr %.364.i, i64 %index753
  %next.gep755 = getelementptr i8, ptr %.368.i, i64 %index753
  %wide.load756 = load <8 x i8>, ptr %next.gep754, align 1, !tbaa !13
  store <8 x i8> %wide.load756, ptr %next.gep755, align 1, !tbaa !13
  %index.next757 = add nuw i64 %index753, 8       ; 2 uses
  %i.jg = icmp eq i64 %index.next757, %n.vec751
  br i1 %i.jg, label %vec.epilog.middle.block758, label %vec.epilog.vector.body752, !llvm.loop !28

vec.epilog.middle.block758:                       ; preds = %vec.epilog.vector.body752
  %cmp.n759 = icmp eq i64 %.2.i, %n.vec751
  br i1 %cmp.n759, label %.loopexit.i, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %iter.check745, %vec.epilog.iter.check746, %vec.epilog.middle.block758
  %.382.i.ph = phi i64 [ %.2.i, %iter.check745 ], [ %i.it, %vec.epilog.iter.check746 ], [ %i.jd, %vec.epilog.middle.block758 ] ; 4 uses
  %.481.i.ph = phi ptr [ %.364.i, %iter.check745 ], [ %i.iu, %vec.epilog.iter.check746 ], [ %i.je, %vec.epilog.middle.block758 ] ; 2 uses
  %.46980.i.ph = phi ptr [ %.368.i, %iter.check745 ], [ %i.iv, %vec.epilog.iter.check746 ], [ %i.jf, %vec.epilog.middle.block758 ] ; 2 uses
  %i.jh = add i64 %.382.i.ph, -1
  %xtraiter917 = and i64 %.382.i.ph, 7            ; 2 uses
  %lcmp.mod918.not = icmp eq i64 %xtraiter917, 0
  br i1 %lcmp.mod918.not, label %.lr.ph84.i.prol.loopexit, label %.lr.ph84.i.prol

.lr.ph84.i.prol:                                  ; preds = %.lr.ph84.i.preheader, %.lr.ph84.i.prol
  %.382.i.prol = phi i64 [ %i.ji, %.lr.ph84.i.prol ], [ %.382.i.ph, %.lr.ph84.i.preheader ]
  %.481.i.prol = phi ptr [ %i.jj, %.lr.ph84.i.prol ], [ %.481.i.ph, %.lr.ph84.i.preheader ] ; 2 uses
  %.46980.i.prol = phi ptr [ %i.jl, %.lr.ph84.i.prol ], [ %.46980.i.ph, %.lr.ph84.i.preheader ] ; 2 uses
  %prol.iter919 = phi i64 [ %prol.iter919.next, %.lr.ph84.i.prol ], [ 0, %.lr.ph84.i.preheader ]
  %i.ji = add i64 %.382.i.prol, -1                ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.481.i.prol, i64 1 ; 3 uses
  %i.jk = load i8, ptr %.481.i.prol, align 1, !tbaa !13
  %i.jl = getelementptr inbounds nuw i8, ptr %.46980.i.prol, i64 1 ; 3 uses
  store i8 %i.jk, ptr %.46980.i.prol, align 1, !tbaa !13
  %prol.iter919.next = add i64 %prol.iter919, 1   ; 2 uses
  %prol.iter919.cmp.not = icmp eq i64 %prol.iter919.next, %xtraiter917
  br i1 %prol.iter919.cmp.not, label %.lr.ph84.i.prol.loopexit, label %.lr.ph84.i.prol, !llvm.loop !29

.lr.ph84.i.prol.loopexit:                         ; preds = %.lr.ph84.i.prol, %.lr.ph84.i.preheader
  %.lcssa890.unr = phi ptr [ poison, %.lr.ph84.i.preheader ], [ %i.jj, %.lr.ph84.i.prol ]
  %.lcssa889.unr = phi ptr [ poison, %.lr.ph84.i.preheader ], [ %i.jl, %.lr.ph84.i.prol ]
  %.382.i.unr = phi i64 [ %.382.i.ph, %.lr.ph84.i.preheader ], [ %i.ji, %.lr.ph84.i.prol ]
  %.481.i.unr = phi ptr [ %.481.i.ph, %.lr.ph84.i.preheader ], [ %i.jj, %.lr.ph84.i.prol ]
  %.46980.i.unr = phi ptr [ %.46980.i.ph, %.lr.ph84.i.preheader ], [ %i.jl, %.lr.ph84.i.prol ]
  %i.jm = icmp ult i64 %i.jh, 7
  br i1 %i.jm, label %.loopexit.i, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.prol.loopexit, %.lr.ph84.i
  %.382.i = phi i64 [ %i.ki, %.lr.ph84.i ], [ %.382.i.unr, %.lr.ph84.i.prol.loopexit ]
  %.481.i = phi ptr [ %i.kj, %.lr.ph84.i ], [ %.481.i.unr, %.lr.ph84.i.prol.loopexit ] ; 9 uses
  %.46980.i = phi ptr [ %i.kl, %.lr.ph84.i ], [ %.46980.i.unr, %.lr.ph84.i.prol.loopexit ] ; 9 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.481.i, i64 1
  %i.jo = load i8, ptr %.481.i, align 1, !tbaa !13
  %i.jp = getelementptr inbounds nuw i8, ptr %.46980.i, i64 1
  store i8 %i.jo, ptr %.46980.i, align 1, !tbaa !13
  %i.jq = getelementptr inbounds nuw i8, ptr %.481.i, i64 2
  %i.jr = load i8, ptr %i.jn, align 1, !tbaa !13
  %i.js = getelementptr inbounds nuw i8, ptr %.46980.i, i64 2
  store i8 %i.jr, ptr %i.jp, align 1, !tbaa !13
  %i.jt = getelementptr inbounds nuw i8, ptr %.481.i, i64 3
  %i.ju = load i8, ptr %i.jq, align 1, !tbaa !13
  %i.jv = getelementptr inbounds nuw i8, ptr %.46980.i, i64 3
  store i8 %i.ju, ptr %i.js, align 1, !tbaa !13
  %i.jw = getelementptr inbounds nuw i8, ptr %.481.i, i64 4
  %i.jx = load i8, ptr %i.jt, align 1, !tbaa !13
  %i.jy = getelementptr inbounds nuw i8, ptr %.46980.i, i64 4
  store i8 %i.jx, ptr %i.jv, align 1, !tbaa !13
  %i.jz = getelementptr inbounds nuw i8, ptr %.481.i, i64 5
  %i.ka = load i8, ptr %i.jw, align 1, !tbaa !13
  %i.kb = getelementptr inbounds nuw i8, ptr %.46980.i, i64 5
  store i8 %i.ka, ptr %i.jy, align 1, !tbaa !13
  %i.kc = getelementptr inbounds nuw i8, ptr %.481.i, i64 6
  %i.kd = load i8, ptr %i.jz, align 1, !tbaa !13
  %i.ke = getelementptr inbounds nuw i8, ptr %.46980.i, i64 6
  store i8 %i.kd, ptr %i.kb, align 1, !tbaa !13
  %i.kf = getelementptr inbounds nuw i8, ptr %.481.i, i64 7
  %i.kg = load i8, ptr %i.kc, align 1, !tbaa !13
  %i.kh = getelementptr inbounds nuw i8, ptr %.46980.i, i64 7
  store i8 %i.kg, ptr %i.ke, align 1, !tbaa !13
  %i.ki = add i64 %.382.i, -8                     ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.481.i, i64 8 ; 2 uses
  %i.kk = load i8, ptr %i.kf, align 1, !tbaa !13
  %i.kl = getelementptr inbounds nuw i8, ptr %.46980.i, i64 8 ; 2 uses
  store i8 %i.kk, ptr %i.kh, align 1, !tbaa !13
  %.not72.i.7 = icmp eq i64 %i.ki, 0
  br i1 %.not72.i.7, label %.loopexit.i, label %.lr.ph84.i, !llvm.loop !30

chunkcopy_safe.exit:                              ; preds = %.loopexit.i, %bb.v, %bb.w, %bb.x
  %.059.i = phi ptr [ %i.hc, %bb.v ], [ %i.hc, %bb.w ], [ %.2224, %bb.x ], [ %.469.lcssa.i, %.loopexit.i ] ; 5 uses
  %i.km = sub nsw i64 0, %i.fe
  %i.kn = getelementptr inbounds i8, ptr %.059.i, i64 %i.km ; 2 uses
  %i.ko = zext nneg i32 %i.gg to i64
  %i.kp = ptrtoint ptr %.059.i to i64
  %i.kq = sub i64 %i.bc, %i.kp
  %i.kr = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.ko, i64 %i.kq) ; 4 uses
  %i.ks = icmp samesign ugt i64 %i.kr, %i.fe
  br i1 %i.ks, label %.lr.ph92.i272, label %bb.ac

bb.ac:                                            ; preds = %chunkcopy_safe.exit
  %i.kt = getelementptr inbounds nuw i8, ptr %.059.i, i64 %i.kr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.059.i, ptr align 1 %i.kn, i64 %i.kr, i1 false)
  br label %chunkcopy_safe.exit300

.loopexit.i292:                                   ; preds = %.lr.ph84.i287.prol.loopexit, %.lr.ph84.i287, %middle.block, %vec.epilog.middle.block, %bb.ag
  %.469.lcssa.i293 = phi ptr [ %.368.i283, %bb.ag ], [ %i.mm, %vec.epilog.middle.block ], [ %i.mc, %middle.block ], [ %.lcssa894.unr, %.lr.ph84.i287.prol.loopexit ], [ %i.ns, %.lr.ph84.i287 ] ; 2 uses
  %.4.lcssa.i294 = phi ptr [ %.364.i284, %bb.ag ], [ %i.ml, %vec.epilog.middle.block ], [ %i.mb, %middle.block ], [ %.lcssa895.unr, %.lr.ph84.i287.prol.loopexit ], [ %i.nq, %.lr.ph84.i287 ]
  %.not.i295 = icmp eq i64 %i.kv, 0
  br i1 %.not.i295, label %chunkcopy_safe.exit300, label %.lr.ph92.i272, !llvm.loop !24

.lr.ph92.i272:                                    ; preds = %chunkcopy_safe.exit, %.loopexit.i292
  %.06090.i273 = phi i64 [ %i.kv, %.loopexit.i292 ], [ %i.kr, %chunkcopy_safe.exit ] ; 2 uses
  %.06189.i274 = phi ptr [ %.4.lcssa.i294, %.loopexit.i292 ], [ %i.kn, %chunkcopy_safe.exit ] ; 3 uses
  %.06588.i275 = phi ptr [ %.469.lcssa.i293, %.loopexit.i292 ], [ %.059.i, %chunkcopy_safe.exit ] ; 3 uses
  %i.ku = tail call i64 @llvm.umin.i64(i64 %i.fe, i64 %.06090.i273) ; 6 uses
  %i.kv = sub nuw nsw i64 %.06090.i273, %i.ku     ; 2 uses
  %i.kw = icmp samesign ugt i64 %i.ku, 15
  br i1 %i.kw, label %.lr.ph.i296.preheader, label %._crit_edge.i276

.lr.ph.i296.preheader:                            ; preds = %.lr.ph92.i272
  %i.kx = add nsw i64 %i.ku, -16                  ; 2 uses
  %i.ky = lshr i64 %i.kx, 4
  %i.kz = add nuw nsw i64 %i.ky, 1
  %xtraiter920 = and i64 %i.kz, 3                 ; 2 uses
  %lcmp.mod921.not = icmp eq i64 %xtraiter920, 0
  br i1 %lcmp.mod921.not, label %.lr.ph.i296.prol.loopexit, label %.lr.ph.i296.prol

.lr.ph.i296.prol:                                 ; preds = %.lr.ph.i296.preheader, %.lr.ph.i296.prol
  %.076.i297.prol = phi i64 [ %i.lc, %.lr.ph.i296.prol ], [ %i.ku, %.lr.ph.i296.preheader ]
  %.16275.i298.prol = phi ptr [ %i.lb, %.lr.ph.i296.prol ], [ %.06189.i274, %.lr.ph.i296.preheader ] ; 2 uses
  %.16674.i299.prol = phi ptr [ %i.la, %.lr.ph.i296.prol ], [ %.06588.i275, %.lr.ph.i296.preheader ] ; 2 uses
  %prol.iter922 = phi i64 [ %prol.iter922.next, %.lr.ph.i296.prol ], [ 0, %.lr.ph.i296.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674.i299.prol, ptr noundef nonnull align 1 dereferenceable(16) %.16275.i298.prol, i64 16, i1 false)
  %i.la = getelementptr inbounds nuw i8, ptr %.16674.i299.prol, i64 16 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.16275.i298.prol, i64 16 ; 3 uses
  %i.lc = add i64 %.076.i297.prol, -16            ; 3 uses
  %prol.iter922.next = add i64 %prol.iter922, 1   ; 2 uses
  %prol.iter922.cmp.not = icmp eq i64 %prol.iter922.next, %xtraiter920
  br i1 %prol.iter922.cmp.not, label %.lr.ph.i296.prol.loopexit, label %.lr.ph.i296.prol, !llvm.loop !31

.lr.ph.i296.prol.loopexit:                        ; preds = %.lr.ph.i296.prol, %.lr.ph.i296.preheader
  %.076.i297.unr = phi i64 [ %i.ku, %.lr.ph.i296.preheader ], [ %i.lc, %.lr.ph.i296.prol ]
  %.16275.i298.unr = phi ptr [ %.06189.i274, %.lr.ph.i296.preheader ], [ %i.lb, %.lr.ph.i296.prol ]
  %.16674.i299.unr = phi ptr [ %.06588.i275, %.lr.ph.i296.preheader ], [ %i.la, %.lr.ph.i296.prol ]
  %.lcssa893.unr = phi ptr [ poison, %.lr.ph.i296.preheader ], [ %i.la, %.lr.ph.i296.prol ]
  %.lcssa892.unr = phi ptr [ poison, %.lr.ph.i296.preheader ], [ %i.lb, %.lr.ph.i296.prol ]
  %.lcssa891.unr = phi i64 [ poison, %.lr.ph.i296.preheader ], [ %i.lc, %.lr.ph.i296.prol ]
  %i.ld = icmp ult i64 %i.kx, 48
  br i1 %i.ld, label %._crit_edge.i276, label %.lr.ph.i296

.lr.ph.i296:                                      ; preds = %.lr.ph.i296.prol.loopexit, %.lr.ph.i296
  %.076.i297 = phi i64 [ %i.lm, %.lr.ph.i296 ], [ %.076.i297.unr, %.lr.ph.i296.prol.loopexit ]
  %.16275.i298 = phi ptr [ %i.ll, %.lr.ph.i296 ], [ %.16275.i298.unr, %.lr.ph.i296.prol.loopexit ] ; 5 uses
  %.16674.i299 = phi ptr [ %i.lk, %.lr.ph.i296 ], [ %.16674.i299.unr, %.lr.ph.i296.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674.i299, ptr noundef nonnull align 1 dereferenceable(16) %.16275.i298, i64 16, i1 false)
  %i.le = getelementptr inbounds nuw i8, ptr %.16674.i299, i64 16
  %i.lf = getelementptr inbounds nuw i8, ptr %.16275.i298, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.le, ptr noundef nonnull align 1 dereferenceable(16) %i.lf, i64 16, i1 false)
  %i.lg = getelementptr inbounds nuw i8, ptr %.16674.i299, i64 32
  %i.lh = getelementptr inbounds nuw i8, ptr %.16275.i298, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.lg, ptr noundef nonnull align 1 dereferenceable(16) %i.lh, i64 16, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %.16674.i299, i64 48
  %i.lj = getelementptr inbounds nuw i8, ptr %.16275.i298, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.li, ptr noundef nonnull align 1 dereferenceable(16) %i.lj, i64 16, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %.16674.i299, i64 64 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.16275.i298, i64 64 ; 2 uses
  %i.lm = add i64 %.076.i297, -64                 ; 3 uses
  %i.ln = icmp ugt i64 %i.lm, 15
  br i1 %i.ln, label %.lr.ph.i296, label %._crit_edge.i276, !llvm.loop !26

._crit_edge.i276:                                 ; preds = %.lr.ph.i296.prol.loopexit, %.lr.ph.i296, %.lr.ph92.i272
  %.166.lcssa.i277 = phi ptr [ %.06588.i275, %.lr.ph92.i272 ], [ %.lcssa893.unr, %.lr.ph.i296.prol.loopexit ], [ %i.lk, %.lr.ph.i296 ] ; 3 uses
  %.162.lcssa.i278 = phi ptr [ %.06189.i274, %.lr.ph92.i272 ], [ %.lcssa892.unr, %.lr.ph.i296.prol.loopexit ], [ %i.ll, %.lr.ph.i296 ] ; 3 uses
  %.0.lcssa.i279 = phi i64 [ %i.ku, %.lr.ph92.i272 ], [ %.lcssa891.unr, %.lr.ph.i296.prol.loopexit ], [ %i.lm, %.lr.ph.i296 ] ; 3 uses
  %i.lo = icmp samesign ugt i64 %.0.lcssa.i279, 7
  br i1 %i.lo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i276
  %i.lp = load i64, ptr %.162.lcssa.i278, align 1
  store i64 %i.lp, ptr %.166.lcssa.i277, align 1
  %i.lq = getelementptr inbounds nuw i8, ptr %.166.lcssa.i277, i64 8
  %i.lr = getelementptr inbounds nuw i8, ptr %.162.lcssa.i278, i64 8
  %i.ls = add nsw i64 %.0.lcssa.i279, -8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i276
  %.267.i280 = phi ptr [ %i.lq, %bb.ad ], [ %.166.lcssa.i277, %._crit_edge.i276 ] ; 3 uses
  %.263.i281 = phi ptr [ %i.lr, %bb.ad ], [ %.162.lcssa.i278, %._crit_edge.i276 ] ; 3 uses
  %.1.i282 = phi i64 [ %i.ls, %bb.ad ], [ %.0.lcssa.i279, %._crit_edge.i276 ] ; 3 uses
  %i.lt = icmp samesign ugt i64 %.1.i282, 3
  br i1 %i.lt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.lu = load i32, ptr %.263.i281, align 1
  store i32 %i.lu, ptr %.267.i280, align 1
  %i.lv = getelementptr inbounds nuw i8, ptr %.267.i280, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %.263.i281, i64 4
  %i.lx = add nsw i64 %.1.i282, -4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.368.i283 = phi ptr [ %i.lv, %bb.af ], [ %.267.i280, %bb.ae ] ; 7 uses
  %.364.i284 = phi ptr [ %i.lw, %bb.af ], [ %.263.i281, %bb.ae ] ; 7 uses
  %.2.i285 = phi i64 [ %i.lx, %bb.af ], [ %.1.i282, %bb.ae ] ; 11 uses
  %.not7279.i286 = icmp eq i64 %.2.i285, 0
  br i1 %.not7279.i286, label %.loopexit.i292, label %iter.check

iter.check:                                       ; preds = %bb.ag
  %.364.i284710 = ptrtoaddr ptr %.364.i284 to i64
  %.368.i283709 = ptrtoaddr ptr %.368.i283 to i64
  %min.iters.check = icmp ult i64 %.2.i285, 8
  %i.ly = sub i64 %.364.i284710, %.368.i283709
  %diff.check = icmp ugt i64 %i.ly, -128
  %or.cond840 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond840, label %.lr.ph84.i287.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check711 = icmp ult i64 %.2.i285, 128
  br i1 %min.iters.check711, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lz = and i64 %.2.i285, 120
  %n.vec = and i64 %.2.i285, -128                 ; 5 uses
  %i.ma = and i64 %.2.i285, 127
  %i.mb = getelementptr i8, ptr %.364.i284, i64 %n.vec ; 2 uses
  %i.mc = getelementptr i8, ptr %.368.i283, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.364.i284, i64 %index ; 4 uses
  %next.gep712 = getelementptr i8, ptr %.368.i283, i64 %index ; 4 uses
  %i.md = getelementptr i8, ptr %next.gep, i64 32
  %i.me = getelementptr i8, ptr %next.gep, i64 64
  %i.mf = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep, align 1, !tbaa !13
  %wide.load713 = load <32 x i8>, ptr %i.md, align 1, !tbaa !13
  %wide.load714 = load <32 x i8>, ptr %i.me, align 1, !tbaa !13
  %wide.load715 = load <32 x i8>, ptr %i.mf, align 1, !tbaa !13
  %i.mg = getelementptr i8, ptr %next.gep712, i64 32
  %i.mh = getelementptr i8, ptr %next.gep712, i64 64
  %i.mi = getelementptr i8, ptr %next.gep712, i64 96
  store <32 x i8> %wide.load, ptr %next.gep712, align 1, !tbaa !13
  store <32 x i8> %wide.load713, ptr %i.mg, align 1, !tbaa !13
  store <32 x i8> %wide.load714, ptr %i.mh, align 1, !tbaa !13
  store <32 x i8> %wide.load715, ptr %i.mi, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.mj = icmp eq i64 %index.next, %n.vec
  br i1 %i.mj, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.2.i285, %n.vec
  br i1 %cmp.n, label %.loopexit.i292, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.lz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph84.i287.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec716 = and i64 %.2.i285, -8                ; 4 uses
  %i.mk = and i64 %.2.i285, 7
  %i.ml = getelementptr i8, ptr %.364.i284, i64 %n.vec716 ; 2 uses
  %i.mm = getelementptr i8, ptr %.368.i283, i64 %n.vec716 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index717 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next721, %vec.epilog.vector.body ] ; 3 uses
  %next.gep718 = getelementptr i8, ptr %.364.i284, i64 %index717
  %next.gep719 = getelementptr i8, ptr %.368.i283, i64 %index717
  %wide.load720 = load <8 x i8>, ptr %next.gep718, align 1, !tbaa !13
  store <8 x i8> %wide.load720, ptr %next.gep719, align 1, !tbaa !13
  %index.next721 = add nuw i64 %index717, 8       ; 2 uses
  %i.mn = icmp eq i64 %index.next721, %n.vec716
  br i1 %i.mn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !33

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n722 = icmp eq i64 %.2.i285, %n.vec716
  br i1 %cmp.n722, label %.loopexit.i292, label %.lr.ph84.i287.preheader

.lr.ph84.i287.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.382.i288.ph = phi i64 [ %.2.i285, %iter.check ], [ %i.ma, %vec.epilog.iter.check ], [ %i.mk, %vec.epilog.middle.block ] ; 4 uses
  %.481.i289.ph = phi ptr [ %.364.i284, %iter.check ], [ %i.mb, %vec.epilog.iter.check ], [ %i.ml, %vec.epilog.middle.block ] ; 2 uses
  %.46980.i290.ph = phi ptr [ %.368.i283, %iter.check ], [ %i.mc, %vec.epilog.iter.check ], [ %i.mm, %vec.epilog.middle.block ] ; 2 uses
  %i.mo = add i64 %.382.i288.ph, -1
  %xtraiter923 = and i64 %.382.i288.ph, 7         ; 2 uses
  %lcmp.mod924.not = icmp eq i64 %xtraiter923, 0
  br i1 %lcmp.mod924.not, label %.lr.ph84.i287.prol.loopexit, label %.lr.ph84.i287.prol

.lr.ph84.i287.prol:                               ; preds = %.lr.ph84.i287.preheader, %.lr.ph84.i287.prol
  %.382.i288.prol = phi i64 [ %i.mp, %.lr.ph84.i287.prol ], [ %.382.i288.ph, %.lr.ph84.i287.preheader ]
  %.481.i289.prol = phi ptr [ %i.mq, %.lr.ph84.i287.prol ], [ %.481.i289.ph, %.lr.ph84.i287.preheader ] ; 2 uses
  %.46980.i290.prol = phi ptr [ %i.ms, %.lr.ph84.i287.prol ], [ %.46980.i290.ph, %.lr.ph84.i287.preheader ] ; 2 uses
  %prol.iter925 = phi i64 [ %prol.iter925.next, %.lr.ph84.i287.prol ], [ 0, %.lr.ph84.i287.preheader ]
  %i.mp = add i64 %.382.i288.prol, -1             ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.481.i289.prol, i64 1 ; 3 uses
  %i.mr = load i8, ptr %.481.i289.prol, align 1, !tbaa !13
  %i.ms = getelementptr inbounds nuw i8, ptr %.46980.i290.prol, i64 1 ; 3 uses
  store i8 %i.mr, ptr %.46980.i290.prol, align 1, !tbaa !13
  %prol.iter925.next = add i64 %prol.iter925, 1   ; 2 uses
  %prol.iter925.cmp.not = icmp eq i64 %prol.iter925.next, %xtraiter923
  br i1 %prol.iter925.cmp.not, label %.lr.ph84.i287.prol.loopexit, label %.lr.ph84.i287.prol, !llvm.loop !34

.lr.ph84.i287.prol.loopexit:                      ; preds = %.lr.ph84.i287.prol, %.lr.ph84.i287.preheader
  %.lcssa895.unr = phi ptr [ poison, %.lr.ph84.i287.preheader ], [ %i.mq, %.lr.ph84.i287.prol ]
  %.lcssa894.unr = phi ptr [ poison, %.lr.ph84.i287.preheader ], [ %i.ms, %.lr.ph84.i287.prol ]
  %.382.i288.unr = phi i64 [ %.382.i288.ph, %.lr.ph84.i287.preheader ], [ %i.mp, %.lr.ph84.i287.prol ]
  %.481.i289.unr = phi ptr [ %.481.i289.ph, %.lr.ph84.i287.preheader ], [ %i.mq, %.lr.ph84.i287.prol ]
  %.46980.i290.unr = phi ptr [ %.46980.i290.ph, %.lr.ph84.i287.preheader ], [ %i.ms, %.lr.ph84.i287.prol ]
  %i.mt = icmp ult i64 %i.mo, 7
  br i1 %i.mt, label %.loopexit.i292, label %.lr.ph84.i287

.lr.ph84.i287:                                    ; preds = %.lr.ph84.i287.prol.loopexit, %.lr.ph84.i287
  %.382.i288 = phi i64 [ %i.np, %.lr.ph84.i287 ], [ %.382.i288.unr, %.lr.ph84.i287.prol.loopexit ]
  %.481.i289 = phi ptr [ %i.nq, %.lr.ph84.i287 ], [ %.481.i289.unr, %.lr.ph84.i287.prol.loopexit ] ; 9 uses
  %.46980.i290 = phi ptr [ %i.ns, %.lr.ph84.i287 ], [ %.46980.i290.unr, %.lr.ph84.i287.prol.loopexit ] ; 9 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.481.i289, i64 1
  %i.mv = load i8, ptr %.481.i289, align 1, !tbaa !13
  %i.mw = getelementptr inbounds nuw i8, ptr %.46980.i290, i64 1
  store i8 %i.mv, ptr %.46980.i290, align 1, !tbaa !13
  %i.mx = getelementptr inbounds nuw i8, ptr %.481.i289, i64 2
  %i.my = load i8, ptr %i.mu, align 1, !tbaa !13
  %i.mz = getelementptr inbounds nuw i8, ptr %.46980.i290, i64 2
  store i8 %i.my, ptr %i.mw, align 1, !tbaa !13
  %i.na = getelementptr inbounds nuw i8, ptr %.481.i289, i64 3
  %i.nb = load i8, ptr %i.mx, align 1, !tbaa !13
  %i.nc = getelementptr inbounds nuw i8, ptr %.46980.i290, i64 3
  store i8 %i.nb, ptr %i.mz, align 1, !tbaa !13
  %i.nd = getelementptr inbounds nuw i8, ptr %.481.i289, i64 4
  %i.ne = load i8, ptr %i.na, align 1, !tbaa !13
  %i.nf = getelementptr inbounds nuw i8, ptr %.46980.i290, i64 4
  store i8 %i.ne, ptr %i.nc, align 1, !tbaa !13
  %i.ng = getelementptr inbounds nuw i8, ptr %.481.i289, i64 5
  %i.nh = load i8, ptr %i.nd, align 1, !tbaa !13
  %i.ni = getelementptr inbounds nuw i8, ptr %.46980.i290, i64 5
  store i8 %i.nh, ptr %i.nf, align 1, !tbaa !13
  %i.nj = getelementptr inbounds nuw i8, ptr %.481.i289, i64 6
  %i.nk = load i8, ptr %i.ng, align 1, !tbaa !13
  %i.nl = getelementptr inbounds nuw i8, ptr %.46980.i290, i64 6
  store i8 %i.nk, ptr %i.ni, align 1, !tbaa !13
  %i.nm = getelementptr inbounds nuw i8, ptr %.481.i289, i64 7
  %i.nn = load i8, ptr %i.nj, align 1, !tbaa !13
  %i.no = getelementptr inbounds nuw i8, ptr %.46980.i290, i64 7
  store i8 %i.nn, ptr %i.nl, align 1, !tbaa !13
  %i.np = add i64 %.382.i288, -8                  ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.481.i289, i64 8 ; 2 uses
  %i.nr = load i8, ptr %i.nm, align 1, !tbaa !13
  %i.ns = getelementptr inbounds nuw i8, ptr %.46980.i290, i64 8 ; 2 uses
  store i8 %i.nr, ptr %i.no, align 1, !tbaa !13
  %.not72.i291.7 = icmp eq i64 %i.np, 0
  br i1 %.not72.i291.7, label %.loopexit.i292, label %.lr.ph84.i287, !llvm.loop !35

bb.ah:                                            ; preds = %bb.r
  %i.nt = zext nneg i32 %.0392 to i64             ; 2 uses
  br i1 %i.ay, label %bb.ai, label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  %i.nu = ptrtoint ptr %.2224 to i64              ; 2 uses
  %i.nv = sub i64 %i.bc, %i.nu
  %i.nw = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.nt, i64 %i.nv) ; 5 uses
  %i.nx = icmp uge ptr %.0, %.2224
  %i.ny = getelementptr inbounds nuw i8, ptr %.2224, i64 %i.nw ; 3 uses
  %i.nz = icmp ult ptr %.0, %i.ny
  %i.oa = select i1 %i.nx, i1 %i.nz, i1 false
  %i.ob = icmp uge ptr %.2224, %.0
  %i.oc = getelementptr inbounds nuw i8, ptr %.0, i64 %i.nw
  %i.od = icmp ult ptr %.2224, %i.oc
  %i.oe = select i1 %i.ob, i1 %i.od, i1 false
  %or.cond.i301 = select i1 %i.oa, i1 true, i1 %i.oe
  br i1 %or.cond.i301, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2224, ptr align 1 %.0, i64 %i.nw, i1 false)
  br label %chunkcopy_safe.exit300

bb.ak:                                            ; preds = %bb.ai
  %i.of = icmp eq ptr %.2224, %.0
  br i1 %i.of, label %chunkcopy_safe.exit300, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.og = ptrtoint ptr %.0 to i64
  %i.oh = sub i64 %i.og, %i.nu
  %i.oi = tail call i64 @llvm.abs.i64(i64 %i.oh, i1 true)
  %.not87.i303 = icmp eq i64 %i.nw, 0
  br i1 %.not87.i303, label %chunkcopy_safe.exit300, label %.lr.ph92.i304

.loopexit.i324:                                   ; preds = %.lr.ph84.i319.prol.loopexit, %.lr.ph84.i319, %middle.block781, %vec.epilog.middle.block796, %bb.ap
  %.469.lcssa.i325 = phi ptr [ %.368.i315, %bb.ap ], [ %i.qb, %vec.epilog.middle.block796 ], [ %i.pr, %middle.block781 ], [ %.lcssa881.unr, %.lr.ph84.i319.prol.loopexit ], [ %i.rh, %.lr.ph84.i319 ] ; 2 uses
  %.4.lcssa.i326 = phi ptr [ %.364.i316, %bb.ap ], [ %i.qa, %vec.epilog.middle.block796 ], [ %i.pq, %middle.block781 ], [ %.lcssa882.unr, %.lr.ph84.i319.prol.loopexit ], [ %i.rf, %.lr.ph84.i319 ]
  %.not.i327 = icmp eq i64 %i.ok, 0
  br i1 %.not.i327, label %chunkcopy_safe.exit300, label %.lr.ph92.i304, !llvm.loop !24

.lr.ph92.i304:                                    ; preds = %bb.al, %.loopexit.i324
  %.06090.i305 = phi i64 [ %i.ok, %.loopexit.i324 ], [ %i.nw, %bb.al ] ; 2 uses
  %.06189.i306 = phi ptr [ %.4.lcssa.i326, %.loopexit.i324 ], [ %.0, %bb.al ] ; 3 uses
  %.06588.i307 = phi ptr [ %.469.lcssa.i325, %.loopexit.i324 ], [ %.2224, %bb.al ] ; 3 uses
  %i.oj = tail call i64 @llvm.umin.i64(i64 %i.oi, i64 %.06090.i305) ; 6 uses
  %i.ok = sub nuw nsw i64 %.06090.i305, %i.oj     ; 2 uses
  %i.ol = icmp samesign ugt i64 %i.oj, 15
  br i1 %i.ol, label %.lr.ph.i328.preheader, label %._crit_edge.i308

.lr.ph.i328.preheader:                            ; preds = %.lr.ph92.i304
  %i.om = add nsw i64 %i.oj, -16                  ; 2 uses
  %i.on = lshr i64 %i.om, 4
  %i.oo = add nuw nsw i64 %i.on, 1
  %xtraiter908 = and i64 %i.oo, 3                 ; 2 uses
  %lcmp.mod909.not = icmp eq i64 %xtraiter908, 0
  br i1 %lcmp.mod909.not, label %.lr.ph.i328.prol.loopexit, label %.lr.ph.i328.prol

.lr.ph.i328.prol:                                 ; preds = %.lr.ph.i328.preheader, %.lr.ph.i328.prol
  %.076.i329.prol = phi i64 [ %i.or, %.lr.ph.i328.prol ], [ %i.oj, %.lr.ph.i328.preheader ]
  %.16275.i330.prol = phi ptr [ %i.oq, %.lr.ph.i328.prol ], [ %.06189.i306, %.lr.ph.i328.preheader ] ; 2 uses
  %.16674.i331.prol = phi ptr [ %i.op, %.lr.ph.i328.prol ], [ %.06588.i307, %.lr.ph.i328.preheader ] ; 2 uses
  %prol.iter910 = phi i64 [ %prol.iter910.next, %.lr.ph.i328.prol ], [ 0, %.lr.ph.i328.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674.i331.prol, ptr noundef nonnull align 1 dereferenceable(16) %.16275.i330.prol, i64 16, i1 false)
  %i.op = getelementptr inbounds nuw i8, ptr %.16674.i331.prol, i64 16 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.16275.i330.prol, i64 16 ; 3 uses
  %i.or = add i64 %.076.i329.prol, -16            ; 3 uses
  %prol.iter910.next = add i64 %prol.iter910, 1   ; 2 uses
  %prol.iter910.cmp.not = icmp eq i64 %prol.iter910.next, %xtraiter908
  br i1 %prol.iter910.cmp.not, label %.lr.ph.i328.prol.loopexit, label %.lr.ph.i328.prol, !llvm.loop !36

.lr.ph.i328.prol.loopexit:                        ; preds = %.lr.ph.i328.prol, %.lr.ph.i328.preheader
  %.076.i329.unr = phi i64 [ %i.oj, %.lr.ph.i328.preheader ], [ %i.or, %.lr.ph.i328.prol ]
  %.16275.i330.unr = phi ptr [ %.06189.i306, %.lr.ph.i328.preheader ], [ %i.oq, %.lr.ph.i328.prol ]
  %.16674.i331.unr = phi ptr [ %.06588.i307, %.lr.ph.i328.preheader ], [ %i.op, %.lr.ph.i328.prol ]
  %.lcssa880.unr = phi ptr [ poison, %.lr.ph.i328.preheader ], [ %i.op, %.lr.ph.i328.prol ]
  %.lcssa879.unr = phi ptr [ poison, %.lr.ph.i328.preheader ], [ %i.oq, %.lr.ph.i328.prol ]
  %.lcssa878.unr = phi i64 [ poison, %.lr.ph.i328.preheader ], [ %i.or, %.lr.ph.i328.prol ]
  %i.os = icmp ult i64 %i.om, 48
  br i1 %i.os, label %._crit_edge.i308, label %.lr.ph.i328

.lr.ph.i328:                                      ; preds = %.lr.ph.i328.prol.loopexit, %.lr.ph.i328
  %.076.i329 = phi i64 [ %i.pb, %.lr.ph.i328 ], [ %.076.i329.unr, %.lr.ph.i328.prol.loopexit ]
  %.16275.i330 = phi ptr [ %i.pa, %.lr.ph.i328 ], [ %.16275.i330.unr, %.lr.ph.i328.prol.loopexit ] ; 5 uses
  %.16674.i331 = phi ptr [ %i.oz, %.lr.ph.i328 ], [ %.16674.i331.unr, %.lr.ph.i328.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674.i331, ptr noundef nonnull align 1 dereferenceable(16) %.16275.i330, i64 16, i1 false)
  %i.ot = getelementptr inbounds nuw i8, ptr %.16674.i331, i64 16
  %i.ou = getelementptr inbounds nuw i8, ptr %.16275.i330, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ot, ptr noundef nonnull align 1 dereferenceable(16) %i.ou, i64 16, i1 false)
  %i.ov = getelementptr inbounds nuw i8, ptr %.16674.i331, i64 32
  %i.ow = getelementptr inbounds nuw i8, ptr %.16275.i330, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ov, ptr noundef nonnull align 1 dereferenceable(16) %i.ow, i64 16, i1 false)
  %i.ox = getelementptr inbounds nuw i8, ptr %.16674.i331, i64 48
  %i.oy = getelementptr inbounds nuw i8, ptr %.16275.i330, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ox, ptr noundef nonnull align 1 dereferenceable(16) %i.oy, i64 16, i1 false)
  %i.oz = getelementptr inbounds nuw i8, ptr %.16674.i331, i64 64 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.16275.i330, i64 64 ; 2 uses
  %i.pb = add i64 %.076.i329, -64                 ; 3 uses
  %i.pc = icmp ugt i64 %i.pb, 15
  br i1 %i.pc, label %.lr.ph.i328, label %._crit_edge.i308, !llvm.loop !26

._crit_edge.i308:                                 ; preds = %.lr.ph.i328.prol.loopexit, %.lr.ph.i328, %.lr.ph92.i304
  %.166.lcssa.i309 = phi ptr [ %.06588.i307, %.lr.ph92.i304 ], [ %.lcssa880.unr, %.lr.ph.i328.prol.loopexit ], [ %i.oz, %.lr.ph.i328 ] ; 3 uses
  %.162.lcssa.i310 = phi ptr [ %.06189.i306, %.lr.ph92.i304 ], [ %.lcssa879.unr, %.lr.ph.i328.prol.loopexit ], [ %i.pa, %.lr.ph.i328 ] ; 3 uses
  %.0.lcssa.i311 = phi i64 [ %i.oj, %.lr.ph92.i304 ], [ %.lcssa878.unr, %.lr.ph.i328.prol.loopexit ], [ %i.pb, %.lr.ph.i328 ] ; 3 uses
  %i.pd = icmp samesign ugt i64 %.0.lcssa.i311, 7
  br i1 %i.pd, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge.i308
  %i.pe = load i64, ptr %.162.lcssa.i310, align 1
  store i64 %i.pe, ptr %.166.lcssa.i309, align 1
  %i.pf = getelementptr inbounds nuw i8, ptr %.166.lcssa.i309, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %.162.lcssa.i310, i64 8
  %i.ph = add nsw i64 %.0.lcssa.i311, -8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge.i308
  %.267.i312 = phi ptr [ %i.pf, %bb.am ], [ %.166.lcssa.i309, %._crit_edge.i308 ] ; 3 uses
  %.263.i313 = phi ptr [ %i.pg, %bb.am ], [ %.162.lcssa.i310, %._crit_edge.i308 ] ; 3 uses
  %.1.i314 = phi i64 [ %i.ph, %bb.am ], [ %.0.lcssa.i311, %._crit_edge.i308 ] ; 3 uses
  %i.pi = icmp samesign ugt i64 %.1.i314, 3
  br i1 %i.pi, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.pj = load i32, ptr %.263.i313, align 1
  store i32 %i.pj, ptr %.267.i312, align 1
  %i.pk = getelementptr inbounds nuw i8, ptr %.267.i312, i64 4
  %i.pl = getelementptr inbounds nuw i8, ptr %.263.i313, i64 4
  %i.pm = add nsw i64 %.1.i314, -4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.368.i315 = phi ptr [ %i.pk, %bb.ao ], [ %.267.i312, %bb.an ] ; 7 uses
  %.364.i316 = phi ptr [ %i.pl, %bb.ao ], [ %.263.i313, %bb.an ] ; 7 uses
  %.2.i317 = phi i64 [ %i.pm, %bb.ao ], [ %.1.i314, %bb.an ] ; 11 uses
  %.not7279.i318 = icmp eq i64 %.2.i317, 0
  br i1 %.not7279.i318, label %.loopexit.i324, label %iter.check783

iter.check783:                                    ; preds = %bb.ap
  %.364.i316765 = ptrtoaddr ptr %.364.i316 to i64
  %.368.i315764 = ptrtoaddr ptr %.368.i315 to i64
  %min.iters.check767 = icmp ult i64 %.2.i317, 8
  %i.pn = sub i64 %.364.i316765, %.368.i315764
  %diff.check766 = icmp ugt i64 %i.pn, -128
  %or.cond841 = select i1 %min.iters.check767, i1 true, i1 %diff.check766
  br i1 %or.cond841, label %.lr.ph84.i319.preheader, label %vector.main.loop.iter.check768

vector.main.loop.iter.check768:                   ; preds = %iter.check783
  %min.iters.check769 = icmp ult i64 %.2.i317, 128
  br i1 %min.iters.check769, label %vec.epilog.ph787, label %vector.ph770

vector.ph770:                                     ; preds = %vector.main.loop.iter.check768
  %i.po = and i64 %.2.i317, 120
  %n.vec771 = and i64 %.2.i317, -128              ; 5 uses
  %i.pp = and i64 %.2.i317, 127
  %i.pq = getelementptr i8, ptr %.364.i316, i64 %n.vec771 ; 2 uses
  %i.pr = getelementptr i8, ptr %.368.i315, i64 %n.vec771 ; 2 uses
  br label %vector.body772

vector.body772:                                   ; preds = %vector.ph770, %vector.body772
  %index773 = phi i64 [ 0, %vector.ph770 ], [ %index.next780, %vector.body772 ] ; 3 uses
  %next.gep774 = getelementptr i8, ptr %.364.i316, i64 %index773 ; 4 uses
  %next.gep775 = getelementptr i8, ptr %.368.i315, i64 %index773 ; 4 uses
  %i.ps = getelementptr i8, ptr %next.gep774, i64 32
  %i.pt = getelementptr i8, ptr %next.gep774, i64 64
  %i.pu = getelementptr i8, ptr %next.gep774, i64 96
  %wide.load776 = load <32 x i8>, ptr %next.gep774, align 1, !tbaa !13
  %wide.load777 = load <32 x i8>, ptr %i.ps, align 1, !tbaa !13
  %wide.load778 = load <32 x i8>, ptr %i.pt, align 1, !tbaa !13
  %wide.load779 = load <32 x i8>, ptr %i.pu, align 1, !tbaa !13
  %i.pv = getelementptr i8, ptr %next.gep775, i64 32
  %i.pw = getelementptr i8, ptr %next.gep775, i64 64
  %i.px = getelementptr i8, ptr %next.gep775, i64 96
  store <32 x i8> %wide.load776, ptr %next.gep775, align 1, !tbaa !13
  store <32 x i8> %wide.load777, ptr %i.pv, align 1, !tbaa !13
  store <32 x i8> %wide.load778, ptr %i.pw, align 1, !tbaa !13
  store <32 x i8> %wide.load779, ptr %i.px, align 1, !tbaa !13
  %index.next780 = add nuw i64 %index773, 128     ; 2 uses
  %i.py = icmp eq i64 %index.next780, %n.vec771
  br i1 %i.py, label %middle.block781, label %vector.body772, !llvm.loop !37

middle.block781:                                  ; preds = %vector.body772
  %cmp.n782 = icmp eq i64 %.2.i317, %n.vec771
  br i1 %cmp.n782, label %.loopexit.i324, label %vec.epilog.iter.check784

vec.epilog.iter.check784:                         ; preds = %middle.block781
  %min.epilog.iters.check786 = icmp eq i64 %i.po, 0
  br i1 %min.epilog.iters.check786, label %.lr.ph84.i319.preheader, label %vec.epilog.ph787, !prof !20

vec.epilog.ph787:                                 ; preds = %vector.main.loop.iter.check768, %vec.epilog.iter.check784
  %vec.epilog.resume.val788 = phi i64 [ %n.vec771, %vec.epilog.iter.check784 ], [ 0, %vector.main.loop.iter.check768 ]
  %n.vec789 = and i64 %.2.i317, -8                ; 4 uses
  %i.pz = and i64 %.2.i317, 7
  %i.qa = getelementptr i8, ptr %.364.i316, i64 %n.vec789 ; 2 uses
  %i.qb = getelementptr i8, ptr %.368.i315, i64 %n.vec789 ; 2 uses
  br label %vec.epilog.vector.body790

vec.epilog.vector.body790:                        ; preds = %vec.epilog.vector.body790, %vec.epilog.ph787
  %index791 = phi i64 [ %vec.epilog.resume.val788, %vec.epilog.ph787 ], [ %index.next795, %vec.epilog.vector.body790 ] ; 3 uses
  %next.gep792 = getelementptr i8, ptr %.364.i316, i64 %index791
  %next.gep793 = getelementptr i8, ptr %.368.i315, i64 %index791
  %wide.load794 = load <8 x i8>, ptr %next.gep792, align 1, !tbaa !13
  store <8 x i8> %wide.load794, ptr %next.gep793, align 1, !tbaa !13
  %index.next795 = add nuw i64 %index791, 8       ; 2 uses
  %i.qc = icmp eq i64 %index.next795, %n.vec789
  br i1 %i.qc, label %vec.epilog.middle.block796, label %vec.epilog.vector.body790, !llvm.loop !38

vec.epilog.middle.block796:                       ; preds = %vec.epilog.vector.body790
  %cmp.n797 = icmp eq i64 %.2.i317, %n.vec789
  br i1 %cmp.n797, label %.loopexit.i324, label %.lr.ph84.i319.preheader

.lr.ph84.i319.preheader:                          ; preds = %iter.check783, %vec.epilog.iter.check784, %vec.epilog.middle.block796
  %.382.i320.ph = phi i64 [ %.2.i317, %iter.check783 ], [ %i.pp, %vec.epilog.iter.check784 ], [ %i.pz, %vec.epilog.middle.block796 ] ; 4 uses
  %.481.i321.ph = phi ptr [ %.364.i316, %iter.check783 ], [ %i.pq, %vec.epilog.iter.check784 ], [ %i.qa, %vec.epilog.middle.block796 ] ; 2 uses
  %.46980.i322.ph = phi ptr [ %.368.i315, %iter.check783 ], [ %i.pr, %vec.epilog.iter.check784 ], [ %i.qb, %vec.epilog.middle.block796 ] ; 2 uses
  %i.qd = add i64 %.382.i320.ph, -1
  %xtraiter911 = and i64 %.382.i320.ph, 7         ; 2 uses
  %lcmp.mod912.not = icmp eq i64 %xtraiter911, 0
  br i1 %lcmp.mod912.not, label %.lr.ph84.i319.prol.loopexit, label %.lr.ph84.i319.prol

.lr.ph84.i319.prol:                               ; preds = %.lr.ph84.i319.preheader, %.lr.ph84.i319.prol
  %.382.i320.prol = phi i64 [ %i.qe, %.lr.ph84.i319.prol ], [ %.382.i320.ph, %.lr.ph84.i319.preheader ]
  %.481.i321.prol = phi ptr [ %i.qf, %.lr.ph84.i319.prol ], [ %.481.i321.ph, %.lr.ph84.i319.preheader ] ; 2 uses
  %.46980.i322.prol = phi ptr [ %i.qh, %.lr.ph84.i319.prol ], [ %.46980.i322.ph, %.lr.ph84.i319.preheader ] ; 2 uses
  %prol.iter913 = phi i64 [ %prol.iter913.next, %.lr.ph84.i319.prol ], [ 0, %.lr.ph84.i319.preheader ]
  %i.qe = add i64 %.382.i320.prol, -1             ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.481.i321.prol, i64 1 ; 3 uses
  %i.qg = load i8, ptr %.481.i321.prol, align 1, !tbaa !13
  %i.qh = getelementptr inbounds nuw i8, ptr %.46980.i322.prol, i64 1 ; 3 uses
  store i8 %i.qg, ptr %.46980.i322.prol, align 1, !tbaa !13
  %prol.iter913.next = add i64 %prol.iter913, 1   ; 2 uses
  %prol.iter913.cmp.not = icmp eq i64 %prol.iter913.next, %xtraiter911
  br i1 %prol.iter913.cmp.not, label %.lr.ph84.i319.prol.loopexit, label %.lr.ph84.i319.prol, !llvm.loop !39

.lr.ph84.i319.prol.loopexit:                      ; preds = %.lr.ph84.i319.prol, %.lr.ph84.i319.preheader
  %.lcssa882.unr = phi ptr [ poison, %.lr.ph84.i319.preheader ], [ %i.qf, %.lr.ph84.i319.prol ]
  %.lcssa881.unr = phi ptr [ poison, %.lr.ph84.i319.preheader ], [ %i.qh, %.lr.ph84.i319.prol ]
  %.382.i320.unr = phi i64 [ %.382.i320.ph, %.lr.ph84.i319.preheader ], [ %i.qe, %.lr.ph84.i319.prol ]
  %.481.i321.unr = phi ptr [ %.481.i321.ph, %.lr.ph84.i319.preheader ], [ %i.qf, %.lr.ph84.i319.prol ]
  %.46980.i322.unr = phi ptr [ %.46980.i322.ph, %.lr.ph84.i319.preheader ], [ %i.qh, %.lr.ph84.i319.prol ]
  %i.qi = icmp ult i64 %i.qd, 7
  br i1 %i.qi, label %.loopexit.i324, label %.lr.ph84.i319

.lr.ph84.i319:                                    ; preds = %.lr.ph84.i319.prol.loopexit, %.lr.ph84.i319
  %.382.i320 = phi i64 [ %i.re, %.lr.ph84.i319 ], [ %.382.i320.unr, %.lr.ph84.i319.prol.loopexit ]
  %.481.i321 = phi ptr [ %i.rf, %.lr.ph84.i319 ], [ %.481.i321.unr, %.lr.ph84.i319.prol.loopexit ] ; 9 uses
  %.46980.i322 = phi ptr [ %i.rh, %.lr.ph84.i319 ], [ %.46980.i322.unr, %.lr.ph84.i319.prol.loopexit ] ; 9 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.481.i321, i64 1
  %i.qk = load i8, ptr %.481.i321, align 1, !tbaa !13
  %i.ql = getelementptr inbounds nuw i8, ptr %.46980.i322, i64 1
  store i8 %i.qk, ptr %.46980.i322, align 1, !tbaa !13
  %i.qm = getelementptr inbounds nuw i8, ptr %.481.i321, i64 2
  %i.qn = load i8, ptr %i.qj, align 1, !tbaa !13
  %i.qo = getelementptr inbounds nuw i8, ptr %.46980.i322, i64 2
  store i8 %i.qn, ptr %i.ql, align 1, !tbaa !13
  %i.qp = getelementptr inbounds nuw i8, ptr %.481.i321, i64 3
  %i.qq = load i8, ptr %i.qm, align 1, !tbaa !13
  %i.qr = getelementptr inbounds nuw i8, ptr %.46980.i322, i64 3
  store i8 %i.qq, ptr %i.qo, align 1, !tbaa !13
  %i.qs = getelementptr inbounds nuw i8, ptr %.481.i321, i64 4
  %i.qt = load i8, ptr %i.qp, align 1, !tbaa !13
  %i.qu = getelementptr inbounds nuw i8, ptr %.46980.i322, i64 4
  store i8 %i.qt, ptr %i.qr, align 1, !tbaa !13
  %i.qv = getelementptr inbounds nuw i8, ptr %.481.i321, i64 5
  %i.qw = load i8, ptr %i.qs, align 1, !tbaa !13
  %i.qx = getelementptr inbounds nuw i8, ptr %.46980.i322, i64 5
  store i8 %i.qw, ptr %i.qu, align 1, !tbaa !13
  %i.qy = getelementptr inbounds nuw i8, ptr %.481.i321, i64 6
  %i.qz = load i8, ptr %i.qv, align 1, !tbaa !13
  %i.ra = getelementptr inbounds nuw i8, ptr %.46980.i322, i64 6
  store i8 %i.qz, ptr %i.qx, align 1, !tbaa !13
  %i.rb = getelementptr inbounds nuw i8, ptr %.481.i321, i64 7
  %i.rc = load i8, ptr %i.qy, align 1, !tbaa !13
  %i.rd = getelementptr inbounds nuw i8, ptr %.46980.i322, i64 7
  store i8 %i.rc, ptr %i.ra, align 1, !tbaa !13
  %i.re = add i64 %.382.i320, -8                  ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.481.i321, i64 8 ; 2 uses
  %i.rg = load i8, ptr %i.rb, align 1, !tbaa !13
  %i.rh = getelementptr inbounds nuw i8, ptr %.46980.i322, i64 8 ; 2 uses
  store i8 %i.rg, ptr %i.rd, align 1, !tbaa !13
  %.not72.i323.7 = icmp eq i64 %i.re, 0
  br i1 %.not72.i323.7, label %.loopexit.i324, label %.lr.ph84.i319, !llvm.loop !40

bb.aq:                                            ; preds = %bb.ah
  %i.ri = tail call fastcc ptr @CHUNKCOPY_SAFE(ptr noundef %.2224, ptr noundef %.0, i64 noundef %i.nt, ptr noundef %i.v)
  br label %chunkcopy_safe.exit300

bb.ar:                                            ; preds = %._crit_edge464
  br i1 %i.ay, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %bb.ar
  %i.rj = sub nsw i64 0, %i.fe                    ; 2 uses
  %i.rk = getelementptr inbounds i8, ptr %.1223582, i64 %i.rj ; 2 uses
  %i.rl = sub i64 %i.bc, %i.fj
  %i.rm = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.dx, i64 %i.rl) ; 6 uses
  %i.rn = icmp eq i64 %i.fe, 0                    ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.1223582, i64 %i.rm ; 2 uses
  %i.rp = icmp sgt i64 %i.rm, %i.rj
  %i.rq = select i1 %i.rn, i1 %i.rp, i1 false
  %i.rr = icmp samesign ugt i64 %i.rm, %i.fe
  %or.cond.i333 = select i1 %i.rq, i1 true, i1 %i.rr
  br i1 %or.cond.i333, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1223582, ptr align 1 %i.rk, i64 %i.rm, i1 false)
  br label %chunkcopy_safe.exit300

bb.au:                                            ; preds = %bb.as
  br i1 %i.rn, label %chunkcopy_safe.exit300, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not87.i335 = icmp eq i64 %i.rm, 0
  br i1 %.not87.i335, label %chunkcopy_safe.exit300, label %.lr.ph92.i336

.loopexit.i356:                                   ; preds = %.lr.ph84.i351.prol.loopexit, %.lr.ph84.i351, %middle.block819, %vec.epilog.middle.block834, %bb.az
  %.469.lcssa.i357 = phi ptr [ %.368.i347, %bb.az ], [ %i.tk, %vec.epilog.middle.block834 ], [ %i.ta, %middle.block819 ], [ %.lcssa876.unr, %.lr.ph84.i351.prol.loopexit ], [ %i.uq, %.lr.ph84.i351 ] ; 2 uses
  %.4.lcssa.i358 = phi ptr [ %.364.i348, %bb.az ], [ %i.tj, %vec.epilog.middle.block834 ], [ %i.sz, %middle.block819 ], [ %.lcssa877.unr, %.lr.ph84.i351.prol.loopexit ], [ %i.uo, %.lr.ph84.i351 ]
  %.not.i359 = icmp eq i64 %i.rt, 0
  br i1 %.not.i359, label %chunkcopy_safe.exit300, label %.lr.ph92.i336, !llvm.loop !24

.lr.ph92.i336:                                    ; preds = %bb.av, %.loopexit.i356
  %.06090.i337 = phi i64 [ %i.rt, %.loopexit.i356 ], [ %i.rm, %bb.av ] ; 2 uses
  %.06189.i338 = phi ptr [ %.4.lcssa.i358, %.loopexit.i356 ], [ %i.rk, %bb.av ] ; 3 uses
  %.06588.i339 = phi ptr [ %.469.lcssa.i357, %.loopexit.i356 ], [ %.1223582, %bb.av ] ; 3 uses
  %i.rs = tail call i64 @llvm.umin.i64(i64 %i.fe, i64 %.06090.i337) ; 6 uses
  %i.rt = sub nuw nsw i64 %.06090.i337, %i.rs     ; 2 uses
  %i.ru = icmp samesign ugt i64 %i.rs, 15
  br i1 %i.ru, label %.lr.ph.i360.preheader, label %._crit_edge.i340

.lr.ph.i360.preheader:                            ; preds = %.lr.ph92.i336
  %i.rv = add nsw i64 %i.rs, -16                  ; 2 uses
  %i.rw = lshr i64 %i.rv, 4
  %i.rx = add nuw nsw i64 %i.rw, 1
  %xtraiter = and i64 %i.rx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i360.prol.loopexit, label %.lr.ph.i360.prol

.lr.ph.i360.prol:                                 ; preds = %.lr.ph.i360.preheader, %.lr.ph.i360.prol
  %.076.i361.prol = phi i64 [ %i.sa, %.lr.ph.i360.prol ], [ %i.rs, %.lr.ph.i360.preheader ]
  %.16275.i362.prol = phi ptr [ %i.rz, %.lr.ph.i360.prol ], [ %.06189.i338, %.lr.ph.i360.preheader ] ; 2 uses
  %.16674.i363.prol = phi ptr [ %i.ry, %.lr.ph.i360.prol ], [ %.06588.i339, %.lr.ph.i360.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i360.prol ], [ 0, %.lr.ph.i360.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674.i363.prol, ptr noundef nonnull align 1 dereferenceable(16) %.16275.i362.prol, i64 16, i1 false)
  %i.ry = getelementptr inbounds nuw i8, ptr %.16674.i363.prol, i64 16 ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.16275.i362.prol, i64 16 ; 3 uses
  %i.sa = add i64 %.076.i361.prol, -16            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i360.prol.loopexit, label %.lr.ph.i360.prol, !llvm.loop !41

.lr.ph.i360.prol.loopexit:                        ; preds = %.lr.ph.i360.prol, %.lr.ph.i360.preheader
  %.076.i361.unr = phi i64 [ %i.rs, %.lr.ph.i360.preheader ], [ %i.sa, %.lr.ph.i360.prol ]
  %.16275.i362.unr = phi ptr [ %.06189.i338, %.lr.ph.i360.preheader ], [ %i.rz, %.lr.ph.i360.prol ]
  %.16674.i363.unr = phi ptr [ %.06588.i339, %.lr.ph.i360.preheader ], [ %i.ry, %.lr.ph.i360.prol ]
  %.lcssa875.unr = phi ptr [ poison, %.lr.ph.i360.preheader ], [ %i.ry, %.lr.ph.i360.prol ]
  %.lcssa874.unr = phi ptr [ poison, %.lr.ph.i360.preheader ], [ %i.rz, %.lr.ph.i360.prol ]
  %.lcssa873.unr = phi i64 [ poison, %.lr.ph.i360.preheader ], [ %i.sa, %.lr.ph.i360.prol ]
  %i.sb = icmp ult i64 %i.rv, 48
  br i1 %i.sb, label %._crit_edge.i340, label %.lr.ph.i360

.lr.ph.i360:                                      ; preds = %.lr.ph.i360.prol.loopexit, %.lr.ph.i360
  %.076.i361 = phi i64 [ %i.sk, %.lr.ph.i360 ], [ %.076.i361.unr, %.lr.ph.i360.prol.loopexit ]
  %.16275.i362 = phi ptr [ %i.sj, %.lr.ph.i360 ], [ %.16275.i362.unr, %.lr.ph.i360.prol.loopexit ] ; 5 uses
  %.16674.i363 = phi ptr [ %i.si, %.lr.ph.i360 ], [ %.16674.i363.unr, %.lr.ph.i360.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674.i363, ptr noundef nonnull align 1 dereferenceable(16) %.16275.i362, i64 16, i1 false)
  %i.sc = getelementptr inbounds nuw i8, ptr %.16674.i363, i64 16
  %i.sd = getelementptr inbounds nuw i8, ptr %.16275.i362, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.sc, ptr noundef nonnull align 1 dereferenceable(16) %i.sd, i64 16, i1 false)
  %i.se = getelementptr inbounds nuw i8, ptr %.16674.i363, i64 32
  %i.sf = getelementptr inbounds nuw i8, ptr %.16275.i362, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.se, ptr noundef nonnull align 1 dereferenceable(16) %i.sf, i64 16, i1 false)
  %i.sg = getelementptr inbounds nuw i8, ptr %.16674.i363, i64 48
  %i.sh = getelementptr inbounds nuw i8, ptr %.16275.i362, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.sg, ptr noundef nonnull align 1 dereferenceable(16) %i.sh, i64 16, i1 false)
  %i.si = getelementptr inbounds nuw i8, ptr %.16674.i363, i64 64 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.16275.i362, i64 64 ; 2 uses
  %i.sk = add i64 %.076.i361, -64                 ; 3 uses
  %i.sl = icmp ugt i64 %i.sk, 15
  br i1 %i.sl, label %.lr.ph.i360, label %._crit_edge.i340, !llvm.loop !26

._crit_edge.i340:                                 ; preds = %.lr.ph.i360.prol.loopexit, %.lr.ph.i360, %.lr.ph92.i336
  %.166.lcssa.i341 = phi ptr [ %.06588.i339, %.lr.ph92.i336 ], [ %.lcssa875.unr, %.lr.ph.i360.prol.loopexit ], [ %i.si, %.lr.ph.i360 ] ; 3 uses
  %.162.lcssa.i342 = phi ptr [ %.06189.i338, %.lr.ph92.i336 ], [ %.lcssa874.unr, %.lr.ph.i360.prol.loopexit ], [ %i.sj, %.lr.ph.i360 ] ; 3 uses
  %.0.lcssa.i343 = phi i64 [ %i.rs, %.lr.ph92.i336 ], [ %.lcssa873.unr, %.lr.ph.i360.prol.loopexit ], [ %i.sk, %.lr.ph.i360 ] ; 3 uses
  %i.sm = icmp samesign ugt i64 %.0.lcssa.i343, 7
  br i1 %i.sm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i340
  %i.sn = load i64, ptr %.162.lcssa.i342, align 1
  store i64 %i.sn, ptr %.166.lcssa.i341, align 1
  %i.so = getelementptr inbounds nuw i8, ptr %.166.lcssa.i341, i64 8
  %i.sp = getelementptr inbounds nuw i8, ptr %.162.lcssa.i342, i64 8
  %i.sq = add nsw i64 %.0.lcssa.i343, -8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge.i340
  %.267.i344 = phi ptr [ %i.so, %bb.aw ], [ %.166.lcssa.i341, %._crit_edge.i340 ] ; 3 uses
  %.263.i345 = phi ptr [ %i.sp, %bb.aw ], [ %.162.lcssa.i342, %._crit_edge.i340 ] ; 3 uses
  %.1.i346 = phi i64 [ %i.sq, %bb.aw ], [ %.0.lcssa.i343, %._crit_edge.i340 ] ; 3 uses
  %i.sr = icmp samesign ugt i64 %.1.i346, 3
  br i1 %i.sr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ss = load i32, ptr %.263.i345, align 1
  store i32 %i.ss, ptr %.267.i344, align 1
  %i.st = getelementptr inbounds nuw i8, ptr %.267.i344, i64 4
  %i.su = getelementptr inbounds nuw i8, ptr %.263.i345, i64 4
  %i.sv = add nsw i64 %.1.i346, -4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.368.i347 = phi ptr [ %i.st, %bb.ay ], [ %.267.i344, %bb.ax ] ; 7 uses
  %.364.i348 = phi ptr [ %i.su, %bb.ay ], [ %.263.i345, %bb.ax ] ; 7 uses
  %.2.i349 = phi i64 [ %i.sv, %bb.ay ], [ %.1.i346, %bb.ax ] ; 11 uses
  %.not7279.i350 = icmp eq i64 %.2.i349, 0
  br i1 %.not7279.i350, label %.loopexit.i356, label %iter.check821

iter.check821:                                    ; preds = %bb.az
  %.364.i348803 = ptrtoaddr ptr %.364.i348 to i64
  %.368.i347802 = ptrtoaddr ptr %.368.i347 to i64
  %min.iters.check805 = icmp ult i64 %.2.i349, 8
  %i.sw = sub i64 %.364.i348803, %.368.i347802
  %diff.check804 = icmp ugt i64 %i.sw, -128
  %or.cond842 = select i1 %min.iters.check805, i1 true, i1 %diff.check804
  br i1 %or.cond842, label %.lr.ph84.i351.preheader, label %vector.main.loop.iter.check806

vector.main.loop.iter.check806:                   ; preds = %iter.check821
  %min.iters.check807 = icmp ult i64 %.2.i349, 128
  br i1 %min.iters.check807, label %vec.epilog.ph825, label %vector.ph808

vector.ph808:                                     ; preds = %vector.main.loop.iter.check806
  %i.sx = and i64 %.2.i349, 120
  %n.vec809 = and i64 %.2.i349, -128              ; 5 uses
  %i.sy = and i64 %.2.i349, 127
  %i.sz = getelementptr i8, ptr %.364.i348, i64 %n.vec809 ; 2 uses
  %i.ta = getelementptr i8, ptr %.368.i347, i64 %n.vec809 ; 2 uses
  br label %vector.body810

vector.body810:                                   ; preds = %vector.ph808, %vector.body810
  %index811 = phi i64 [ 0, %vector.ph808 ], [ %index.next818, %vector.body810 ] ; 3 uses
  %next.gep812 = getelementptr i8, ptr %.364.i348, i64 %index811 ; 4 uses
  %next.gep813 = getelementptr i8, ptr %.368.i347, i64 %index811 ; 4 uses
  %i.tb = getelementptr i8, ptr %next.gep812, i64 32
  %i.tc = getelementptr i8, ptr %next.gep812, i64 64
  %i.td = getelementptr i8, ptr %next.gep812, i64 96
  %wide.load814 = load <32 x i8>, ptr %next.gep812, align 1, !tbaa !13
  %wide.load815 = load <32 x i8>, ptr %i.tb, align 1, !tbaa !13
  %wide.load816 = load <32 x i8>, ptr %i.tc, align 1, !tbaa !13
  %wide.load817 = load <32 x i8>, ptr %i.td, align 1, !tbaa !13
  %i.te = getelementptr i8, ptr %next.gep813, i64 32
  %i.tf = getelementptr i8, ptr %next.gep813, i64 64
  %i.tg = getelementptr i8, ptr %next.gep813, i64 96
  store <32 x i8> %wide.load814, ptr %next.gep813, align 1, !tbaa !13
  store <32 x i8> %wide.load815, ptr %i.te, align 1, !tbaa !13
  store <32 x i8> %wide.load816, ptr %i.tf, align 1, !tbaa !13
  store <32 x i8> %wide.load817, ptr %i.tg, align 1, !tbaa !13
  %index.next818 = add nuw i64 %index811, 128     ; 2 uses
  %i.th = icmp eq i64 %index.next818, %n.vec809
  br i1 %i.th, label %middle.block819, label %vector.body810, !llvm.loop !42

middle.block819:                                  ; preds = %vector.body810
  %cmp.n820 = icmp eq i64 %.2.i349, %n.vec809
  br i1 %cmp.n820, label %.loopexit.i356, label %vec.epilog.iter.check822

vec.epilog.iter.check822:                         ; preds = %middle.block819
  %min.epilog.iters.check824 = icmp eq i64 %i.sx, 0
  br i1 %min.epilog.iters.check824, label %.lr.ph84.i351.preheader, label %vec.epilog.ph825, !prof !20

vec.epilog.ph825:                                 ; preds = %vector.main.loop.iter.check806, %vec.epilog.iter.check822
  %vec.epilog.resume.val826 = phi i64 [ %n.vec809, %vec.epilog.iter.check822 ], [ 0, %vector.main.loop.iter.check806 ]
  %n.vec827 = and i64 %.2.i349, -8                ; 4 uses
  %i.ti = and i64 %.2.i349, 7
  %i.tj = getelementptr i8, ptr %.364.i348, i64 %n.vec827 ; 2 uses
  %i.tk = getelementptr i8, ptr %.368.i347, i64 %n.vec827 ; 2 uses
  br label %vec.epilog.vector.body828

vec.epilog.vector.body828:                        ; preds = %vec.epilog.vector.body828, %vec.epilog.ph825
  %index829 = phi i64 [ %vec.epilog.resume.val826, %vec.epilog.ph825 ], [ %index.next833, %vec.epilog.vector.body828 ] ; 3 uses
  %next.gep830 = getelementptr i8, ptr %.364.i348, i64 %index829
  %next.gep831 = getelementptr i8, ptr %.368.i347, i64 %index829
  %wide.load832 = load <8 x i8>, ptr %next.gep830, align 1, !tbaa !13
  store <8 x i8> %wide.load832, ptr %next.gep831, align 1, !tbaa !13
  %index.next833 = add nuw i64 %index829, 8       ; 2 uses
  %i.tl = icmp eq i64 %index.next833, %n.vec827
  br i1 %i.tl, label %vec.epilog.middle.block834, label %vec.epilog.vector.body828, !llvm.loop !43

vec.epilog.middle.block834:                       ; preds = %vec.epilog.vector.body828
  %cmp.n835 = icmp eq i64 %.2.i349, %n.vec827
  br i1 %cmp.n835, label %.loopexit.i356, label %.lr.ph84.i351.preheader

.lr.ph84.i351.preheader:                          ; preds = %iter.check821, %vec.epilog.iter.check822, %vec.epilog.middle.block834
  %.382.i352.ph = phi i64 [ %.2.i349, %iter.check821 ], [ %i.sy, %vec.epilog.iter.check822 ], [ %i.ti, %vec.epilog.middle.block834 ] ; 4 uses
  %.481.i353.ph = phi ptr [ %.364.i348, %iter.check821 ], [ %i.sz, %vec.epilog.iter.check822 ], [ %i.tj, %vec.epilog.middle.block834 ] ; 2 uses
  %.46980.i354.ph = phi ptr [ %.368.i347, %iter.check821 ], [ %i.ta, %vec.epilog.iter.check822 ], [ %i.tk, %vec.epilog.middle.block834 ] ; 2 uses
  %i.tm = add i64 %.382.i352.ph, -1
  %xtraiter905 = and i64 %.382.i352.ph, 7         ; 2 uses
  %lcmp.mod906.not = icmp eq i64 %xtraiter905, 0
  br i1 %lcmp.mod906.not, label %.lr.ph84.i351.prol.loopexit, label %.lr.ph84.i351.prol

.lr.ph84.i351.prol:                               ; preds = %.lr.ph84.i351.preheader, %.lr.ph84.i351.prol
  %.382.i352.prol = phi i64 [ %i.tn, %.lr.ph84.i351.prol ], [ %.382.i352.ph, %.lr.ph84.i351.preheader ]
  %.481.i353.prol = phi ptr [ %i.to, %.lr.ph84.i351.prol ], [ %.481.i353.ph, %.lr.ph84.i351.preheader ] ; 2 uses
  %.46980.i354.prol = phi ptr [ %i.tq, %.lr.ph84.i351.prol ], [ %.46980.i354.ph, %.lr.ph84.i351.preheader ] ; 2 uses
  %prol.iter907 = phi i64 [ %prol.iter907.next, %.lr.ph84.i351.prol ], [ 0, %.lr.ph84.i351.preheader ]
  %i.tn = add i64 %.382.i352.prol, -1             ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.481.i353.prol, i64 1 ; 3 uses
  %i.tp = load i8, ptr %.481.i353.prol, align 1, !tbaa !13
  %i.tq = getelementptr inbounds nuw i8, ptr %.46980.i354.prol, i64 1 ; 3 uses
  store i8 %i.tp, ptr %.46980.i354.prol, align 1, !tbaa !13
  %prol.iter907.next = add i64 %prol.iter907, 1   ; 2 uses
  %prol.iter907.cmp.not = icmp eq i64 %prol.iter907.next, %xtraiter905
  br i1 %prol.iter907.cmp.not, label %.lr.ph84.i351.prol.loopexit, label %.lr.ph84.i351.prol, !llvm.loop !44

.lr.ph84.i351.prol.loopexit:                      ; preds = %.lr.ph84.i351.prol, %.lr.ph84.i351.preheader
  %.lcssa877.unr = phi ptr [ poison, %.lr.ph84.i351.preheader ], [ %i.to, %.lr.ph84.i351.prol ]
  %.lcssa876.unr = phi ptr [ poison, %.lr.ph84.i351.preheader ], [ %i.tq, %.lr.ph84.i351.prol ]
  %.382.i352.unr = phi i64 [ %.382.i352.ph, %.lr.ph84.i351.preheader ], [ %i.tn, %.lr.ph84.i351.prol ]
  %.481.i353.unr = phi ptr [ %.481.i353.ph, %.lr.ph84.i351.preheader ], [ %i.to, %.lr.ph84.i351.prol ]
  %.46980.i354.unr = phi ptr [ %.46980.i354.ph, %.lr.ph84.i351.preheader ], [ %i.tq, %.lr.ph84.i351.prol ]
  %i.tr = icmp ult i64 %i.tm, 7
  br i1 %i.tr, label %.loopexit.i356, label %.lr.ph84.i351

.lr.ph84.i351:                                    ; preds = %.lr.ph84.i351.prol.loopexit, %.lr.ph84.i351
  %.382.i352 = phi i64 [ %i.un, %.lr.ph84.i351 ], [ %.382.i352.unr, %.lr.ph84.i351.prol.loopexit ]
  %.481.i353 = phi ptr [ %i.uo, %.lr.ph84.i351 ], [ %.481.i353.unr, %.lr.ph84.i351.prol.loopexit ] ; 9 uses
  %.46980.i354 = phi ptr [ %i.uq, %.lr.ph84.i351 ], [ %.46980.i354.unr, %.lr.ph84.i351.prol.loopexit ] ; 9 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.481.i353, i64 1
  %i.tt = load i8, ptr %.481.i353, align 1, !tbaa !13
  %i.tu = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 1
  store i8 %i.tt, ptr %.46980.i354, align 1, !tbaa !13
  %i.tv = getelementptr inbounds nuw i8, ptr %.481.i353, i64 2
  %i.tw = load i8, ptr %i.ts, align 1, !tbaa !13
  %i.tx = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 2
  store i8 %i.tw, ptr %i.tu, align 1, !tbaa !13
  %i.ty = getelementptr inbounds nuw i8, ptr %.481.i353, i64 3
  %i.tz = load i8, ptr %i.tv, align 1, !tbaa !13
  %i.ua = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 3
  store i8 %i.tz, ptr %i.tx, align 1, !tbaa !13
  %i.ub = getelementptr inbounds nuw i8, ptr %.481.i353, i64 4
  %i.uc = load i8, ptr %i.ty, align 1, !tbaa !13
  %i.ud = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 4
  store i8 %i.uc, ptr %i.ua, align 1, !tbaa !13
  %i.ue = getelementptr inbounds nuw i8, ptr %.481.i353, i64 5
  %i.uf = load i8, ptr %i.ub, align 1, !tbaa !13
  %i.ug = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 5
  store i8 %i.uf, ptr %i.ud, align 1, !tbaa !13
  %i.uh = getelementptr inbounds nuw i8, ptr %.481.i353, i64 6
  %i.ui = load i8, ptr %i.ue, align 1, !tbaa !13
  %i.uj = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 6
  store i8 %i.ui, ptr %i.ug, align 1, !tbaa !13
  %i.uk = getelementptr inbounds nuw i8, ptr %.481.i353, i64 7
  %i.ul = load i8, ptr %i.uh, align 1, !tbaa !13
  %i.um = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 7
  store i8 %i.ul, ptr %i.uj, align 1, !tbaa !13
  %i.un = add i64 %.382.i352, -8                  ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.481.i353, i64 8 ; 2 uses
  %i.up = load i8, ptr %i.uk, align 1, !tbaa !13
  %i.uq = getelementptr inbounds nuw i8, ptr %.46980.i354, i64 8 ; 2 uses
  store i8 %i.up, ptr %i.um, align 1, !tbaa !13
  %.not72.i355.7 = icmp eq i64 %i.un, 0
  br i1 %.not72.i355.7, label %.loopexit.i356, label %.lr.ph84.i351, !llvm.loop !45

bb.ba:                                            ; preds = %bb.ar
  %.not261 = icmp samesign ule i64 %i.dx, %i.fe
  %i.ur = icmp samesign ugt i64 %i.fe, 31
  %or.cond395 = select i1 %.not261, i1 true, i1 %i.ur
  %i.us = sub nsw i64 0, %i.fe
  %i.ut = getelementptr inbounds i8, ptr %.1223582, i64 %i.us ; 11 uses
  br i1 %or.cond395, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.uu = add nuw nsw i32 %i.dy, 31
  %i.uv = and i32 %i.uu, 31
  %narrow.i = add nuw nsw i32 %i.uv, 1            ; 2 uses
  %.val.i365 = load <4 x i64>, ptr %i.ut, align 1, !tbaa !13
  store <4 x i64> %.val.i365, ptr %.1223582, align 1, !tbaa !13
  %i.uw = zext nneg i32 %narrow.i to i64          ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.1223582, i64 %i.uw ; 2 uses
  %i.uy = sub nsw i32 %i.dy, %narrow.i            ; 2 uses
  %.not20.i = icmp eq i32 %i.uy, 0
  br i1 %.not20.i, label %chunkcopy_safe.exit300, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bb
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ut, i64 %i.uw
  br label %.lr.ph.i366

.lr.ph.i366:                                      ; preds = %.lr.ph.i366, %.lr.ph.preheader.i
  %.023.i = phi i32 [ %i.vc, %.lr.ph.i366 ], [ %i.uy, %.lr.ph.preheader.i ]
  %.01522.i = phi ptr [ %i.vb, %.lr.ph.i366 ], [ %i.uz, %.lr.ph.preheader.i ] ; 2 uses
  %.01621.i = phi ptr [ %i.va, %.lr.ph.i366 ], [ %i.ux, %.lr.ph.preheader.i ] ; 2 uses
  %.015.val.i = load <4 x i64>, ptr %.01522.i, align 1, !tbaa !13
  store <4 x i64> %.015.val.i, ptr %.01621.i, align 1, !tbaa !13
  %i.va = getelementptr inbounds nuw i8, ptr %.01621.i, i64 32 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.01522.i, i64 32
  %i.vc = add i32 %.023.i, -32                    ; 2 uses
  %.not.i367 = icmp eq i32 %i.vc, 0
  br i1 %.not.i367, label %chunkcopy_safe.exit300, label %.lr.ph.i366, !llvm.loop !0

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.vd = icmp eq i64 %i.fe, 1
  br i1 %i.vd, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ve = load i8, ptr %i.ut, align 1, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr align 1 %.1223582, i8 %i.ve, i64 %i.dx, i1 false)
  %i.vf = getelementptr inbounds nuw i8, ptr %.1223582, i64 %i.dx
  br label %chunkmemset_avx2.exit

bb.be:                                            ; preds = %bb.bc
  %i.vg = icmp samesign ult i64 %i.dx, 17
  %i.vh = trunc i64 %i.fe to i1
  %i.vi = icmp eq i64 %i.fe, 6
  %or.cond.i372 = or i1 %i.vi, %i.vh
  %or.cond470 = and i1 %i.vg, %or.cond.i372
  br i1 %or.cond470, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %.val7798.i = load <16 x i8>, ptr %i.ut, align 1, !tbaa !13
  %i.vj = add nuw nsw i64 %i.fe, 4294967293
  %i.vk = and i64 %i.vj, 4294967295
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr @perm_idx_lut, i64 %i.vk
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.vl, align 4, !tbaa !18
  %i.vm = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.vn = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.vm
  %i.vo = load <16 x i8>, ptr %i.vn, align 16, !tbaa !13
  %i.vp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.val7798.i, <16 x i8> %i.vo) ; 2 uses
  %i.vq = bitcast <16 x i8> %i.vp to <2 x i64>
  %i.vr = icmp eq i64 %i.dx, 16
  br i1 %i.vr, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store <16 x i8> %i.vp, ptr %.1223582, align 1, !tbaa !13
  %i.vs = getelementptr inbounds nuw i8, ptr %.1223582, i64 16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.067.i = phi ptr [ %i.vs, %bb.bg ], [ %.1223582, %bb.bf ]
  %.0.i = phi i32 [ 0, %bb.bg ], [ %i.dy, %bb.bf ]
  %i.vt = shufflevector <2 x i64> %i.vq, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.vt, ptr %i.a, align 32, !tbaa !13
  br label %.loopexit.i369

bb.bi:                                            ; preds = %bb.be
  %i.vu = tail call range(i64 0, 6) i64 @llvm.ctpop.i64(i64 %i.fe)
  %i.vv = icmp eq i64 %i.vu, 1
  br i1 %i.vv, label %.split.i, label %bb.bn

.split.i:                                         ; preds = %bb.bi
  %i.vw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fe, i1 true)
  switch i64 %i.vw, label %bb.bn [
    i64 1, label %bb.bj
    i64 2, label %bb.bk
    i64 3, label %bb.bl
    i64 4, label %bb.bm
  ]

bb.bj:                                            ; preds = %.split.i
  %.val79.i = load i16, ptr %i.ut, align 1, !tbaa !13
  %i.vx = insertelement <16 x i16> poison, i16 %.val79.i, i64 0
  %i.vy = shufflevector <16 x i16> %i.vx, <16 x i16> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.vz = bitcast <16 x i16> %i.vy to <4 x i64>
  store <16 x i16> %i.vy, ptr %i.a, align 32, !tbaa !13
  br label %bb.bq

bb.bk:                                            ; preds = %.split.i
  %.val80.i = load i32, ptr %i.ut, align 1, !tbaa !13
  %i.wa = insertelement <8 x i32> poison, i32 %.val80.i, i64 0
  %i.wb = shufflevector <8 x i32> %i.wa, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.wc = bitcast <8 x i32> %i.wb to <4 x i64>
  store <8 x i32> %i.wb, ptr %i.a, align 32, !tbaa !13
  br label %bb.bq

bb.bl:                                            ; preds = %.split.i
  %.val81.i = load i64, ptr %i.ut, align 1, !tbaa !13
  %i.wd = insertelement <4 x i64> poison, i64 %.val81.i, i64 0
  %i.we = shufflevector <4 x i64> %i.wd, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i64> %i.we, ptr %i.a, align 32, !tbaa !13
  br label %bb.bq

bb.bm:                                            ; preds = %.split.i
  %.val82.i = load <2 x i64>, ptr %i.ut, align 1, !tbaa !13
  %i.wf = shufflevector <2 x i64> %.val82.i, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  store <4 x i64> %i.wf, ptr %i.a, align 32, !tbaa !13
  br label %bb.bq

bb.bn:                                            ; preds = %.split.i, %bb.bi
  %i.wg = add nuw nsw i64 %i.fe, 4294967293
  %i.wh = and i64 %i.wg, 4294967295
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr @perm_idx_lut, i64 %i.wh ; 2 uses
  %.sroa.0.0.copyload.i94.i = load i16, ptr %i.wi, align 4, !tbaa !18 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.wi, i64 2
  %.sroa.5.0.copyload.i.i = load i16, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !tbaa !18
  %i.wj = zext i16 %.sroa.5.0.copyload.i.i to i32
  %i.wk = icmp samesign ult i64 %i.fe, 16
  br i1 %i.wk, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.wl = zext i16 %.sroa.0.0.copyload.i94.i to i64
  %i.wm = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.wl
  %i.wn = load <32 x i8>, ptr %i.wm, align 32, !tbaa !13
  %i.wo = load <16 x i8>, ptr %i.ut, align 1, !tbaa !13
  %i.wp = add <32 x i8> %i.wn, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %i.wq = shufflevector <16 x i8> %i.wo, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wr = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.wq, <32 x i8> %i.wp)
  %i.ws = bitcast <32 x i8> %i.wr to <4 x i64>
  br label %GET_CHUNK_MAG.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.wt = load <2 x i64>, ptr %i.ut, align 1, !tbaa !13 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.wv = load <16 x i8>, ptr %i.wu, align 1, !tbaa !13
  %i.ww = zext i16 %.sroa.0.0.copyload.i94.i to i64
  %i.wx = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.ww
  %i.wy = load <16 x i8>, ptr %i.wx, align 16, !tbaa !13 ; 2 uses
  %i.wz = icmp slt <16 x i8> %i.wy, splat (i8 16)
  %i.xa = bitcast <2 x i64> %i.wt to <16 x i8>
  %i.xb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.xa, <16 x i8> %i.wy)
  %i.xc = select <16 x i1> %i.wz, <16 x i8> %i.xb, <16 x i8> %i.wv
  %i.xd = bitcast <16 x i8> %i.xc to <2 x i64>
  %i.xe = shufflevector <2 x i64> %i.wt, <2 x i64> %i.xd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %GET_CHUNK_MAG.exit.i

GET_CHUNK_MAG.exit.i:                             ; preds = %bb.bp, %bb.bo
  %.0.i.i = phi <4 x i64> [ %i.ws, %bb.bo ], [ %i.xe, %bb.bp ] ; 2 uses
  store <4 x i64> %.0.i.i, ptr %i.a, align 32, !tbaa !13
  %i.xf = sub nsw i32 32, %i.wj
  br label %bb.bq

bb.bq:                                            ; preds = %GET_CHUNK_MAG.exit.i, %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.0..0..val.i = phi <4 x i64> [ %.0.i.i, %GET_CHUNK_MAG.exit.i ], [ %i.vz, %bb.bj ], [ %i.wc, %bb.bk ], [ %i.we, %bb.bl ], [ %i.wf, %bb.bm ] ; 3 uses
  %.097.i = phi i32 [ %i.xf, %GET_CHUNK_MAG.exit.i ], [ 32, %bb.bj ], [ 32, %bb.bk ], [ 32, %bb.bl ], [ 32, %bb.bm ] ; 4 uses
  %i.xg = icmp samesign ugt i64 %i.dx, 63
  br i1 %i.xg, label %.lr.ph.i371, label %.preheader.i

.lr.ph.i371:                                      ; preds = %bb.bq
  %i.xh = zext i32 %.097.i to i64
  %i.xi = shl nsw i32 %.097.i, 1                  ; 2 uses
  %i.xj = zext i32 %i.xi to i64
  br label %bb.br

.preheader.i:                                     ; preds = %bb.br, %bb.bq
  %.168.lcssa.i = phi ptr [ %.1223582, %bb.bq ], [ %i.xn, %bb.br ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %i.dy, %bb.bq ], [ %i.xo, %bb.br ] ; 3 uses
  %i.xk = icmp samesign ugt i32 %.1.lcssa.i, 31
  br i1 %i.xk, label %.lr.ph106.i, label %.loopexit.i369

.lr.ph106.i:                                      ; preds = %.preheader.i
  %i.xl = zext i32 %.097.i to i64
  br label %bb.bs

bb.br:                                            ; preds = %bb.br, %.lr.ph.i371
  %.1102.i = phi i32 [ %i.dy, %.lr.ph.i371 ], [ %i.xo, %bb.br ]
  %.168101.i = phi ptr [ %.1223582, %.lr.ph.i371 ], [ %i.xn, %bb.br ] ; 3 uses
  store <4 x i64> %.0..0..val.i, ptr %.168101.i, align 1, !tbaa !13
  %i.xm = getelementptr inbounds nuw i8, ptr %.168101.i, i64 %i.xh
  store <4 x i64> %.0..0..val.i, ptr %i.xm, align 1, !tbaa !13
  %i.xn = getelementptr inbounds nuw i8, ptr %.168101.i, i64 %i.xj ; 2 uses
  %i.xo = sub i32 %.1102.i, %i.xi                 ; 3 uses
  %i.xp = icmp ugt i32 %i.xo, 63
  br i1 %i.xp, label %bb.br, label %.preheader.i, !llvm.loop !2

bb.bs:                                            ; preds = %bb.bs, %.lr.ph106.i
  %.2105.i = phi i32 [ %.1.lcssa.i, %.lr.ph106.i ], [ %i.xq, %bb.bs ]
  %.269104.i = phi ptr [ %.168.lcssa.i, %.lr.ph106.i ], [ %i.xr, %bb.bs ] ; 2 uses
  store <4 x i64> %.0..0..val.i, ptr %.269104.i, align 1, !tbaa !13
  %i.xq = sub i32 %.2105.i, %.097.i               ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.269104.i, i64 %i.xl ; 2 uses
  %i.xs = icmp ugt i32 %i.xq, 31
  br i1 %i.xs, label %bb.bs, label %.loopexit.i369, !llvm.loop !3

.loopexit.i369:                                   ; preds = %bb.bs, %.preheader.i, %bb.bh
  %.370.i = phi ptr [ %.067.i, %bb.bh ], [ %.168.lcssa.i, %.preheader.i ], [ %i.xr, %bb.bs ] ; 3 uses
  %.3.i = phi i32 [ %.0.i, %bb.bh ], [ %.1.lcssa.i, %.preheader.i ], [ %i.xq, %bb.bs ] ; 2 uses
  %.not.i370 = icmp eq i32 %.3.i, 0
  br i1 %.not.i370, label %chunkmemset_avx2.exit, label %bb.bt

bb.bt:                                            ; preds = %.loopexit.i369
  %i.xt = zext nneg i32 %.3.i to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.370.i, ptr nonnull align 32 %i.a, i64 %i.xt, i1 false)
  %i.xu = getelementptr inbounds nuw i8, ptr %.370.i, i64 %i.xt
  br label %chunkmemset_avx2.exit

chunkmemset_avx2.exit:                            ; preds = %bb.bd, %.loopexit.i369, %bb.bt
  %.066.i = phi ptr [ %i.xu, %bb.bt ], [ %i.vf, %bb.bd ], [ %.370.i, %.loopexit.i369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %chunkcopy_safe.exit300

.lr.ph463:                                        ; preds = %bb.i, %bb.bu
  %i.xv = phi i32 [ %i.yp, %bb.bu ], [ %i.ev, %bb.i ] ; 2 uses
  %i.xw = phi i32 [ %i.yn, %bb.bu ], [ %i.et, %bb.i ] ; 2 uses
  %i.xx = phi i64 [ %i.ym, %bb.bu ], [ %i.es, %bb.i ] ; 3 uses
  %.2461 = phi ptr [ %i.yh, %bb.bu ], [ %i.ed, %bb.i ]
  %i.xy = and i32 %i.xv, 64
  %i.xz = icmp eq i32 %i.xy, 0
  br i1 %i.xz, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph463
  %i.ya = getelementptr inbounds nuw i8, ptr %.2461, i64 2
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !75
  %i.yc = zext i16 %i.yb to i64
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.yc
  %notmask259 = shl nsw i32 -1, %i.xv
  %i.ye = xor i32 %notmask259, -1
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = and i64 %i.xx, %i.yf
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %i.yg ; 4 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 1
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !76  ; 2 uses
  %i.yk = zext i8 %i.yj to i32
  %i.yl = zext nneg i8 %i.yj to i64
  %i.ym = lshr i64 %i.xx, %i.yl                   ; 2 uses
  %i.yn = sub i32 %i.xw, %i.yk                    ; 2 uses
  %i.yo = load i8, ptr %i.yh, align 2, !tbaa !74
  %i.yp = zext i8 %i.yo to i32                    ; 3 uses
  %i.yq = and i32 %i.yp, 16
  %.not258 = icmp eq i32 %i.yq, 0
  br i1 %.not258, label %.lr.ph463, label %._crit_edge464

bb.bv:                                            ; preds = %.lr.ph463
  %i.yr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 16209, ptr %i.yr, align 8, !tbaa !77
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.1, ptr %i.ys, align 8, !tbaa !78
  br label %.loopexit

bb.bw:                                            ; preds = %.lr.ph
  %i.yt = and i32 %i.do, 64
  %i.yu = icmp eq i32 %i.yt, 0
  br i1 %i.yu, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.yv = getelementptr inbounds nuw i8, ptr %.1457, i64 2
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !75
  %i.yx = zext i16 %i.yw to i64
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.yx
  %notmask256 = shl nsw i32 -1, %i.do
  %i.yz = xor i32 %notmask256, -1
  %i.za = zext nneg i32 %i.yz to i64
  %i.zb = and i64 %i.dn, %i.za
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %i.zb ; 4 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 1
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !76  ; 2 uses
  %i.zf = zext i8 %i.ze to i32
  %i.zg = zext nneg i8 %i.ze to i64
  %i.zh = lshr i64 %i.dn, %i.zg                   ; 2 uses
  %i.zi = sub i32 %i.dm, %i.zf                    ; 2 uses
  %i.zj = load i8, ptr %i.zc, align 2, !tbaa !74  ; 2 uses
  %i.zk = icmp eq i8 %i.zj, 0
  br i1 %i.zk, label %._crit_edge, label %.lr.ph

bb.by:                                            ; preds = %bb.bw
  %i.zl = and i32 %i.do, 32
  %.not255 = icmp eq i32 %i.zl, 0
  %i.zm = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %.not255, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 16191, ptr %i.zm, align 8, !tbaa !77
  br label %.loopexit

bb.ca:                                            ; preds = %bb.by
  store i32 16209, ptr %i.zm, align 8, !tbaa !77
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.2, ptr %i.zn, align 8, !tbaa !78
  br label %.loopexit

chunkcopy_safe.exit300:                           ; preds = %.lr.ph.i366, %.loopexit.i356, %.loopexit.i324, %.loopexit.i292, %bb.bb, %bb.av, %bb.au, %bb.at, %bb.al, %bb.ak, %bb.aj, %bb.ac, %._crit_edge, %chunkmemset_avx2.exit, %chunkunroll_avx2.exit, %bb.aq
  %.2229 = phi ptr [ %i.bm, %._crit_edge ], [ %.1228, %chunkmemset_avx2.exit ], [ %.1228, %chunkunroll_avx2.exit ], [ %.1228, %.loopexit.i356 ], [ %.1228, %bb.aq ], [ %.1228, %bb.av ], [ %.1228, %.loopexit.i324 ], [ %.1228, %bb.ac ], [ %.1228, %.loopexit.i292 ], [ %.1228, %bb.bb ], [ %.1228, %bb.aj ], [ %.1228, %bb.ak ], [ %.1228, %bb.al ], [ %.1228, %bb.at ], [ %.1228, %bb.au ], [ %.1228, %.lr.ph.i366 ] ; 3 uses
  %.3225 = phi ptr [ %i.dl, %._crit_edge ], [ %.066.i, %chunkmemset_avx2.exit ], [ %i.gx, %chunkunroll_avx2.exit ], [ %.469.lcssa.i357, %.loopexit.i356 ], [ %i.ri, %bb.aq ], [ %.1223582, %bb.av ], [ %.469.lcssa.i325, %.loopexit.i324 ], [ %i.kt, %bb.ac ], [ %.469.lcssa.i293, %.loopexit.i292 ], [ %i.ux, %bb.bb ], [ %i.ny, %bb.aj ], [ %i.ny, %bb.ak ], [ %.2224, %bb.al ], [ %i.ro, %bb.at ], [ %i.ro, %bb.au ], [ %i.va, %.lr.ph.i366 ] ; 3 uses
  %.5220 = phi i32 [ %.lcssa403, %._crit_edge ], [ %i.fi, %chunkmemset_avx2.exit ], [ %i.fi, %chunkunroll_avx2.exit ], [ %i.fi, %.loopexit.i356 ], [ %i.fi, %bb.aq ], [ %i.fi, %bb.av ], [ %i.fi, %.loopexit.i324 ], [ %i.fi, %bb.ac ], [ %i.fi, %.loopexit.i292 ], [ %i.fi, %bb.bb ], [ %i.fi, %bb.aj ], [ %i.fi, %bb.ak ], [ %i.fi, %bb.al ], [ %i.fi, %bb.at ], [ %i.fi, %bb.au ], [ %i.fi, %.lr.ph.i366 ] ; 2 uses
  %.5 = phi i64 [ %.lcssa406, %._crit_edge ], [ %i.fh, %chunkmemset_avx2.exit ], [ %i.fh, %chunkunroll_avx2.exit ], [ %i.fh, %.loopexit.i356 ], [ %i.fh, %bb.aq ], [ %i.fh, %bb.av ], [ %i.fh, %.loopexit.i324 ], [ %i.fh, %bb.ac ], [ %i.fh, %.loopexit.i292 ], [ %i.fh, %bb.bb ], [ %i.fh, %bb.aj ], [ %i.fh, %bb.ak ], [ %i.fh, %bb.al ], [ %i.fh, %bb.at ], [ %i.fh, %bb.au ], [ %i.fh, %.lr.ph.i366 ] ; 2 uses
  %i.zo = icmp ult ptr %.2229, %i.i
  %i.zp = icmp ult ptr %.3225, %i.t
  %i.zq = select i1 %i.zo, i1 %i.zp, i1 false
  br i1 %i.zq, label %bb.d, label %.loopexit, !llvm.loop !46

.loopexit:                                        ; preds = %chunkcopy_safe.exit300, %bb.ca, %bb.bz, %bb.bv, %bb.k
  %.3230 = phi ptr [ %i.bm, %bb.ca ], [ %.1228, %bb.k ], [ %.1228, %bb.bv ], [ %i.bm, %bb.bz ], [ %.2229, %chunkcopy_safe.exit300 ]
  %.4226 = phi ptr [ %.1223582, %bb.ca ], [ %.1223582, %bb.k ], [ %.1223582, %bb.bv ], [ %.1223582, %bb.bz ], [ %.3225, %chunkcopy_safe.exit300 ] ; 2 uses
  %.6221 = phi i32 [ %i.dm, %bb.ca ], [ %i.fi, %bb.k ], [ %i.xw, %bb.bv ], [ %i.dm, %bb.bz ], [ %.5220, %chunkcopy_safe.exit300 ] ; 2 uses
  %.6 = phi i64 [ %i.dn, %bb.ca ], [ %i.fh, %bb.k ], [ %i.xx, %bb.bv ], [ %i.dn, %bb.bz ], [ %.5, %chunkcopy_safe.exit300 ]
  %i.zr = lshr i32 %.6221, 3
  %i.zs = zext nneg i32 %i.zr to i64
  %i.zt = sub nsw i64 0, %i.zs
  %i.zu = getelementptr inbounds i8, ptr %.3230, i64 %i.zt ; 2 uses
  store ptr %i.zu, ptr %0, align 8, !tbaa !53
  store ptr %.4226, ptr %i.j, align 8, !tbaa !55
  %i.zv = ptrtoint ptr %i.i to i64
  %i.zw = ptrtoint ptr %i.zu to i64
  %i.zx = sub i64 %i.zv, %i.zw
  %i.zy = trunc i64 %i.zx to i32
  %i.zz = add i32 %i.zy, 14
  store i32 %i.zz, ptr %i.e, align 8, !tbaa !54
  %i.aaa = ptrtoint ptr %i.t to i64
  %i.aab = ptrtoint ptr %.4226 to i64
  %i.aac = sub i64 %i.aaa, %i.aab
  %i.aad = and i32 %.6221, 7                      ; 2 uses
  %i.aae = zext nneg i32 %i.aad to i64
  %notmask263 = shl nsw i64 -1, %i.aae
  %i.aaf = xor i64 %notmask263, -1
  %i.aag = and i64 %.6, %i.aaf
  %i.aah = trunc i64 %i.aac to i32
  %i.aai = add i32 %i.aah, 259
  store i32 %i.aai, ptr %i.l, align 8, !tbaa !56
  store i64 %i.aag, ptr %i.ae, align 8, !tbaa !66
  store i32 %i.aad, ptr %i.ag, align 32, !tbaa !67
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc ptr @CHUNKCOPY_SAFE(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2, ptr noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca <4 x i64>, align 32               ; 9 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %2
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.f) ; 20 uses
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %reass.sub = sub i64 %i.d, %i.h
  %i.i = add i64 %reass.sub, 31
  %i.j = icmp ult i64 %i.i, 63
  %i.k = icmp ult i64 %i.f, 32
  %i.l = or i1 %i.j, %i.k
  br i1 %i.l, label %.preheader, label %bb.d, !prof !12

.preheader:                                       ; preds = %bb.c
  %.not33 = icmp eq i64 %i.g, 0
  br i1 %.not33, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp samesign ult i64 %i.g, 8
  %i.m = sub i64 %i.h, %i.e
  %diff.check = icmp ugt i64 %i.m, -128
  %or.cond81 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond81, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check67 = icmp samesign ult i64 %i.g, 128
  br i1 %min.iters.check67, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.g, 120
  %n.vec = and i64 %i.g, 4294967168               ; 5 uses
  %i.o = and i64 %i.g, 127
  %i.p = getelementptr i8, ptr %1, i64 %n.vec
  %i.q = getelementptr i8, ptr %0, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 4 uses
  %next.gep68 = getelementptr i8, ptr %0, i64 %index ; 4 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 32
  %i.s = getelementptr i8, ptr %next.gep, i64 64
  %i.t = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep, align 1, !tbaa !13
  %wide.load69 = load <32 x i8>, ptr %i.r, align 1, !tbaa !13
  %wide.load70 = load <32 x i8>, ptr %i.s, align 1, !tbaa !13
  %wide.load71 = load <32 x i8>, ptr %i.t, align 1, !tbaa !13
  %i.u = getelementptr i8, ptr %next.gep68, i64 32
  %i.v = getelementptr i8, ptr %next.gep68, i64 64
  %i.w = getelementptr i8, ptr %next.gep68, i64 96
  store <32 x i8> %wide.load, ptr %next.gep68, align 1, !tbaa !13
  store <32 x i8> %wide.load69, ptr %i.u, align 1, !tbaa !13
  store <32 x i8> %wide.load70, ptr %i.v, align 1, !tbaa !13
  store <32 x i8> %wide.load71, ptr %i.w, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec72 = and i64 %i.g, 4294967288             ; 4 uses
  %i.y = and i64 %i.g, 7
  %i.z = getelementptr i8, ptr %1, i64 %n.vec72
  %i.aa = getelementptr i8, ptr %0, i64 %n.vec72  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 3 uses
  %next.gep74 = getelementptr i8, ptr %1, i64 %index73
  %next.gep75 = getelementptr i8, ptr %0, i64 %index73
  %wide.load76 = load <8 x i8>, ptr %next.gep74, align 1, !tbaa !13
  store <8 x i8> %wide.load76, ptr %next.gep75, align 1, !tbaa !13
  %index.next77 = add nuw i64 %index73, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !80

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %i.g, %n.vec72
  br i1 %cmp.n78, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02136.ph = phi i64 [ %i.g, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 4 uses
  %.02235.ph = phi ptr [ %1, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ] ; 2 uses
  %.02334.ph = phi ptr [ %0, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ] ; 2 uses
  %i.ac = add nsw i64 %.02136.ph, -1
  %xtraiter = and i64 %.02136.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.02136.prol = phi i64 [ %i.ad, %.lr.ph.prol ], [ %.02136.ph, %.lr.ph.preheader ]
  %.02235.prol = phi ptr [ %i.ae, %.lr.ph.prol ], [ %.02235.ph, %.lr.ph.preheader ] ; 2 uses
  %.02334.prol = phi ptr [ %i.ag, %.lr.ph.prol ], [ %.02334.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ad = add nsw i64 %.02136.prol, -1            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02235.prol, i64 1 ; 2 uses
  %i.af = load i8, ptr %.02235.prol, align 1, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.02334.prol, i64 1 ; 3 uses
  store i8 %i.af, ptr %.02334.prol, align 1, !tbaa !13
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !81

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ag, %.lr.ph.prol ]
  %.02136.unr = phi i64 [ %.02136.ph, %.lr.ph.preheader ], [ %i.ad, %.lr.ph.prol ]
  %.02235.unr = phi ptr [ %.02235.ph, %.lr.ph.preheader ], [ %i.ae, %.lr.ph.prol ]
  %.02334.unr = phi ptr [ %.02334.ph, %.lr.ph.preheader ], [ %i.ag, %.lr.ph.prol ]
  %i.ah = icmp ult i64 %i.ac, 7
  br i1 %i.ah, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02136 = phi i64 [ %i.bd, %.lr.ph ], [ %.02136.unr, %.lr.ph.prol.loopexit ]
  %.02235 = phi ptr [ %i.be, %.lr.ph ], [ %.02235.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.02334 = phi ptr [ %i.bg, %.lr.ph ], [ %.02334.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02235, i64 1
  %i.aj = load i8, ptr %.02235, align 1, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.02334, i64 1
  store i8 %i.aj, ptr %.02334, align 1, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.02235, i64 2
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.02334, i64 2
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.02235, i64 3
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.02334, i64 3
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.02235, i64 4
  %i.as = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.02334, i64 4
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.02235, i64 5
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.02334, i64 5
  store i8 %i.av, ptr %i.at, align 1, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.02235, i64 6
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.02334, i64 6
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.02235, i64 7
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.02334, i64 7
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !13
  %i.bd = add nsw i64 %.02136, -8                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02235, i64 8
  %i.bf = load i8, ptr %i.ba, align 1, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.02334, i64 8 ; 2 uses
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !13
  %.not.7 = icmp eq i64 %i.bd, 0
  br i1 %.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !82

bb.d:                                             ; preds = %bb.c
  %i.bh = trunc nuw i64 %i.g to i32               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bi = sub i64 %i.e, %i.h                      ; 3 uses
  %i.bj = tail call i64 @llvm.abs.i64(i64 %i.bi, i1 true) ; 10 uses
  %i.bk = icmp slt i64 %i.bi, 0
  %i.bl = icmp samesign ult i64 %i.bj, %i.g
  %or.cond = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %i.g, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  br label %chunkmemset_avx2.exit

bb.f:                                             ; preds = %bb.d
  %i.bn = icmp eq i64 %i.bj, 1
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bo = load i8, ptr %1, align 1, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %i.bo, i64 %i.g, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  br label %chunkmemset_avx2.exit

bb.h:                                             ; preds = %bb.f
  %i.bq = icmp samesign ugt i64 %i.bj, 31
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.br = add i32 %i.bh, 31
  %i.bs = and i32 %i.br, 31
  %narrow.i.i = add nuw nsw i32 %i.bs, 1          ; 2 uses
  %.val.i.i = load <4 x i64>, ptr %1, align 1, !tbaa !13
  store <4 x i64> %.val.i.i, ptr %0, align 1, !tbaa !13
  %i.bt = zext nneg i32 %narrow.i.i to i64        ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt ; 2 uses
  %i.bv = sub i32 %i.bh, %narrow.i.i              ; 2 uses
  %.not20.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not20.i.i, label %chunkmemset_avx2.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.023.i.i = phi i32 [ %i.bz, %.lr.ph.i.i ], [ %i.bv, %.lr.ph.preheader.i.i ]
  %.01522.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %i.bw, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01621.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %i.bu, %.lr.ph.preheader.i.i ] ; 2 uses
  %.015.val.i.i = load <4 x i64>, ptr %.01522.i.i, align 1, !tbaa !13
  store <4 x i64> %.015.val.i.i, ptr %.01621.i.i, align 1, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.01621.i.i, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01522.i.i, i64 32
  %i.bz = add i32 %.023.i.i, -32                  ; 2 uses
  %.not.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i, label %chunkmemset_avx2.exit, label %.lr.ph.i.i, !llvm.loop !0

bb.j:                                             ; preds = %bb.h
  %i.ca = icmp samesign ult i64 %i.g, 17
  br i1 %i.ca, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.cb = icmp samesign ugt i64 %i.bj, 15
  br i1 %i.cb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cc = add nuw nsw i32 %i.bh, 15
  %i.cd = and i32 %i.cc, 15
  %narrow.i83.i = add nuw nsw i32 %i.cd, 1        ; 2 uses
  %.val.i84.i = load <2 x i64>, ptr %1, align 1, !tbaa !13
  store <2 x i64> %.val.i84.i, ptr %0, align 1, !tbaa !13
  %i.ce = zext nneg i32 %narrow.i83.i to i64      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = sub nsw i32 %i.bh, %narrow.i83.i        ; 2 uses
  %.not20.i85.i = icmp eq i32 %i.cg, 0
  br i1 %.not20.i85.i, label %chunkmemset_avx2.exit, label %.lr.ph.preheader.i86.i

.lr.ph.preheader.i86.i:                           ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  br label %.lr.ph.i87.i

.lr.ph.i87.i:                                     ; preds = %.lr.ph.i87.i, %.lr.ph.preheader.i86.i
  %.023.i88.i = phi i32 [ %i.ck, %.lr.ph.i87.i ], [ %i.cg, %.lr.ph.preheader.i86.i ]
  %.01522.i89.i = phi ptr [ %i.cj, %.lr.ph.i87.i ], [ %i.ch, %.lr.ph.preheader.i86.i ] ; 2 uses
  %.01621.i90.i = phi ptr [ %i.ci, %.lr.ph.i87.i ], [ %i.cf, %.lr.ph.preheader.i86.i ] ; 2 uses
  %.015.val.i91.i = load <2 x i64>, ptr %.01522.i89.i, align 1, !tbaa !13
  store <2 x i64> %.015.val.i91.i, ptr %.01621.i90.i, align 1, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %.01621.i90.i, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.01522.i89.i, i64 16
  %i.ck = add i32 %.023.i88.i, -16                ; 2 uses
  %.not.i92.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i92.i, label %chunkmemset_avx2.exit, label %.lr.ph.i87.i, !llvm.loop !1

bb.m:                                             ; preds = %bb.k
  %i.cl = trunc i64 %i.bj to i1
  %i.cm = icmp eq i64 %i.bj, 6
  %or.cond.i = or i1 %i.cm, %i.cl
  br i1 %or.cond.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.val7798.i = load <16 x i8>, ptr %1, align 1, !tbaa !13
  %i.cn = add nuw nsw i64 %i.bj, 4294967293
  %i.co = and i64 %i.cn, 4294967295
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @perm_idx_lut, i64 %i.co
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.cp, align 4, !tbaa !18
  %i.cq = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.cq
  %i.cs = load <16 x i8>, ptr %i.cr, align 16, !tbaa !13
  %i.ct = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.val7798.i, <16 x i8> %i.cs) ; 2 uses
  %i.cu = bitcast <16 x i8> %i.ct to <2 x i64>
  %i.cv = icmp eq i64 %i.g, 16
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store <16 x i8> %i.ct, ptr %0, align 1, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.067.i = phi ptr [ %i.cw, %bb.o ], [ %0, %bb.n ]
  %.0.i = phi i32 [ 0, %bb.o ], [ %i.bh, %bb.n ]
  %i.cx = shufflevector <2 x i64> %i.cu, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.cx, ptr %i.a, align 32, !tbaa !13
  br label %.loopexit.i

bb.q:                                             ; preds = %bb.m, %bb.j
  %i.cy = tail call range(i64 1, 6) i64 @llvm.ctpop.i64(i64 %i.bj)
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %.split.i, label %bb.v

.split.i:                                         ; preds = %bb.q
  %i.da = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bi, i1 true)
  switch i64 %i.da, label %bb.v [
    i64 1, label %bb.r
    i64 2, label %bb.s
    i64 3, label %bb.t
    i64 4, label %bb.u
  ]

bb.r:                                             ; preds = %.split.i
  %.val79.i = load i16, ptr %1, align 1, !tbaa !13
  %i.db = insertelement <16 x i16> poison, i16 %.val79.i, i64 0
  %i.dc = shufflevector <16 x i16> %i.db, <16 x i16> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dd = bitcast <16 x i16> %i.dc to <4 x i64>
  store <16 x i16> %i.dc, ptr %i.a, align 32, !tbaa !13
  br label %bb.y

bb.s:                                             ; preds = %.split.i
  %.val80.i = load i32, ptr %1, align 1, !tbaa !13
  %i.de = insertelement <8 x i32> poison, i32 %.val80.i, i64 0
  %i.df = shufflevector <8 x i32> %i.de, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dg = bitcast <8 x i32> %i.df to <4 x i64>
  store <8 x i32> %i.df, ptr %i.a, align 32, !tbaa !13
  br label %bb.y

bb.t:                                             ; preds = %.split.i
  %.val81.i = load i64, ptr %1, align 1, !tbaa !13
  %i.dh = insertelement <4 x i64> poison, i64 %.val81.i, i64 0
  %i.di = shufflevector <4 x i64> %i.dh, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i64> %i.di, ptr %i.a, align 32, !tbaa !13
  br label %bb.y

bb.u:                                             ; preds = %.split.i
  %.val82.i = load <2 x i64>, ptr %1, align 1, !tbaa !13
  %i.dj = shufflevector <2 x i64> %.val82.i, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  store <4 x i64> %i.dj, ptr %i.a, align 32, !tbaa !13
  br label %bb.y

bb.v:                                             ; preds = %.split.i, %bb.q
  %i.dk = add nuw nsw i64 %i.bj, 4294967293
  %i.dl = and i64 %i.dk, 4294967295
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr @perm_idx_lut, i64 %i.dl ; 2 uses
  %.sroa.0.0.copyload.i94.i = load i16, ptr %i.dm, align 4, !tbaa !18 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %.sroa.5.0.copyload.i.i = load i16, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !tbaa !18
  %i.dn = zext i16 %.sroa.5.0.copyload.i.i to i32
  %i.do = icmp samesign ult i64 %i.bj, 16
  br i1 %i.do, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dp = zext i16 %.sroa.0.0.copyload.i94.i to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.dp
  %i.dr = load <32 x i8>, ptr %i.dq, align 32, !tbaa !13
  %i.ds = load <16 x i8>, ptr %1, align 1, !tbaa !13
  %i.dt = add <32 x i8> %i.dr, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %i.du = shufflevector <16 x i8> %i.ds, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dv = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.du, <32 x i8> %i.dt)
  %i.dw = bitcast <32 x i8> %i.dv to <4 x i64>
  br label %GET_CHUNK_MAG.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dx = load <2 x i64>, ptr %1, align 1, !tbaa !13 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dz = load <16 x i8>, ptr %i.dy, align 1, !tbaa !13
  %i.ea = zext i16 %.sroa.0.0.copyload.i94.i to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.ea
  %i.ec = load <16 x i8>, ptr %i.eb, align 16, !tbaa !13 ; 2 uses
  %i.ed = icmp slt <16 x i8> %i.ec, splat (i8 16)
  %i.ee = bitcast <2 x i64> %i.dx to <16 x i8>
  %i.ef = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ee, <16 x i8> %i.ec)
  %i.eg = select <16 x i1> %i.ed, <16 x i8> %i.ef, <16 x i8> %i.dz
  %i.eh = bitcast <16 x i8> %i.eg to <2 x i64>
  %i.ei = shufflevector <2 x i64> %i.dx, <2 x i64> %i.eh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %GET_CHUNK_MAG.exit.i

GET_CHUNK_MAG.exit.i:                             ; preds = %bb.x, %bb.w
  %.0.i.i = phi <4 x i64> [ %i.dw, %bb.w ], [ %i.ei, %bb.x ] ; 2 uses
  store <4 x i64> %.0.i.i, ptr %i.a, align 32, !tbaa !13
  %i.ej = sub nsw i32 32, %i.dn
  br label %bb.y

bb.y:                                             ; preds = %GET_CHUNK_MAG.exit.i, %bb.u, %bb.t, %bb.s, %bb.r
  %.0..0..val.i = phi <4 x i64> [ %.0.i.i, %GET_CHUNK_MAG.exit.i ], [ %i.dd, %bb.r ], [ %i.dg, %bb.s ], [ %i.di, %bb.t ], [ %i.dj, %bb.u ] ; 3 uses
  %.097.i = phi i32 [ %i.ej, %GET_CHUNK_MAG.exit.i ], [ 32, %bb.r ], [ 32, %bb.s ], [ 32, %bb.t ], [ 32, %bb.u ] ; 4 uses
  %i.ek = icmp samesign ugt i64 %i.g, 63
  br i1 %i.ek, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.y
  %i.el = zext i32 %.097.i to i64
  %i.em = shl nsw i32 %.097.i, 1                  ; 2 uses
  %i.en = zext i32 %i.em to i64
  br label %bb.z

.preheader.i:                                     ; preds = %bb.z, %bb.y
  %.168.lcssa.i = phi ptr [ %0, %bb.y ], [ %i.er, %bb.z ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %i.bh, %bb.y ], [ %i.es, %bb.z ] ; 3 uses
  %i.eo = icmp samesign ugt i32 %.1.lcssa.i, 31
  br i1 %i.eo, label %.lr.ph106.i, label %.loopexit.i

.lr.ph106.i:                                      ; preds = %.preheader.i
  %i.ep = zext i32 %.097.i to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.z, %.lr.ph.i
  %.1102.i = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.es, %bb.z ]
  %.168101.i = phi ptr [ %0, %.lr.ph.i ], [ %i.er, %bb.z ] ; 3 uses
  store <4 x i64> %.0..0..val.i, ptr %.168101.i, align 1, !tbaa !13
  %i.eq = getelementptr inbounds nuw i8, ptr %.168101.i, i64 %i.el
  store <4 x i64> %.0..0..val.i, ptr %i.eq, align 1, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %.168101.i, i64 %i.en ; 2 uses
  %i.es = sub i32 %.1102.i, %i.em                 ; 3 uses
  %i.et = icmp ugt i32 %i.es, 63
  br i1 %i.et, label %bb.z, label %.preheader.i, !llvm.loop !2

bb.aa:                                            ; preds = %bb.aa, %.lr.ph106.i
  %.2105.i = phi i32 [ %.1.lcssa.i, %.lr.ph106.i ], [ %i.eu, %bb.aa ]
  %.269104.i = phi ptr [ %.168.lcssa.i, %.lr.ph106.i ], [ %i.ev, %bb.aa ] ; 2 uses
  store <4 x i64> %.0..0..val.i, ptr %.269104.i, align 1, !tbaa !13
  %i.eu = sub i32 %.2105.i, %.097.i               ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.269104.i, i64 %i.ep ; 2 uses
  %i.ew = icmp ugt i32 %i.eu, 31
  br i1 %i.ew, label %bb.aa, label %.loopexit.i, !llvm.loop !3

.loopexit.i:                                      ; preds = %bb.aa, %.preheader.i, %bb.p
  %.370.i = phi ptr [ %.067.i, %bb.p ], [ %.168.lcssa.i, %.preheader.i ], [ %i.ev, %bb.aa ] ; 3 uses
  %.3.i = phi i32 [ %.0.i, %bb.p ], [ %.1.lcssa.i, %.preheader.i ], [ %i.eu, %bb.aa ] ; 2 uses
  %.not.i = icmp eq i32 %.3.i, 0
  br i1 %.not.i, label %chunkmemset_avx2.exit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit.i
  %i.ex = zext nneg i32 %.3.i to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.370.i, ptr nonnull align 32 %i.a, i64 %i.ex, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %.370.i, i64 %i.ex
  br label %chunkmemset_avx2.exit

chunkmemset_avx2.exit:                            ; preds = %.lr.ph.i87.i, %.lr.ph.i.i, %bb.e, %bb.g, %bb.i, %bb.l, %.loopexit.i, %bb.ab
  %.066.i = phi ptr [ %i.bm, %bb.e ], [ %i.bp, %bb.g ], [ %.370.i, %.loopexit.i ], [ %i.bx, %.lr.ph.i.i ], [ %i.ey, %bb.ab ], [ %i.bu, %bb.i ], [ %i.cf, %bb.l ], [ %i.ci, %.lr.ph.i87.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %chunkmemset_avx2.exit, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ %.066.i, %chunkmemset_avx2.exit ], [ %0, %.preheader ], [ %i.aa, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bg, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = distinct !{!2, !15}
!3 = distinct !{!3, !15}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!8, !8, i64 0}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"short", !8, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"branch_weights", i32 8, i32 120}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !15, !16}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15, !16, !19}
!28 = distinct !{!28, !15, !16, !19}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !15, !16}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !15, !16, !19}
!33 = distinct !{!33, !15, !16, !19}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !15, !16}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !15, !16, !19}
!38 = distinct !{!38, !15, !16, !19}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !15, !16}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !15, !16, !19}
!43 = distinct !{!43, !15, !16, !19}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !15, !16}
!46 = distinct !{!46, !15}
!47 = !{!"any pointer", !8, i64 0}
!48 = !{!"p1 omnipotent char", !47, i64 0}
!49 = !{!"long", !8, i64 0}
!50 = !{!"p1 _ZTS14internal_state", !47, i64 0}
!51 = !{!"zng_stream_s", !48, i64 0, !9, i64 8, !49, i64 16, !48, i64 24, !9, i64 32, !49, i64 40, !48, i64 48, !50, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !9, i64 88, !9, i64 92, !49, i64 96}
!52 = !{!51, !50, i64 56}
!53 = !{!51, !48, i64 0}
!54 = !{!51, !9, i64 8}
!55 = !{!51, !48, i64 24}
!56 = !{!51, !9, i64 32}
!57 = !{!"p1 _ZTS12zng_stream_s", !47, i64 0}
!58 = !{!"p1 _ZTS15zng_gz_header_s", !47, i64 0}
!59 = !{!"crc32_fold_s", !8, i64 0, !9, i64 64}
!60 = !{!"p1 _ZTS16inflate_allocs_s", !47, i64 0}
!61 = !{!"inflate_state", !57, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !49, i64 32, !49, i64 40, !58, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !48, i64 80, !49, i64 88, !9, i64 96, !9, i64 100, !47, i64 104, !47, i64 112, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !47, i64 152, !59, i64 160, !8, i64 228, !8, i64 868, !8, i64 1444, !60, i64 9144}
!62 = !{!61, !9, i64 64}
!63 = !{!61, !9, i64 72}
!64 = !{!61, !9, i64 76}
!65 = !{!61, !48, i64 80}
!66 = !{!61, !49, i64 88}
!67 = !{!61, !9, i64 96}
!68 = !{!61, !47, i64 104}
!69 = !{!61, !47, i64 112}
!70 = !{!61, !9, i64 100}
!71 = !{!61, !9, i64 120}
!72 = !{!61, !9, i64 68}
!73 = !{!"", !8, i64 0, !8, i64 1, !17, i64 2}
!74 = !{!73, !8, i64 0}
!75 = !{!73, !17, i64 2}
!76 = !{!73, !8, i64 1}
!77 = !{!61, !9, i64 8}
!78 = !{!51, !48, i64 48}
!79 = distinct !{!79, !15, !16, !19}
!80 = distinct !{!80, !15, !16, !19}
!81 = distinct !{!81, !14}
!82 = distinct !{!82, !15, !16}
end_hunk_0
