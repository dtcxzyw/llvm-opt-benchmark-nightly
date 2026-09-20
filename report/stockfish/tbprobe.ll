Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN9Stockfish10Tablebases4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %cmp.n569, label %.preheader340.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4370.ph = phi i32 [ %.3, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ]
  %.sroa.0285.0369.ph = phi ptr [ %.sroa.0296.1, %iter.check ], [ %i.bu, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader343:                                    ; preds = %bb.k, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit ], [ 0, %bb.k ] ; 3 uses
  %.2367 = phi i32 [ %.3, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit ], [ 0, %bb.k ] ; 6 uses
  %.sroa.0296.0366 = phi ptr [ %.sroa.0296.1, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.k ] ; 8 uses
  %.sroa.7299.0365 = phi ptr [ %.sroa.7299.1, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.k ] ; 7 uses
  %.sroa.11301.0364 = phi ptr [ %.sroa.11301.1, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.k ] ; 5 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv431 to i8  ; 4 uses
  %i.cd = lshr i8 %i.cc, 3                        ; 2 uses
  %i.ce = and i8 %i.cc, 7                         ; 4 uses
  %i.cf = icmp samesign ult i8 %i.cd, %i.ce
  br i1 %i.cf, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.preheader343
  %i.cg = icmp samesign ult i8 %i.ce, 4
  br i1 %i.cg, label %bb.m, label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ch = add nsw i32 %.2367, 1
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, i64 %indvars.iv431
  store i32 %.2367, ptr %i.ci, align 4, !tbaa !81
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
  store i8 %i.cc, ptr %.sroa.7299.0365, align 1, !tbaa !87
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
  store i8 %i.cc, ptr %i.cu, align 1, !tbaa !87
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
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 2 uses
  %exitcond434.not = icmp eq i64 %indvars.iv.next432, 28
  br i1 %exitcond434.not, label %.preheader342, label %.preheader343, !llvm.loop !264

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.4370 = phi i32 [ %i.cz, %.lr.ph ], [ %.4370.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0285.0369 = phi ptr [ %i.dc, %.lr.ph ], [ %.sroa.0285.0369.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cy = load i8, ptr %.sroa.0285.0369, align 1, !tbaa !87
  %i.cz = add nsw i32 %.4370, 1
  %i.da = zext i8 %i.cy to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, i64 %i.da
  store i32 %.4370, ptr %i.db, align 4, !tbaa !81
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0285.0369, i64 1 ; 2 uses
  %.not327 = icmp eq ptr %i.dc, %.sroa.7299.1
  br i1 %.not327, label %.preheader340.preheader, label %.lr.ph, !llvm.loop !265

.preheader340.preheader:                          ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader342
  br label %.preheader340

.preheader340:                                    ; preds = %.preheader340.preheader, %bb.u
  %indvars.iv447 = phi i64 [ %indvars.iv.next448, %bb.u ], [ 0, %.preheader340.preheader ] ; 6 uses
  %.5389 = phi i32 [ %.9, %bb.u ], [ 0, %.preheader340.preheader ]
  %.sroa.0277.0387 = phi ptr [ %.sroa.0277.4, %bb.u ], [ null, %.preheader340.preheader ]
  %.sroa.7280.0386 = phi ptr [ %.sroa.7280.4, %bb.u ], [ null, %.preheader340.preheader ]
  %.sroa.11.0385 = phi ptr [ %.sroa.11.4, %bb.u ], [ null, %.preheader340.preheader ]
  %i.dd = icmp ne i64 %indvars.iv447, 0
  %i.de = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_15MapKKE, i64 %indvars.iv447 ; 9 uses
  %i.df = trunc nuw nsw i64 %indvars.iv447 to i32
  %i.dg = trunc nuw nsw i64 %indvars.iv447 to i32
  br label %bb.v

.preheader338:                                    ; preds = %bb.u
  %.not328390 = icmp eq ptr %.sroa.0277.4, %.sroa.7280.4
  br i1 %.not328390, label %._crit_edge, label %.lr.ph393

bb.u:                                             ; preds = %.loopexit
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %exitcond450.not = icmp eq i64 %indvars.iv.next448, 10
  br i1 %exitcond450.not, label %.preheader338, label %.preheader340, !llvm.loop !266

bb.v:                                             ; preds = %.preheader340, %.loopexit
  %indvars.iv443 = phi i64 [ 0, %.preheader340 ], [ %indvars.iv.next444, %.loopexit ] ; 6 uses
  %.6384 = phi i32 [ %.5389, %.preheader340 ], [ %.9, %.loopexit ] ; 3 uses
  %.sroa.0277.1383 = phi ptr [ %.sroa.0277.0387, %.preheader340 ], [ %.sroa.0277.4, %.loopexit ] ; 3 uses
  %.sroa.7280.1382 = phi ptr [ %.sroa.7280.0386, %.preheader340 ], [ %.sroa.7280.4, %.loopexit ] ; 3 uses
  %.sroa.11.1381 = phi ptr [ %.sroa.11.0385, %.preheader340 ], [ %.sroa.11.4, %.loopexit ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, i64 %indvars.iv443
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !81
  %i.dj = zext i32 %i.di to i64
  %i.dk = icmp eq i64 %indvars.iv447, %i.dj
  %i.dl = icmp eq i64 %indvars.iv443, 1
  %or.cond = or i1 %i.dd, %i.dl
  %or.cond424 = and i1 %i.dk, %or.cond
  br i1 %or.cond424, label %.preheader339, label %.loopexit

.preheader339:                                    ; preds = %bb.v
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %indvars.iv443
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !45
  %i.do = shl nuw nsw i64 1, %indvars.iv443
  %i.dp = or i64 %i.dn, %i.do                     ; 9 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv443 to i8  ; 2 uses
  %i.dr = lshr i8 %i.dq, 3
  %i.ds = and i8 %i.dq, 7
  %.not82 = icmp eq i8 %i.dr, %i.ds
  %.not82.fr = freeze i1 %.not82
  br i1 %.not82.fr, label %.preheader339.split.us, label %.preheader339.split

.preheader339.split.us:                           ; preds = %.preheader339, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us
  %indvars.iv439 = phi i64 [ %indvars.iv.next440, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us ], [ 0, %.preheader339 ] ; 4 uses
  %.7376.us = phi i32 [ %.8.us, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us ], [ %.6384, %.preheader339 ] ; 6 uses
  %.sroa.0277.2375.us = phi ptr [ %.sroa.0277.3.us, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us ], [ %.sroa.0277.1383, %.preheader339 ] ; 13 uses
  %.sroa.7280.2374.us = phi ptr [ %.sroa.7280.3.us, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us ], [ %.sroa.7280.1382, %.preheader339 ] ; 10 uses
  %.sroa.11.2373.us = phi ptr [ %.sroa.11.3.us, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us ], [ %.sroa.11.1381, %.preheader339 ] ; 5 uses
  %i.dt = shl nuw i64 1, %indvars.iv439
  %i.du = and i64 %i.dp, %i.dt
  %.not81.us = icmp eq i64 %i.du, 0
  br i1 %.not81.us, label %bb.w, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us

bb.w:                                             ; preds = %.preheader339.split.us
  %i.dv = trunc nuw nsw i64 %indvars.iv439 to i8  ; 4 uses
  %i.dw = lshr i8 %i.dv, 3                        ; 2 uses
  %i.dx = and i8 %i.dv, 7                         ; 2 uses
  %i.dy = icmp samesign ugt i8 %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not84.us = icmp eq i8 %i.dw, %i.dx
  br i1 %.not84.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = add nsw i32 %.7376.us, 1
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv439
  store i32 %.7376.us, ptr %i.ea, align 4, !tbaa !81
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us

bb.z:                                             ; preds = %bb.x
  %.not.i86.us = icmp eq ptr %.sroa.7280.2374.us, %.sroa.11.2373.us
  br i1 %.not.i86.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 %i.df, ptr %.sroa.7280.2374.us, align 4, !tbaa !290
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.7280.2374.us, i64 4
  store i8 %i.dv, ptr %i.eb, align 4, !tbaa !291
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.7280.2374.us, i64 8
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us

bb.ab:                                            ; preds = %bb.z
  %i.ed = ptrtoint ptr %.sroa.7280.2374.us to i64 ; 2 uses
  %i.ee = ptrtoint ptr %.sroa.0277.2375.us to i64 ; 3 uses
  %i.ef = sub i64 %i.ed, %i.ee                    ; 5 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775800
  br i1 %i.eg, label %.split.us, label %_ZNKSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.ab
  %i.eh = ashr exact i64 %i.ef, 3
  %mul2.i.i.us = ashr exact i64 %i.ef, 2
  %12 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.us, i64 1) ; 2 uses
  %i.ei = icmp ult i64 %12, %i.eh
  %i.ej = tail call i64 @llvm.umin.i64(i64 %12, i64 1152921504606846975)
  %i.ek = select i1 %i.ei, i64 1152921504606846975, i64 %i.ej ; 2 uses
  %i.el = shl nuw nsw i64 %i.ek, 3
  %i.em = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #29 ; 10 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ef ; 2 uses
  store i32 %i.dg, ptr %i.en, align 4, !tbaa !290
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i8 %i.dv, ptr %i.eo, align 4, !tbaa !291
  %.not10.i.i.i.i.i.us = icmp eq ptr %.sroa.0277.2375.us, %.sroa.7280.2374.us
  br i1 %.not10.i.i.i.i.i.us, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i.us, label %iter.check591

iter.check591:                                    ; preds = %_ZNKSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.us
  %i.ep = ptrtoaddr ptr %i.em to i64
  %i.eq = add i64 %i.ed, -8
  %i.er = sub i64 %i.eq, %i.ee                    ; 3 uses
  %i.es = lshr i64 %i.er, 3
  %i.et = add nuw nsw i64 %i.es, 1                ; 5 uses
  %min.iters.check572.a = icmp ult i64 %i.er, 56
  %i.eu = sub i64 %i.ee, %i.ep
  %diff.check = icmp ugt i64 %i.eu, -256
  %or.cond607 = or i1 %min.iters.check572.a, %diff.check
  br i1 %or.cond607, label %.lr.ph.i.i.i.i.i89.us.preheader, label %vector.main.loop.iter.check573

vector.main.loop.iter.check573:                   ; preds = %iter.check591
  %min.iters.check574 = icmp ult i64 %i.er, 248
  br i1 %min.iters.check574, label %vec.epilog.ph595, label %vector.ph575

vector.ph575:                                     ; preds = %vector.main.loop.iter.check573
  %i.ev = and i64 %i.et, 24
  %n.vec576 = and i64 %i.et, 4611686018427387872  ; 4 uses
  %i.ew = shl i64 %n.vec576, 3                    ; 2 uses
  %i.ex = getelementptr i8, ptr %i.em, i64 %i.ew  ; 2 uses
  %i.ey = getelementptr i8, ptr %.sroa.0277.2375.us, i64 %i.ew
  br label %vector.body577

vector.body577:                                   ; preds = %vector.body577, %vector.ph575
  %index578 = phi i64 [ 0, %vector.ph575 ], [ %index.next585, %vector.body577 ] ; 2 uses
  %i.ez = shl i64 %index578, 3                    ; 2 uses
  %next.gep579 = getelementptr i8, ptr %i.em, i64 %i.ez ; 4 uses
  %next.gep580 = getelementptr i8, ptr %.sroa.0277.2375.us, i64 %i.ez ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.fa = getelementptr i8, ptr %next.gep580, i64 64
  %i.fb = getelementptr i8, ptr %next.gep580, i64 128
  %i.fc = getelementptr i8, ptr %next.gep580, i64 192
  %wide.load581.a = load <8 x i64>, ptr %next.gep580, align 4, !alias.scope !293, !noalias !292
  %wide.load582.a = load <8 x i64>, ptr %i.fa, align 4, !alias.scope !293, !noalias !292
  %wide.load583 = load <8 x i64>, ptr %i.fb, align 4, !alias.scope !293, !noalias !292
  %wide.load584 = load <8 x i64>, ptr %i.fc, align 4, !alias.scope !293, !noalias !292
  %i.fd = getelementptr i8, ptr %next.gep579, i64 64
  %i.fe = getelementptr i8, ptr %next.gep579, i64 128
  %i.ff = getelementptr i8, ptr %next.gep579, i64 192
  store <8 x i64> %wide.load581.a, ptr %next.gep579, align 4, !alias.scope !292, !noalias !293
  store <8 x i64> %wide.load582.a, ptr %i.fd, align 4, !alias.scope !292, !noalias !293
  store <8 x i64> %wide.load583, ptr %i.fe, align 4, !alias.scope !292, !noalias !293
  store <8 x i64> %wide.load584, ptr %i.ff, align 4, !alias.scope !292, !noalias !293
  %index.next585 = add nuw i64 %index578, 32      ; 2 uses
  %i.fg = icmp eq i64 %index.next585, %n.vec576
  br i1 %i.fg, label %middle.block586, label %vector.body577, !llvm.loop !270

middle.block586:                                  ; preds = %vector.body577
  %cmp.n587 = icmp eq i64 %i.et, %n.vec576
  br i1 %cmp.n587, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i.us, label %vec.epilog.iter.check593

vec.epilog.iter.check593:                         ; preds = %middle.block586
  %min.epilog.iters.check594 = icmp eq i64 %i.ev, 0
  br i1 %min.epilog.iters.check594, label %.lr.ph.i.i.i.i.i89.us.preheader, label %vec.epilog.ph595, !prof !91

vec.epilog.ph595:                                 ; preds = %vector.main.loop.iter.check573, %vec.epilog.iter.check593
  %vec.epilog.resume.val588 = phi i64 [ %n.vec576, %vec.epilog.iter.check593 ], [ 0, %vector.main.loop.iter.check573 ]
  %n.vec596 = and i64 %i.et, 4611686018427387896  ; 3 uses
  %i.fh = shl i64 %n.vec596, 3                    ; 2 uses
  %i.fi = getelementptr i8, ptr %i.em, i64 %i.fh  ; 2 uses
  %i.fj = getelementptr i8, ptr %.sroa.0277.2375.us, i64 %i.fh
  br label %vec.epilog.vector.body597

vec.epilog.vector.body597:                        ; preds = %vec.epilog.vector.body597, %vec.epilog.ph595
  %index598 = phi i64 [ %vec.epilog.resume.val588, %vec.epilog.ph595 ], [ %index.next602, %vec.epilog.vector.body597 ] ; 2 uses
  %i.fk = shl i64 %index598, 3                    ; 2 uses
  %next.gep599 = getelementptr i8, ptr %i.em, i64 %i.fk
  %next.gep600 = getelementptr i8, ptr %.sroa.0277.2375.us, i64 %i.fk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %wide.load601 = load <8 x i64>, ptr %next.gep600, align 4, !alias.scope !293, !noalias !292
  store <8 x i64> %wide.load601, ptr %next.gep599, align 4, !alias.scope !292, !noalias !293
  %index.next602 = add nuw i64 %index598, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next602, %n.vec596
  br i1 %i.fl, label %vec.epilog.middle.block603, label %vec.epilog.vector.body597, !llvm.loop !271

vec.epilog.middle.block603:                       ; preds = %vec.epilog.vector.body597
  %cmp.n604 = icmp eq i64 %i.et, %n.vec596
  br i1 %cmp.n604, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i.us, label %.lr.ph.i.i.i.i.i89.us.preheader

.lr.ph.i.i.i.i.i89.us.preheader:                  ; preds = %iter.check591, %vec.epilog.iter.check593, %vec.epilog.middle.block603
  %.012.i.i.i.i.i.us.ph = phi ptr [ %i.em, %iter.check591 ], [ %i.ex, %vec.epilog.iter.check593 ], [ %i.fi, %vec.epilog.middle.block603 ]
  %.0911.i.i.i.i.i.us.ph = phi ptr [ %.sroa.0277.2375.us, %iter.check591 ], [ %i.ey, %vec.epilog.iter.check593 ], [ %i.fj, %vec.epilog.middle.block603 ]
  br label %.lr.ph.i.i.i.i.i89.us

.lr.ph.i.i.i.i.i89.us:                            ; preds = %.lr.ph.i.i.i.i.i89.us.preheader, %.lr.ph.i.i.i.i.i89.us
  %.012.i.i.i.i.i.us = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i89.us ], [ %.012.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i89.us.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.us = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i89.us ], [ %.0911.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i89.us.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.fm = load i64, ptr %.0911.i.i.i.i.i.us, align 4, !alias.scope !293, !noalias !292
  store i64 %i.fm, ptr %.012.i.i.i.i.i.us, align 4, !alias.scope !292, !noalias !293
  %i.fn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.us, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us, i64 8 ; 2 uses
  %.not.i.i.i.i.i90.us = icmp eq ptr %i.fn, %.sroa.7280.2374.us
  br i1 %.not.i.i.i.i.i90.us, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i.us, label %.lr.ph.i.i.i.i.i89.us, !llvm.loop !272

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i.us: ; preds = %.lr.ph.i.i.i.i.i89.us, %middle.block586, %vec.epilog.middle.block603, %_ZNKSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.us
  %.0.lcssa.i.i.i.i.i.us = phi ptr [ %i.em, %_ZNKSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.us ], [ %i.fi, %vec.epilog.middle.block603 ], [ %i.ex, %middle.block586 ], [ %i.fo, %.lr.ph.i.i.i.i.i89.us ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.us, i64 8
  %.not.i24.i.i.us = icmp eq ptr %.sroa.0277.2375.us, null
  br i1 %.not.i24.i.i.us, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i.us
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0277.2375.us, i64 noundef %i.ef) #30
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us: ; preds = %bb.ac, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i.us
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ek
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us: ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us, %bb.aa, %bb.y, %bb.w, %.preheader339.split.us
  %.sroa.11.3.us = phi ptr [ %.sroa.11.2373.us, %bb.w ], [ %.sroa.11.2373.us, %.preheader339.split.us ], [ %.sroa.11.2373.us, %bb.y ], [ %i.fq, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us ], [ %.sroa.11.2373.us, %bb.aa ] ; 2 uses
  %.sroa.7280.3.us = phi ptr [ %.sroa.7280.2374.us, %bb.w ], [ %.sroa.7280.2374.us, %.preheader339.split.us ], [ %.sroa.7280.2374.us, %bb.y ], [ %i.fp, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us ], [ %i.ec, %bb.aa ] ; 2 uses
  %.sroa.0277.3.us = phi ptr [ %.sroa.0277.2375.us, %bb.w ], [ %.sroa.0277.2375.us, %.preheader339.split.us ], [ %.sroa.0277.2375.us, %bb.y ], [ %i.em, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us ], [ %.sroa.0277.2375.us, %bb.aa ] ; 2 uses
  %.8.us = phi i32 [ %.7376.us, %bb.w ], [ %.7376.us, %.preheader339.split.us ], [ %i.dz, %bb.y ], [ %.7376.us, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE17_M_realloc_insertIJRiRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.us ], [ %.7376.us, %bb.aa ] ; 2 uses
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 2 uses
  %exitcond442.not = icmp eq i64 %indvars.iv.next440, 64
  br i1 %exitcond442.not, label %.loopexit, label %.preheader339.split.us, !llvm.loop !273

.preheader339.split:                              ; preds = %.preheader339, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.7
  %indvars.iv435 = phi i64 [ %indvars.iv.next436.7, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.7 ], [ 0, %.preheader339 ] ; 17 uses
  %.7376 = phi i32 [ %.8.7, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.7 ], [ %.6384, %.preheader339 ] ; 3 uses
  %i.fr = shl nuw i64 1, %indvars.iv435
  %i.fs = and i64 %i.dp, %i.fr
  %.not81 = icmp eq i64 %i.fs, 0
  br i1 %.not81, label %bb.ad, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit

bb.ad:                                            ; preds = %.preheader339.split
  %i.ft = add nsw i32 %.7376, 1
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv435
  store i32 %.7376, ptr %i.fu, align 16, !tbaa !81
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit

.split.us:                                        ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #31
  unreachable

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit: ; preds = %bb.ad, %.preheader339.split
  %.8 = phi i32 [ %i.ft, %bb.ad ], [ %.7376, %.preheader339.split ] ; 3 uses
  %i.fv = shl nuw i64 2, %indvars.iv435
  %i.fw = and i64 %i.dp, %i.fv
  %.not81.1 = icmp eq i64 %i.fw, 0
  br i1 %.not81.1, label %bb.ae, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.1

bb.ae:                                            ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit
  %i.fx = add nsw i32 %.8, 1
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv435
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i32 %.8, ptr %i.fz, align 4, !tbaa !81
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.1

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.1: ; preds = %bb.ae, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit
  %.8.1 = phi i32 [ %i.fx, %bb.ae ], [ %.8, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit ] ; 3 uses
  %i.ga = shl nuw i64 4, %indvars.iv435
  %i.gb = and i64 %i.dp, %i.ga
  %.not81.2 = icmp eq i64 %i.gb, 0
  br i1 %.not81.2, label %bb.af, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2

bb.af:                                            ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.1
  %i.gc = add nsw i32 %.8.1, 1
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv435
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i32 %.8.1, ptr %i.ge, align 8, !tbaa !81
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2: ; preds = %bb.af, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.1
  %.8.2 = phi i32 [ %i.gc, %bb.af ], [ %.8.1, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.1 ] ; 3 uses
  %i.gf = shl nuw i64 8, %indvars.iv435
  %i.gg = and i64 %i.dp, %i.gf
  %.not81.3 = icmp eq i64 %i.gg, 0
  br i1 %.not81.3, label %bb.ag, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.3

bb.ag:                                            ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2
  %i.gh = add nsw i32 %.8.2, 1
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv435
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i32 %.8.2, ptr %i.gj, align 4, !tbaa !81
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.3

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.3: ; preds = %bb.ag, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2
  %.8.3 = phi i32 [ %i.gh, %bb.ag ], [ %.8.2, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2 ] ; 3 uses
  %i.gk = shl nuw i64 16, %indvars.iv435
  %i.gl = and i64 %i.dp, %i.gk
  %.not81.4 = icmp eq i64 %i.gl, 0
  br i1 %.not81.4, label %bb.ah, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.4

bb.ah:                                            ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.3
  %i.gm = add nsw i32 %.8.3, 1
end_hunk_0
