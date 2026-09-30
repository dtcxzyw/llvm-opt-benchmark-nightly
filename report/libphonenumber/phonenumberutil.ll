Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonenumberutil?download=true
inline.NumInlined: 4537
inline.NumDeleted: 1449
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZSt22__final_insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_:bb.a
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i.preheader.i.11, label %bb.l

bb.l:                                             ; preds = %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.10
  %i.co = load i32, ptr %.sroa.0.018.i.ptr.10, align 4, !tbaa !127 ; 2 uses
  %i.cp = icmp slt i32 %i.cl, %i.co
  br i1 %i.cp, label %.lr.ph.i.i.11, label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.11

.lr.ph.i.i.11:                                    ; preds = %bb.l, %.lr.ph.i.i.11
  %i.cq = phi i32 [ %i.cr, %.lr.ph.i.i.11 ], [ %i.co, %bb.l ]
  %.sroa.0.09.i.i.11 = phi ptr [ %.sroa.0.0.i.i.11, %.lr.ph.i.i.11 ], [ %.sroa.0.018.i.ptr.10, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i.11 = phi ptr [ %.sroa.0.09.i.i.11, %.lr.ph.i.i.11 ], [ %.sroa.0.018.i.ptr.11, %bb.l ]
  store i32 %i.cq, ptr %.sroa.04.08.i.i.11, align 4, !tbaa !127
  %.sroa.0.0.i.i.11 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.11, i64 -4 ; 2 uses
  %i.cr = load i32, ptr %.sroa.0.0.i.i.11, align 4, !tbaa !127 ; 2 uses
  %i.cs = icmp slt i32 %i.cl, %i.cr
  br i1 %i.cs, label %.lr.ph.i.i.11, label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.11, !llvm.loop !677

.lr.ph.i.i.i.i.i.preheader.i.11:                  ; preds = %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.10
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %scevgep, ptr noundef nonnull align 4 dereferenceable(48) %0, i64 48, i1 false), !tbaa !127
  br label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.11

_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.11: ; preds = %.lr.ph.i.i.11, %.lr.ph.i.i.i.i.i.preheader.i.11, %bb.l
  %.sink.i.11 = phi ptr [ %.sroa.0.018.i.ptr.11, %bb.l ], [ %0, %.lr.ph.i.i.i.i.i.preheader.i.11 ], [ %.sroa.0.09.i.i.11, %.lr.ph.i.i.11 ]
  store i32 %i.cl, ptr %.sink.i.11, align 4, !tbaa !127
  %.sroa.0.018.i.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.ct = load i32, ptr %.sroa.0.018.i.ptr.12, align 4, !tbaa !127 ; 4 uses
  %i.cu = load i32, ptr %0, align 4, !tbaa !127
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i.preheader.i.12, label %bb.m

bb.m:                                             ; preds = %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.11
  %i.cw = load i32, ptr %.sroa.0.018.i.ptr.11, align 4, !tbaa !127 ; 2 uses
  %i.cx = icmp slt i32 %i.ct, %i.cw
  br i1 %i.cx, label %.lr.ph.i.i.12, label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.12

.lr.ph.i.i.12:                                    ; preds = %bb.m, %.lr.ph.i.i.12
  %i.cy = phi i32 [ %i.cz, %.lr.ph.i.i.12 ], [ %i.cw, %bb.m ]
  %.sroa.0.09.i.i.12 = phi ptr [ %.sroa.0.0.i.i.12, %.lr.ph.i.i.12 ], [ %.sroa.0.018.i.ptr.11, %bb.m ] ; 3 uses
  %.sroa.04.08.i.i.12 = phi ptr [ %.sroa.0.09.i.i.12, %.lr.ph.i.i.12 ], [ %.sroa.0.018.i.ptr.12, %bb.m ]
  store i32 %i.cy, ptr %.sroa.04.08.i.i.12, align 4, !tbaa !127
  %.sroa.0.0.i.i.12 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.12, i64 -4 ; 2 uses
  %i.cz = load i32, ptr %.sroa.0.0.i.i.12, align 4, !tbaa !127 ; 2 uses
  %i.da = icmp slt i32 %i.ct, %i.cz
  br i1 %i.da, label %.lr.ph.i.i.12, label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.12, !llvm.loop !677

