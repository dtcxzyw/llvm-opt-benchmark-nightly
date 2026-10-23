Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonenumberutil?download=true
inline.NumInlined: 4537
inline.NumDeleted: 1449
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZSt22__final_insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_:bb.a

bb.z:                                             ; preds = %bb.y
  %i.da = load i32, ptr %.sroa.0.018.i.ptr.11, align 4, !tbaa !127 ; 2 uses
  %i.db = icmp slt i32 %i.cy, %i.da
  br i1 %i.db, label %.lr.ph.i.i.12, label %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.12

.lr.ph.i.i.12:                                    ; preds = %bb.z, %.lr.ph.i.i.12
  %i.dc = phi i32 [ %i.dd, %.lr.ph.i.i.12 ], [ %i.da, %bb.z ]
  %.sroa.0.09.i.i.12 = phi ptr [ %.sroa.0.0.i.i.12, %.lr.ph.i.i.12 ], [ %.sroa.0.018.i.ptr.11, %bb.z ] ; 3 uses
  %.sroa.04.08.i.i.12 = phi ptr [ %.sroa.0.09.i.i.12, %.lr.ph.i.i.12 ], [ %.sroa.0.018.i.ptr.12, %bb.z ]
  store i32 %i.dc, ptr %.sroa.04.08.i.i.12, align 4, !tbaa !127
  %.sroa.0.0.i.i.12 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.12, i64 -4 ; 2 uses
  %i.dd = load i32, ptr %.sroa.0.0.i.i.12, align 4, !tbaa !127 ; 2 uses
  %i.de = icmp slt i32 %i.cy, %i.dd
  br i1 %i.de, label %.lr.ph.i.i.12, label %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.12, !llvm.loop !679

_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.12: ; preds = %.lr.ph.i.i.12, %bb.z
  %.sroa.04.0.lcssa.i.i.12 = phi ptr [ %.sroa.0.018.i.ptr.12, %bb.z ], [ %.sroa.0.09.i.i.12, %.lr.ph.i.i.12 ]
  store i32 %i.cy, ptr %.sroa.04.0.lcssa.i.i.12, align 4, !tbaa !127
  %.pre.i.12 = load i32, ptr %0, align 4, !tbaa !127
  br label %bb.aa

_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.12: ; preds = %bb.y
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %scevgep, ptr noundef nonnull align 4 dereferenceable(52) %0, i64 52, i1 false), !tbaa !127
  store i32 %i.cy, ptr %0, align 4, !tbaa !127
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.12, %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.12
  %i.df = phi i32 [ %i.cy, %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.12 ], [ %.pre.i.12, %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.12 ]
  %.sroa.0.018.i.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.dg = load i32, ptr %.sroa.0.018.i.ptr.13, align 4, !tbaa !127 ; 6 uses
  %i.dh = icmp slt i32 %i.dg, %i.df
  br i1 %i.dh, label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.13, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = load i32, ptr %.sroa.0.018.i.ptr.12, align 4, !tbaa !127 ; 2 uses
  %i.dj = icmp slt i32 %i.dg, %i.di
  br i1 %i.dj, label %.lr.ph.i.i.13, label %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.13

.lr.ph.i.i.13:                                    ; preds = %bb.ab, %.lr.ph.i.i.13
  %i.dk = phi i32 [ %i.dl, %.lr.ph.i.i.13 ], [ %i.di, %bb.ab ]
  %.sroa.0.09.i.i.13 = phi ptr [ %.sroa.0.0.i.i.13, %.lr.ph.i.i.13 ], [ %.sroa.0.018.i.ptr.12, %bb.ab ] ; 3 uses
  %.sroa.04.08.i.i.13 = phi ptr [ %.sroa.0.09.i.i.13, %.lr.ph.i.i.13 ], [ %.sroa.0.018.i.ptr.13, %bb.ab ]
  store i32 %i.dk, ptr %.sroa.04.08.i.i.13, align 4, !tbaa !127
  %.sroa.0.0.i.i.13 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.13, i64 -4 ; 2 uses
  %i.dl = load i32, ptr %.sroa.0.0.i.i.13, align 4, !tbaa !127 ; 2 uses
  %i.dm = icmp slt i32 %i.dg, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i.13, label %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.13, !llvm.loop !679

_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.13: ; preds = %.lr.ph.i.i.13, %bb.ab
  %.sroa.04.0.lcssa.i.i.13 = phi ptr [ %.sroa.0.018.i.ptr.13, %bb.ab ], [ %.sroa.0.09.i.i.13, %.lr.ph.i.i.13 ]
  store i32 %i.dg, ptr %.sroa.04.0.lcssa.i.i.13, align 4, !tbaa !127
  %.pre.i.13 = load i32, ptr %0, align 4, !tbaa !127
  br label %bb.ac

