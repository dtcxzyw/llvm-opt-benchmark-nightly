Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ValueEnumerator?download=true
inline.NumInlined: 4350
inline.NumDeleted: 2158
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZL28predictValueUseListOrderImplPKN4llvm5ValueEPKNS_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS_12UseListOrderESaISB_EE:bb.a
  %i.cm = lshr i64 %i.cl, 5
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !244
  %i.cp = and i32 %i.ck, 31
  %i.cq = lshr i32 %i.co, %i.cp
  %i.cr = trunc i32 %i.cq to i1
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit.thread6.i.i.i.i.i.i.i, !prof !245

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.i, %bb.j
  %i.cs = phi i64 [ %i.cy, %bb.j ], [ %i.cl, %bb.i ]
  %.017.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cx, %bb.j ], [ %i.ck, %bb.i ]
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.cs ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !238
  %i.cv = icmp eq ptr %i.bz, %i.cu
  br i1 %i.cv, label %bb.k, label %bb.j, !prof !246

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cw = add nuw i32 %.017.i.i.i.i.i.i.i.i.i.i, 1
  %i.cx = and i32 %i.cw, %i.ce                    ; 3 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = lshr i64 %i.cy, 5
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !244
  %i.dc = and i32 %i.cx, 31
  %i.dd = lshr i32 %i.db, %i.dc
  %i.de = trunc i32 %i.dd to i1
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit.thread6.i.i.i.i.i.i.i, !prof !247

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dg = load i64, ptr %i.df, align 4
  %i.dh = trunc i64 %i.dg to i32
  br label %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit.thread6.i.i.i.i.i.i.i

