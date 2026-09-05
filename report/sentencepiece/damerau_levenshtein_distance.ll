Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/damerau_levenshtein_distance?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [102 x %"struct.std::array.0"] }
%"struct.std::array.0" = type { [102 x i8] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i8 @_ZN4absl12lts_2026052616strings_internal32CappedDamerauLevenshteinDistanceESt17basic_string_viewIcSt11char_traitsIcEES5_h(i64 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"struct.std::array", align 16      ; 22 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %4, i8 100) ; 3 uses
  %i.a = add nuw nsw i8 %.sroa.speculated, 1      ; 14 uses
  %i.b = icmp ugt i64 %0, %2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.080.0 = phi i64 [ %2, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %.sroa.11.0 = phi ptr [ %1, %bb.b ], [ %3, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %0, %bb.b ], [ %2, %bb.a ] ; 7 uses
  %.sroa.9.0 = phi ptr [ %3, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.c = zext nneg i8 %.sroa.speculated to i64    ; 4 uses
  %i.d = add i64 %.sroa.080.0, %i.c
  %i.e = icmp ult i64 %i.d, %.sroa.0.0
  %i.f = icmp ugt i64 %.sroa.0.0, 100
  %or.cond89 = or i1 %i.e, %i.f
  br i1 %or.cond89, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.080.0, 0
  br i1 %i.g, label %bb.e, label %iter.check

bb.e:                                             ; preds = %bb.d
  %i.h = trunc nuw nsw i64 %.sroa.0.0 to i8
  br label %bb.p

iter.check:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 %i.c
  %i.j = add nuw nsw i64 %i.c, 1                  ; 5 uses
  %min.iters.check = icmp ult i8 %4, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check126 = icmp ult i8 %4, 31
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 28
  %n.vec = and i64 %i.j, 224                      ; 6 uses
  %i.l = trunc nuw i64 %n.vec to i8               ; 2 uses
  %i.m = getelementptr i8, ptr %5, i64 %n.vec
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %5, align 16, !tbaa !13
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.n, align 16, !tbaa !13
  %i.o = icmp eq i64 %n.vec, 32
  br i1 %i.o, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %next.gep.1, align 16, !tbaa !13
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.p, align 16, !tbaa !13
  %i.q = icmp eq i64 %n.vec, 64
  br i1 %i.q, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %next.gep.2, align 16, !tbaa !13
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.r, align 16, !tbaa !13
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIPhiEvT_S1_T0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i8 [ %i.l, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec128 = and i64 %i.j, 252                   ; 4 uses
  %i.s = trunc nuw i64 %n.vec128 to i8
  %i.t = getelementptr i8, ptr %5, i64 %n.vec128
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %bc.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index129 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next132, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind130 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next133, %vec.epilog.vector.body ] ; 2 uses
  %next.gep131 = getelementptr i8, ptr %5, i64 %index129
  store <4 x i8> %vec.ind130, ptr %next.gep131, align 4, !tbaa !13
  %index.next132 = add nuw i64 %index129, 4       ; 2 uses
  %vec.ind.next133 = add nuw nsw <4 x i8> %vec.ind130, splat (i8 4)
  %i.u = icmp eq i64 %index.next132, %n.vec128
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n134 = icmp eq i64 %i.j, %n.vec128
  br i1 %cmp.n134, label %_ZSt4iotaIPhiEvT_S1_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi i8 [ 0, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.057.i.ph = phi ptr [ %5, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi i8 [ %i.v, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  store i8 %.08.i, ptr %.057.i, align 1, !tbaa !13
  %i.v = add nuw nsw i8 %.08.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %.not.i = icmp eq ptr %.057.i, %i.i
  br i1 %.not.i, label %_ZSt4iotaIPhiEvT_S1_T0_.exit, label %.lr.ph.i, !llvm.loop !10

_ZSt4iotaIPhiEvT_S1_T0_.exit:                     ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.neg = sub i64 %.sroa.080.0, %.sroa.0.0
  %.neg63 = trunc i64 %.neg to i8
  %i.x = add i8 %.sroa.speculated, %.neg63
  %i.y = zext nneg i8 %i.a to i64
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 %i.y
  store i8 %i.a, ptr %i.z, align 1, !tbaa !13
  %i.aa = zext i8 %i.x to i64                     ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw [102 x i8], ptr %5, i64 %.sroa.080.0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.0.0
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  br label %bb.p

bb.g:                                             ; preds = %_ZSt4iotaIPhiEvT_S1_T0_.exit, %._crit_edge
  %indvar = phi i64 [ 0, %_ZSt4iotaIPhiEvT_S1_T0_.exit ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %.06094 = phi i64 [ 1, %_ZSt4iotaIPhiEvT_S1_T0_.exit ], [ %i.bw, %._crit_edge ] ; 12 uses
  %i.ae = mul nuw nsw i64 %indvar, 102
  %i.af = getelementptr nuw i8, ptr %5, i64 %i.ae
  %scevgep138 = getelementptr nuw i8, ptr %i.af, i64 101
  %i.ag = mul nuw nsw i64 %indvar, 102
  %i.ah = getelementptr nuw i8, ptr %5, i64 %i.ag
  %scevgep = getelementptr nuw i8, ptr %i.ah, i64 101
  %i.ai = icmp ugt i64 %.06094, %i.aa
  %i.aj = getelementptr inbounds nuw [102 x i8], ptr %5, i64 %.06094 ; 2 uses
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = sub nuw i64 %.06094, %i.aa              ; 2 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  store i8 %i.a, ptr %i.am, align 1, !tbaa !13
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.an = trunc nuw i64 %.06094 to i8
  store i8 %i.an, ptr %i.aj, align 2, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.059 = phi i64 [ %i.ak, %bb.h ], [ 1, %bb.i ]  ; 5 uses
  %i.ao = add i64 %.06094, %i.c                   ; 3 uses
  %i.ap = icmp ugt i64 %i.ao, %.sroa.0.0
  br i1 %i.ap, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw [102 x i8], ptr %5, i64 %.06094
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ao
  %i.as = getelementptr i8, ptr %i.ar, i64 1
  store i8 %i.a, ptr %i.as, align 1, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.058 = phi i64 [ %i.ao, %bb.k ], [ %.sroa.0.0, %bb.j ] ; 3 uses
  %.not6492 = icmp ugt i64 %.059, %.058
  br i1 %.not6492, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.at = add i64 %.06094, -1                     ; 2 uses
  %i.au = getelementptr inbounds nuw [102 x i8], ptr %5, i64 %i.at ; 4 uses
  %i.av = getelementptr inbounds nuw [102 x i8], ptr %5, i64 %.06094 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 %i.at
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13  ; 3 uses
  %i.ay = icmp ugt i64 %.06094, 1
  %i.az = add i64 %.06094, -2                     ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 %i.az
  %i.bb = getelementptr inbounds nuw [102 x i8], ptr %5, i64 %i.az
  br i1 %i.ay, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %scevgep137 = getelementptr i8, ptr %scevgep, i64 %.059
  %load_initial = load i8, ptr %scevgep137, align 1
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %scevgep139 = getelementptr i8, ptr %scevgep138, i64 %.059
  %load_initial140 = load i8, ptr %scevgep139, align 1
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %store_forwarded = phi i8 [ %load_initial, %.lr.ph.split.us.preheader ], [ %.sroa.speculated103, %.lr.ph.split.us ]
  %.05793.us = phi i64 [ %.059, %.lr.ph.split.us.preheader ], [ %i.bv, %.lr.ph.split.us ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 %.05793.us
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %i.be = add i8 %i.bd, 1                         ; 2 uses
  %i.bf = add i64 %.05793.us, -1                  ; 2 uses
  %i.bg = add i8 %store_forwarded, 1              ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13
  %i.bj = icmp ne i8 %i.ax, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bf
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.bm = zext i1 %i.bj to i8
  %i.bn = add i8 %i.bl, %i.bm                     ; 3 uses
  %i.bo = call i8 @llvm.umin.i8(i8 %i.be, i8 %i.a) ; 2 uses
  %i.bp = icmp ult i8 %i.bg, %i.bo
  %i.bq = call i8 @llvm.umin.i8(i8 %i.bg, i8 %i.bo) ; 2 uses
  %i.br = icmp ult i8 %i.bn, %i.bq
  %i.bs = call i8 @llvm.umin.i8(i8 %i.bn, i8 %i.bq)
  %i.bt = icmp samesign ult i8 %i.a, %i.bs
  %.sroa.speculate.load.false102.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculated = call i8 @llvm.umin.i8(i8 %i.be, i8 %i.a)
  %.sroa.speculate.load.false102.sroa.speculate.load.false.sroa.speculated = select i1 %i.bp, i8 %i.bg, i8 %.sroa.speculate.load.false102.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculated
  %.sroa.speculate.load.false102.sroa.speculated = select i1 %i.br, i8 %i.bn, i8 %.sroa.speculate.load.false102.sroa.speculate.load.false.sroa.speculated
  %.sroa.speculated103 = select i1 %i.bt, i8 %i.a, i8 %.sroa.speculate.load.false102.sroa.speculated ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 %.05793.us
  store i8 %.sroa.speculated103, ptr %i.bu, align 1, !tbaa !13
  %i.bv = add i64 %.05793.us, 1                   ; 2 uses
  %.not64.us = icmp ugt i64 %i.bv, %.058
  br i1 %.not64.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph.split.us, %.lr.ph.i.i, %bb.l
  %i.bw = add nuw i64 %.06094, 1
  %exitcond = icmp eq i64 %.06094, %.sroa.080.0
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond, label %bb.f, label %bb.g, !llvm.loop !12

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.i.i
  %store_forwarded141 = phi i8 [ %load_initial140, %.lr.ph.split.preheader ], [ %.sroa.speculated100, %.lr.ph.i.i ]
  %.05793 = phi i64 [ %.059, %.lr.ph.split.preheader ], [ %i.da, %.lr.ph.i.i ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 %.05793
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  %i.bz = add i8 %i.by, 1                         ; 2 uses
  %i.ca = add nsw i64 %.05793, -1                 ; 2 uses
  %i.cb = add i8 %store_forwarded141, 1           ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 %i.ca
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !13  ; 2 uses
  %i.ce = icmp ne i8 %i.ax, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ca
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13
  %i.ch = zext i1 %i.ce to i8
  %i.ci = add i8 %i.cg, %i.ch                     ; 3 uses
  %i.cj = icmp ugt i64 %.05793, 1
  br i1 %i.cj, label %bb.m, label %.lr.ph.i.i

bb.m:                                             ; preds = %.lr.ph.split
  %i.ck = add nsw i64 %.05793, -2                 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = icmp eq i8 %i.ax, %i.cm
  br i1 %i.cn, label %bb.n, label %.lr.ph.i.i

bb.n:                                             ; preds = %bb.m
  %i.co = load i8, ptr %i.ba, align 1, !tbaa !13
  %i.cp = icmp eq i8 %i.co, %i.cd
  br i1 %i.cp, label %bb.o, label %.lr.ph.i.i

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ck
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13
  %i.cs = add i8 %i.cr, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %bb.n, %bb.m, %.lr.ph.split
  %.056 = phi i8 [ %i.cs, %bb.o ], [ %i.a, %bb.n ], [ %i.a, %bb.m ], [ %i.a, %.lr.ph.split ] ; 2 uses
  %i.ct = call i8 @llvm.umin.i8(i8 %i.bz, i8 %i.a) ; 2 uses
  %i.cu = icmp ult i8 %i.cb, %i.ct
  %i.cv = call i8 @llvm.umin.i8(i8 %i.cb, i8 %i.ct) ; 2 uses
  %i.cw = icmp ult i8 %i.ci, %i.cv
  %i.cx = call i8 @llvm.umin.i8(i8 %i.ci, i8 %i.cv)
  %i.cy = icmp ult i8 %.056, %i.cx
  %.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculated = call i8 @llvm.umin.i8(i8 %i.bz, i8 %i.a)
  %.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculated = select i1 %i.cu, i8 %i.cb, i8 %.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculated
  %.sroa.speculate.load.false.sroa.speculated = select i1 %i.cw, i8 %i.ci, i8 %.sroa.speculate.load.false.sroa.speculate.load.false.sroa.speculated
  %.sroa.speculated100 = select i1 %i.cy, i8 %.056, i8 %.sroa.speculate.load.false.sroa.speculated ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.av, i64 %.05793
  store i8 %.sroa.speculated100, ptr %i.cz, align 1, !tbaa !13
  %i.da = add nuw nsw i64 %.05793, 1
  %.not64.not = icmp ult i64 %.05793, %.058
  br i1 %.not64.not, label %.lr.ph.split, label %._crit_edge, !llvm.loop !11

bb.p:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.0 = phi i8 [ %i.ad, %bb.f ], [ %i.h, %bb.e ], [ %i.a, %bb.c ]
  ret i8 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !15, !16, !17}
!10 = distinct !{!10, !15, !17, !16}
!11 = distinct !{!11, !15}
!12 = distinct !{!12, !15}
!13 = !{!5, !5, i64 0}
!14 = !{!"branch_weights", i32 4, i32 28}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