_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.13: ; preds = %bb.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %scevgep, ptr noundef nonnull align 4 dereferenceable(56) %0, i64 56, i1 false), !tbaa !127
  store i32 %i.dg, ptr %0, align 4, !tbaa !127
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.13, %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.13
  %i.dn = phi i32 [ %i.dg, %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.13 ], [ %.pre.i.13, %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.13 ]
  %.sroa.0.018.i.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.do = load i32, ptr %.sroa.0.018.i.ptr.14, align 4, !tbaa !127 ; 5 uses
  %i.dp = icmp slt i32 %i.do, %i.dn
  br i1 %i.dp, label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.14, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = load i32, ptr %.sroa.0.018.i.ptr.13, align 4, !tbaa !127 ; 2 uses
  %i.dr = icmp slt i32 %i.do, %i.dq
  br i1 %i.dr, label %.lr.ph.i.i.14, label %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.14

.lr.ph.i.i.14:                                    ; preds = %bb.ad, %.lr.ph.i.i.14
  %i.ds = phi i32 [ %i.dt, %.lr.ph.i.i.14 ], [ %i.dq, %bb.ad ]
  %.sroa.0.09.i.i.14 = phi ptr [ %.sroa.0.0.i.i.14, %.lr.ph.i.i.14 ], [ %.sroa.0.018.i.ptr.13, %bb.ad ] ; 3 uses
  %.sroa.04.08.i.i.14 = phi ptr [ %.sroa.0.09.i.i.14, %.lr.ph.i.i.14 ], [ %.sroa.0.018.i.ptr.14, %bb.ad ]
  store i32 %i.ds, ptr %.sroa.04.08.i.i.14, align 4, !tbaa !127
  %.sroa.0.0.i.i.14 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.14, i64 -4 ; 2 uses
  %i.dt = load i32, ptr %.sroa.0.0.i.i.14, align 4, !tbaa !127 ; 2 uses
  %i.du = icmp slt i32 %i.do, %i.dt
  br i1 %i.du, label %.lr.ph.i.i.14, label %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.14, !llvm.loop !679

_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.14: ; preds = %.lr.ph.i.i.14, %bb.ad
  %.sroa.04.0.lcssa.i.i.14 = phi ptr [ %.sroa.0.018.i.ptr.14, %bb.ad ], [ %.sroa.0.09.i.i.14, %.lr.ph.i.i.14 ]
  store i32 %i.do, ptr %.sroa.04.0.lcssa.i.i.14, align 4, !tbaa !127
  br label %_ZSt16__insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit

_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.14: ; preds = %bb.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %scevgep, ptr noundef nonnull align 4 dereferenceable(60) %0, i64 60, i1 false), !tbaa !127
  store i32 %i.do, ptr %0, align 4, !tbaa !127
  br label %_ZSt16__insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit

_ZSt16__insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit: ; preds = %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i.14, %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.14
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not4.i = icmp eq ptr %i.dv, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %_ZSt16__insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10
  %.sroa.0.05.i = phi ptr [ %i.ec, %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10 ], [ %i.dv, %_ZSt16__insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit ] ; 5 uses
  %i.dw = load i32, ptr %.sroa.0.05.i, align 4, !tbaa !127 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -4 ; 2 uses
  %i.dx = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !127 ; 2 uses
  %i.dy = icmp slt i32 %i.dw, %i.dx
  br i1 %i.dy, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i9, %.lr.ph.i.i13
  %i.dz = phi i32 [ %i.ea, %.lr.ph.i.i13 ], [ %i.dx, %.lr.ph.i9 ]
  %.sroa.0.09.i.i14 = phi ptr [ %.sroa.0.0.i.i16, %.lr.ph.i.i13 ], [ %.sroa.0.07.i.i, %.lr.ph.i9 ] ; 3 uses
  %.sroa.04.08.i.i15 = phi ptr [ %.sroa.0.09.i.i14, %.lr.ph.i.i13 ], [ %.sroa.0.05.i, %.lr.ph.i9 ]
  store i32 %i.dz, ptr %.sroa.04.08.i.i15, align 4, !tbaa !127
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i14, i64 -4 ; 2 uses
  %i.ea = load i32, ptr %.sroa.0.0.i.i16, align 4, !tbaa !127 ; 2 uses
  %i.eb = icmp slt i32 %i.dw, %i.ea
  br i1 %i.eb, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10, !llvm.loop !679