_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit.thread6.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.k, %bb.i
  %.sroa.03.0.extract.trunc9.i.i.i.i.i.i.i = phi i32 [ 0, %bb.i ], [ %i.dh, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val.i17.i.i.i.i.i.i, i64 24
  %i.di = load ptr, ptr %.in.i.i.i.i.i.i.i, align 8, !tbaa !307 ; 2 uses
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = mul i64 %i.dj, -4658895280553007687     ; 2 uses
  %i.dl = lshr i64 %i.dk, 31
  %i.dm = xor i64 %i.dl, %i.dk
  %i.dn = trunc i64 %i.dm to i32
  %i.do = and i32 %i.ce, %i.dn                    ; 3 uses
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = lshr i64 %i.dp, 5
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !244
  %i.dt = and i32 %i.do, 31
  %i.du = lshr i32 %i.ds, %i.dt
  %i.dv = trunc i32 %i.du to i1
  br i1 %i.dv, label %.lr.ph.i.i.i25.i.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit27.thread.i.i.i.i.i.i.i, !prof !245

.lr.ph.i.i.i25.i.i.i.i.i.i.i:                     ; preds = %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit.thread6.i.i.i.i.i.i.i, %bb.l
  %i.dw = phi i64 [ %i.ec, %bb.l ], [ %i.dp, %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit.thread6.i.i.i.i.i.i.i ]
  %.017.i.i.i26.i.i.i.i.i.i.i = phi i32 [ %i.eb, %bb.l ], [ %i.do, %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit.thread6.i.i.i.i.i.i.i ]
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.dw ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !238
  %i.dz = icmp eq ptr %i.di, %i.dy
  br i1 %i.dz, label %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit27.i.i.i.i.i.i.i, label %bb.l, !prof !246

bb.l:                                             ; preds = %.lr.ph.i.i.i25.i.i.i.i.i.i.i
  %i.ea = add nuw i32 %.017.i.i.i26.i.i.i.i.i.i.i, 1
  %i.eb = and i32 %i.ea, %i.ce                    ; 3 uses
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = lshr i64 %i.ec, 5
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !244
  %i.eg = and i32 %i.eb, 31
  %i.eh = lshr i32 %i.ef, %i.eg
  %i.ei = trunc i32 %i.eh to i1
  br i1 %i.ei, label %.lr.ph.i.i.i25.i.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit27.thread.i.i.i.i.i.i.i, !prof !247

_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit27.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i25.i.i.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ek = load i64, ptr %i.ej, align 4
  %i.el = trunc i64 %i.ek to i32                  ; 3 uses
  %i.em = icmp ult i32 %.sroa.03.0.extract.trunc9.i.i.i.i.i.i.i, %i.el
  br i1 %i.em, label %bb.m, label %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit27.thread.i.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit27.i.i.i.i.i.i.i
  %i.en = load i32, ptr %.sroa.4.0.copyload.i.i.i.i.i, align 4, !tbaa !244
  %.not23.i.i.i.i.i.i.i = icmp ult i32 %i.en, %i.el
  br i1 %.not23.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL28predictValueUseListOrderImplPKNS1_5ValueEPKNS1_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS1_12UseListOrderESaISL_EEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eo = load i8, ptr %.sroa.5.0.copyload.i.i.i.i.i, align 1, !tbaa !308, !range !261, !noundef !229
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %"_ZSt25__unguarded_linear_insertIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL28predictValueUseListOrderImplPKNS1_5ValueEPKNS1_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS1_12UseListOrderESaISL_EEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", label %.lr.ph.i.backedge.i.i.i.i.i.i

_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit27.thread.i.i.i.i.i.i.i: ; preds = %bb.l, %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit27.i.i.i.i.i.i.i, %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit.thread6.i.i.i.i.i.i.i
  %.sroa.4.sroa.0.011.i.i2419.i.i.i.i.i.i.i = phi i32 [ %i.el, %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit27.i.i.i.i.i.i.i ], [ 0, %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit.thread6.i.i.i.i.i.i.i ], [ 0, %bb.l ]
  %i.eq = icmp ult i32 %.sroa.4.sroa.0.011.i.i2419.i.i.i.i.i.i.i, %.sroa.03.0.extract.trunc9.i.i.i.i.i.i.i
  %i.er = load i32, ptr %.sroa.4.0.copyload.i.i.i.i.i, align 4, !tbaa !244
  %.not22.i.i.i.i.i.i.i = icmp ult i32 %i.er, %.sroa.03.0.extract.trunc9.i.i.i.i.i.i.i ; 2 uses
  br i1 %i.eq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit27.thread.i.i.i.i.i.i.i
  br i1 %.not22.i.i.i.i.i.i.i, label %.lr.ph.i.backedge.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.es = load i8, ptr %.sroa.5.0.copyload.i.i.i.i.i, align 1, !tbaa !308, !range !261, !noundef !229
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %.lr.ph.i.backedge.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL28predictValueUseListOrderImplPKNS1_5ValueEPKNS1_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS1_12UseListOrderESaISL_EEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

bb.q:                                             ; preds = %_ZNK12_GLOBAL__N_18OrderMap6lookupEPKN4llvm5ValueE.exit27.thread.i.i.i.i.i.i.i
  br i1 %.not22.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.q, %bb.h
  %i.eu = load i8, ptr %.sroa.5.0.copyload.i.i.i.i.i, align 1, !tbaa !308, !range !261, !noundef !229
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %.split.i.i.i.i.i.i, label %.split9.i.i.i.i.i.i

.split9.i.i.i.i.i.i:                              ; preds = %.thread.i.i.i.i.i.i.i
  %i.ew = call noundef i32 @_ZNK4llvm3Use12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i.i.i.i.i) #23
  %i.ex = call noundef i32 @_ZNK4llvm3Use12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.val.i17.i.i.i.i.i.i) #23
  %i.ey = icmp ult i32 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph.i.backedge.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL28predictValueUseListOrderImplPKNS1_5ValueEPKNS1_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS1_12UseListOrderESaISL_EEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

