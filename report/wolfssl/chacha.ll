Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/chacha?download=true
inline.NumInlined: 48
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { i64, [56 x i8] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 1) i32 @wc_Chacha_SetIV(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.c, align 4, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load <2 x i32>, ptr %1, align 1
  store i32 %2, ptr %i.d, align 4, !tbaa !10
  store <2 x i32> %i.f, ptr %i.e, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.sroa.5.0.copyload, ptr %i.g, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 1) i32 @wc_Chacha_SetKey(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.d [
    i32 32, label %bb.c
    i32 16, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.val44 = load i32, ptr %1, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val44, ptr %i.c, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val43 = load i32, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.val43, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val42 = load i32, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.val42, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val41 = load i32, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.val41, ptr %i.i, align 4, !tbaa !10
  %i.j = icmp eq i32 %2, 32                       ; 3 uses
  %.0.idx = select i1 %i.j, i64 16, i64 0
  %.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.idx ; 4 uses
  %.0.val = load i32, ptr %.0, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.val, ptr %i.k, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %.val40 = load i32, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.val40, ptr %i.m, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %.val39 = load i32, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.val39, ptr %i.o, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 12
  %.val = load i32, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.val, ptr %i.q, align 4, !tbaa !10
  store i32 1634760805, ptr %0, align 4, !tbaa !10
  %i.r = select i1 %i.j, i32 857760878, i32 824206446
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !10
  %i.t = select i1 %i.j, i32 2036477234, i32 2036477238
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.t, ptr %i.u, align 4, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1797285236, ptr %i.v, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.w, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.036 = phi i32 [ 0, %bb.c ], [ -173, %bb.a ], [ -173, %bb.b ]
  ret i32 %.036
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -173, 1) i32 @wc_Chacha_Process(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %union.anon, align 16               ; 26 uses
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %2, null
  %or.cond = or i1 %i.c, %i.d
  %i.e = icmp eq ptr %1, null
  %or.cond3 = or i1 %i.e, %or.cond
  br i1 %or.cond3, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %wc_Chacha_encrypt_bytes.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9    ; 4 uses
  %.not42.i = icmp eq i32 %i.g, 0
  br i1 %.not42.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = icmp uge i32 %3, %i.g
  %i.i = sext i1 %i.h to i32
  store volatile i32 %i.i, ptr %i.a, align 4, !tbaa !10
  %.0..0..0..0..0..0..0..0..i.i = load volatile i32, ptr %i.a, align 4, !tbaa !10
  %i.j = xor i32 %.0..0..0..0..0..0..0..0..i.i, -1
  %i.k = and i32 %3, %i.j
  %.0..0..0..0..0..0..0..0.2.i.i = load volatile i32, ptr %i.a, align 4, !tbaa !10
  %i.l = and i32 %.0..0..0..0..0..0..0..0.2.i.i, %i.g
  %i.m = or i32 %i.l, %i.k                        ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @wc_Chacha_wordtobyte(ptr noundef %4, ptr noundef nonnull %0)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = zext i32 %i.g to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 %i.p ; 8 uses
  %i.r = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.s = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.t = or i64 %i.s, %i.r
  %i.u = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.v = or i64 %i.t, %i.u
  %i.w = and i64 %i.v, 7
  %or.cond44.i.i = icmp eq i64 %i.w, 0
  br i1 %or.cond44.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = and i32 %i.m, -8
  %.idx.i.i.i = zext i32 %i.x to i64              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i.i
  %.not.i.i.i = icmp ult i32 %i.m, 8
  br i1 %.not.i.i.i, label %XorWordsOut.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %i.z = add i64 %i.s, %.idx.i.i.i
  %i.aa = add i64 %i.s, 8
  %i.ab = call i64 @llvm.umax.i64(i64 %i.z, i64 %i.aa)
  %i.ac = xor i64 %i.s, -1
  %i.ad = add i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check99 = icmp ult i64 %i.ad, 56
  %i.ag = sub i64 %i.s, %i.r
  %diff.check97 = icmp ugt i64 %i.ag, -32
  %or.cond248 = or i1 %min.iters.check99, %diff.check97
  br i1 %or.cond248, label %.lr.ph.i.i.i.preheader256, label %vector.ph100

vector.ph100:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec101 = and i64 %i.af, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec101, 3                    ; 3 uses
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.q, i64 %i.ah   ; 2 uses
  %i.ak = getelementptr i8, ptr %2, i64 %i.ah     ; 2 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next111, %vector.body102 ] ; 2 uses
  %i.al = shl i64 %index103, 3                    ; 3 uses
  %next.gep104 = getelementptr i8, ptr %1, i64 %i.al ; 2 uses
  %next.gep105 = getelementptr i8, ptr %i.q, i64 %i.al ; 2 uses
  %next.gep106 = getelementptr i8, ptr %2, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep106, i64 16
  %wide.load107 = load <2 x i64>, ptr %next.gep106, align 8, !tbaa !30
  %wide.load108 = load <2 x i64>, ptr %i.am, align 8, !tbaa !30
  %i.an = getelementptr i8, ptr %next.gep105, i64 16
  %wide.load109 = load <2 x i64>, ptr %next.gep105, align 8, !tbaa !30
  %wide.load110 = load <2 x i64>, ptr %i.an, align 8, !tbaa !30
  %i.ao = xor <2 x i64> %wide.load109, %wide.load107
  %i.ap = xor <2 x i64> %wide.load110, %wide.load108
  %i.aq = getelementptr i8, ptr %next.gep104, i64 16
  store <2 x i64> %i.ao, ptr %next.gep104, align 8, !tbaa !30
  store <2 x i64> %i.ap, ptr %i.aq, align 8, !tbaa !30
  %index.next111 = add nuw i64 %index103, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next111, %n.vec101
  br i1 %i.ar, label %middle.block112, label %vector.body102, !llvm.loop !12

middle.block112:                                  ; preds = %vector.body102
  %cmp.n113 = icmp eq i64 %i.af, %n.vec101
  br i1 %cmp.n113, label %XorWordsOut.exit.i.i, label %.lr.ph.i.i.i.preheader256

.lr.ph.i.i.i.preheader256:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block112
  %.sroa.061.0.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.ai, %middle.block112 ]
  %.sroa.0.0.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block112 ]
  %.ph257 = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block112 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader256, %.lr.ph.i.i.i
  %.sroa.061.0.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.sroa.061.0.i.i.ph, %.lr.ph.i.i.i.preheader256 ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.ph, %.lr.ph.i.i.i.preheader256 ] ; 2 uses
  %i.as = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.ph257, %.lr.ph.i.i.i.preheader256 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.au = load i64, ptr %i.as, align 8, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  %i.aw = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !30
  %i.ax = xor i64 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.061.0.i.i, i64 8 ; 2 uses
  store i64 %i.ax, ptr %.sroa.061.0.i.i, align 8, !tbaa !30
  %i.az = icmp ult ptr %i.at, %i.y
  br i1 %i.az, label %.lr.ph.i.i.i, label %XorWordsOut.exit.i.i, !llvm.loop !13