.lr.ph.i.i.i.i.i.preheader.i.12:                  ; preds = %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.11
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %scevgep, ptr noundef nonnull align 4 dereferenceable(52) %0, i64 52, i1 false), !tbaa !127
  br label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.12

_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.12: ; preds = %.lr.ph.i.i.12, %.lr.ph.i.i.i.i.i.preheader.i.12, %bb.m
  %.sink.i.12 = phi ptr [ %.sroa.0.018.i.ptr.12, %bb.m ], [ %0, %.lr.ph.i.i.i.i.i.preheader.i.12 ], [ %.sroa.0.09.i.i.12, %.lr.ph.i.i.12 ]
  store i32 %i.ct, ptr %.sink.i.12, align 4, !tbaa !127
  %.sroa.0.018.i.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.db = load i32, ptr %.sroa.0.018.i.ptr.13, align 4, !tbaa !127 ; 4 uses
  %i.dc = load i32, ptr %0, align 4, !tbaa !127
  %i.dd = icmp slt i32 %i.db, %i.dc
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.preheader.i.13, label %bb.n

bb.n:                                             ; preds = %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.12
  %i.de = load i32, ptr %.sroa.0.018.i.ptr.12, align 4, !tbaa !127 ; 2 uses
  %i.df = icmp slt i32 %i.db, %i.de
  br i1 %i.df, label %.lr.ph.i.i.13, label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.13

.lr.ph.i.i.13:                                    ; preds = %bb.n, %.lr.ph.i.i.13
  %i.dg = phi i32 [ %i.dh, %.lr.ph.i.i.13 ], [ %i.de, %bb.n ]
  %.sroa.0.09.i.i.13 = phi ptr [ %.sroa.0.0.i.i.13, %.lr.ph.i.i.13 ], [ %.sroa.0.018.i.ptr.12, %bb.n ] ; 3 uses
  %.sroa.04.08.i.i.13 = phi ptr [ %.sroa.0.09.i.i.13, %.lr.ph.i.i.13 ], [ %.sroa.0.018.i.ptr.13, %bb.n ]
  store i32 %i.dg, ptr %.sroa.04.08.i.i.13, align 4, !tbaa !127
  %.sroa.0.0.i.i.13 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.13, i64 -4 ; 2 uses
  %i.dh = load i32, ptr %.sroa.0.0.i.i.13, align 4, !tbaa !127 ; 2 uses
  %i.di = icmp slt i32 %i.db, %i.dh
  br i1 %i.di, label %.lr.ph.i.i.13, label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.13, !llvm.loop !677

.lr.ph.i.i.i.i.i.preheader.i.13:                  ; preds = %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %scevgep, ptr noundef nonnull align 4 dereferenceable(56) %0, i64 56, i1 false), !tbaa !127
  br label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.13

_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.13: ; preds = %.lr.ph.i.i.13, %.lr.ph.i.i.i.i.i.preheader.i.13, %bb.n
  %.sink.i.13 = phi ptr [ %.sroa.0.018.i.ptr.13, %bb.n ], [ %0, %.lr.ph.i.i.i.i.i.preheader.i.13 ], [ %.sroa.0.09.i.i.13, %.lr.ph.i.i.13 ]
  store i32 %i.db, ptr %.sink.i.13, align 4, !tbaa !127
  %.sroa.0.018.i.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.dj = load i32, ptr %.sroa.0.018.i.ptr.14, align 4, !tbaa !127 ; 4 uses
  %i.dk = load i32, ptr %0, align 4, !tbaa !127
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i.preheader.i.14, label %bb.o

bb.o:                                             ; preds = %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.13
  %i.dm = load i32, ptr %.sroa.0.018.i.ptr.13, align 4, !tbaa !127 ; 2 uses
  %i.dn = icmp slt i32 %i.dj, %i.dm
  br i1 %i.dn, label %.lr.ph.i.i.14, label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.14

