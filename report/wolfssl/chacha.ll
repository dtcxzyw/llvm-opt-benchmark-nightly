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

@sigma = internal unnamed_addr constant [4 x i32] [i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236], align 16
@tau = internal unnamed_addr constant [4 x i32] [i32 1634760805, i32 824206446, i32 2036477238, i32 1797285236], align 16

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
  %i.j = icmp eq i32 %2, 32                       ; 2 uses
  %.035 = select i1 %i.j, ptr @sigma, ptr @tau    ; 4 uses
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
  %3 = load i32, ptr %.035, align 16, !tbaa !10
  store i32 %3, ptr %0, align 4, !tbaa !10
  %4 = getelementptr inbounds nuw i8, ptr %.035, i64 4
  %5 = load i32, ptr %4, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %i.r, align 4, !tbaa !10
  %6 = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %7, ptr %i.s, align 4, !tbaa !10
  %8 = getelementptr inbounds nuw i8, ptr %.035, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %9, ptr %i.t, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.u, align 4, !tbaa !9
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

end_hunk_0