_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10: ; preds = %.lr.ph.i.i13, %.lr.ph.i9
  %.sroa.04.0.lcssa.i.i11 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i9 ], [ %.sroa.0.09.i.i14, %.lr.ph.i.i13 ]
  store i32 %i.dw, ptr %.sroa.04.0.lcssa.i.i11, align 4, !tbaa !127
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 4 ; 2 uses
  %.not.i12 = icmp eq ptr %i.ec, %1
  br i1 %.not.i12, label %_ZSt26__unguarded_insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, label %.lr.ph.i9, !llvm.loop !680

bb.ae:                                            ; preds = %bb.a
  %i.ed = icmp eq ptr %0, %1
  br i1 %i.ed, label %_ZSt26__unguarded_insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.ae
  %.sroa.0.015.i18 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not16.i19 = icmp eq ptr %.sroa.0.015.i18, %1
  br i1 %.not16.i19, label %_ZSt26__unguarded_insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.preheader.i17
  %.pre21.i21 = load i32, ptr %0, align 4, !tbaa !127
  br label %bb.af

bb.af:                                            ; preds = %bb.ai, %.lr.ph.i20
  %i.ee = phi i32 [ %.pre21.i21, %.lr.ph.i20 ], [ %i.es, %bb.ai ]
  %.sroa.0.018.i22 = phi ptr [ %.sroa.0.015.i18, %.lr.ph.i20 ], [ %.sroa.0.0.i27, %bb.ai ] ; 7 uses
  %.pn17.i23 = phi ptr [ %0, %.lr.ph.i20 ], [ %.sroa.0.018.i22, %bb.ai ] ; 3 uses
  %i.ef = load i32, ptr %.sroa.0.018.i22, align 4, !tbaa !127 ; 6 uses
  %i.eg = icmp slt i32 %i.ef, %i.ee
  br i1 %i.eg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eh = ptrtoint ptr %.sroa.0.018.i22 to i64
  %i.ei = sub i64 %i.eh, %i.b                     ; 2 uses
  %i.ej = ashr exact i64 %i.ei, 2                 ; 2 uses
  %i.ek = icmp sgt i64 %i.ej, 0
  br i1 %i.ek, label %.lr.ph.i.i.i.i.i.preheader.i34, label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i33

.lr.ph.i.i.i.i.i.preheader.i34:                   ; preds = %bb.ag
  %i.el = getelementptr i8, ptr %.pn17.i23, i64 8
  %i.em = mul nsw i64 %i.ej, -4                   ; 2 uses
  %scevgep.i35 = getelementptr i8, ptr %i.el, i64 %i.em
  %scevgep20.i36 = getelementptr i8, ptr %.sroa.0.018.i22, i64 %i.em
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i35, ptr align 4 %scevgep20.i36, i64 %i.ei, i1 false), !tbaa !127
  br label %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i33

_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i33: ; preds = %.lr.ph.i.i.i.i.i.preheader.i34, %bb.ag
  store i32 %i.ef, ptr %0, align 4, !tbaa !127
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.en = load i32, ptr %.pn17.i23, align 4, !tbaa !127 ; 2 uses
  %i.eo = icmp slt i32 %i.ef, %i.en
  br i1 %i.eo, label %.lr.ph.i.i29, label %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i24

.lr.ph.i.i29:                                     ; preds = %bb.ah, %.lr.ph.i.i29
  %i.ep = phi i32 [ %i.eq, %.lr.ph.i.i29 ], [ %i.en, %bb.ah ]
  %.sroa.0.09.i.i30 = phi ptr [ %.sroa.0.0.i.i32, %.lr.ph.i.i29 ], [ %.pn17.i23, %bb.ah ] ; 3 uses
  %.sroa.04.08.i.i31 = phi ptr [ %.sroa.0.09.i.i30, %.lr.ph.i.i29 ], [ %.sroa.0.018.i22, %bb.ah ]
  store i32 %i.ep, ptr %.sroa.04.08.i.i31, align 4, !tbaa !127
  %.sroa.0.0.i.i32 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i30, i64 -4 ; 2 uses
  %i.eq = load i32, ptr %.sroa.0.0.i.i32, align 4, !tbaa !127 ; 2 uses
  %i.er = icmp slt i32 %i.ef, %i.eq
  br i1 %i.er, label %.lr.ph.i.i29, label %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i24, !llvm.loop !679

_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i24: ; preds = %.lr.ph.i.i29, %bb.ah
  %.sroa.04.0.lcssa.i.i25 = phi ptr [ %.sroa.0.018.i22, %bb.ah ], [ %.sroa.0.09.i.i30, %.lr.ph.i.i29 ]
  store i32 %i.ef, ptr %.sroa.04.0.lcssa.i.i25, align 4, !tbaa !127
  %.pre.i26 = load i32, ptr %0, align 4, !tbaa !127
  br label %bb.ai