.split.i.i.i.i.i.i:                               ; preds = %.thread.i.i.i.i.i.i.i, %bb.q
  %i.ez = call noundef i32 @_ZNK4llvm3Use12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i.i.i.i.i) #23
  %i.fa = call noundef i32 @_ZNK4llvm3Use12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.val.i17.i.i.i.i.i.i) #23
  %i.fb = icmp ugt i32 %i.ez, %i.fa
  br i1 %i.fb, label %.lr.ph.i.backedge.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL28predictValueUseListOrderImplPKNS1_5ValueEPKNS1_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS1_12UseListOrderESaISL_EEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.backedge.i.i.i.i.i.i:                    ; preds = %.split.i.i.i.i.i.i, %.split9.i.i.i.i.i.i, %bb.p, %bb.o, %bb.n
  %i.fc = load ptr, ptr %.0.i16.i.i.i.i.i.i, align 8, !tbaa !166
  store ptr %i.fc, ptr %.013.i15.i.i.i.i.i.i, align 8, !tbaa !310
  %i.fd = getelementptr inbounds i8, ptr %.013.i15.i.i.i.i.i.i, i64 -8
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !244
  %i.ff = getelementptr inbounds nuw i8, ptr %.013.i15.i.i.i.i.i.i, i64 8
  store i32 %i.fe, ptr %i.ff, align 8, !tbaa !311
  %.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i16.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.0.val.i.i.i.i.i.i.i = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !310 ; 2 uses
  %i.fg = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.0.val.i.i.i.i.i.i.i
  br i1 %i.fg, label %"_ZSt25__unguarded_linear_insertIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL28predictValueUseListOrderImplPKNS1_5ValueEPKNS1_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS1_12UseListOrderESaISL_EEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", label %bb.h, !llvm.loop !6

"_ZSt25__unguarded_linear_insertIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL28predictValueUseListOrderImplPKNS1_5ValueEPKNS1_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS1_12UseListOrderESaISL_EEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.backedge.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %.split9.i.i.i.i.i.i, %bb.p, %bb.n, %bb.m, %.lr.ph.i.preheader.i.i.i.i.i.i, %.lr.ph27.i.i.i.i.i.i
  %.09.lcssa.i.i.i.i.i.i.i = phi ptr [ %.026.i.i.i.i.i.i, %.lr.ph27.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i ], [ %.013.i15.i.i.i.i.i.i, %.split.i.i.i.i.i.i ], [ %.013.i15.i.i.i.i.i.i, %.split9.i.i.i.i.i.i ], [ %.0.i16.i.i.i.i.i.i, %.lr.ph.i.backedge.i.i.i.i.i.i ], [ %.013.i15.i.i.i.i.i.i, %bb.p ], [ %.013.i15.i.i.i.i.i.i, %bb.n ], [ %.013.i15.i.i.i.i.i.i, %bb.m ] ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.09.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !310
  %i.fh = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %i.fh, align 8, !tbaa !311
  %i.fi = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fi, %i.bl
  br i1 %.not.i.i.i.i.i.i, label %"_ZSt26__unguarded_insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL28predictValueUseListOrderImplPKNS1_5ValueEPKNS1_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS1_12UseListOrderESaISL_EEE3$_0EEEvT_SR_T0_.exit.i.i.i.i.i", label %.lr.ph27.i.i.i.i.i.i, !llvm.loop !978

"_ZSt26__unguarded_insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL28predictValueUseListOrderImplPKNS1_5ValueEPKNS1_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS1_12UseListOrderESaISL_EEE3$_0EEEvT_SR_T0_.exit.i.i.i.i.i": ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL28predictValueUseListOrderImplPKNS1_5ValueEPKNS1_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS1_12UseListOrderESaISL_EEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEEZL28predictValueUseListOrderImplPKNS_5ValueEPKNS_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS_12UseListOrderESaISK_EEE3$_0EEvOT_T0_.exit"

bb.r:                                             ; preds = %bb.g
  call fastcc void @"_ZSt16__insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL28predictValueUseListOrderImplPKNS1_5ValueEPKNS1_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS1_12UseListOrderESaISL_EEE3$_0EEEvT_SR_T0_"(ptr noundef nonnull %.pre55.pre, ptr noundef nonnull %i.bl, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %6)
  br label %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEEZL28predictValueUseListOrderImplPKNS_5ValueEPKNS_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS_12UseListOrderESaISK_EEE3$_0EEvOT_T0_.exit"