.lr.ph.i.i.14:                                    ; preds = %bb.o, %.lr.ph.i.i.14
  %i.do = phi i32 [ %i.dp, %.lr.ph.i.i.14 ], [ %i.dm, %bb.o ]
  %.sroa.0.09.i.i.14 = phi ptr [ %.sroa.0.0.i.i.14, %.lr.ph.i.i.14 ], [ %.sroa.0.018.i.ptr.13, %bb.o ] ; 3 uses
  %.sroa.04.08.i.i.14 = phi ptr [ %.sroa.0.09.i.i.14, %.lr.ph.i.i.14 ], [ %.sroa.0.018.i.ptr.14, %bb.o ]
  store i32 %i.do, ptr %.sroa.04.08.i.i.14, align 4, !tbaa !127
  %.sroa.0.0.i.i.14 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.14, i64 -4 ; 2 uses
  %i.dp = load i32, ptr %.sroa.0.0.i.i.14, align 4, !tbaa !127 ; 2 uses
  %i.dq = icmp slt i32 %i.dj, %i.dp
  br i1 %i.dq, label %.lr.ph.i.i.14, label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.14, !llvm.loop !677

.lr.ph.i.i.i.i.i.preheader.i.14:                  ; preds = %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.13
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %scevgep, ptr noundef nonnull align 4 dereferenceable(60) %0, i64 60, i1 false), !tbaa !127
  br label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.14

_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.14: ; preds = %.lr.ph.i.i.14, %.lr.ph.i.i.i.i.i.preheader.i.14, %bb.o
  %.sink.i.14 = phi ptr [ %.sroa.0.018.i.ptr.14, %bb.o ], [ %0, %.lr.ph.i.i.i.i.i.preheader.i.14 ], [ %.sroa.0.09.i.i.14, %.lr.ph.i.i.14 ]
  store i32 %i.dj, ptr %.sink.i.14, align 4, !tbaa !127
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not4.i = icmp eq ptr %i.dr, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.14, %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.0.05.i = phi ptr [ %i.dy, %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.dr, %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.14 ] ; 5 uses
  %i.ds = load i32, ptr %.sroa.0.05.i, align 4, !tbaa !127 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -4 ; 2 uses
  %i.dt = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !127 ; 2 uses
  %i.du = icmp slt i32 %i.ds, %i.dt
  br i1 %i.du, label %.lr.ph.i.i11, label %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i9, %.lr.ph.i.i11
  %i.dv = phi i32 [ %i.dw, %.lr.ph.i.i11 ], [ %i.dt, %.lr.ph.i9 ]
  %.sroa.0.09.i.i12 = phi ptr [ %.sroa.0.0.i.i14, %.lr.ph.i.i11 ], [ %.sroa.0.07.i.i, %.lr.ph.i9 ] ; 3 uses
  %.sroa.04.08.i.i13 = phi ptr [ %.sroa.0.09.i.i12, %.lr.ph.i.i11 ], [ %.sroa.0.05.i, %.lr.ph.i9 ]
  store i32 %i.dv, ptr %.sroa.04.08.i.i13, align 4, !tbaa !127
  %.sroa.0.0.i.i14 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i12, i64 -4 ; 2 uses
  %i.dw = load i32, ptr %.sroa.0.0.i.i14, align 4, !tbaa !127 ; 2 uses
  %i.dx = icmp slt i32 %i.ds, %i.dw
  br i1 %i.dx, label %.lr.ph.i.i11, label %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !677

_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i11, %.lr.ph.i9
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.05.i, %.lr.ph.i9 ], [ %.sroa.0.09.i.i12, %.lr.ph.i.i11 ]
  store i32 %i.ds, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !127
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 4 ; 2 uses
  %.not.i10 = icmp eq ptr %i.dy, %1
  br i1 %.not.i10, label %_ZSt26__unguarded_insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, label %.lr.ph.i9, !llvm.loop !678

bb.p:                                             ; preds = %bb.a
  %i.dz = icmp eq ptr %0, %1
  %.sroa.0.015.i16 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not16.i17 = icmp eq ptr %.sroa.0.015.i16, %1
  %or.cond = select i1 %i.dz, i1 true, i1 %.not16.i17
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %bb.p, %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i21
  %.sroa.0.018.i19 = phi ptr [ %.sroa.0.0.i23, %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i21 ], [ %.sroa.0.015.i16, %bb.p ] ; 7 uses
  %.pn17.i20 = phi ptr [ %.sroa.0.018.i19, %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i21 ], [ %0, %bb.p ] ; 3 uses
  %i.ea = load i32, ptr %.sroa.0.018.i19, align 4, !tbaa !127 ; 4 uses
  %i.eb = load i32, ptr %0, align 4, !tbaa !127
  %i.ec = icmp slt i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i18
  %i.ed = ptrtoint ptr %.sroa.0.018.i19 to i64
  %i.ee = sub i64 %i.ed, %i.b                     ; 2 uses
  %i.ef = ashr exact i64 %i.ee, 2                 ; 2 uses
  %i.eg = icmp sgt i64 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.i.i.i.i.i.preheader.i29, label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i21