bb.ai:                                            ; preds = %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i24, %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i33
  %i.es = phi i32 [ %i.ef, %_ZSt13move_backwardIN6google8protobuf8internal16RepeatedIteratorIiEES4_ET0_T_S6_S5_.exit.i33 ], [ %.pre.i26, %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i24 ]
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i22, i64 4 ; 2 uses
  %.not.i28 = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %.not.i28, label %_ZSt26__unguarded_insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, label %bb.af, !llvm.loop !681

_ZSt26__unguarded_insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit: ; preds = %bb.ai, %_ZSt25__unguarded_linear_insertIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10, %.preheader.i17, %bb.ae, %_ZSt16__insertion_sortIN6google8protobuf8internal16RepeatedIteratorIiEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit
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
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !682

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
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !682

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
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !127
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !181
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i43, i64 -8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !205
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i42, i64 -8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !167
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i43, i64 -32
  %i.cm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i42, i64 -32
  %i.cn = load i32, ptr %i.cl, align 8, !tbaa !127
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !181
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i43, i64 -24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !205
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i42, i64 -24
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !167
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i43, i64 -48
  %i.cs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i42, i64 -48
  %i.ct = load i32, ptr %i.cr, align 8, !tbaa !127
  store i32 %i.ct, ptr %i.cs, align 8, !tbaa !181
  %i.cu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i43, i64 -40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !205
  %i.cw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i42, i64 -40
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !167
  %i.cx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i43, i64 -64 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i42, i64 -64 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !127
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !181
  %i.da = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i43, i64 -56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !205
  %i.dc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i42, i64 -56
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !167
  %i.dd = add nsw i64 %.010.i.i.i.i.i.i41, -4
  %i.de = icmp sgt i64 %.010.i.i.i.i.i.i41, 4
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i40, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i38, !llvm.loop !30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i38: ; preds = %.lr.ph.i.i.i.i.i.i40.prol.loopexit, %.lr.ph.i.i.i.i.i.i40, %bb.g
  store i32 %i.bq, ptr %0, align 8, !tbaa !181
  store ptr %.sroa.48.0.copyload.i28, ptr %i.bo, align 8, !tbaa !167
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.df = load i32, ptr %.pn20.i26, align 8, !tbaa !181 ; 2 uses
  %i.dg = icmp slt i32 %i.bq, %i.df
  br i1 %i.dg, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_.exit.i29

.lr.ph.i.i34:                                     ; preds = %bb.h, %.lr.ph.i.i34
  %i.dh = phi i32 [ %i.dl, %.lr.ph.i.i34 ], [ %i.df, %bb.h ]
  %.sroa.0.011.i.i35 = phi ptr [ %.sroa.0.0.i.i37, %.lr.ph.i.i34 ], [ %.pn20.i26, %bb.h ] ; 3 uses
  %.sroa.06.010.i.i36 = phi ptr [ %.sroa.0.011.i.i35, %.lr.ph.i.i34 ], [ %.sroa.09.021.i25, %bb.h ] ; 3 uses
  store i32 %i.dh, ptr %.sroa.06.010.i.i36, align 8, !tbaa !181
  %i.di = getelementptr inbounds i8, ptr %.sroa.06.010.i.i36, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !205
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i36, i64 8
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !167
  %.sroa.0.0.i.i37 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i35, i64 -16 ; 2 uses
  %i.dl = load i32, ptr %.sroa.0.0.i.i37, align 8, !tbaa !181 ; 2 uses
  %i.dm = icmp slt i32 %i.bq, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_.exit.i29, !llvm.loop !711

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_.exit.i29: ; preds = %.lr.ph.i.i34, %bb.h
  %.sroa.06.0.lcssa.i.i30 = phi ptr [ %.sroa.09.021.i25, %bb.h ], [ %.sroa.0.011.i.i35, %.lr.ph.i.i34 ] ; 2 uses
  store i32 %i.bq, ptr %.sroa.06.0.lcssa.i.i30, align 8, !tbaa !181
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i30, i64 8
  store ptr %.sroa.48.0.copyload.i28, ptr %i.dn, align 8, !tbaa !167
  %.pre.i31 = load i32, ptr %0, align 8, !tbaa !181
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_.exit.i29, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i38
  %i.do = phi i32 [ %i.bq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i38 ], [ %.pre.i31, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_T0_.exit.i29 ]
  %.sroa.09.0.i32 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i25, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %.sroa.09.0.i32, %1
  br i1 %.not.i33, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIN4i18n12phonenumbers3gtl12OrderByFirstEEEEvT_SQ_T0_.exit, label %bb.f, !llvm.loop !712

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
  br i1 %i.az, label %bb.b, label %._crit_edge, !llvm.loop !715

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
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !716

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