XorWordsOut.exit.i.i:                             ; preds = %.lr.ph.i.i.i, %middle.block112, %bb.e
  %.sroa.061.1.i.i = phi ptr [ %1, %bb.e ], [ %i.ai, %middle.block112 ], [ %i.ay, %.lr.ph.i.i.i ]
  %.sroa.055.0.i.i = phi ptr [ %2, %bb.e ], [ %i.ak, %middle.block112 ], [ %i.at, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i = phi ptr [ %i.q, %bb.e ], [ %i.aj, %middle.block112 ], [ %i.av, %.lr.ph.i.i.i ]
  %i.ba = and i32 %i.m, 7
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bb = and i64 %i.u, 7                         ; 2 uses
  %i.bc = and i64 %i.s, 7                         ; 2 uses
  %i.bd = and i64 %i.r, 7
  %i.be = icmp eq i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.bc, %i.bb
  %or.cond47.i.i = and i1 %i.be, %i.bf
  br i1 %or.cond47.i.i, label %.preheader.i.i, label %bb.g

.preheader.i.i:                                   ; preds = %bb.f
  %i.bg = icmp ne i64 %i.bb, 0
  %i.bh = icmp ne i32 %i.m, 0
  %i.bi = and i1 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.073.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %i.q, %.preheader.i.i ] ; 2 uses
  %.03072.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %2, %.preheader.i.i ] ; 2 uses
  %.03371.i.i = phi ptr [ %i.bo, %.lr.ph.i.i ], [ %1, %.preheader.i.i ] ; 2 uses
  %.03670.i.i = phi i32 [ %i.bp, %.lr.ph.i.i ], [ %i.m, %.preheader.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.03072.i.i, i64 1 ; 3 uses
  %i.bk = load i8, ptr %.03072.i.i, align 1, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %.073.i.i, i64 1 ; 2 uses
  %i.bm = load i8, ptr %.073.i.i, align 1, !tbaa !33
  %i.bn = xor i8 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %.03371.i.i, i64 1 ; 2 uses
  store i8 %i.bn, ptr %.03371.i.i, align 1, !tbaa !33
  %i.bp = add i32 %.03670.i.i, -1                 ; 3 uses
  %i.bq = ptrtoint ptr %i.bj to i64
  %i.br = and i64 %i.bq, 7
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = icmp ne i32 %i.bp, 0
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !14

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.036.lcssa.i.i = phi i32 [ %i.m, %.preheader.i.i ], [ %i.bp, %.lr.ph.i.i ] ; 3 uses
  %.033.lcssa.i.i = phi ptr [ %1, %.preheader.i.i ], [ %i.bo, %.lr.ph.i.i ] ; 6 uses
  %.030.lcssa.i.i = phi ptr [ %2, %.preheader.i.i ], [ %i.bj, %.lr.ph.i.i ] ; 7 uses
  %.0.lcssa.i.i = phi ptr [ %i.q, %.preheader.i.i ], [ %i.bl, %.lr.ph.i.i ] ; 6 uses
  %.033.lcssa.i.i85 = ptrtoaddr ptr %.033.lcssa.i.i to i64 ; 2 uses
  %.030.lcssa.i.i86 = ptrtoaddr ptr %.030.lcssa.i.i to i64 ; 4 uses
  %.0.lcssa.i.i87 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.bv = and i32 %.036.lcssa.i.i, -8
  %.idx.i48.i.i = zext i32 %i.bv to i64           ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.030.lcssa.i.i, i64 %.idx.i48.i.i
  %.not.i49.i.i = icmp ult i32 %.036.lcssa.i.i, 8
  br i1 %.not.i49.i.i, label %XorWordsOut.exit51.i.i, label %.lr.ph.i50.i.i.preheader

.lr.ph.i50.i.i.preheader:                         ; preds = %._crit_edge.i.i
  %i.bx = add i64 %.030.lcssa.i.i86, %.idx.i48.i.i
  %i.by = add i64 %.030.lcssa.i.i86, 8
  %i.bz = call i64 @llvm.umax.i64(i64 %i.bx, i64 %i.by)
  %i.ca = xor i64 %.030.lcssa.i.i86, -1
  %i.cb = add i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cb, 120
  br i1 %min.iters.check, label %.lr.ph.i50.i.i.preheader261, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i50.i.i.preheader
  %i.ce = sub i64 %.030.lcssa.i.i86, %.033.lcssa.i.i85
  %diff.check = icmp ugt i64 %i.ce, -32
  %i.cf = sub i64 %.0.lcssa.i.i87, %.033.lcssa.i.i85
  %diff.check88 = icmp ugt i64 %i.cf, -32
  %conflict.rdx = or i1 %diff.check, %diff.check88
  br i1 %conflict.rdx, label %.lr.ph.i50.i.i.preheader261, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cd, 4611686018427387900     ; 3 uses
  %i.cg = shl i64 %n.vec, 3                       ; 3 uses
  %i.ch = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.cg ; 2 uses
  %i.ci = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.cg ; 2 uses
  %i.cj = getelementptr i8, ptr %.030.lcssa.i.i, i64 %i.cg ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = shl i64 %index, 3                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.ck ; 2 uses
  %next.gep89 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ck ; 2 uses
  %next.gep90 = getelementptr i8, ptr %.030.lcssa.i.i, i64 %i.ck ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep90, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep90, align 8, !tbaa !30
  %wide.load91 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !30
  %i.cm = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load92 = load <2 x i64>, ptr %next.gep89, align 8, !tbaa !30
  %wide.load93 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !30
  %i.cn = xor <2 x i64> %wide.load92, %wide.load
  %i.co = xor <2 x i64> %wide.load93, %wide.load91
  %i.cp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.cn, ptr %next.gep, align 8, !tbaa !30
  store <2 x i64> %i.co, ptr %i.cp, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %XorWordsOut.exit51.i.i, label %.lr.ph.i50.i.i.preheader261

.lr.ph.i50.i.i.preheader261:                      ; preds = %vector.memcheck, %.lr.ph.i50.i.i.preheader, %middle.block
  %.sroa.061.2.i.i.ph = phi ptr [ %.033.lcssa.i.i, %vector.memcheck ], [ %.033.lcssa.i.i, %.lr.ph.i50.i.i.preheader ], [ %i.ch, %middle.block ]
  %.sroa.0.2.i.i.ph = phi ptr [ %.0.lcssa.i.i, %vector.memcheck ], [ %.0.lcssa.i.i, %.lr.ph.i50.i.i.preheader ], [ %i.ci, %middle.block ]
  %.ph262 = phi ptr [ %.030.lcssa.i.i, %vector.memcheck ], [ %.030.lcssa.i.i, %.lr.ph.i50.i.i.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i50.i.i

.lr.ph.i50.i.i:                                   ; preds = %.lr.ph.i50.i.i.preheader261, %.lr.ph.i50.i.i
  %.sroa.061.2.i.i = phi ptr [ %i.cx, %.lr.ph.i50.i.i ], [ %.sroa.061.2.i.i.ph, %.lr.ph.i50.i.i.preheader261 ] ; 2 uses
  %.sroa.0.2.i.i = phi ptr [ %i.cu, %.lr.ph.i50.i.i ], [ %.sroa.0.2.i.i.ph, %.lr.ph.i50.i.i.preheader261 ] ; 2 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i50.i.i ], [ %.ph262, %.lr.ph.i50.i.i.preheader261 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i, i64 8 ; 2 uses
  %i.cv = load i64, ptr %.sroa.0.2.i.i, align 8, !tbaa !30
  %i.cw = xor i64 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.061.2.i.i, i64 8 ; 2 uses
  store i64 %i.cw, ptr %.sroa.061.2.i.i, align 8, !tbaa !30
  %i.cy = icmp ult ptr %i.cs, %i.bw
  br i1 %i.cy, label %.lr.ph.i50.i.i, label %XorWordsOut.exit51.i.i, !llvm.loop !16

XorWordsOut.exit51.i.i:                           ; preds = %.lr.ph.i50.i.i, %middle.block, %._crit_edge.i.i
  %.sroa.061.3.i.i = phi ptr [ %.033.lcssa.i.i, %._crit_edge.i.i ], [ %i.ch, %middle.block ], [ %i.cx, %.lr.ph.i50.i.i ]
  %.sroa.055.1.i.i = phi ptr [ %.030.lcssa.i.i, %._crit_edge.i.i ], [ %i.cj, %middle.block ], [ %i.cs, %.lr.ph.i50.i.i ]
  %.sroa.0.3.i.i = phi ptr [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.ci, %middle.block ], [ %i.cu, %.lr.ph.i50.i.i ]
  %i.cz = and i32 %.036.lcssa.i.i, 7
  br label %bb.g

bb.g:                                             ; preds = %XorWordsOut.exit51.i.i, %bb.f, %XorWordsOut.exit.i.i
  %.137.i.i = phi i32 [ %i.ba, %XorWordsOut.exit.i.i ], [ %i.cz, %XorWordsOut.exit51.i.i ], [ %i.m, %bb.f ] ; 8 uses
  %.134.i.i = phi ptr [ %.sroa.061.1.i.i, %XorWordsOut.exit.i.i ], [ %.sroa.061.3.i.i, %XorWordsOut.exit51.i.i ], [ %1, %bb.f ] ; 7 uses
  %.131.i.i = phi ptr [ %.sroa.055.0.i.i, %XorWordsOut.exit.i.i ], [ %.sroa.055.1.i.i, %XorWordsOut.exit51.i.i ], [ %2, %bb.f ] ; 7 uses
  %.1.i.i = phi ptr [ %.sroa.0.1.i.i, %XorWordsOut.exit.i.i ], [ %.sroa.0.3.i.i, %XorWordsOut.exit51.i.i ], [ %i.q, %bb.f ] ; 7 uses
  %.134.i.i118 = ptrtoaddr ptr %.134.i.i to i64   ; 2 uses
  %.131.i.i119 = ptrtoaddr ptr %.131.i.i to i64
  %.1.i.i121 = ptrtoaddr ptr %.1.i.i to i64
  %.not77.i.i = icmp eq i32 %.137.i.i, 0
  br i1 %.not77.i.i, label %xorbufout.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.da = zext i32 %.137.i.i to i64               ; 5 uses
  %min.iters.check125 = icmp ult i32 %.137.i.i, 4
  br i1 %min.iters.check125, label %.lr.ph83.i.i.preheader, label %vector.memcheck117

vector.memcheck117:                               ; preds = %iter.check
  %i.db = sub i64 %.131.i.i119, %.134.i.i118
  %diff.check120 = icmp ugt i64 %i.db, -32
  %i.dc = sub i64 %.1.i.i121, %.134.i.i118
  %diff.check122 = icmp ugt i64 %i.dc, -32
  %conflict.rdx123 = or i1 %diff.check120, %diff.check122
  br i1 %conflict.rdx123, label %.lr.ph83.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck117
  %min.iters.check126 = icmp ult i32 %.137.i.i, 32
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph127

vector.ph127:                                     ; preds = %vector.main.loop.iter.check
  %i.dd = and i64 %i.da, 28
  %n.vec128 = and i64 %i.da, 4294967264           ; 7 uses
  %i.de = getelementptr i8, ptr %.1.i.i, i64 %n.vec128
  %i.df = getelementptr i8, ptr %.131.i.i, i64 %n.vec128
  %i.dg = getelementptr i8, ptr %.134.i.i, i64 %n.vec128
  %i.dh = trunc nuw i64 %n.vec128 to i32
  %i.di = sub i32 %.137.i.i, %i.dh
  br label %vector.body129

vector.body129:                                   ; preds = %vector.ph127, %vector.body129
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next138, %vector.body129 ] ; 4 uses
  %next.gep131 = getelementptr i8, ptr %.1.i.i, i64 %index130 ; 2 uses
  %next.gep132 = getelementptr i8, ptr %.131.i.i, i64 %index130 ; 2 uses
  %next.gep133 = getelementptr i8, ptr %.134.i.i, i64 %index130 ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep132, i64 16
  %wide.load134 = load <16 x i8>, ptr %next.gep132, align 1, !tbaa !33
  %wide.load135 = load <16 x i8>, ptr %i.dj, align 1, !tbaa !33
  %i.dk = getelementptr i8, ptr %next.gep131, i64 16
  %wide.load136 = load <16 x i8>, ptr %next.gep131, align 1, !tbaa !33
  %wide.load137 = load <16 x i8>, ptr %i.dk, align 1, !tbaa !33
  %i.dl = xor <16 x i8> %wide.load136, %wide.load134
  %i.dm = xor <16 x i8> %wide.load137, %wide.load135
  %i.dn = getelementptr i8, ptr %next.gep133, i64 16
  store <16 x i8> %i.dl, ptr %next.gep133, align 1, !tbaa !33
  store <16 x i8> %i.dm, ptr %i.dn, align 1, !tbaa !33
  %index.next138 = add nuw i64 %index130, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next138, %n.vec128
  br i1 %i.do, label %middle.block139, label %vector.body129, !llvm.loop !17

middle.block139:                                  ; preds = %vector.body129
  %cmp.n140 = icmp eq i64 %n.vec128, %i.da
  br i1 %cmp.n140, label %xorbufout.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block139
  %min.epilog.iters.check = icmp eq i64 %i.dd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph83.i.i.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec128, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec145 = and i64 %i.da, 4294967292           ; 6 uses
  %i.dp = getelementptr i8, ptr %.1.i.i, i64 %n.vec145
  %i.dq = getelementptr i8, ptr %.131.i.i, i64 %n.vec145
  %i.dr = getelementptr i8, ptr %.134.i.i, i64 %n.vec145
  %i.ds = trunc nuw i64 %n.vec145 to i32
  %i.dt = sub i32 %.137.i.i, %i.ds
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index146 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next152, %vec.epilog.vector.body ] ; 4 uses
  %next.gep147 = getelementptr i8, ptr %.1.i.i, i64 %index146
  %next.gep148 = getelementptr i8, ptr %.131.i.i, i64 %index146
  %next.gep149 = getelementptr i8, ptr %.134.i.i, i64 %index146
  %wide.load150 = load <4 x i8>, ptr %next.gep148, align 1, !tbaa !33
  %wide.load151 = load <4 x i8>, ptr %next.gep147, align 1, !tbaa !33
  %i.du = xor <4 x i8> %wide.load151, %wide.load150
  store <4 x i8> %i.du, ptr %next.gep149, align 1, !tbaa !33
  %index.next152 = add nuw i64 %index146, 4       ; 2 uses
  %i.dv = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.dv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n153 = icmp eq i64 %n.vec145, %i.da
  br i1 %cmp.n153, label %xorbufout.exit.i, label %.lr.ph83.i.i.preheader