.lr.ph.i.i.i.i.i.preheader.i29:                   ; preds = %bb.q
  %i.eh = getelementptr i8, ptr %.pn17.i20, i64 8
  %i.ei = mul nsw i64 %i.ef, -4                   ; 2 uses
  %scevgep.i30 = getelementptr i8, ptr %i.eh, i64 %i.ei
  %scevgep20.i31 = getelementptr i8, ptr %.sroa.0.018.i19, i64 %i.ei
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i30, ptr align 4 %scevgep20.i31, i64 %i.ee, i1 false), !tbaa !127
  br label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i21

bb.r:                                             ; preds = %.lr.ph.i18
  %i.ej = load i32, ptr %.pn17.i20, align 4, !tbaa !127 ; 2 uses
  %i.ek = icmp slt i32 %i.ea, %i.ej
  br i1 %i.ek, label %.lr.ph.i.i25, label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i21

.lr.ph.i.i25:                                     ; preds = %bb.r, %.lr.ph.i.i25
  %i.el = phi i32 [ %i.em, %.lr.ph.i.i25 ], [ %i.ej, %bb.r ]
  %.sroa.0.09.i.i26 = phi ptr [ %.sroa.0.0.i.i28, %.lr.ph.i.i25 ], [ %.pn17.i20, %bb.r ] ; 3 uses
  %.sroa.04.08.i.i27 = phi ptr [ %.sroa.0.09.i.i26, %.lr.ph.i.i25 ], [ %.sroa.0.018.i19, %bb.r ]
  store i32 %i.el, ptr %.sroa.04.08.i.i27, align 4, !tbaa !127
  %.sroa.0.0.i.i28 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i26, i64 -4 ; 2 uses
  %i.em = load i32, ptr %.sroa.0.0.i.i28, align 4, !tbaa !127 ; 2 uses
  %i.en = icmp slt i32 %i.ea, %i.em
  br i1 %i.en, label %.lr.ph.i.i25, label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i21, !llvm.loop !677

_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i21: ; preds = %.lr.ph.i.i25, %bb.r, %.lr.ph.i.i.i.i.i.preheader.i29, %bb.q
  %.sink.i22 = phi ptr [ %0, %bb.q ], [ %0, %.lr.ph.i.i.i.i.i.preheader.i29 ], [ %.sroa.0.018.i19, %bb.r ], [ %.sroa.0.09.i.i26, %.lr.ph.i.i25 ]
  store i32 %i.ea, ptr %.sink.i22, align 4, !tbaa !127
  %.sroa.0.0.i23 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i19, i64 4 ; 2 uses
  %.not.i24 = icmp eq ptr %.sroa.0.0.i23, %1
  br i1 %.not.i24, label %_ZSt26__unguarded_insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, label %.lr.ph.i18, !llvm.loop !679

_ZSt26__unguarded_insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit: ; preds = %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i21, %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.p, %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN6google8protobuf8internal16RepeatedIteratorIiEEliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.ak, %_ZSt13__adjust_heapIN6google8protobuf8internal16RepeatedIteratorIiEEliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.us
  %i.p = load i32, ptr %i.o, align 4, !tbaa !127  ; 2 uses
  %i.q = icmp slt i64 %.013.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN6google8protobuf8internal16RepeatedIteratorIiEEliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !127
  %i.x = load i32, ptr %i.v, align 4, !tbaa !127
  %i.y = icmp slt i32 %i.w, %i.x
  %spec.select.i.us = select i1 %i.y, i64 %i.u, i64 %i.s ; 6 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !127
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.us
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !127
  %i.ac = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !27

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ad = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN6google8protobuf8internal16RepeatedIteratorIiEEliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !127 ; 2 uses
  %i.ag = icmp slt i32 %i.af, %i.p
  br i1 %i.ag, label %bb.c, label %_ZSt13__adjust_heapIN6google8protobuf8internal16RepeatedIteratorIiEEliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !127
  %i.ai = icmp sgt i64 %.0920.i.i.us, %.013.us
  br i1 %i.ai, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN6google8protobuf8internal16RepeatedIteratorIiEEliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us, !llvm.loop !28

