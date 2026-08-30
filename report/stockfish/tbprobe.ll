Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN9Stockfish10Tablebases4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.f:                                             ; preds = %.preheader344.3
  %i.at = add nsw i32 %.1.2, 1
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 %.1.2, ptr %i.av, align 4, !tbaa !89
  br label %.preheader344.4

.preheader344.4:                                  ; preds = %bb.f, %.preheader344.3
  %.1.3 = phi i32 [ %i.at, %bb.f ], [ %.1.2, %.preheader344.3 ] ; 3 uses
  %i.aw = and i64 %indvars.iv, 224
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %.preheader344.5

bb.g:                                             ; preds = %.preheader344.4
  %i.ay = add nsw i32 %.1.3, 1
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 %.1.3, ptr %i.ba, align 16, !tbaa !89
  br label %.preheader344.5

.preheader344.5:                                  ; preds = %bb.g, %.preheader344.4
  %.1.4 = phi i32 [ %i.ay, %bb.g ], [ %.1.3, %.preheader344.4 ] ; 3 uses
  %i.bb = trunc i64 %indvars.iv to i8
  %i.bc = icmp ult i8 %i.bb, 40
  br i1 %i.bc, label %bb.h, label %.preheader344.6

bb.h:                                             ; preds = %.preheader344.5
  %i.bd = add nsw i32 %.1.4, 1
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  store i32 %.1.4, ptr %i.bf, align 4, !tbaa !89
  br label %.preheader344.6

.preheader344.6:                                  ; preds = %bb.h, %.preheader344.5
  %.1.5 = phi i32 [ %i.bd, %bb.h ], [ %.1.4, %.preheader344.5 ] ; 3 uses
  %i.bg = trunc i64 %indvars.iv to i8
  %i.bh = icmp ult i8 %i.bg, 48
  br i1 %i.bh, label %bb.i, label %.preheader344.7

bb.i:                                             ; preds = %.preheader344.6
  %i.bi = add nsw i32 %.1.5, 1
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i32 %.1.5, ptr %i.bk, align 8, !tbaa !89
  br label %.preheader344.7

.preheader344.7:                                  ; preds = %bb.i, %.preheader344.6
  %.1.6 = phi i32 [ %i.bi, %bb.i ], [ %.1.5, %.preheader344.6 ] ; 3 uses
  %i.bl = trunc i64 %indvars.iv to i8
  %i.bm = icmp ult i8 %i.bl, 56
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader344.7
  %i.bn = add nsw i32 %.1.6, 1
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  store i32 %.1.6, ptr %i.bp, align 4, !tbaa !89
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader344.7
  %.1.7 = phi i32 [ %i.bn, %bb.j ], [ %.1.6, %.preheader344.7 ]
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, 64
  br i1 %exitcond.not.7, label %.preheader343, label %.preheader344, !llvm.loop !94

.preheader342:                                    ; preds = %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit
  %.sroa.7299.1558.le = ptrtoaddr ptr %.sroa.7299.1 to i64
  %.sroa.0296.1559.le = ptrtoaddr ptr %.sroa.0296.1 to i64
  %.not327368 = icmp eq ptr %.sroa.0296.1, %.sroa.7299.1
  br i1 %.not327368, label %.preheader340.preheader, label %iter.check