"_ZN4llvm4sortIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEEZL28predictValueUseListOrderImplPKNS_5ValueEPKNS_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS_12UseListOrderESaISK_EEE3$_0EEvOT_T0_.exit": ; preds = %"_ZSt26__unguarded_insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL28predictValueUseListOrderImplPKNS1_5ValueEPKNS1_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS1_12UseListOrderESaISL_EEE3$_0EEEvT_SR_T0_.exit.i.i.i.i.i", %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.fj = load ptr, ptr %7, align 8, !tbaa !179   ; 5 uses
  %i.fk = load i32, ptr %i.g, align 8, !tbaa !180 ; 2 uses
  %i.fl = zext i32 %i.fk to i64                   ; 5 uses
  %.idx.i17 = shl nuw nsw i64 %i.fl, 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.idx.i17
  %switch = icmp ult i32 %i.fk, 2
  br i1 %switch, label %_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit.thread, label %.lr.ph85

.lr.ph85:                                         ; preds = %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEEZL28predictValueUseListOrderImplPKNS_5ValueEPKNS_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS_12UseListOrderESaISK_EEE3$_0EEvOT_T0_.exit"
  %.0.i.i.i.i81 = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  br label %bb.s

.preheader.i.i.i.i:                               ; preds = %bb.s
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i84, i64 16 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %.0.i.i.i.i, %i.fm
  br i1 %.not.i.i.i.i18, label %_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit.thread, label %bb.s, !llvm.loop !979