_ZSt13__adjust_heapIN6google8protobuf8internal16RepeatedIteratorIiEEliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i32 %i.p, ptr %i.aj, align 4, !tbaa !127
  %.not.us = icmp eq i64 %.013.us, 0
  %i.ak = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !680

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN6google8protobuf8internal16RepeatedIteratorIiEEliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit
  %.013 = phi i64 [ %i.bj, %_ZSt13__adjust_heapIN6google8protobuf8internal16RepeatedIteratorIiEEliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %.013
  %i.am = load i32, ptr %i.al, align 4, !tbaa !127 ; 2 uses
  %i.an = icmp slt i64 %.013, %i.i
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.ao = shl i64 %.035.i, 1                      ; 2 uses
  %i.ap = add i64 %i.ao, 2                        ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ap
  %i.ar = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !127
  %i.au = load i32, ptr %i.as, align 4, !tbaa !127
  %i.av = icmp slt i32 %i.at, %i.au
  %spec.select.i = select i1 %i.av, i64 %i.ar, i64 %i.ap ; 4 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !127
  %i.ay = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !127
  %i.az = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !27

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ba = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bb = load i32, ptr %i.m, align 4, !tbaa !127
  store i32 %i.bb, ptr %i.n, align 4, !tbaa !127
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bc = icmp sgt i64 %.1.i, %.013
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN6google8protobuf8internal16RepeatedIteratorIiEEliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !127 ; 2 uses
  %i.bf = icmp slt i32 %i.be, %i.am
  br i1 %i.bf, label %bb.f, label %_ZSt13__adjust_heapIN6google8protobuf8internal16RepeatedIteratorIiEEliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !127
  %i.bh = icmp sgt i64 %.0920.i.i, %.013
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN6google8protobuf8internal16RepeatedIteratorIiEEliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit, !llvm.loop !28

_ZSt13__adjust_heapIN6google8protobuf8internal16RepeatedIteratorIiEEliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.am, ptr %i.bi, align 4, !tbaa !127
  %.not = icmp eq i64 %.013, 0
  %i.bj = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !680

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN6google8protobuf8internal16RepeatedIteratorIiEEliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us, %_ZSt13__adjust_heapIN6google8protobuf8internal16RepeatedIteratorIiEEliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #22

declare i32 @u_charDigitValue_74(i32 noundef) local_unnamed_addr #8

declare void @_ZN6google8protobuf8internal14ArenaStringPtr3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #8

declare void @_ZN4i18n12phonenumbers10SimpleItoaB5cxx11Em(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZN4i18n12phonenumbers15HasSuffixStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #21

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #23

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18AddOutOfLineHelperEPv(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN4i18n12phonenumbers12NumberFormatEJEEEPT_PS1_DpOT0_(ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4i18n12phonenumbers29PhoneNumberRegExpsAndMappingsD2Ev(ptr noundef nonnull align 8 dead_on_return(752) dereferenceable(752) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIKN4i18n12phonenumbers6RegExpESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIKN4i18n12phonenumbers6RegExpEEclEPS3_.exit.i

_ZNKSt14default_deleteIKN4i18n12phonenumbers6RegExpEEclEPS3_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #32, !inline_history !3
  br label %_ZNSt10unique_ptrIKN4i18n12phonenumbers6RegExpESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIKN4i18n12phonenumbers6RegExpESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIKN4i18n12phonenumbers6RegExpEEclEPS3_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154  ; 3 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIKN4i18n12phonenumbers6RegExpESt14default_deleteIS3_EED2Ev.exit3, label %_ZNKSt14default_deleteIKN4i18n12phonenumbers6RegExpEEclEPS3_.exit.i2

_ZNKSt14default_deleteIKN4i18n12phonenumbers6RegExpEEclEPS3_.exit.i2: ; preds = %_ZNSt10unique_ptrIKN4i18n12phonenumbers6RegExpESt14default_deleteIS3_EED2Ev.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #32, !inline_history !3
  br label %_ZNSt10unique_ptrIKN4i18n12phonenumbers6RegExpESt14default_deleteIS3_EED2Ev.exit3

_ZNSt10unique_ptrIKN4i18n12phonenumbers6RegExpESt14default_deleteIS3_EED2Ev.exit3: ; preds = %_ZNSt10unique_ptrIKN4i18n12phonenumbers6RegExpESt14default_deleteIS3_EED2Ev.exit, %_ZNKSt14default_deleteIKN4i18n12phonenumbers6RegExpEEclEPS3_.exit.i2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !153  ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5boost10scoped_ptrIKN4i18n12phonenumbers6RegExpEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIKN4i18n12phonenumbers6RegExpESt14default_deleteIS3_EED2Ev.exit3
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #32, !inline_history !4
  br label %_ZN5boost10scoped_ptrIKN4i18n12phonenumbers6RegExpEED2Ev.exit

_ZN5boost10scoped_ptrIKN4i18n12phonenumbers6RegExpEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIKN4i18n12phonenumbers6RegExpESt14default_deleteIS3_EED2Ev.exit3, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 720
end_hunk_0
begin_hunk_1_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_SQ_T0_:bb.a
  %i.ce = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -16
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !127
  store i32 %i.cg, ptr %i.cf, align 8, !tbaa !181
  %i.ch = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !205
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -8
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !167
  %i.ck = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -32
  %i.cl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -32
  %i.cm = load i32, ptr %i.ck, align 8, !tbaa !127
  store i32 %i.cm, ptr %i.cl, align 8, !tbaa !181
  %i.cn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !205
  %i.cp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -24
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !167
  %i.cq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -48
  %i.cr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -48
  %i.cs = load i32, ptr %i.cq, align 8, !tbaa !127
  store i32 %i.cs, ptr %i.cr, align 8, !tbaa !181
  %i.ct = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !205
  %i.cv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -40
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !167
  %i.cw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -64 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -64 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 8, !tbaa !127
  store i32 %i.cy, ptr %i.cx, align 8, !tbaa !181
  %i.cz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -56
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !205
  %i.db = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -56
  store ptr %i.da, ptr %i.db, align 8, !tbaa !167
  %i.dc = add nsw i64 %.010.i.i.i.i.i.i39, -4
  %i.dd = icmp sgt i64 %.010.i.i.i.i.i.i39, 4
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i36, !llvm.loop !30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i36: ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38, %bb.g
  store i32 %i.bo, ptr %0, align 8, !tbaa !181
  store ptr %.sroa.48.0.copyload.i27, ptr %i.bn, align 8, !tbaa !167
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.de = load i32, ptr %.pn20.i25, align 8, !tbaa !181 ; 2 uses
  %i.df = icmp slt i32 %i.bo, %i.de
  br i1 %i.df, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_.exit.i28

.lr.ph.i.i32:                                     ; preds = %bb.h, %.lr.ph.i.i32
  %i.dg = phi i32 [ %i.dk, %.lr.ph.i.i32 ], [ %i.de, %bb.h ]
  %.sroa.0.011.i.i33 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i32 ], [ %.pn20.i25, %bb.h ] ; 3 uses
  %.sroa.06.010.i.i34 = phi ptr [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ], [ %.sroa.09.021.i24, %bb.h ] ; 3 uses
  store i32 %i.dg, ptr %.sroa.06.010.i.i34, align 8, !tbaa !181
  %i.dh = getelementptr inbounds i8, ptr %.sroa.06.010.i.i34, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !205
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i34, i64 8
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !167
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i33, i64 -16 ; 2 uses
  %i.dk = load i32, ptr %.sroa.0.0.i.i35, align 8, !tbaa !181 ; 2 uses
  %i.dl = icmp slt i32 %i.bo, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_.exit.i28, !llvm.loop !709

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_.exit.i28: ; preds = %.lr.ph.i.i32, %bb.h
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.09.021.i24, %bb.h ], [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  store i32 %i.bo, ptr %.sroa.06.0.lcssa.i.i29, align 8, !tbaa !181
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 8
  store ptr %.sroa.48.0.copyload.i27, ptr %i.dm, align 8, !tbaa !167
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i36
  %.sroa.09.0.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i24, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %.sroa.09.0.i30, %1
  br i1 %.not.i31, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_SQ_T0_.exit, label %bb.f, !llvm.loop !710

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_SQ_T0_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_.exit.i13, %.preheader.i20, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_SQ_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_SQ_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_SQ_SQ_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_SQ_SQ_RT0_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.f, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 2 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.g = load i32, ptr %0, align 4, !tbaa !127
  store i32 %i.g, ptr %i.f, align 8, !tbaa !181
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !205
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !167
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 1
  %i.n = icmp sgt i64 %i.k, 2
  br i1 %i.n, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.o = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %0, i64 %i.p
  %i.r = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %0, i64 %i.r
  %i.t = load i32, ptr %i.q, align 8, !tbaa !181
  %i.u = load i32, ptr %i.s, align 8, !tbaa !181
  %i.v = icmp slt i32 %i.t, %i.u
  %spec.select.i.i = select i1 %i.v, i64 %i.r, i64 %i.p ; 4 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i ; 2 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !127
  store i32 %i.y, ptr %i.x, align 8, !tbaa !181
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !205
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !167
  %i.ac = icmp slt i64 %spec.select.i.i, %i.m
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !31

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ad = and i64 %i.j, 16
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.af = add nsw i64 %i.k, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i, %i.ag
  br i1 %i.ah, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !127
  store i32 %i.am, ptr %i.al, align 8, !tbaa !181
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !205
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !167
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_SQ_SQ_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.aj, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i910.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i910.i = lshr i64 %.0921.in.i.i.i, 1   ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i910.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !181 ; 2 uses
  %i.as = icmp slt i32 %i.ar, %.sroa.04.0.copyload.i
  br i1 %i.as, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_SQ_SQ_RT0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  store i32 %i.ar, ptr %i.at, align 8, !tbaa !181
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !205
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !167
  %.not11.i = icmp eq i64 %.0921.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_SQ_SQ_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !32

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_SQ_SQ_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.ax = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i, ptr %i.ax, align 8, !tbaa !181
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.ay, align 8, !tbaa !167
  %i.az = icmp sgt i64 %i.j, 16
  br i1 %i.az, label %bb.b, label %._crit_edge, !llvm.loop !713

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_SQ_SQ_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_SQ_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElSD_NS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_SR_T1_T2_.exit, %bb.b
  %.011 = phi i64 [ %i.g, %bb.b ], [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElSD_NS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_SR_T1_T2_.exit ] ; 8 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %0, i64 %.011 ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %i.q, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = icmp slt i64 %.011, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.011, %bb.c ] ; 2 uses
  %i.s = shl i64 %.038.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 8, !tbaa !181
  %i.y = load i32, ptr %i.w, align 8, !tbaa !181
  %i.z = icmp slt i32 %i.x, %i.y
  %spec.select.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !127
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !181
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !205
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !167
  %i.ag = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !31

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.011, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !127
  store i32 %i.ai, ptr %i.n, align 8, !tbaa !181
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !205
  store ptr %i.aj, ptr %i.p, align 8, !tbaa !167
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i, %.011
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElSD_NS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_SR_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !181 ; 2 uses
  %i.an = icmp slt i32 %i.am, %.sroa.04.0.copyload
  br i1 %i.an, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElSD_NS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_SR_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  store i32 %i.am, ptr %i.ao, align 8, !tbaa !181
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !205
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !167
  %i.as = icmp sgt i64 %.0921.i.i, %.011
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElSD_NS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_SR_T1_T2_.exit, !llvm.loop !32

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElSD_NS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_SR_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload, ptr %i.at, align 8, !tbaa !181
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.sroa.5.0.copyload, ptr %i.au, align 8, !tbaa !167
  %.not = icmp eq i64 %.011, 0
  %i.av = add nsw i64 %.011, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !714

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElSD_NS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_SR_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.e
  br i1 %or.cond.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !94   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95
  %i.m = load ptr, ptr %1, align 8, !tbaa !95
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.o = sub i64 %i.g, %i.i
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit: ; preds = %bb.b, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %i.q = phi i1 [ %i.p, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %bb.b ]
  %i.r = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 3 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !104
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !104
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit
  %.sroa.09.0 = phi ptr [ %i.r, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit ], [ %i.b, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !128 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !94   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !95
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #32 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !128 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !21

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d
end_hunk_1