.lr.ph83.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck117, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.281.i.i.ph = phi ptr [ %.1.i.i, %iter.check ], [ %.1.i.i, %vector.memcheck117 ], [ %i.de, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.middle.block ] ; 2 uses
  %.23280.i.i.ph = phi ptr [ %.131.i.i, %iter.check ], [ %.131.i.i, %vector.memcheck117 ], [ %i.df, %vec.epilog.iter.check ], [ %i.dq, %vec.epilog.middle.block ] ; 2 uses
  %.23579.i.i.ph = phi ptr [ %.134.i.i, %iter.check ], [ %.134.i.i, %vector.memcheck117 ], [ %i.dg, %vec.epilog.iter.check ], [ %i.dr, %vec.epilog.middle.block ] ; 2 uses
  %.23878.i.i.ph = phi i32 [ %.137.i.i, %iter.check ], [ %.137.i.i, %vector.memcheck117 ], [ %i.di, %vec.epilog.iter.check ], [ %i.dt, %vec.epilog.middle.block ] ; 4 uses
  %i.dw = add i32 %.23878.i.i.ph, -1
  %xtraiter = and i32 %.23878.i.i.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph83.i.i.prol.loopexit, label %.lr.ph83.i.i.prol

.lr.ph83.i.i.prol:                                ; preds = %.lr.ph83.i.i.preheader, %.lr.ph83.i.i.prol
  %.281.i.i.prol = phi ptr [ %i.dz, %.lr.ph83.i.i.prol ], [ %.281.i.i.ph, %.lr.ph83.i.i.preheader ] ; 2 uses
  %.23280.i.i.prol = phi ptr [ %i.dx, %.lr.ph83.i.i.prol ], [ %.23280.i.i.ph, %.lr.ph83.i.i.preheader ] ; 2 uses
  %.23579.i.i.prol = phi ptr [ %i.ec, %.lr.ph83.i.i.prol ], [ %.23579.i.i.ph, %.lr.ph83.i.i.preheader ] ; 2 uses
  %.23878.i.i.prol = phi i32 [ %i.ed, %.lr.ph83.i.i.prol ], [ %.23878.i.i.ph, %.lr.ph83.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph83.i.i.prol ], [ 0, %.lr.ph83.i.i.preheader ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.23280.i.i.prol, i64 1 ; 2 uses
  %i.dy = load i8, ptr %.23280.i.i.prol, align 1, !tbaa !33
  %i.dz = getelementptr inbounds nuw i8, ptr %.281.i.i.prol, i64 1 ; 2 uses
  %i.ea = load i8, ptr %.281.i.i.prol, align 1, !tbaa !33
  %i.eb = xor i8 %i.ea, %i.dy
  %i.ec = getelementptr inbounds nuw i8, ptr %.23579.i.i.prol, i64 1 ; 2 uses
  store i8 %i.eb, ptr %.23579.i.i.prol, align 1, !tbaa !33
  %i.ed = add i32 %.23878.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph83.i.i.prol.loopexit, label %.lr.ph83.i.i.prol, !llvm.loop !19

.lr.ph83.i.i.prol.loopexit:                       ; preds = %.lr.ph83.i.i.prol, %.lr.ph83.i.i.preheader
  %.281.i.i.unr = phi ptr [ %.281.i.i.ph, %.lr.ph83.i.i.preheader ], [ %i.dz, %.lr.ph83.i.i.prol ]
  %.23280.i.i.unr = phi ptr [ %.23280.i.i.ph, %.lr.ph83.i.i.preheader ], [ %i.dx, %.lr.ph83.i.i.prol ]
  %.23579.i.i.unr = phi ptr [ %.23579.i.i.ph, %.lr.ph83.i.i.preheader ], [ %i.ec, %.lr.ph83.i.i.prol ]
  %.23878.i.i.unr = phi i32 [ %.23878.i.i.ph, %.lr.ph83.i.i.preheader ], [ %i.ed, %.lr.ph83.i.i.prol ]
  %i.ee = icmp ult i32 %i.dw, 3
  br i1 %i.ee, label %xorbufout.exit.i, label %.lr.ph83.i.i

.lr.ph83.i.i:                                     ; preds = %.lr.ph83.i.i.prol.loopexit, %.lr.ph83.i.i
  %.281.i.i = phi ptr [ %i.ez, %.lr.ph83.i.i ], [ %.281.i.i.unr, %.lr.ph83.i.i.prol.loopexit ] ; 5 uses
  %.23280.i.i = phi ptr [ %i.ex, %.lr.ph83.i.i ], [ %.23280.i.i.unr, %.lr.ph83.i.i.prol.loopexit ] ; 5 uses
  %.23579.i.i = phi ptr [ %i.fc, %.lr.ph83.i.i ], [ %.23579.i.i.unr, %.lr.ph83.i.i.prol.loopexit ] ; 5 uses
  %.23878.i.i = phi i32 [ %i.fd, %.lr.ph83.i.i ], [ %.23878.i.i.unr, %.lr.ph83.i.i.prol.loopexit ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.23280.i.i, i64 1
  %i.eg = load i8, ptr %.23280.i.i, align 1, !tbaa !33
  %i.eh = getelementptr inbounds nuw i8, ptr %.281.i.i, i64 1
  %i.ei = load i8, ptr %.281.i.i, align 1, !tbaa !33
  %i.ej = xor i8 %i.ei, %i.eg
  %i.ek = getelementptr inbounds nuw i8, ptr %.23579.i.i, i64 1
  store i8 %i.ej, ptr %.23579.i.i, align 1, !tbaa !33
  %i.el = getelementptr inbounds nuw i8, ptr %.23280.i.i, i64 2
  %i.em = load i8, ptr %i.ef, align 1, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %.281.i.i, i64 2
  %i.eo = load i8, ptr %i.eh, align 1, !tbaa !33
  %i.ep = xor i8 %i.eo, %i.em
  %i.eq = getelementptr inbounds nuw i8, ptr %.23579.i.i, i64 2
  store i8 %i.ep, ptr %i.ek, align 1, !tbaa !33
  %i.er = getelementptr inbounds nuw i8, ptr %.23280.i.i, i64 3
  %i.es = load i8, ptr %i.el, align 1, !tbaa !33
  %i.et = getelementptr inbounds nuw i8, ptr %.281.i.i, i64 3
  %i.eu = load i8, ptr %i.en, align 1, !tbaa !33
  %i.ev = xor i8 %i.eu, %i.es
  %i.ew = getelementptr inbounds nuw i8, ptr %.23579.i.i, i64 3
  store i8 %i.ev, ptr %i.eq, align 1, !tbaa !33
  %i.ex = getelementptr inbounds nuw i8, ptr %.23280.i.i, i64 4
  %i.ey = load i8, ptr %i.er, align 1, !tbaa !33
  %i.ez = getelementptr inbounds nuw i8, ptr %.281.i.i, i64 4
  %i.fa = load i8, ptr %i.et, align 1, !tbaa !33
  %i.fb = xor i8 %i.fa, %i.ey
  %i.fc = getelementptr inbounds nuw i8, ptr %.23579.i.i, i64 4
  store i8 %i.fb, ptr %i.ew, align 1, !tbaa !33
  %i.fd = add i32 %.23878.i.i, -4                 ; 2 uses
  %.not.i.i.3 = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i.3, label %xorbufout.exit.i, label %.lr.ph83.i.i, !llvm.loop !20

xorbufout.exit.i:                                 ; preds = %.lr.ph83.i.i.prol.loopexit, %.lr.ph83.i.i, %middle.block139, %vec.epilog.middle.block, %bb.g
  %i.fe = load i32, ptr %i.f, align 4, !tbaa !9   ; 2 uses
  %i.ff = sub i32 %i.fe, %i.m
  store i32 %i.ff, ptr %i.f, align 4, !tbaa !9
  %i.fg = icmp eq i32 %i.fe, %i.m
  br i1 %i.fg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %xorbufout.exit.i
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !10
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %xorbufout.exit.i
  %i.fk = sub i32 %3, %i.m
  %i.fl = zext i32 %i.m to i64                    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 %i.fl
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.037.i = phi ptr [ %i.fn, %bb.i ], [ %2, %bb.c ] ; 3 uses
  %.035.i = phi ptr [ %i.fm, %bb.i ], [ %1, %bb.c ] ; 3 uses
  %.0.i = phi i32 [ %i.fk, %bb.i ], [ %3, %bb.c ] ; 3 uses
  %i.fo = icmp ugt i32 %.0.i, 63
  br i1 %i.fo, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j
  %.037.i160 = ptrtoaddr ptr %.037.i to i64
  %.035.i159 = ptrtoaddr ptr %.035.i to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fx = sub i64 %.037.i160, %.035.i159
  %diff.check161 = icmp ugt i64 %i.fx, -32
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %next.gep166.1 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.k

bb.k:                                             ; preds = %xorbufout.exit84.i, %.lr.ph.i
  %.1160.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %i.is, %xorbufout.exit84.i ]
  %.136158.i = phi ptr [ %.035.i, %.lr.ph.i ], [ %i.it, %xorbufout.exit84.i ] ; 15 uses
  %.138156.i = phi ptr [ %.037.i, %.lr.ph.i ], [ %i.iu, %xorbufout.exit84.i ] ; 15 uses
  call fastcc void @wc_Chacha_wordtobyte(ptr noundef %4, ptr noundef nonnull %0)
  %i.ga = load i32, ptr %i.fp, align 4, !tbaa !10
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fp, align 4, !tbaa !10
  %i.gc = ptrtoint ptr %.136158.i to i64
  %i.gd = ptrtoint ptr %.138156.i to i64
  %i.ge = or i64 %i.gd, %i.gc
  %i.gf = and i64 %i.ge, 7
  %or.cond44.i44.i = icmp eq i64 %i.gf, 0
  br i1 %or.cond44.i44.i, label %.lr.ph.i.i77.preheader.i, label %vector.memcheck158

vector.memcheck158:                               ; preds = %bb.k
  br i1 %diff.check161, label %.lr.ph83.i51.i, label %vector.body164

vector.body164:                                   ; preds = %vector.memcheck158
  %i.gg = getelementptr i8, ptr %.138156.i, i64 16
  %wide.load169 = load <16 x i8>, ptr %.138156.i, align 1, !tbaa !33
  %wide.load170 = load <16 x i8>, ptr %i.gg, align 1, !tbaa !33
  %wide.load171 = load <16 x i8>, ptr %4, align 16, !tbaa !33
  %wide.load172 = load <16 x i8>, ptr %i.fy, align 16, !tbaa !33
  %i.gh = xor <16 x i8> %wide.load171, %wide.load169
  %i.gi = xor <16 x i8> %wide.load172, %wide.load170
  %i.gj = getelementptr i8, ptr %.136158.i, i64 16
  store <16 x i8> %i.gh, ptr %.136158.i, align 1, !tbaa !33
  store <16 x i8> %i.gi, ptr %i.gj, align 1, !tbaa !33
  %next.gep167.1 = getelementptr i8, ptr %.138156.i, i64 32
  %next.gep168.1 = getelementptr i8, ptr %.136158.i, i64 32
  %i.gk = getelementptr i8, ptr %.138156.i, i64 48
  %wide.load169.1 = load <16 x i8>, ptr %next.gep167.1, align 1, !tbaa !33
  %wide.load170.1 = load <16 x i8>, ptr %i.gk, align 1, !tbaa !33
  %wide.load171.1 = load <16 x i8>, ptr %next.gep166.1, align 16, !tbaa !33
  %wide.load172.1 = load <16 x i8>, ptr %i.fz, align 16, !tbaa !33
  %i.gl = xor <16 x i8> %wide.load171.1, %wide.load169.1
  %i.gm = xor <16 x i8> %wide.load172.1, %wide.load170.1
  %i.gn = getelementptr i8, ptr %.136158.i, i64 48
  store <16 x i8> %i.gl, ptr %next.gep168.1, align 1, !tbaa !33
  store <16 x i8> %i.gm, ptr %i.gn, align 1, !tbaa !33
  br label %xorbufout.exit84.i

.lr.ph.i.i77.preheader.i:                         ; preds = %bb.k
  %i.go = load i64, ptr %.138156.i, align 8, !tbaa !30
  %i.gp = load i64, ptr %4, align 16, !tbaa !30
  %i.gq = xor i64 %i.gp, %i.go
  %i.gr = getelementptr inbounds nuw i8, ptr %.136158.i, i64 8
  store i64 %i.gq, ptr %.136158.i, align 8, !tbaa !30
  %.ptr136.1.i = getelementptr inbounds nuw i8, ptr %.138156.i, i64 8
  %i.gs = load i64, ptr %.ptr136.1.i, align 8, !tbaa !30
  %i.gt = load i64, ptr %i.fq, align 8, !tbaa !30
  %i.gu = xor i64 %i.gt, %i.gs
  %i.gv = getelementptr inbounds nuw i8, ptr %.136158.i, i64 16
  store i64 %i.gu, ptr %i.gr, align 8, !tbaa !30
  %.ptr136.2.i = getelementptr inbounds nuw i8, ptr %.138156.i, i64 16
  %i.gw = load i64, ptr %.ptr136.2.i, align 8, !tbaa !30
  %i.gx = load i64, ptr %i.fr, align 16, !tbaa !30
  %i.gy = xor i64 %i.gx, %i.gw
  %i.gz = getelementptr inbounds nuw i8, ptr %.136158.i, i64 24
  store i64 %i.gy, ptr %i.gv, align 8, !tbaa !30
  %.ptr136.3.i = getelementptr inbounds nuw i8, ptr %.138156.i, i64 24
  %i.ha = load i64, ptr %.ptr136.3.i, align 8, !tbaa !30
  %i.hb = load i64, ptr %i.fs, align 8, !tbaa !30
  %i.hc = xor i64 %i.hb, %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %.136158.i, i64 32
  store i64 %i.hc, ptr %i.gz, align 8, !tbaa !30
  %.ptr136.4.i = getelementptr inbounds nuw i8, ptr %.138156.i, i64 32
  %i.he = load i64, ptr %.ptr136.4.i, align 8, !tbaa !30
  %i.hf = load i64, ptr %i.ft, align 16, !tbaa !30
  %i.hg = xor i64 %i.hf, %i.he
  %i.hh = getelementptr inbounds nuw i8, ptr %.136158.i, i64 40
  store i64 %i.hg, ptr %i.hd, align 8, !tbaa !30
  %.ptr136.5.i = getelementptr inbounds nuw i8, ptr %.138156.i, i64 40
  %i.hi = load i64, ptr %.ptr136.5.i, align 8, !tbaa !30
  %i.hj = load i64, ptr %i.fu, align 8, !tbaa !30
  %i.hk = xor i64 %i.hj, %i.hi
  %i.hl = getelementptr inbounds nuw i8, ptr %.136158.i, i64 48
  store i64 %i.hk, ptr %i.hh, align 8, !tbaa !30
  %.ptr136.6.i = getelementptr inbounds nuw i8, ptr %.138156.i, i64 48
  %i.hm = load i64, ptr %.ptr136.6.i, align 8, !tbaa !30
  %i.hn = load i64, ptr %i.fv, align 16, !tbaa !30
  %i.ho = xor i64 %i.hn, %i.hm
  %i.hp = getelementptr inbounds nuw i8, ptr %.136158.i, i64 56
  store i64 %i.ho, ptr %i.hl, align 8, !tbaa !30
  %.ptr136.7.i = getelementptr inbounds nuw i8, ptr %.138156.i, i64 56
  %i.hq = load i64, ptr %.ptr136.7.i, align 8, !tbaa !30
  %i.hr = load i64, ptr %i.fw, align 8, !tbaa !30
  %i.hs = xor i64 %i.hr, %i.hq
  store i64 %i.hs, ptr %i.hp, align 8, !tbaa !30
  br label %xorbufout.exit84.i

.lr.ph83.i51.i:                                   ; preds = %vector.memcheck158, %.lr.ph83.i51.i
  %.281.i52.i = phi ptr [ %i.in, %.lr.ph83.i51.i ], [ %4, %vector.memcheck158 ] ; 5 uses
  %.23280.i53.i = phi ptr [ %i.il, %.lr.ph83.i51.i ], [ %.138156.i, %vector.memcheck158 ] ; 5 uses
  %.23579.i54.i = phi ptr [ %i.iq, %.lr.ph83.i51.i ], [ %.136158.i, %vector.memcheck158 ] ; 5 uses
  %.23878.i55.i = phi i32 [ %i.ir, %.lr.ph83.i51.i ], [ 64, %vector.memcheck158 ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.23280.i53.i, i64 1
  %i.hu = load i8, ptr %.23280.i53.i, align 1, !tbaa !33
  %i.hv = getelementptr inbounds nuw i8, ptr %.281.i52.i, i64 1
  %i.hw = load i8, ptr %.281.i52.i, align 1, !tbaa !33
  %i.hx = xor i8 %i.hw, %i.hu
  %i.hy = getelementptr inbounds nuw i8, ptr %.23579.i54.i, i64 1
  store i8 %i.hx, ptr %.23579.i54.i, align 1, !tbaa !33
  %i.hz = getelementptr inbounds nuw i8, ptr %.23280.i53.i, i64 2
  %i.ia = load i8, ptr %i.ht, align 1, !tbaa !33
  %i.ib = getelementptr inbounds nuw i8, ptr %.281.i52.i, i64 2
  %i.ic = load i8, ptr %i.hv, align 1, !tbaa !33
  %i.id = xor i8 %i.ic, %i.ia
  %i.ie = getelementptr inbounds nuw i8, ptr %.23579.i54.i, i64 2
  store i8 %i.id, ptr %i.hy, align 1, !tbaa !33
  %i.if = getelementptr inbounds nuw i8, ptr %.23280.i53.i, i64 3
  %i.ig = load i8, ptr %i.hz, align 1, !tbaa !33
  %i.ih = getelementptr inbounds nuw i8, ptr %.281.i52.i, i64 3
  %i.ii = load i8, ptr %i.ib, align 1, !tbaa !33
  %i.ij = xor i8 %i.ii, %i.ig
  %i.ik = getelementptr inbounds nuw i8, ptr %.23579.i54.i, i64 3
  store i8 %i.ij, ptr %i.ie, align 1, !tbaa !33
  %i.il = getelementptr inbounds nuw i8, ptr %.23280.i53.i, i64 4
  %i.im = load i8, ptr %i.if, align 1, !tbaa !33
  %i.in = getelementptr inbounds nuw i8, ptr %.281.i52.i, i64 4
  %i.io = load i8, ptr %i.ih, align 1, !tbaa !33
  %i.ip = xor i8 %i.io, %i.im
  %i.iq = getelementptr inbounds nuw i8, ptr %.23579.i54.i, i64 4
  store i8 %i.ip, ptr %i.ik, align 1, !tbaa !33
  %i.ir = add nsw i32 %.23878.i55.i, -4           ; 2 uses
  %.not.i56.i.3 = icmp eq i32 %i.ir, 0
  br i1 %.not.i56.i.3, label %xorbufout.exit84.i, label %.lr.ph83.i51.i, !llvm.loop !21

xorbufout.exit84.i:                               ; preds = %.lr.ph83.i51.i, %vector.body164, %.lr.ph.i.i77.preheader.i
  %i.is = add i32 %.1160.i, -64                   ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.136158.i, i64 64 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.138156.i, i64 64 ; 2 uses
  %i.iv = icmp ugt i32 %i.is, 63
  br i1 %i.iv, label %bb.k, label %._crit_edge.i, !llvm.loop !22

._crit_edge.i:                                    ; preds = %xorbufout.exit84.i, %bb.j
  %.138.lcssa.i = phi ptr [ %.037.i, %bb.j ], [ %i.iu, %xorbufout.exit84.i ] ; 8 uses
  %.136.lcssa.i = phi ptr [ %.035.i, %bb.j ], [ %i.it, %xorbufout.exit84.i ] ; 7 uses
  %.1.lcssa.i = phi i32 [ %.0.i, %bb.j ], [ %i.is, %xorbufout.exit84.i ] ; 6 uses
  %.not43.i = icmp eq i32 %.1.lcssa.i, 0
  br i1 %.not43.i, label %wc_Chacha_encrypt_bytes.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  call fastcc void @wc_Chacha_wordtobyte(ptr noundef %4, ptr noundef nonnull %0)
  %i.iw = ptrtoint ptr %.136.lcssa.i to i64       ; 3 uses
  %i.ix = ptrtoint ptr %.138.lcssa.i to i64       ; 5 uses
  %i.iy = or i64 %i.iw, %i.ix
  %i.iz = and i64 %i.iy, 7
  %or.cond44.i85.i = icmp eq i64 %i.iz, 0
  br i1 %or.cond44.i85.i, label %bb.m, label %iter.check228

bb.m:                                             ; preds = %bb.l
  %i.ja = and i32 %.1.lcssa.i, 56
  %.idx.i.i118.i = zext nneg i32 %i.ja to i64     ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.138.lcssa.i, i64 %.idx.i.i118.i
  %.not.i.i119.i = icmp samesign ult i32 %.1.lcssa.i, 8
  br i1 %.not.i.i119.i, label %.loopexit.i, label %.lr.ph.i.i120.i.preheader

.lr.ph.i.i120.i.preheader:                        ; preds = %bb.m
  %i.jc = add i64 %i.ix, %.idx.i.i118.i
  %i.jd = add i64 %i.ix, 8
  %i.je = call i64 @llvm.umax.i64(i64 %i.jc, i64 %i.jd)
  %i.jf = xor i64 %i.ix, -1
  %i.jg = add i64 %i.je, %i.jf                    ; 2 uses
  %i.jh = lshr i64 %i.jg, 3
  %i.ji = add nuw nsw i64 %i.jh, 1                ; 2 uses
  %min.iters.check180 = icmp ult i64 %i.jg, 120
  br i1 %min.iters.check180, label %.lr.ph.i.i120.i.preheader249, label %vector.memcheck175

vector.memcheck175:                               ; preds = %.lr.ph.i.i120.i.preheader
  %i.jj = sub i64 %i.ix, %i.iw
  %diff.check176 = icmp ugt i64 %i.jj, -32
  %i.jk = sub i64 %i.b, %i.iw
  %diff.check177 = icmp ugt i64 %i.jk, -32
  %conflict.rdx178 = or i1 %diff.check176, %diff.check177
  br i1 %conflict.rdx178, label %.lr.ph.i.i120.i.preheader249, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck175
  %n.vec182 = and i64 %i.ji, 4611686018427387900  ; 3 uses
  %i.jl = shl i64 %n.vec182, 3                    ; 3 uses
  %i.jm = getelementptr i8, ptr %.136.lcssa.i, i64 %i.jl ; 2 uses
  %i.jn = getelementptr i8, ptr %4, i64 %i.jl     ; 2 uses
  %i.jo = getelementptr i8, ptr %.138.lcssa.i, i64 %i.jl ; 2 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph181
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next192, %vector.body183 ] ; 2 uses
  %i.jp = shl i64 %index184, 3                    ; 3 uses
  %next.gep185 = getelementptr i8, ptr %.136.lcssa.i, i64 %i.jp ; 2 uses
  %next.gep186 = getelementptr i8, ptr %4, i64 %i.jp ; 2 uses
  %next.gep187 = getelementptr i8, ptr %.138.lcssa.i, i64 %i.jp ; 2 uses
  %i.jq = getelementptr i8, ptr %next.gep187, i64 16
  %wide.load188 = load <2 x i64>, ptr %next.gep187, align 8, !tbaa !30
  %wide.load189 = load <2 x i64>, ptr %i.jq, align 8, !tbaa !30
  %i.jr = getelementptr i8, ptr %next.gep186, i64 16
  %wide.load190 = load <2 x i64>, ptr %next.gep186, align 16, !tbaa !30
  %wide.load191 = load <2 x i64>, ptr %i.jr, align 16, !tbaa !30
  %i.js = xor <2 x i64> %wide.load190, %wide.load188
  %i.jt = xor <2 x i64> %wide.load191, %wide.load189
  %i.ju = getelementptr i8, ptr %next.gep185, i64 16
  store <2 x i64> %i.js, ptr %next.gep185, align 8, !tbaa !30
  store <2 x i64> %i.jt, ptr %i.ju, align 8, !tbaa !30
  %index.next192 = add nuw i64 %index184, 4       ; 2 uses
  %i.jv = icmp eq i64 %index.next192, %n.vec182
  br i1 %i.jv, label %middle.block193, label %vector.body183, !llvm.loop !23

middle.block193:                                  ; preds = %vector.body183
  %cmp.n194 = icmp eq i64 %i.ji, %n.vec182
  br i1 %cmp.n194, label %.loopexit.i, label %.lr.ph.i.i120.i.preheader249

.lr.ph.i.i120.i.preheader249:                     ; preds = %vector.memcheck175, %.lr.ph.i.i120.i.preheader, %middle.block193
  %.sroa.061.0.i121.i.ph = phi ptr [ %.136.lcssa.i, %vector.memcheck175 ], [ %.136.lcssa.i, %.lr.ph.i.i120.i.preheader ], [ %i.jm, %middle.block193 ]
  %.sroa.0.0.i122.i.ph = phi ptr [ %4, %vector.memcheck175 ], [ %4, %.lr.ph.i.i120.i.preheader ], [ %i.jn, %middle.block193 ]
  %.ph = phi ptr [ %.138.lcssa.i, %vector.memcheck175 ], [ %.138.lcssa.i, %.lr.ph.i.i120.i.preheader ], [ %i.jo, %middle.block193 ]
  br label %.lr.ph.i.i120.i

.lr.ph.i.i120.i:                                  ; preds = %.lr.ph.i.i120.i.preheader249, %.lr.ph.i.i120.i
  %.sroa.061.0.i121.i = phi ptr [ %i.kc, %.lr.ph.i.i120.i ], [ %.sroa.061.0.i121.i.ph, %.lr.ph.i.i120.i.preheader249 ] ; 2 uses
  %.sroa.0.0.i122.i = phi ptr [ %i.jz, %.lr.ph.i.i120.i ], [ %.sroa.0.0.i122.i.ph, %.lr.ph.i.i120.i.preheader249 ] ; 2 uses
  %i.jw = phi ptr [ %i.jx, %.lr.ph.i.i120.i ], [ %.ph, %.lr.ph.i.i120.i.preheader249 ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 3 uses
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !30
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i122.i, i64 8 ; 2 uses
  %i.ka = load i64, ptr %.sroa.0.0.i122.i, align 8, !tbaa !30
  %i.kb = xor i64 %i.ka, %i.jy
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.061.0.i121.i, i64 8 ; 2 uses
  store i64 %i.kb, ptr %.sroa.061.0.i121.i, align 8, !tbaa !30
  %i.kd = icmp ult ptr %i.jx, %i.jb
  br i1 %i.kd, label %.lr.ph.i.i120.i, label %.loopexit.i, !llvm.loop !24

.loopexit.i:                                      ; preds = %.lr.ph.i.i120.i, %middle.block193, %bb.m
  %.sroa.061.1.i124.i = phi ptr [ %.136.lcssa.i, %bb.m ], [ %i.jm, %middle.block193 ], [ %i.kc, %.lr.ph.i.i120.i ]
  %.sroa.055.0.i125.i = phi ptr [ %.138.lcssa.i, %bb.m ], [ %i.jo, %middle.block193 ], [ %i.jx, %.lr.ph.i.i120.i ]
  %.sroa.0.1.i126.i = phi ptr [ %4, %bb.m ], [ %i.jn, %middle.block193 ], [ %i.jz, %.lr.ph.i.i120.i ]
  %i.ke = and i32 %.1.lcssa.i, 7                  ; 2 uses
  %.not77.i91.i = icmp eq i32 %i.ke, 0
  br i1 %.not77.i91.i, label %xorbufout.exit127.i, label %iter.check228

iter.check228:                                    ; preds = %.loopexit.i, %bb.l
  %.1.i90208.i = phi ptr [ %.sroa.0.1.i126.i, %.loopexit.i ], [ %4, %bb.l ] ; 7 uses
  %.131.i89207.i = phi ptr [ %.sroa.055.0.i125.i, %.loopexit.i ], [ %.138.lcssa.i, %bb.l ] ; 7 uses
  %.134.i88206.i = phi ptr [ %.sroa.061.1.i124.i, %.loopexit.i ], [ %.136.lcssa.i, %bb.l ] ; 7 uses
  %.137.i87205.i = phi i32 [ %i.ke, %.loopexit.i ], [ %.1.lcssa.i, %bb.l ] ; 7 uses
  %i.kf = zext i32 %.137.i87205.i to i64          ; 5 uses
  %min.iters.check206 = icmp ult i32 %.137.i87205.i, 4
  br i1 %min.iters.check206, label %.lr.ph83.i92.i.preheader, label %vector.memcheck198

vector.memcheck198:                               ; preds = %iter.check228
  %.1.i90208.i202 = ptrtoaddr ptr %.1.i90208.i to i64
  %.131.i89207.i200 = ptrtoaddr ptr %.131.i89207.i to i64
  %.134.i88206.i199 = ptrtoaddr ptr %.134.i88206.i to i64 ; 2 uses
  %i.kg = sub i64 %.131.i89207.i200, %.134.i88206.i199
  %diff.check201 = icmp ugt i64 %i.kg, -32
  %i.kh = sub i64 %.1.i90208.i202, %.134.i88206.i199
  %diff.check203 = icmp ugt i64 %i.kh, -32
  %conflict.rdx204 = or i1 %diff.check201, %diff.check203
  br i1 %conflict.rdx204, label %.lr.ph83.i92.i.preheader, label %vector.main.loop.iter.check207

vector.main.loop.iter.check207:                   ; preds = %vector.memcheck198
  %min.iters.check208 = icmp ult i32 %.137.i87205.i, 32
  br i1 %min.iters.check208, label %vec.epilog.ph232, label %vector.ph209

vector.ph209:                                     ; preds = %vector.main.loop.iter.check207
  %i.ki = and i64 %i.kf, 28
  %n.vec210 = and i64 %i.kf, 4294967264           ; 7 uses
  %i.kj = getelementptr i8, ptr %.1.i90208.i, i64 %n.vec210
  %i.kk = getelementptr i8, ptr %.131.i89207.i, i64 %n.vec210
  %i.kl = getelementptr i8, ptr %.134.i88206.i, i64 %n.vec210
  %i.km = trunc nuw i64 %n.vec210 to i32
  %i.kn = sub i32 %.137.i87205.i, %i.km
  br label %vector.body211

vector.body211:                                   ; preds = %vector.ph209, %vector.body211
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next220, %vector.body211 ] ; 4 uses
  %next.gep213 = getelementptr i8, ptr %.1.i90208.i, i64 %index212 ; 2 uses
  %next.gep214 = getelementptr i8, ptr %.131.i89207.i, i64 %index212 ; 2 uses
  %next.gep215 = getelementptr i8, ptr %.134.i88206.i, i64 %index212 ; 2 uses
  %i.ko = getelementptr i8, ptr %next.gep214, i64 16
  %wide.load216 = load <16 x i8>, ptr %next.gep214, align 1, !tbaa !33
  %wide.load217 = load <16 x i8>, ptr %i.ko, align 1, !tbaa !33
  %i.kp = getelementptr i8, ptr %next.gep213, i64 16
  %wide.load218 = load <16 x i8>, ptr %next.gep213, align 1, !tbaa !33
  %wide.load219 = load <16 x i8>, ptr %i.kp, align 1, !tbaa !33
  %5 = xor <16 x i8> %wide.load218, %wide.load216
  %i.kq = xor <16 x i8> %wide.load219, %wide.load217
  %6 = getelementptr i8, ptr %next.gep215, i64 16
  store <16 x i8> %5, ptr %next.gep215, align 1, !tbaa !33
  store <16 x i8> %i.kq, ptr %6, align 1, !tbaa !33
  %index.next220 = add nuw i64 %index212, 32      ; 2 uses
  %i.kr = icmp eq i64 %index.next220, %n.vec210
  br i1 %i.kr, label %middle.block221, label %vector.body211, !llvm.loop !25

middle.block221:                                  ; preds = %vector.body211
  %cmp.n222 = icmp eq i64 %n.vec210, %i.kf
  br i1 %cmp.n222, label %xorbufout.exit127.i, label %vec.epilog.iter.check230

vec.epilog.iter.check230:                         ; preds = %middle.block221
  %min.epilog.iters.check231 = icmp eq i64 %i.ki, 0
  br i1 %min.epilog.iters.check231, label %.lr.ph83.i92.i.preheader, label %vec.epilog.ph232, !prof !34

vec.epilog.ph232:                                 ; preds = %vector.main.loop.iter.check207, %vec.epilog.iter.check230
  %vec.epilog.resume.val223 = phi i64 [ %n.vec210, %vec.epilog.iter.check230 ], [ 0, %vector.main.loop.iter.check207 ]
  %n.vec233 = and i64 %i.kf, 4294967292           ; 6 uses
  %i.ks = getelementptr i8, ptr %.1.i90208.i, i64 %n.vec233
  %i.kt = getelementptr i8, ptr %.131.i89207.i, i64 %n.vec233
  %i.ku = getelementptr i8, ptr %.134.i88206.i, i64 %n.vec233
  %i.kv = trunc nuw i64 %n.vec233 to i32
  %i.kw = sub i32 %.137.i87205.i, %i.kv
  br label %vec.epilog.vector.body234

vec.epilog.vector.body234:                        ; preds = %vec.epilog.vector.body234, %vec.epilog.ph232
  %index235 = phi i64 [ %vec.epilog.resume.val223, %vec.epilog.ph232 ], [ %index.next241, %vec.epilog.vector.body234 ] ; 4 uses
  %next.gep236.a = getelementptr i8, ptr %.1.i90208.i, i64 %index235
  %next.gep237 = getelementptr i8, ptr %.131.i89207.i, i64 %index235
  %next.gep238 = getelementptr i8, ptr %.134.i88206.i, i64 %index235
  %wide.load239 = load <4 x i8>, ptr %next.gep237, align 1, !tbaa !33
  %wide.load240 = load <4 x i8>, ptr %next.gep236.a, align 1, !tbaa !33
  %i.kx = xor <4 x i8> %wide.load240, %wide.load239
  store <4 x i8> %i.kx, ptr %next.gep238, align 1, !tbaa !33
  %index.next241 = add nuw i64 %index235, 4       ; 2 uses
  %i.ky = icmp eq i64 %index.next241, %n.vec233
  br i1 %i.ky, label %vec.epilog.middle.block242, label %vec.epilog.vector.body234, !llvm.loop !26

vec.epilog.middle.block242:                       ; preds = %vec.epilog.vector.body234
  %cmp.n243 = icmp eq i64 %n.vec233, %i.kf
  br i1 %cmp.n243, label %xorbufout.exit127.i, label %.lr.ph83.i92.i.preheader

.lr.ph83.i92.i.preheader:                         ; preds = %iter.check228, %vector.memcheck198, %vec.epilog.iter.check230, %vec.epilog.middle.block242
  %.281.i93.i.ph = phi ptr [ %.1.i90208.i, %iter.check228 ], [ %.1.i90208.i, %vector.memcheck198 ], [ %i.kj, %vec.epilog.iter.check230 ], [ %i.ks, %vec.epilog.middle.block242 ] ; 2 uses
  %.23280.i94.i.ph = phi ptr [ %.131.i89207.i, %iter.check228 ], [ %.131.i89207.i, %vector.memcheck198 ], [ %i.kk, %vec.epilog.iter.check230 ], [ %i.kt, %vec.epilog.middle.block242 ] ; 2 uses
  %.23579.i95.i.ph = phi ptr [ %.134.i88206.i, %iter.check228 ], [ %.134.i88206.i, %vector.memcheck198 ], [ %i.kl, %vec.epilog.iter.check230 ], [ %i.ku, %vec.epilog.middle.block242 ] ; 2 uses
  %.23878.i96.i.ph = phi i32 [ %.137.i87205.i, %iter.check228 ], [ %.137.i87205.i, %vector.memcheck198 ], [ %i.kn, %vec.epilog.iter.check230 ], [ %i.kw, %vec.epilog.middle.block242 ] ; 4 uses
  %i.kz = add i32 %.23878.i96.i.ph, -1
  %xtraiter270 = and i32 %.23878.i96.i.ph, 3      ; 2 uses
  %lcmp.mod271.not = icmp eq i32 %xtraiter270, 0
  br i1 %lcmp.mod271.not, label %.lr.ph83.i92.i.prol.loopexit, label %.lr.ph83.i92.i.prol

.lr.ph83.i92.i.prol:                              ; preds = %.lr.ph83.i92.i.preheader, %.lr.ph83.i92.i.prol
  %.281.i93.i.prol = phi ptr [ %i.lc, %.lr.ph83.i92.i.prol ], [ %.281.i93.i.ph, %.lr.ph83.i92.i.preheader ] ; 2 uses
  %.23280.i94.i.prol = phi ptr [ %i.la, %.lr.ph83.i92.i.prol ], [ %.23280.i94.i.ph, %.lr.ph83.i92.i.preheader ] ; 2 uses
  %.23579.i95.i.prol = phi ptr [ %i.lf, %.lr.ph83.i92.i.prol ], [ %.23579.i95.i.ph, %.lr.ph83.i92.i.preheader ] ; 2 uses
  %.23878.i96.i.prol = phi i32 [ %i.lg, %.lr.ph83.i92.i.prol ], [ %.23878.i96.i.ph, %.lr.ph83.i92.i.preheader ]
  %prol.iter272 = phi i32 [ %prol.iter272.next, %.lr.ph83.i92.i.prol ], [ 0, %.lr.ph83.i92.i.preheader ]
  %i.la = getelementptr inbounds nuw i8, ptr %.23280.i94.i.prol, i64 1 ; 2 uses
  %i.lb = load i8, ptr %.23280.i94.i.prol, align 1, !tbaa !33
  %i.lc = getelementptr inbounds nuw i8, ptr %.281.i93.i.prol, i64 1 ; 2 uses
  %i.ld = load i8, ptr %.281.i93.i.prol, align 1, !tbaa !33
  %i.le = xor i8 %i.ld, %i.lb
  %i.lf = getelementptr inbounds nuw i8, ptr %.23579.i95.i.prol, i64 1 ; 2 uses
  store i8 %i.le, ptr %.23579.i95.i.prol, align 1, !tbaa !33
  %i.lg = add i32 %.23878.i96.i.prol, -1          ; 2 uses
  %prol.iter272.next = add i32 %prol.iter272, 1   ; 2 uses
  %prol.iter272.cmp.not = icmp eq i32 %prol.iter272.next, %xtraiter270
  br i1 %prol.iter272.cmp.not, label %.lr.ph83.i92.i.prol.loopexit, label %.lr.ph83.i92.i.prol, !llvm.loop !27

.lr.ph83.i92.i.prol.loopexit:                     ; preds = %.lr.ph83.i92.i.prol, %.lr.ph83.i92.i.preheader
  %.281.i93.i.unr = phi ptr [ %.281.i93.i.ph, %.lr.ph83.i92.i.preheader ], [ %i.lc, %.lr.ph83.i92.i.prol ]
  %.23280.i94.i.unr = phi ptr [ %.23280.i94.i.ph, %.lr.ph83.i92.i.preheader ], [ %i.la, %.lr.ph83.i92.i.prol ]
  %.23579.i95.i.unr = phi ptr [ %.23579.i95.i.ph, %.lr.ph83.i92.i.preheader ], [ %i.lf, %.lr.ph83.i92.i.prol ]
  %.23878.i96.i.unr = phi i32 [ %.23878.i96.i.ph, %.lr.ph83.i92.i.preheader ], [ %i.lg, %.lr.ph83.i92.i.prol ]
  %i.lh = icmp ult i32 %i.kz, 3
  br i1 %i.lh, label %xorbufout.exit127.i, label %.lr.ph83.i92.i

.lr.ph83.i92.i:                                   ; preds = %.lr.ph83.i92.i.prol.loopexit, %.lr.ph83.i92.i
  %.281.i93.i = phi ptr [ %i.mc, %.lr.ph83.i92.i ], [ %.281.i93.i.unr, %.lr.ph83.i92.i.prol.loopexit ] ; 5 uses
  %.23280.i94.i = phi ptr [ %i.ma, %.lr.ph83.i92.i ], [ %.23280.i94.i.unr, %.lr.ph83.i92.i.prol.loopexit ] ; 5 uses
  %.23579.i95.i = phi ptr [ %i.mf, %.lr.ph83.i92.i ], [ %.23579.i95.i.unr, %.lr.ph83.i92.i.prol.loopexit ] ; 5 uses
  %.23878.i96.i = phi i32 [ %i.mg, %.lr.ph83.i92.i ], [ %.23878.i96.i.unr, %.lr.ph83.i92.i.prol.loopexit ]
  %i.li = getelementptr inbounds nuw i8, ptr %.23280.i94.i, i64 1
  %i.lj = load i8, ptr %.23280.i94.i, align 1, !tbaa !33
  %i.lk = getelementptr inbounds nuw i8, ptr %.281.i93.i, i64 1
  %i.ll = load i8, ptr %.281.i93.i, align 1, !tbaa !33
  %i.lm = xor i8 %i.ll, %i.lj
  %i.ln = getelementptr inbounds nuw i8, ptr %.23579.i95.i, i64 1
  store i8 %i.lm, ptr %.23579.i95.i, align 1, !tbaa !33
  %i.lo = getelementptr inbounds nuw i8, ptr %.23280.i94.i, i64 2
  %i.lp = load i8, ptr %i.li, align 1, !tbaa !33
  %i.lq = getelementptr inbounds nuw i8, ptr %.281.i93.i, i64 2
  %i.lr = load i8, ptr %i.lk, align 1, !tbaa !33
  %i.ls = xor i8 %i.lr, %i.lp
  %i.lt = getelementptr inbounds nuw i8, ptr %.23579.i95.i, i64 2
  store i8 %i.ls, ptr %i.ln, align 1, !tbaa !33
  %i.lu = getelementptr inbounds nuw i8, ptr %.23280.i94.i, i64 3
  %i.lv = load i8, ptr %i.lo, align 1, !tbaa !33
  %i.lw = getelementptr inbounds nuw i8, ptr %.281.i93.i, i64 3
  %i.lx = load i8, ptr %i.lq, align 1, !tbaa !33
  %i.ly = xor i8 %i.lx, %i.lv
  %i.lz = getelementptr inbounds nuw i8, ptr %.23579.i95.i, i64 3
  store i8 %i.ly, ptr %i.lt, align 1, !tbaa !33
  %i.ma = getelementptr inbounds nuw i8, ptr %.23280.i94.i, i64 4
  %i.mb = load i8, ptr %i.lu, align 1, !tbaa !33
  %i.mc = getelementptr inbounds nuw i8, ptr %.281.i93.i, i64 4
  %i.md = load i8, ptr %i.lw, align 1, !tbaa !33
  %i.me = xor i8 %i.md, %i.mb
  %i.mf = getelementptr inbounds nuw i8, ptr %.23579.i95.i, i64 4
  store i8 %i.me, ptr %i.lz, align 1, !tbaa !33
  %i.mg = add i32 %.23878.i96.i, -4               ; 2 uses
  %.not.i97.i.3 = icmp eq i32 %i.mg, 0
  br i1 %.not.i97.i.3, label %xorbufout.exit127.i, label %.lr.ph83.i92.i, !llvm.loop !28

xorbufout.exit127.i:                              ; preds = %.lr.ph83.i92.i.prol.loopexit, %.lr.ph83.i92.i, %middle.block221, %vec.epilog.middle.block242, %.loopexit.i
  %i.mh = sub nuw nsw i32 64, %.1.lcssa.i
  store i32 %i.mh, ptr %i.f, align 4, !tbaa !9
  br label %wc_Chacha_encrypt_bytes.exit

wc_Chacha_encrypt_bytes.exit:                     ; preds = %bb.b, %._crit_edge.i, %xorbufout.exit127.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %wc_Chacha_encrypt_bytes.exit
  %.0 = phi i32 [ 0, %wc_Chacha_encrypt_bytes.exit ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @wc_Chacha_wordtobyte(ptr nofree noundef nonnull captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %.promoted = load i32, ptr %0, align 4, !tbaa !10
  %.promoted203 = load i32, ptr %i.a, align 4, !tbaa !10
  %.promoted205 = load i32, ptr %i.b, align 4, !tbaa !10
  %.promoted207 = load i32, ptr %i.c, align 4, !tbaa !10
  %.promoted209 = load i32, ptr %i.d, align 4, !tbaa !10
  %.promoted211 = load i32, ptr %i.e, align 4, !tbaa !10
  %.promoted213 = load i32, ptr %i.f, align 4, !tbaa !10
  %.promoted215 = load i32, ptr %i.g, align 4, !tbaa !10
  %.promoted217 = load i32, ptr %i.h, align 4, !tbaa !10
  %.promoted219 = load i32, ptr %i.i, align 4, !tbaa !10
  %.promoted221 = load i32, ptr %i.j, align 4, !tbaa !10
  %.promoted223 = load i32, ptr %i.k, align 4, !tbaa !10
  %.promoted225 = load i32, ptr %i.l, align 4, !tbaa !10
  %.promoted227 = load i32, ptr %i.m, align 4, !tbaa !10
  %.promoted229 = load i32, ptr %i.n, align 4, !tbaa !10
  %.promoted231 = load i32, ptr %i.o, align 4, !tbaa !10
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  store i32 %i.ec, ptr %0, align 4, !tbaa !10
  store i32 %i.fr, ptr %i.a, align 4, !tbaa !10
  store i32 %i.eq, ptr %i.b, align 4, !tbaa !10
  store i32 %i.fd, ptr %i.c, align 4, !tbaa !10
  store i32 %i.eo, ptr %i.d, align 4, !tbaa !10
  store i32 %i.eh, ptr %i.e, align 4, !tbaa !10
  store i32 %i.fc, ptr %i.f, align 4, !tbaa !10
  store i32 %i.fp, ptr %i.g, align 4, !tbaa !10
  store i32 %i.fa, ptr %i.h, align 4, !tbaa !10
  store i32 %i.et, ptr %i.i, align 4, !tbaa !10
  store i32 %i.fo, ptr %i.j, align 4, !tbaa !10
  store i32 %i.ef, ptr %i.k, align 4, !tbaa !10
  store i32 %i.fm, ptr %i.l, align 4, !tbaa !10
  store i32 %i.ff, ptr %i.m, align 4, !tbaa !10
  store i32 %i.ee, ptr %i.n, align 4, !tbaa !10
  store i32 %i.er, ptr %i.o, align 4, !tbaa !10
  %i.p = load i32, ptr %1, align 4, !tbaa !10
  %i.q = add i32 %i.p, %i.ec
  store i32 %i.q, ptr %0, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !10
  %i.t = add i32 %i.s, %i.eo
  store i32 %i.t, ptr %i.d, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !10
  %i.w = add i32 %i.v, %i.fa
  store i32 %i.w, ptr %i.h, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !10
  %i.z = add i32 %i.y, %i.fm
  store i32 %i.z, ptr %i.l, align 4, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !10
  %i.ac = add i32 %i.ab, %i.fr
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !10
  %i.af = add i32 %i.ae, %i.eh
  store i32 %i.af, ptr %i.e, align 4, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !10
  %i.ai = add i32 %i.ah, %i.et
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.al = add i32 %i.ak, %i.ff
  store i32 %i.al, ptr %i.m, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i32, ptr %i.am, align 4, !tbaa !10
  %i.ao = add i32 %i.an, %i.fd
  store i32 %i.ao, ptr %i.c, align 4, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !10
  %i.ar = add i32 %i.aq, %i.fp
  store i32 %i.ar, ptr %i.g, align 4, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = load i32, ptr %i.as, align 4, !tbaa !10
  %i.au = add i32 %i.at, %i.ef
  store i32 %i.au, ptr %i.k, align 4, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !10
  %i.ax = add i32 %i.aw, %i.er
  store i32 %i.ax, ptr %i.o, align 4, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !10
  %i.ba = add i32 %i.az, %i.eq
  store i32 %i.ba, ptr %i.b, align 4, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !10
  %i.bd = add i32 %i.bc, %i.fc
  store i32 %i.bd, ptr %i.f, align 4, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !10
  %i.bg = add i32 %i.bf, %i.fo
  store i32 %i.bg, ptr %i.j, align 4, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !10
  %i.bj = add i32 %i.bi, %i.ee
  store i32 %i.bj, ptr %i.n, align 4, !tbaa !10
  ret void

bb.b:                                             ; preds = %bb.a, %bb.b
  %.0233 = phi i32 [ 20, %bb.a ], [ %i.fs, %bb.b ]
  %i.bk = phi i32 [ %.promoted, %bb.a ], [ %i.ec, %bb.b ]
  %i.bl = phi i32 [ %.promoted203, %bb.a ], [ %i.fr, %bb.b ] ; 2 uses
  %i.bm = phi i32 [ %.promoted205, %bb.a ], [ %i.eq, %bb.b ]
  %i.bn = phi i32 [ %.promoted207, %bb.a ], [ %i.fd, %bb.b ]
  %i.bo = phi i32 [ %.promoted209, %bb.a ], [ %i.eo, %bb.b ]
  %i.bp = phi i32 [ %.promoted211, %bb.a ], [ %i.eh, %bb.b ] ; 2 uses
  %i.bq = phi i32 [ %.promoted213, %bb.a ], [ %i.fc, %bb.b ]
  %i.br = phi i32 [ %.promoted215, %bb.a ], [ %i.fp, %bb.b ]
  %i.bs = phi i32 [ %.promoted217, %bb.a ], [ %i.fa, %bb.b ]
  %i.bt = phi i32 [ %.promoted219, %bb.a ], [ %i.et, %bb.b ] ; 2 uses
  %i.bu = phi i32 [ %.promoted221, %bb.a ], [ %i.fo, %bb.b ]
  %i.bv = phi i32 [ %.promoted223, %bb.a ], [ %i.ef, %bb.b ]
  %i.bw = phi i32 [ %.promoted225, %bb.a ], [ %i.fm, %bb.b ]
  %i.bx = phi i32 [ %.promoted227, %bb.a ], [ %i.ff, %bb.b ] ; 2 uses
  %i.by = phi i32 [ %.promoted229, %bb.a ], [ %i.ee, %bb.b ]
  %i.bz = phi i32 [ %.promoted231, %bb.a ], [ %i.er, %bb.b ]
  %i.ca = add i32 %i.bl, %i.bk                    ; 2 uses
  %i.cb = xor i32 %i.bm, %i.ca                    ; 2 uses
  %i.cc = tail call noundef i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cb, i32 16) ; 2 uses
  %i.cd = add i32 %i.bn, %i.cc                    ; 2 uses
  %i.ce = xor i32 %i.cd, %i.bl                    ; 2 uses
  %i.cf = tail call noundef i32 @llvm.fshl.i32(i32 %i.ce, i32 %i.ce, i32 12) ; 2 uses
  %i.cg = add i32 %i.cf, %i.ca                    ; 2 uses
  %i.ch = xor i32 %i.cg, %i.cc                    ; 2 uses
  %i.ci = tail call noundef i32 @llvm.fshl.i32(i32 %i.ch, i32 %i.ch, i32 8) ; 2 uses
  %i.cj = add i32 %i.ci, %i.cd                    ; 2 uses
  %i.ck = xor i32 %i.cj, %i.cf                    ; 2 uses
  %i.cl = tail call noundef i32 @llvm.fshl.i32(i32 %i.ck, i32 %i.ck, i32 7) ; 2 uses
  %i.cm = add i32 %i.bp, %i.bo                    ; 2 uses
  %i.cn = xor i32 %i.bq, %i.cm                    ; 2 uses
  %i.co = tail call noundef i32 @llvm.fshl.i32(i32 %i.cn, i32 %i.cn, i32 16) ; 2 uses
  %i.cp = add i32 %i.br, %i.co                    ; 2 uses
  %i.cq = xor i32 %i.cp, %i.bp                    ; 2 uses
  %i.cr = tail call noundef i32 @llvm.fshl.i32(i32 %i.cq, i32 %i.cq, i32 12) ; 2 uses
  %i.cs = add i32 %i.cr, %i.cm                    ; 2 uses
  %i.ct = xor i32 %i.cs, %i.co                    ; 2 uses
  %i.cu = tail call noundef i32 @llvm.fshl.i32(i32 %i.ct, i32 %i.ct, i32 8) ; 2 uses
  %i.cv = add i32 %i.cu, %i.cp                    ; 2 uses
  %i.cw = xor i32 %i.cv, %i.cr                    ; 2 uses
  %i.cx = tail call noundef i32 @llvm.fshl.i32(i32 %i.cw, i32 %i.cw, i32 7) ; 2 uses
  %i.cy = add i32 %i.bt, %i.bs                    ; 2 uses
  %i.cz = xor i32 %i.bu, %i.cy                    ; 2 uses
  %i.da = tail call noundef i32 @llvm.fshl.i32(i32 %i.cz, i32 %i.cz, i32 16) ; 2 uses
  %i.db = add i32 %i.bv, %i.da                    ; 2 uses
  %i.dc = xor i32 %i.db, %i.bt                    ; 2 uses
  %i.dd = tail call noundef i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.dc, i32 12) ; 2 uses
  %i.de = add i32 %i.dd, %i.cy                    ; 2 uses
  %i.df = xor i32 %i.de, %i.da                    ; 2 uses
  %i.dg = tail call noundef i32 @llvm.fshl.i32(i32 %i.df, i32 %i.df, i32 8) ; 2 uses
  %i.dh = add i32 %i.dg, %i.db                    ; 2 uses
  %i.di = xor i32 %i.dh, %i.dd                    ; 2 uses
  %i.dj = tail call noundef i32 @llvm.fshl.i32(i32 %i.di, i32 %i.di, i32 7) ; 2 uses
  %i.dk = add i32 %i.bx, %i.bw                    ; 2 uses
  %i.dl = xor i32 %i.by, %i.dk                    ; 2 uses
  %i.dm = tail call noundef i32 @llvm.fshl.i32(i32 %i.dl, i32 %i.dl, i32 16) ; 2 uses
  %i.dn = add i32 %i.bz, %i.dm                    ; 2 uses
  %i.do = xor i32 %i.dn, %i.bx                    ; 2 uses
  %i.dp = tail call noundef i32 @llvm.fshl.i32(i32 %i.do, i32 %i.do, i32 12) ; 2 uses
  %i.dq = add i32 %i.dp, %i.dk                    ; 2 uses
  %i.dr = xor i32 %i.dq, %i.dm                    ; 2 uses
  %i.ds = tail call noundef i32 @llvm.fshl.i32(i32 %i.dr, i32 %i.dr, i32 8) ; 2 uses
  %i.dt = add i32 %i.ds, %i.dn                    ; 2 uses
  %i.du = xor i32 %i.dt, %i.dp                    ; 2 uses
  %i.dv = tail call noundef i32 @llvm.fshl.i32(i32 %i.du, i32 %i.du, i32 7) ; 2 uses
  %i.dw = add i32 %i.cx, %i.cg                    ; 2 uses
  %i.dx = xor i32 %i.ds, %i.dw                    ; 2 uses
  %i.dy = tail call noundef i32 @llvm.fshl.i32(i32 %i.dx, i32 %i.dx, i32 16) ; 2 uses
  %i.dz = add i32 %i.dy, %i.dh                    ; 2 uses
  %i.ea = xor i32 %i.dz, %i.cx                    ; 2 uses
  %i.eb = tail call noundef i32 @llvm.fshl.i32(i32 %i.ea, i32 %i.ea, i32 12) ; 2 uses
  %i.ec = add i32 %i.eb, %i.dw                    ; 4 uses
  %i.ed = xor i32 %i.ec, %i.dy                    ; 2 uses
  %i.ee = tail call noundef i32 @llvm.fshl.i32(i32 %i.ed, i32 %i.ed, i32 8) ; 4 uses
  %i.ef = add i32 %i.ee, %i.dz                    ; 4 uses
  %i.eg = xor i32 %i.ef, %i.eb                    ; 2 uses
  %i.eh = tail call noundef i32 @llvm.fshl.i32(i32 %i.eg, i32 %i.eg, i32 7) ; 3 uses
  %i.ei = add i32 %i.dj, %i.cs                    ; 2 uses
  %i.ej = xor i32 %i.ei, %i.ci                    ; 2 uses
  %i.ek = tail call noundef i32 @llvm.fshl.i32(i32 %i.ej, i32 %i.ej, i32 16) ; 2 uses
  %i.el = add i32 %i.dt, %i.ek                    ; 2 uses
  %i.em = xor i32 %i.el, %i.dj                    ; 2 uses
  %i.en = tail call noundef i32 @llvm.fshl.i32(i32 %i.em, i32 %i.em, i32 12) ; 2 uses
  %i.eo = add i32 %i.en, %i.ei                    ; 4 uses
  %i.ep = xor i32 %i.eo, %i.ek                    ; 2 uses
  %i.eq = tail call noundef i32 @llvm.fshl.i32(i32 %i.ep, i32 %i.ep, i32 8) ; 4 uses
  %i.er = add i32 %i.eq, %i.el                    ; 4 uses
  %i.es = xor i32 %i.er, %i.en                    ; 2 uses
  %i.et = tail call noundef i32 @llvm.fshl.i32(i32 %i.es, i32 %i.es, i32 7) ; 3 uses
  %i.eu = add i32 %i.dv, %i.de                    ; 2 uses
  %i.ev = xor i32 %i.eu, %i.cu                    ; 2 uses
  %i.ew = tail call noundef i32 @llvm.fshl.i32(i32 %i.ev, i32 %i.ev, i32 16) ; 2 uses
  %i.ex = add i32 %i.ew, %i.cj                    ; 2 uses
  %i.ey = xor i32 %i.ex, %i.dv                    ; 2 uses
  %i.ez = tail call noundef i32 @llvm.fshl.i32(i32 %i.ey, i32 %i.ey, i32 12) ; 2 uses
  %i.fa = add i32 %i.ez, %i.eu                    ; 4 uses
  %i.fb = xor i32 %i.fa, %i.ew                    ; 2 uses
  %i.fc = tail call noundef i32 @llvm.fshl.i32(i32 %i.fb, i32 %i.fb, i32 8) ; 4 uses
  %i.fd = add i32 %i.fc, %i.ex                    ; 4 uses
  %i.fe = xor i32 %i.fd, %i.ez                    ; 2 uses
  %i.ff = tail call noundef i32 @llvm.fshl.i32(i32 %i.fe, i32 %i.fe, i32 7) ; 3 uses
  %i.fg = add i32 %i.dq, %i.cl                    ; 2 uses
  %i.fh = xor i32 %i.fg, %i.dg                    ; 2 uses
  %i.fi = tail call noundef i32 @llvm.fshl.i32(i32 %i.fh, i32 %i.fh, i32 16) ; 2 uses
  %i.fj = add i32 %i.fi, %i.cv                    ; 2 uses
  %i.fk = xor i32 %i.fj, %i.cl                    ; 2 uses
  %i.fl = tail call noundef i32 @llvm.fshl.i32(i32 %i.fk, i32 %i.fk, i32 12) ; 2 uses
  %i.fm = add i32 %i.fl, %i.fg                    ; 4 uses
  %i.fn = xor i32 %i.fm, %i.fi                    ; 2 uses
  %i.fo = tail call noundef i32 @llvm.fshl.i32(i32 %i.fn, i32 %i.fn, i32 8) ; 4 uses
  %i.fp = add i32 %i.fo, %i.fj                    ; 4 uses
  %i.fq = xor i32 %i.fp, %i.fl                    ; 2 uses
  %i.fr = tail call noundef i32 @llvm.fshl.i32(i32 %i.fq, i32 %i.fq, i32 7) ; 3 uses
  %i.fs = add nsw i32 %.0233, -2                  ; 2 uses
  %.not = icmp eq i32 %i.fs, 0
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !36
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"ChaCha", !4, i64 0, !5, i64 64}
!9 = !{!8, !5, i64 64}
!10 = !{!5, !5, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11, !31, !32}
!13 = distinct !{!13, !11, !31}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11, !31, !32}
!16 = distinct !{!16, !11, !31}
!17 = distinct !{!17, !11, !31, !32}
!18 = distinct !{!18, !11, !31, !32}
!19 = distinct !{!19, !35}
!20 = distinct !{!20, !11, !31}
!21 = distinct !{!21, !11, !31}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11, !31, !32}
!24 = distinct !{!24, !11, !31}
!25 = distinct !{!25, !11, !31, !32}
!26 = distinct !{!26, !11, !31, !32}
!27 = distinct !{!27, !35}
!28 = distinct !{!28, !11, !31}
!29 = !{!"long", !4, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!4, !4, i64 0}
!34 = !{!"branch_weights", i32 4, i32 28}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !11}
end_hunk_0