bb.s:                                             ; preds = %.lr.ph85, %.preheader.i.i.i.i
  %.0.i.i.i.i84 = phi ptr [ %.0.i.i.i.i81, %.lr.ph85 ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.015.i.i.i.i83 = phi ptr [ %i.fj, %.lr.ph85 ], [ %.0.i.i.i.i84, %.preheader.i.i.i.i ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i83, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i83, i64 8
  %i.fp = load i32, ptr %i.fn, align 4, !tbaa !244
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !244
  %i.fr = icmp ult i32 %i.fp, %i.fq
  br i1 %i.fr, label %_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit, label %.preheader.i.i.i.i, !llvm.loop !979

_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 %i.fl, ptr %i.e, align 8, !tbaa !312
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !212 ; 7 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !213
  %.not.i19 = icmp eq ptr %i.ft, %i.fv
  br i1 %.not.i19, label %bb.t, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i.i

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit
  store ptr %0, ptr %i.ft, align 8, !tbaa !317
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %1, ptr %i.fw, align 8, !tbaa !318
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i8 0, i64 24, i1 false)
  %i.fy = shl nuw nsw i64 %i.fl, 2
  %i.fz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #26 ; 4 uses
  store ptr %i.fz, ptr %i.fx, align 8, !tbaa !216
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fl
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !217
  store i32 0, ptr %i.fz, align 4, !tbaa !244
  %i.gc = getelementptr i8, ptr %i.fz, i64 4      ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.a = add nsw i64 %i.fl, -1 ; 2 uses
  %8 = icmp eq i64 %.idx.i.i.i.i.i.i.i.i.i.a, 0
  br i1 %8, label %_ZN4llvm12UseListOrderC2EPKNS_5ValueEPKNS_8FunctionEm.exit.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i.i.i.a, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.gc, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !244
  %9 = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx.i.i.i.i.i.i.i.i.i
  br label %_ZN4llvm12UseListOrderC2EPKNS_5ValueEPKNS_8FunctionEm.exit.i

_ZN4llvm12UseListOrderC2EPKNS_5ValueEPKNS_8FunctionEm.exit.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %.0.i.i.i.i.i.i.i21 = phi ptr [ %9, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i ], [ %i.gc, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i.i ]
  %10 = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store ptr %.0.i.i.i.i.i.i.i21, ptr %10, align 8, !tbaa !319
  %11 = load ptr, ptr %i.fs, align 8, !tbaa !212
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %12, ptr %i.fs, align 8, !tbaa !212
  br label %_ZNSt6vectorIN4llvm12UseListOrderESaIS1_EE12emplace_backIJRPKNS0_5ValueERPKNS0_8FunctionEmEEERS1_DpOT_.exit

bb.t:                                             ; preds = %_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit
  call void @_ZNSt6vectorIN4llvm12UseListOrderESaIS1_EE17_M_realloc_insertIJRPKNS0_5ValueERPKNS0_8FunctionEmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ft, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %_ZNSt6vectorIN4llvm12UseListOrderESaIS1_EE12emplace_backIJRPKNS0_5ValueERPKNS0_8FunctionEmEEERS1_DpOT_.exit

_ZNSt6vectorIN4llvm12UseListOrderESaIS1_EE12emplace_backIJRPKNS0_5ValueERPKNS0_8FunctionEmEEERS1_DpOT_.exit: ; preds = %_ZN4llvm12UseListOrderC2EPKNS_5ValueEPKNS_8FunctionEm.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.gd = load i32, ptr %i.g, align 8, !tbaa !180 ; 3 uses
  %i.ge = zext i32 %i.gd to i64                   ; 7 uses
  %.not44 = icmp eq i32 %i.gd, 0
  %.pre54.pre = load ptr, ptr %7, align 8, !tbaa !179 ; 18 uses
  br i1 %.not44, label %_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit.thread, label %.lr.ph46

.lr.ph46:                                         ; preds = %_ZNSt6vectorIN4llvm12UseListOrderESaIS1_EE12emplace_backIJRPKNS0_5ValueERPKNS0_8FunctionEmEEERS1_DpOT_.exit
  %i.gf = load ptr, ptr %i.fs, align 8, !tbaa !214
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 -24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !216 ; 8 uses
  %min.iters.check = icmp ult i32 %i.gd, 25
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph46
  %i.gi = shl nuw nsw i64 %i.ge, 2
  %scevgep = getelementptr i8, ptr %i.gh, i64 %i.gi
  %scevgep86 = getelementptr i8, ptr %.pre54.pre, i64 8
  %i.gj = shl nuw nsw i64 %i.ge, 4
  %i.gk = getelementptr i8, ptr %.pre54.pre, i64 %i.gj
  %scevgep87 = getelementptr i8, ptr %i.gk, i64 -4
  %bound0 = icmp ult ptr %i.gh, %scevgep87
  %bound1 = icmp ult ptr %scevgep86, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gl = and i64 %i.ge, 7                        ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 0
  %i.gn = select i1 %i.gm, i64 8, i64 %i.gl
  %n.vec = sub nsw i64 %i.ge, %i.gn               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %.pre54.pre, i64 %index
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %.pre54.pre, i64 %index
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %.pre54.pre, i64 %index
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %.pre54.pre, i64 %index
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %.pre54.pre, i64 %index
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %.pre54.pre, i64 %index
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %.pre54.pre, i64 %index
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %.pre54.pre, i64 %index
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 56
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 72
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 88
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gu, i64 104
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gv, i64 120
  %i.he = load i32, ptr %i.gw, align 8, !tbaa !311, !alias.scope !988
  %i.hf = load i32, ptr %i.gx, align 8, !tbaa !311, !alias.scope !988
  %i.hg = load i32, ptr %i.gy, align 8, !tbaa !311, !alias.scope !988
  %i.hh = load i32, ptr %i.gz, align 8, !tbaa !311, !alias.scope !988
  %i.hi = insertelement <4 x i32> poison, i32 %i.he, i64 0
  %i.hj = insertelement <4 x i32> %i.hi, i32 %i.hf, i64 1
  %i.hk = insertelement <4 x i32> %i.hj, i32 %i.hg, i64 2
  %i.hl = insertelement <4 x i32> %i.hk, i32 %i.hh, i64 3
  %i.hm = load i32, ptr %i.ha, align 8, !tbaa !311, !alias.scope !988
  %i.hn = load i32, ptr %i.hb, align 8, !tbaa !311, !alias.scope !988
  %i.ho = load i32, ptr %i.hc, align 8, !tbaa !311, !alias.scope !988
  %i.hp = load i32, ptr %i.hd, align 8, !tbaa !311, !alias.scope !988
  %i.hq = insertelement <4 x i32> poison, i32 %i.hm, i64 0
  %i.hr = insertelement <4 x i32> %i.hq, i32 %i.hn, i64 1
  %i.hs = insertelement <4 x i32> %i.hr, i32 %i.ho, i64 2
  %i.ht = insertelement <4 x i32> %i.hs, i32 %i.hp, i64 3
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store <4 x i32> %i.hl, ptr %i.hu, align 4, !tbaa !244, !alias.scope !989, !noalias !988
  store <4 x i32> %i.ht, ptr %i.hv, align 4, !tbaa !244, !alias.scope !989, !noalias !988
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !983

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph46
  %.045.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph46 ], [ %n.vec, %vector.body ] ; 4 uses
  %i.hx = sub nsw i64 %i.ge, %.045.ph
  %xtraiter = and i64 %i.hx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.045.prol = phi i64 [ %i.ic, %scalar.ph.prol ], [ %.045.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %.pre54.pre, i64 %.045.prol
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !311
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %.045.prol
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !244
  %i.ic = add nuw nsw i64 %.045.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !984

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.045.unr = phi i64 [ %.045.ph, %scalar.ph.preheader ], [ %i.ic, %scalar.ph.prol ]
  %i.id = sub nsw i64 %.045.ph, %i.ge
  %i.ie = icmp ugt i64 %i.id, -4
  br i1 %i.ie, label %_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.045 = phi i64 [ %i.iy, %scalar.ph ], [ %.045.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %.pre54.pre, i64 %.045
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !311
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %.045
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !244
  %i.ij = add nuw nsw i64 %.045, 1                ; 2 uses
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %.pre54.pre, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load i32, ptr %i.il, align 8, !tbaa !311
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.ij
  store i32 %i.im, ptr %i.in, align 4, !tbaa !244
  %i.io = add nuw nsw i64 %.045, 2                ; 2 uses
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %.pre54.pre, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !311
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.io
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !244
  %i.it = add nuw nsw i64 %.045, 3                ; 2 uses
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %.pre54.pre, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !311
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.it
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !244
  %i.iy = add nuw nsw i64 %.045, 4                ; 2 uses
  %.not.3 = icmp eq i64 %i.iy, %i.ge
  br i1 %.not.3, label %_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit.thread, label %scalar.ph, !llvm.loop !985

_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit.thread: ; preds = %.preheader.i.i.i.i, %scalar.ph.prol.loopexit, %scalar.ph, %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEEZL28predictValueUseListOrderImplPKNS_5ValueEPKNS_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS_12UseListOrderESaISK_EEE3$_0EEvOT_T0_.exit", %_ZNSt6vectorIN4llvm12UseListOrderESaIS1_EE12emplace_backIJRPKNS0_5ValueERPKNS0_8FunctionEmEEERS1_DpOT_.exit
  %.pre54 = phi ptr [ %.pre54.pre, %scalar.ph.prol.loopexit ], [ %i.fj, %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEEZL28predictValueUseListOrderImplPKNS_5ValueEPKNS_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS_12UseListOrderESaISK_EEE3$_0EEvOT_T0_.exit" ], [ %.pre54.pre, %_ZNSt6vectorIN4llvm12UseListOrderESaIS1_EE12emplace_backIJRPKNS0_5ValueERPKNS0_8FunctionEmEEERS1_DpOT_.exit ], [ %.pre54.pre, %scalar.ph ], [ %i.fj, %.preheader.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit.thread
  %i.iz = phi ptr [ %.pre55.pre, %._crit_edge ], [ %.pre54, %_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit.thread ] ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.f
  br i1 %i.ja, label %_ZN4llvm11SmallVectorISt4pairIPKNS_3UseEjELj64EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.iz) #23
  br label %_ZN4llvm11SmallVectorISt4pairIPKNS_3UseEjELj64EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIPKNS_3UseEjELj64EED2Ev.exit: ; preds = %bb.a, %.lr.ph, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_3UseEjELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !180
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !179
  %i.g = load i32, ptr %i.a, align 8, !tbaa !180
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !180
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !180
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIPSt4pairIPKN4llvm3UseEjElN9__gnu_cxx5__ops15_Iter_comp_iterIZL28predictValueUseListOrderImplPKNS1_5ValueEPKNS1_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS1_12UseListOrderESaISL_EEE3$_0EEEvT_SR_T0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %.lr.ph
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %.lr.ph66

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL28predictValueUseListOrderImplPKNS1_5ValueEPKNS1_8FunctionEjRKN12_GLOBAL__N_18OrderMapERSt6vectorINS1_12UseListOrderESaISL_EEE3$_0EEET_SR_SR_T0_.exit"
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph66, !llvm.loop !992

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa62 = phi i64 [ %i.c, %.lr.ph ], [ %i.hp, %bb.b ]
end_hunk_0