iter.check:                                       ; preds = %.preheader342
  %i.bq = sub i64 %.sroa.7299.1558.le, %.sroa.0296.1559.le ; 7 uses
  %min.iters.check = icmp ult i64 %i.bq, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check560 = icmp ult i64 %i.bq, 16
  br i1 %min.iters.check560, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.br = and i64 %i.bq, 12
  %n.vec = and i64 %i.bq, -16                     ; 5 uses
  %i.bs = trunc i64 %n.vec to i32
  %i.bt = add i32 %.3, %i.bs                      ; 2 uses
  %i.bu = getelementptr i8, ptr %.sroa.0296.1, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.0296.1, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !95
  %i.bv = zext <16 x i8> %wide.load to <16 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, <16 x i64> %i.bv
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %vec.ind, <16 x ptr> align 4 %wide.gep, <16 x i1> splat (i1 true)), !tbaa !89
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 16)
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %.preheader340.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !100

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.bt, %vec.epilog.iter.check ], [ %.3, %vector.main.loop.iter.check ]
  %n.vec562 = and i64 %i.bq, -4                   ; 4 uses
  %i.bx = trunc i64 %n.vec562 to i32
  %i.by = add i32 %.3, %i.bx
  %i.bz = getelementptr i8, ptr %.sroa.0296.1, i64 %n.vec562
  %broadcast.splatinsert563 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat564 = shufflevector <4 x i32> %broadcast.splatinsert563, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction565 = add nsw <4 x i32> %broadcast.splat564, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index566 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next571, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind567 = phi <4 x i32> [ %induction565, %vec.epilog.ph ], [ %vec.ind.next572, %vec.epilog.vector.body ] ; 2 uses
  %next.gep568 = getelementptr i8, ptr %.sroa.0296.1, i64 %index566
  %wide.load569 = load <4 x i8>, ptr %next.gep568, align 1, !tbaa !95
  %i.ca = zext <4 x i8> %wide.load569 to <4 x i64>
  %wide.gep570 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, <4 x i64> %i.ca
  tail call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> %vec.ind567, <4 x ptr> align 4 %wide.gep570, <4 x i1> splat (i1 true)), !tbaa !89
  %index.next571 = add nuw i64 %index566, 4       ; 2 uses
  %vec.ind.next572 = add nsw <4 x i32> %vec.ind567, splat (i32 4)
  %i.cb = icmp eq i64 %index.next571, %n.vec562
  br i1 %i.cb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !101

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n573 = icmp eq i64 %i.bq, %n.vec562
  br i1 %cmp.n573, label %.preheader340.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4370.ph = phi i32 [ %.3, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ]
  %.sroa.0285.0369.ph = phi ptr [ %.sroa.0296.1, %iter.check ], [ %i.bu, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader343:                                    ; preds = %bb.k, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit
  %indvars.iv436 = phi i64 [ %indvars.iv.next437, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit ], [ 0, %bb.k ] ; 3 uses
  %.2367 = phi i32 [ %.3, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit ], [ 0, %bb.k ] ; 6 uses
  %.sroa.0296.0366 = phi ptr [ %.sroa.0296.1, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.k ] ; 8 uses
  %.sroa.7299.0365 = phi ptr [ %.sroa.7299.1, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.k ] ; 7 uses
  %.sroa.11301.0364 = phi ptr [ %.sroa.11301.1, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.k ] ; 5 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv436 to i8  ; 4 uses
  %i.cd = lshr i8 %i.cc, 3                        ; 2 uses
  %i.ce = and i8 %i.cc, 7                         ; 4 uses
  %i.cf = icmp samesign ult i8 %i.cd, %i.ce
  br i1 %i.cf, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.preheader343
  %i.cg = icmp samesign ult i8 %i.ce, 4
  br i1 %i.cg, label %bb.m, label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ch = add nsw i32 %.2367, 1
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, i64 %indvars.iv436
  store i32 %.2367, ptr %i.ci, align 4, !tbaa !89
  br label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit

bb.n:                                             ; preds = %.preheader343
  %.not85 = icmp eq i8 %i.cd, %i.ce
  %i.cj = icmp samesign ult i8 %i.ce, 4
  %or.cond326 = select i1 %.not85, i1 %i.cj, i1 false
  br i1 %or.cond326, label %bb.o, label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp eq ptr %.sroa.7299.0365, %.sroa.11301.0364
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 %i.cc, ptr %.sroa.7299.0365, align 1, !tbaa !95
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.7299.0365, i64 1
  br label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit

bb.q:                                             ; preds = %bb.o
  %i.cl = ptrtoint ptr %.sroa.7299.0365 to i64
  %i.cm = ptrtoint ptr %.sroa.0296.0366 to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 8 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775807
  br i1 %i.co, label %bb.r, label %_ZNKSt6vectorIN9Stockfish6SquareESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #31
  unreachable

_ZNKSt6vectorIN9Stockfish6SquareESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.cp = add i64 %.sroa.speculated.i.i.i, %i.cn  ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.cn
  %i.cr = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 9223372036854775807)
  %i.cs = select i1 %i.cq, i64 9223372036854775807, i64 %i.cr ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ct = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #29 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cn ; 2 uses
  store i8 %i.cc, ptr %i.cu, align 1, !tbaa !95
  %i.cv = icmp sgt i64 %i.cn, 0
  br i1 %i.cv, label %bb.s, label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIN9Stockfish6SquareESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr align 1 %.sroa.0296.0366, i64 %i.cn, i1 false)
  br label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.s, %_ZNKSt6vectorIN9Stockfish6SquareESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %.not.i17.i.i = icmp eq ptr %.sroa.0296.0366, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0296.0366, i64 noundef %i.cn) #30
  br label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  br label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.l, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.p, %bb.m, %bb.n
  %.sroa.11301.1 = phi ptr [ %.sroa.11301.0364, %bb.m ], [ %.sroa.11301.0364, %bb.p ], [ %.sroa.11301.0364, %bb.l ], [ %.sroa.11301.0364, %bb.n ], [ %i.cx, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.7299.1 = phi ptr [ %.sroa.7299.0365, %bb.m ], [ %i.ck, %bb.p ], [ %.sroa.7299.0365, %bb.l ], [ %.sroa.7299.0365, %bb.n ], [ %i.cw, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %.sroa.0296.1 = phi ptr [ %.sroa.0296.0366, %bb.m ], [ %.sroa.0296.0366, %bb.p ], [ %.sroa.0296.0366, %bb.l ], [ %.sroa.0296.0366, %bb.n ], [ %i.ct, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 11 uses
  %.3 = phi i32 [ %i.ch, %bb.m ], [ %.2367, %bb.p ], [ %.2367, %bb.l ], [ %.2367, %bb.n ], [ %.2367, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 6 uses
  %indvars.iv.next437 = add nuw nsw i64 %indvars.iv436, 1 ; 2 uses
  %exitcond439.not = icmp eq i64 %indvars.iv.next437, 28
  br i1 %exitcond439.not, label %.preheader342, label %.preheader343, !llvm.loop !102

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.4370 = phi i32 [ %i.cz, %.lr.ph ], [ %.4370.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0285.0369 = phi ptr [ %i.dc, %.lr.ph ], [ %.sroa.0285.0369.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cy = load i8, ptr %.sroa.0285.0369, align 1, !tbaa !95
  %i.cz = add nsw i32 %.4370, 1
  %i.da = zext i8 %i.cy to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, i64 %i.da
  store i32 %.4370, ptr %i.db, align 4, !tbaa !89
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0285.0369, i64 1 ; 2 uses
  %.not327 = icmp eq ptr %i.dc, %.sroa.7299.1
  br i1 %.not327, label %.preheader340.preheader, label %.lr.ph, !llvm.loop !103

.preheader340.preheader:                          ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader342
  br label %.preheader340

.preheader340:                                    ; preds = %.preheader340.preheader, %bb.u
  %indvars.iv452 = phi i64 [ %indvars.iv.next453, %bb.u ], [ 0, %.preheader340.preheader ] ; 6 uses
  %.5389 = phi i32 [ %.9, %bb.u ], [ 0, %.preheader340.preheader ]
  %.sroa.0277.0387 = phi ptr [ %.sroa.0277.4, %bb.u ], [ null, %.preheader340.preheader ]
  %.sroa.7280.0386 = phi ptr [ %.sroa.7280.4, %bb.u ], [ null, %.preheader340.preheader ]
  %.sroa.11.0385 = phi ptr [ %.sroa.11.4, %bb.u ], [ null, %.preheader340.preheader ]
  %i.dd = icmp ne i64 %indvars.iv452, 0
  %i.de = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_15MapKKE, i64 %indvars.iv452 ; 9 uses
  %i.df = trunc nuw nsw i64 %indvars.iv452 to i32
  %i.dg = trunc nuw nsw i64 %indvars.iv452 to i32
  br label %bb.v

.preheader338:                                    ; preds = %bb.u
  %.not328390 = icmp eq ptr %.sroa.0277.4, %.sroa.7280.4
  br i1 %.not328390, label %._crit_edge, label %.lr.ph393

bb.u:                                             ; preds = %.loopexit
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %exitcond455.not = icmp eq i64 %indvars.iv.next453, 10
  br i1 %exitcond455.not, label %.preheader338, label %.preheader340, !llvm.loop !104

bb.v:                                             ; preds = %.preheader340, %.loopexit
  %indvars.iv448 = phi i64 [ 0, %.preheader340 ], [ %indvars.iv.next449, %.loopexit ] ; 6 uses
  %.6384 = phi i32 [ %.5389, %.preheader340 ], [ %.9, %.loopexit ] ; 3 uses
  %.sroa.0277.1383 = phi ptr [ %.sroa.0277.0387, %.preheader340 ], [ %.sroa.0277.4, %.loopexit ] ; 3 uses
  %.sroa.7280.1382 = phi ptr [ %.sroa.7280.0386, %.preheader340 ], [ %.sroa.7280.4, %.loopexit ] ; 3 uses
  %.sroa.11.1381 = phi ptr [ %.sroa.11.0385, %.preheader340 ], [ %.sroa.11.4, %.loopexit ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, i64 %indvars.iv448
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !89
  %i.dj = zext i32 %i.di to i64
  %i.dk = icmp eq i64 %indvars.iv452, %i.dj
  %i.dl = icmp eq i64 %indvars.iv448, 1
  %or.cond = or i1 %i.dd, %i.dl
  %or.cond429 = and i1 %i.dk, %or.cond
  br i1 %or.cond429, label %.preheader339, label %.loopexit

.preheader339:                                    ; preds = %bb.v
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %indvars.iv448
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !17
  %i.do = shl nuw nsw i64 1, %indvars.iv448
  %i.dp = or i64 %i.dn, %i.do                     ; 9 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv448 to i8  ; 2 uses
  %i.dr = lshr i8 %i.dq, 3
  %i.ds = and i8 %i.dq, 7
  %.not82 = icmp eq i8 %i.dr, %i.ds
  %.not82.fr = freeze i1 %.not82
  br i1 %.not82.fr, label %.preheader339.split.us, label %.preheader339.split

.preheader339.split.us:                           ; preds = %.preheader339, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us
  %indvars.iv444 = phi i64 [ %indvars.iv.next445, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us ], [ 0, %.preheader339 ] ; 4 uses
  %.7376.us = phi i32 [ %.8.us, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us ], [ %.6384, %.preheader339 ] ; 6 uses
  %.sroa.0277.2375.us = phi ptr [ %.sroa.0277.3.us, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us ], [ %.sroa.0277.1383, %.preheader339 ] ; 13 uses
  %.sroa.7280.2374.us = phi ptr [ %.sroa.7280.3.us, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us ], [ %.sroa.7280.1382, %.preheader339 ] ; 10 uses
  %.sroa.11.2373.us = phi ptr [ %.sroa.11.3.us, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us ], [ %.sroa.11.1381, %.preheader339 ] ; 5 uses
  %i.dt = shl nuw i64 1, %indvars.iv444
  %i.du = and i64 %i.dp, %i.dt
  %.not81.us = icmp eq i64 %i.du, 0
  br i1 %.not81.us, label %bb.w, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us

bb.w:                                             ; preds = %.preheader339.split.us
  %i.dv = trunc nuw nsw i64 %indvars.iv444 to i8  ; 4 uses
  %i.dw = lshr i8 %i.dv, 3                        ; 2 uses
  %i.dx = and i8 %i.dv, 7                         ; 2 uses
  %i.dy = icmp samesign ugt i8 %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not84.us = icmp eq i8 %i.dw, %i.dx
  br i1 %.not84.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = add nsw i32 %.7376.us, 1
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv444
  store i32 %.7376.us, ptr %i.ea, align 4, !tbaa !89
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us

bb.z:                                             ; preds = %bb.x
  %.not.i86.us = icmp eq ptr %.sroa.7280.2374.us, %.sroa.11.2373.us
  br i1 %.not.i86.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 %i.df, ptr %.sroa.7280.2374.us, align 4, !tbaa !105
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.7280.2374.us, i64 4
  store i8 %i.dv, ptr %i.eb, align 4, !tbaa !107
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.7280.2374.us, i64 8
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us

bb.ab:                                            ; preds = %bb.z
  %i.ed = ptrtoint ptr %.sroa.7280.2374.us to i64 ; 2 uses
  %i.ee = ptrtoint ptr %.sroa.0277.2375.us to i64 ; 3 uses
  %i.ef = sub i64 %i.ed, %i.ee                    ; 4 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775800
  br i1 %i.eg, label %.split.us, label %_ZNKSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.ab
  %i.eh = ashr exact i64 %i.ef, 3                 ; 3 uses
  %.sroa.speculated.i.i.i87.us = tail call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i87.us, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = tail call i64 @llvm.umin.i64(i64 %i.ei, i64 1152921504606846975)
  %i.el = select i1 %i.ej, i64 1152921504606846975, i64 %i.ek ; 3 uses
  %.not.i.i.i88.us = icmp ne i64 %i.el, 0
  tail call void @llvm.assume(i1 %.not.i.i.i88.us)
  %i.em = shl nuw nsw i64 %i.el, 3
  %i.en = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #29 ; 10 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ef ; 2 uses
  store i32 %i.dg, ptr %i.eo, align 4, !tbaa !105
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i8 %i.dv, ptr %i.ep, align 4, !tbaa !107
  %.not10.i.i.i.i.i.us = icmp eq ptr %.sroa.0277.2375.us, %.sroa.7280.2374.us
  br i1 %.not10.i.i.i.i.i.us, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i.us, label %iter.check595

iter.check595:                                    ; preds = %_ZNKSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.us
  %i.eq = ptrtoaddr ptr %i.en to i64
  %i.er = add i64 %i.ed, -8
  %i.es = sub i64 %i.er, %i.ee                    ; 3 uses
  %i.et = lshr i64 %i.es, 3
  %i.eu = add nuw nsw i64 %i.et, 1                ; 5 uses
  %min.iters.check576.a = icmp ult i64 %i.es, 56
  %i.ev = sub i64 %i.ee, %i.eq
  %diff.check = icmp ugt i64 %i.ev, -256
  %or.cond611 = or i1 %min.iters.check576.a, %diff.check
  br i1 %or.cond611, label %.lr.ph.i.i.i.i.i89.us.preheader, label %vector.main.loop.iter.check577

vector.main.loop.iter.check577:                   ; preds = %iter.check595
  %min.iters.check578 = icmp ult i64 %i.es, 248
  br i1 %min.iters.check578, label %vec.epilog.ph599, label %vector.ph579

vector.ph579:                                     ; preds = %vector.main.loop.iter.check577
  %i.ew = and i64 %i.eu, 24
  %n.vec580 = and i64 %i.eu, 4611686018427387872  ; 4 uses
  %i.ex = shl i64 %n.vec580, 3                    ; 2 uses
  %i.ey = getelementptr i8, ptr %i.en, i64 %i.ex  ; 2 uses
  %i.ez = getelementptr i8, ptr %.sroa.0277.2375.us, i64 %i.ex
  br label %vector.body581

vector.body581:                                   ; preds = %vector.body581, %vector.ph579
  %index582 = phi i64 [ 0, %vector.ph579 ], [ %index.next589, %vector.body581 ] ; 2 uses
  %i.fa = shl i64 %index582, 3                    ; 2 uses
  %next.gep583 = getelementptr i8, ptr %i.en, i64 %i.fa ; 4 uses
  %next.gep584 = getelementptr i8, ptr %.sroa.0277.2375.us, i64 %i.fa ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.fb = getelementptr i8, ptr %next.gep584, i64 64
  %i.fc = getelementptr i8, ptr %next.gep584, i64 128
  %i.fd = getelementptr i8, ptr %next.gep584, i64 192
  %wide.load585.a = load <8 x i64>, ptr %next.gep584, align 4, !alias.scope !111, !noalias !108
  %wide.load586.a = load <8 x i64>, ptr %i.fb, align 4, !alias.scope !111, !noalias !108
  %wide.load587 = load <8 x i64>, ptr %i.fc, align 4, !alias.scope !111, !noalias !108
  %wide.load588 = load <8 x i64>, ptr %i.fd, align 4, !alias.scope !111, !noalias !108
  %i.fe = getelementptr i8, ptr %next.gep583, i64 64
  %i.ff = getelementptr i8, ptr %next.gep583, i64 128
  %i.fg = getelementptr i8, ptr %next.gep583, i64 192
  store <8 x i64> %wide.load585.a, ptr %next.gep583, align 4, !alias.scope !108, !noalias !111
  store <8 x i64> %wide.load586.a, ptr %i.fe, align 4, !alias.scope !108, !noalias !111
  store <8 x i64> %wide.load587, ptr %i.ff, align 4, !alias.scope !108, !noalias !111
  store <8 x i64> %wide.load588, ptr %i.fg, align 4, !alias.scope !108, !noalias !111
  %index.next589 = add nuw i64 %index582, 32      ; 2 uses
  %i.fh = icmp eq i64 %index.next589, %n.vec580
  br i1 %i.fh, label %middle.block590, label %vector.body581, !llvm.loop !113

middle.block590:                                  ; preds = %vector.body581
  %cmp.n591 = icmp eq i64 %i.eu, %n.vec580
  br i1 %cmp.n591, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i.us, label %vec.epilog.iter.check597

vec.epilog.iter.check597:                         ; preds = %middle.block590
  %min.epilog.iters.check598 = icmp eq i64 %i.ew, 0
  br i1 %min.epilog.iters.check598, label %.lr.ph.i.i.i.i.i89.us.preheader, label %vec.epilog.ph599, !prof !114

vec.epilog.ph599:                                 ; preds = %vector.main.loop.iter.check577, %vec.epilog.iter.check597
  %vec.epilog.resume.val592 = phi i64 [ %n.vec580, %vec.epilog.iter.check597 ], [ 0, %vector.main.loop.iter.check577 ]
  %n.vec600 = and i64 %i.eu, 4611686018427387896  ; 3 uses
  %i.fi = shl i64 %n.vec600, 3                    ; 2 uses
  %i.fj = getelementptr i8, ptr %i.en, i64 %i.fi  ; 2 uses
  %i.fk = getelementptr i8, ptr %.sroa.0277.2375.us, i64 %i.fi
  br label %vec.epilog.vector.body601

vec.epilog.vector.body601:                        ; preds = %vec.epilog.vector.body601, %vec.epilog.ph599
  %index602 = phi i64 [ %vec.epilog.resume.val592, %vec.epilog.ph599 ], [ %index.next606, %vec.epilog.vector.body601 ] ; 2 uses
  %i.fl = shl i64 %index602, 3                    ; 2 uses
  %next.gep603 = getelementptr i8, ptr %i.en, i64 %i.fl
  %next.gep604 = getelementptr i8, ptr %.sroa.0277.2375.us, i64 %i.fl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %wide.load605 = load <8 x i64>, ptr %next.gep604, align 4, !alias.scope !111, !noalias !108
  store <8 x i64> %wide.load605, ptr %next.gep603, align 4, !alias.scope !108, !noalias !111
  %index.next606 = add nuw i64 %index602, 8       ; 2 uses
  %i.fm = icmp eq i64 %index.next606, %n.vec600
  br i1 %i.fm, label %vec.epilog.middle.block607, label %vec.epilog.vector.body601, !llvm.loop !115

vec.epilog.middle.block607:                       ; preds = %vec.epilog.vector.body601
  %cmp.n608 = icmp eq i64 %i.eu, %n.vec600
  br i1 %cmp.n608, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i.us, label %.lr.ph.i.i.i.i.i89.us.preheader

.lr.ph.i.i.i.i.i89.us.preheader:                  ; preds = %iter.check595, %vec.epilog.iter.check597, %vec.epilog.middle.block607
  %.012.i.i.i.i.i.us.ph = phi ptr [ %i.en, %iter.check595 ], [ %i.ey, %vec.epilog.iter.check597 ], [ %i.fj, %vec.epilog.middle.block607 ]
  %.0911.i.i.i.i.i.us.ph = phi ptr [ %.sroa.0277.2375.us, %iter.check595 ], [ %i.ez, %vec.epilog.iter.check597 ], [ %i.fk, %vec.epilog.middle.block607 ]
  br label %.lr.ph.i.i.i.i.i89.us

.lr.ph.i.i.i.i.i89.us:                            ; preds = %.lr.ph.i.i.i.i.i89.us.preheader, %.lr.ph.i.i.i.i.i89.us
  %.012.i.i.i.i.i.us = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i89.us ], [ %.012.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i89.us.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.us = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i89.us ], [ %.0911.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i89.us.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.fn = load i64, ptr %.0911.i.i.i.i.i.us, align 4, !alias.scope !111, !noalias !108
  store i64 %i.fn, ptr %.012.i.i.i.i.i.us, align 4, !alias.scope !108, !noalias !111
  %i.fo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.us, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us, i64 8 ; 2 uses
  %.not.i.i.i.i.i90.us = icmp eq ptr %i.fo, %.sroa.7280.2374.us
  br i1 %.not.i.i.i.i.i90.us, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i.us, label %.lr.ph.i.i.i.i.i89.us, !llvm.loop !116

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i.us: ; preds = %.lr.ph.i.i.i.i.i89.us, %middle.block590, %vec.epilog.middle.block607, %_ZNKSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.us
  %.0.lcssa.i.i.i.i.i.us = phi ptr [ %i.en, %_ZNKSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.us ], [ %i.fj, %vec.epilog.middle.block607 ], [ %i.ey, %middle.block590 ], [ %i.fp, %.lr.ph.i.i.i.i.i89.us ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.us, i64 8
  %.not.i24.i.i.us = icmp eq ptr %.sroa.0277.2375.us, null
  br i1 %.not.i24.i.i.us, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i.us
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0277.2375.us, i64 noundef %i.ef) #30
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us: ; preds = %bb.ac, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i.us
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us: ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us, %bb.aa, %bb.y, %bb.w, %.preheader339.split.us
  %.sroa.11.3.us = phi ptr [ %.sroa.11.2373.us, %bb.w ], [ %.sroa.11.2373.us, %.preheader339.split.us ], [ %.sroa.11.2373.us, %bb.y ], [ %i.fr, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us ], [ %.sroa.11.2373.us, %bb.aa ] ; 2 uses
  %.sroa.7280.3.us = phi ptr [ %.sroa.7280.2374.us, %bb.w ], [ %.sroa.7280.2374.us, %.preheader339.split.us ], [ %.sroa.7280.2374.us, %bb.y ], [ %i.fq, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us ], [ %i.ec, %bb.aa ] ; 2 uses
  %.sroa.0277.3.us = phi ptr [ %.sroa.0277.2375.us, %bb.w ], [ %.sroa.0277.2375.us, %.preheader339.split.us ], [ %.sroa.0277.2375.us, %bb.y ], [ %i.en, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us ], [ %.sroa.0277.2375.us, %bb.aa ] ; 2 uses
  %.8.us = phi i32 [ %.7376.us, %bb.w ], [ %.7376.us, %.preheader339.split.us ], [ %i.dz, %bb.y ], [ %.7376.us, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us ], [ %.7376.us, %bb.aa ] ; 2 uses
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next445, 64
  br i1 %exitcond447.not, label %.loopexit, label %.preheader339.split.us, !llvm.loop !117

.preheader339.split:                              ; preds = %.preheader339, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.7
  %indvars.iv440 = phi i64 [ %indvars.iv.next441.7, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.7 ], [ 0, %.preheader339 ] ; 17 uses
  %.7376 = phi i32 [ %.8.7, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.7 ], [ %.6384, %.preheader339 ] ; 3 uses
  %i.fs = shl nuw i64 1, %indvars.iv440
  %i.ft = and i64 %i.dp, %i.fs
  %.not81 = icmp eq i64 %i.ft, 0
  br i1 %.not81, label %bb.ad, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit

bb.ad:                                            ; preds = %.preheader339.split
  %i.fu = add nsw i32 %.7376, 1
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv440
  store i32 %.7376, ptr %i.fv, align 16, !tbaa !89
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit

.split.us:                                        ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #31
  unreachable

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit: ; preds = %bb.ad, %.preheader339.split
  %.8 = phi i32 [ %i.fu, %bb.ad ], [ %.7376, %.preheader339.split ] ; 3 uses
  %i.fw = shl nuw i64 2, %indvars.iv440
  %i.fx = and i64 %i.dp, %i.fw
  %.not81.1 = icmp eq i64 %i.fx, 0
  br i1 %.not81.1, label %bb.ae, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.1

bb.ae:                                            ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit
  %i.fy = add nsw i32 %.8, 1
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv440
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store i32 %.8, ptr %i.ga, align 4, !tbaa !89
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.1

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.1: ; preds = %bb.ae, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit
  %.8.1 = phi i32 [ %i.fy, %bb.ae ], [ %.8, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit ] ; 3 uses
  %i.gb = shl nuw i64 4, %indvars.iv440
  %i.gc = and i64 %i.dp, %i.gb
  %.not81.2 = icmp eq i64 %i.gc, 0
  br i1 %.not81.2, label %bb.af, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2

bb.af:                                            ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.1
  %i.gd = add nsw i32 %.8.1, 1
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv440
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i32 %.8.1, ptr %i.gf, align 8, !tbaa !89
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2: ; preds = %bb.af, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.1
  %.8.2 = phi i32 [ %i.gd, %bb.af ], [ %.8.1, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.1 ] ; 3 uses
  %i.gg = shl nuw i64 8, %indvars.iv440
  %i.gh = and i64 %i.dp, %i.gg
  %.not81.3 = icmp eq i64 %i.gh, 0
  br i1 %.not81.3, label %bb.ag, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.3

bb.ag:                                            ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2
  %i.gi = add nsw i32 %.8.2, 1
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv440
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  store i32 %.8.2, ptr %i.gk, align 4, !tbaa !89
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.3

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.3: ; preds = %bb.ag, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2
  %.8.3 = phi i32 [ %i.gi, %bb.ag ], [ %.8.2, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2 ] ; 3 uses
  %i.gl = shl nuw i64 16, %indvars.iv440
  %i.gm = and i64 %i.dp, %i.gl
  %.not81.4 = icmp eq i64 %i.gm, 0
  br i1 %.not81.4, label %bb.ah, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.4

bb.ah:                                            ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.3
  %i.gn = add nsw i32 %.8.3, 1
end_hunk_0
