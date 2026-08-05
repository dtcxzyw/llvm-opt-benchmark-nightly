inline.NumInlined: 1756
inline.NumDeleted: 834
begin_hunk_0_@_ZNK2v88internal8compiler18CsaLoadElimination9HalfState9KillFieldEPNS1_4NodeES5_NS0_21MachineRepresentationE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %.sroa.683.sroa.9.0..sroa.683.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bv, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.683.sroa.9.0..sroa.683.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store ptr %i.k, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx124.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bw, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx124.sroa_idx, align 8
  br label %.thread

bb.l:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit
  %i.bx = phi ptr [ %i.bq, %.lr.ph ], [ %i.cf, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !73
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = load ptr, ptr %i.br, align 8, !noalias !73 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !noalias !73
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.5.8..sroa_idx67, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i64 32, i1 false)
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit

bb.n:                                             ; preds = %bb.l
  %.sroa.066.0.copyload = load i32, ptr %i.bx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5.0..sroa_idx, i64 36, i1 false)
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratordeEv.exit: ; preds = %bb.m, %bb.n
  %.sroa.066.0 = phi i32 [ %.sroa.066.0.copyload, %bb.n ], [ %i.cc, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.5.8..sroa_idx67, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr null, ptr %5, align 8
  store i8 0, ptr %i.bs, align 8
  call void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE6ModifyIZNSA_3SetES4_S6_EUlPS6_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %1, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  call void @_ZN2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE6ModifyIZNSC_3SetEjSA_EUlPSA_E_EEvjT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, i32 noundef %.sroa.066.0, ptr nonnull align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.ce = call noundef nonnull align 8 dereferenceable(312) ptr @_ZN2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(312) %8) ; 0 uses
  %i.cf = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not = icmp eq ptr %i.cf, null
  br i1 %.not, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge, label %bb.l

bb.o:                                             ; preds = %_ZN2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EEC2EPNS1_4NodeE.exit
  switch i16 %i.bm, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57 [
    i16 51, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread
    i16 523, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread
  ]

_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57: ; preds = %bb.o
  %i.cg = add i16 %i.bm, -22
  %switch.i.i.i56 = icmp ult i16 %i.cg, 13
  br i1 %switch.i.i.i56, label %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread, label %bb.p

_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread: ; preds = %bb.o, %bb.o, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.683.sroa.9.0..sroa.683.0..sroa_idx84.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ch, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.683.sroa.9.0..sroa.683.0..sroa_idx84.sroa_idx, align 8
  %.sroa.7.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store ptr %i.k, ptr %.sroa.7.0..sroa_idx86, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx125.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ci, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx125.sroa_idx, align 8
  %.sroa.13.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  store ptr %i.k, ptr %.sroa.13.0..sroa_idx139, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %.sroa.683.sroa.9.0..sroa.683.0..sroa_idx85.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cj, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.683.sroa.9.0..sroa.683.0..sroa_idx85.sroa_idx, align 8
  %.sroa.7.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store ptr %i.k, ptr %.sroa.7.0..sroa_idx88, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx126.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ck, i8 0, i64 25, i1 false)
  store ptr %i.k, ptr %.sroa.12.sroa.15.0..sroa.12.0..sroa_idx126.sroa_idx, align 8
  br label %.thread

bb.p:                                             ; preds = %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cp = sub i64 %i.cm, %i.co
  %i.cq = icmp ult i64 %i.cp, 296
  br i1 %i.cq, label %bb.q, label %bb.r, !prof !12

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 noundef 296) #14
  %.pre.i.i58 = load i64, ptr %i.cn, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cr = phi i64 [ %.pre.i.i58, %bb.q ], [ %i.co, %bb.p ] ; 2 uses
  %i.cs = inttoptr i64 %i.cr to ptr               ; 19 uses
  %i.ct = add i64 %i.cr, 296
  store i64 %i.ct, ptr %i.cn, align 8
  %i.cu = load ptr, ptr %0, align 8               ; 13 uses
  store ptr %i.cu, ptr %i.cs, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cv, i8 0, i64 25, i1 false)
  store ptr %i.cu, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store ptr %i.cu, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %.sroa.769.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cx, i8 0, i64 25, i1 false)
  store ptr %i.cu, ptr %.sroa.769.0..sroa_idx.i.i, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  store ptr %i.cu, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  %.sroa.774.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cz, i8 0, i64 25, i1 false)
  store ptr %i.cu, ptr %.sroa.774.0..sroa_idx.i.i, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 144
  store ptr %i.cu, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 152
  %.sroa.779.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.db, i8 0, i64 25, i1 false)
  store ptr %i.cu, ptr %.sroa.779.0..sroa_idx.i.i, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 192
  store ptr %i.cu, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 200
  %.sroa.784.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.dd, i8 0, i64 25, i1 false)
  store ptr %i.cu, ptr %.sroa.784.0..sroa_idx.i.i, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 240
  store ptr %i.cu, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 248
  %.sroa.789.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.df, i8 0, i64 25, i1 false)
  store ptr %i.cu, ptr %.sroa.789.0..sroa_idx.i.i, align 8
  br label %.thread

.thread:                                          ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread, %bb.j, %bb.h, %bb.r
  %.sink205 = phi ptr [ %i.i, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge ], [ %i.i, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread ], [ %i.i, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread ], [ %i.i, %bb.j ], [ %i.i, %bb.h ], [ %i.cs, %bb.r ] ; 2 uses
  %.sink = phi ptr [ %i.k, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8iteratorneERKSD_.exit._crit_edge ], [ %i.k, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit57.thread ], [ %i.k, %_ZN2v88internal8compiler25CsaLoadEliminationHelpers16IsConstantObjectEPNS1_4NodeE.exit.thread ], [ %i.k, %bb.j ], [ %i.k, %bb.h ], [ %i.cu, %bb.r ]
  %.sroa.13.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %.sink205, i64 288
  store ptr %.sink, ptr %.sroa.13.0..sroa_idx137, align 8
  ret ptr %.sink205
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState17KillOffsetInFreshEPNS1_4NodeEjNS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %switch.tableidx = add i8 %3, -1                ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 20
  br i1 %i.b, label %switch.hole_check, label %bb.b

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 1032191, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup.preheader, label %bb.b

switch.lookup.preheader:                          ; preds = %switch.hole_check
  %switch.tableidx75 = add nsw i8 %3, -1          ; 2 uses
  %i.c = icmp ult i8 %switch.tableidx75, 20
  %i.d = zext nneg i8 %switch.tableidx75 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler18CsaLoadElimination9HalfState10KillOffsetERNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEEjNS0_21MachineRepresentationEPNS0_4ZoneE, i64 %i.d
  br label %switch.lookup

switch.lookup:                                    ; preds = %switch.lookup.preheader, %bb.d
  %.0 = phi i32 [ %i.u, %bb.d ], [ 0, %switch.lookup.preheader ] ; 3 uses
  br i1 %i.c, label %switch.lookup76, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #15
  unreachable

switch.lookup76:                                  ; preds = %switch.lookup
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit

_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit: ; preds = %switch.lookup, %switch.lookup76
  %.0.i.i = phi i32 [ %switch.ext, %switch.lookup76 ], [ 3, %switch.lookup ]
  %.0.highbits = lshr i32 %.0, %.0.i.i
  %i.e = icmp eq i32 %.0.highbits, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
  %4 = tail call i32 @llvm.usub.sat.i32(i32 %2, i32 15) ; 2 uses
  %5 = icmp ult i32 %4, %2
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.g = xor i64 %i.f, -1
  %i.h = shl i64 %i.f, 21
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = lshr i64 %i.i, 24
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, 265                        ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, 21                         ; 2 uses
  %i.p = lshr i64 %i.o, 28
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = mul i32 %i.r, -2147483647                ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
  %i.t = add i32 %.0, %2
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState6UpdateIjEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS8_EEEENSB_IS6_EEEES6_S8_S9_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %i.t, ptr noundef %1, ptr null, i8 0)
  %i.u = add nuw nsw i32 %.0, 1
  br label %switch.lookup, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.w, %bb.c
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.w
  %storemerge50 = phi i32 [ %4, %.lr.ph ], [ %i.cs, %bb.w ] ; 8 uses
  %i.v = xor i32 %storemerge50, -1
  %i.w = shl i32 %storemerge50, 15
  %i.x = add i32 %i.w, %i.v                       ; 2 uses
  %i.y = lshr i32 %i.x, 12
  %i.z = xor i32 %i.y, %i.x
  %i.aa = mul i32 %i.z, 5                         ; 2 uses
  %i.ab = lshr i32 %i.aa, 4
  %i.ac = xor i32 %i.ab, %i.aa
  %i.ad = mul i32 %i.ac, 2057                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 16
  %i.af = xor i32 %i.ae, %i.ad                    ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not16.i.i = icmp eq ptr %i.ag, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.h
  %.018.i.i = phi ptr [ %i.at, %bb.h ], [ %i.ag, %bb.e ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.al, %bb.h ], [ 0, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 44
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.ah, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.af, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.ai = xor i32 %.sroa.01.0.copyload.i.i, %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.al, %bb.f ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.aj = lshr exact i32 -2147483648, %.1.i.i
  %i.ak = and i32 %i.aj, %i.ai
  %.not.i.not.i.i = icmp eq i32 %i.ak, 0
  %i.al = add nsw i32 %.1.i.i, 1                  ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.f, label %bb.g, !llvm.loop !21

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.an = load i8, ptr %i.am, align 8
  %i.ao = sext i8 %i.an to i32
  %i.ap = icmp slt i32 %.1.i.i, %i.ao
  br i1 %i.ap, label %bb.h, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 56
  %i.ar = sext i32 %.1.i.i to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i, !llvm.loop !22

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %.not11.i.i = icmp eq ptr %i.av, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ax, %bb.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ay, %bb.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = icmp ult i32 %i.ba, %storemerge50       ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.bb, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.bb, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !23

_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bc = icmp eq ptr %.19.i.i.i.i.i, %i.ay
  br i1 %i.bc, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = icmp ult i32 %storemerge50, %i.be       ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.bf, ptr %i.ay, ptr %.19.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.bf, ptr %i.a, ptr %i.bg
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.j:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.bh = load i32, ptr %.018.i.i, align 8
  %i.bi = icmp eq i32 %storemerge50, %i.bh
  %..i.i = select i1 %i.bi, ptr %.018.i.i, ptr %i.a
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit: ; preds = %bb.g, %bb.h, %bb.e, %bb.i, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i, %bb.j
  %.sink.i.i = phi ptr [ %i.a, %bb.i ], [ %..i.i, %bb.j ], [ %spec.select.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i ], [ %i.a, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ], [ %i.a, %bb.e ], [ %i.a, %bb.h ], [ %i.a, %bb.g ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 8 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not16.i.i14 = icmp eq ptr %i.bk, null
  br i1 %.not16.i.i14, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, %bb.m
  %.018.i.i16 = phi ptr [ %i.bx, %bb.m ], [ %i.bk, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit ] ; 6 uses
  %.01217.i.i17 = phi i32 [ %i.bp, %bb.m ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.018.i.i16, i64 28
  %.sroa.01.0.copyload.i.i18 = load i32, ptr %i.bl, align 4 ; 2 uses
  %.not15.i.i19 = icmp eq i32 %i.s, %.sroa.01.0.copyload.i.i18
  br i1 %.not15.i.i19, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i, label %.preheader.i.i20

.preheader.i.i20:                                 ; preds = %.lr.ph.i.i15
  %i.bm = xor i32 %.sroa.01.0.copyload.i.i18, %i.s
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.i.i20
  %.1.i.i21 = phi i32 [ %i.bp, %bb.k ], [ %.01217.i.i17, %.preheader.i.i20 ] ; 4 uses
  %i.bn = lshr exact i32 -2147483648, %.1.i.i21
  %i.bo = and i32 %i.bn, %i.bm
  %.not.i.not.i.i22 = icmp eq i32 %i.bo, 0
  %i.bp = add nsw i32 %.1.i.i21, 1                ; 2 uses
  br i1 %.not.i.not.i.i22, label %bb.k, label %bb.l, !llvm.loop !45

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %.018.i.i16, i64 24
  %i.br = load i8, ptr %i.bq, align 8
  %i.bs = sext i8 %i.br to i32
  %i.bt = icmp slt i32 %.1.i.i21, %i.bs
  br i1 %i.bt, label %bb.m, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.018.i.i16, i64 40
  %i.bv = sext i32 %.1.i.i21 to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i24, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i15, !llvm.loop !46

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i: ; preds = %.lr.ph.i.i15
  %i.by = getelementptr inbounds nuw i8, ptr %.018.i.i16, i64 32
  %i.bz = load ptr, ptr %i.by, align 8            ; 3 uses
  %.not11.i.i25 = icmp eq ptr %i.bz, null
  br i1 %.not11.i.i25, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 3 uses
  %.not10.i.i.i.i.i26 = icmp eq ptr %i.cb, null
  br i1 %.not10.i.i.i.i.i26, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %bb.n, %.lr.ph.i.i.i.i.i27
  %.012.i.i.i.i.i28 = phi ptr [ %.1.i.i.i.i.i33, %.lr.ph.i.i.i.i.i27 ], [ %i.cb, %bb.n ] ; 3 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %.19.i.i.i.i.i30, %.lr.ph.i.i.i.i.i27 ], [ %i.cc, %bb.n ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i28, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = icmp ult ptr %i.ce, %1                  ; 2 uses
  %.19.i.i.i.i.i30 = select i1 %i.cf, ptr %.0811.i.i.i.i.i29, ptr %.012.i.i.i.i.i28 ; 4 uses
  %.1.in.v.i.i.i.i.i31 = select i1 %i.cf, i64 24, i64 16
  %.1.in.i.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i28, i64 %.1.in.v.i.i.i.i.i31
  %.1.i.i.i.i.i33 = load ptr, ptr %.1.in.i.i.i.i.i32, align 8 ; 2 uses
  %.not.i.i.i.i.i34 = icmp eq ptr %.1.i.i.i.i.i33, null
  br i1 %.not.i.i.i.i.i34, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i27, !llvm.loop !47

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i27
  %i.cg = icmp eq ptr %.19.i.i.i.i.i30, %i.cc
  br i1 %i.cg, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i30, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = icmp ult ptr %1, %i.ci                  ; 2 uses
  %spec.select.i.i.i.i35 = select i1 %i.cj, ptr %i.cc, ptr %.19.i.i.i.i.i30
  %i.ck = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i35, i64 32
  %spec.select.i.i36 = select i1 %i.cj, ptr %i.bj, ptr %i.ck
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

bb.o:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8FindHashENSA_9HashValueE.exit.i
  %i.cl = load ptr, ptr %.018.i.i16, align 8
  %i.cm = icmp eq ptr %1, %i.cl
  %..i.i37 = select i1 %i.cm, ptr %.018.i.i16, ptr %i.bj
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit: ; preds = %bb.l, %bb.m, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, %bb.n, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i, %bb.o
  %.sink.i.i23 = phi ptr [ %i.bj, %bb.n ], [ %..i.i37, %bb.o ], [ %spec.select.i.i36, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS2_18CsaLoadElimination9FieldInfoESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSB_.exit.i.i ], [ %i.bj, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS2_18CsaLoadElimination9FieldInfoEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i ], [ %i.bj, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit ], [ %i.bj, %bb.m ], [ %i.bj, %bb.l ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.sink.i.i23, i64 16
  %i.co = load i8, ptr %i.cn, align 8
  switch i8 %i.co, label %bb.u [
    i8 0, label %bb.w
    i8 1, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39
    i8 2, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39
    i8 3, label %bb.p
    i8 16, label %bb.p
    i8 4, label %bb.q
    i8 17, label %bb.q
    i8 13, label %bb.q
    i8 5, label %bb.r
    i8 18, label %bb.r
    i8 19, label %bb.s
    i8 20, label %bb.t
    i8 7, label %bb.r
    i8 8, label %bb.r
    i8 9, label %bb.r
    i8 6, label %bb.r
    i8 10, label %bb.r
    i8 11, label %bb.r
    i8 12, label %bb.r
    i8 14, label %bb.r
  ]

bb.p:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39

bb.q:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39

bb.r:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39

bb.s:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39

bb.t:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39

bb.u:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #15
  unreachable

_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39: ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i.i38 = phi i32 [ 0, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit ], [ 1, %bb.p ], [ 2, %bb.q ], [ 3, %bb.r ], [ 4, %bb.s ], [ 5, %bb.t ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit ]
  %i.cp = shl nuw nsw i32 1, %.0.i.i38
  %i.cq = sub i32 %2, %storemerge50
  %i.cr = icmp sgt i32 %i.cp, %i.cq
  br i1 %i.cr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39
  tail call void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState6UpdateIjEEvRNS1_13PersistentMapIT_NS5_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS8_EEEENSB_IS6_EEEES6_S8_S9_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %storemerge50, ptr noundef %1, ptr null, i8 0)
  br label %bb.w

bb.w:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE3GetERKS4_.exit, %bb.v, %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit39
  %i.cs = add nuw i32 %storemerge50, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cs, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !77
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler18CsaLoadElimination9HalfState10KillOffsetERNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEEjNS0_21MachineRepresentationEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.v8::internal::compiler::CsaLoadElimination::FieldInfo", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::compiler::PersistentMap.6", align 8 ; 6 uses
  %8 = alloca %"class.v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>::iterator", align 8 ; 12 uses
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %switch.tableidx = add i8 %2, -1                ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 20
  br i1 %i.a, label %switch.hole_check, label %bb.b

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 1032191, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup.preheader, label %bb.b

switch.lookup.preheader:                          ; preds = %switch.hole_check
  %switch.tableidx133 = add nsw i8 %2, -1         ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx133, 20
  %i.c = zext nneg i8 %switch.tableidx133 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler18CsaLoadElimination9HalfState10KillOffsetERNS1_13PersistentMapIjNS4_IPNS1_4NodeENS2_9FieldInfoENS_4base4hashIS6_EEEENS9_IjEEEEjNS0_21MachineRepresentationEPNS0_4ZoneE, i64 %i.c
  br label %switch.lookup

switch.lookup:                                    ; preds = %switch.lookup.preheader, %bb.d
  %.0 = phi i32 [ %i.m, %bb.d ], [ 0, %switch.lookup.preheader ] ; 3 uses
  br i1 %i.b, label %switch.lookup134, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #15
  unreachable

switch.lookup134:                                 ; preds = %switch.lookup
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit

_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit: ; preds = %switch.lookup, %switch.lookup134
  %.0.i.i = phi i32 [ %switch.ext, %switch.lookup134 ], [ 3, %switch.lookup ]
  %.0.highbits = lshr i32 %.0, %.0.i.i
  %i.d = icmp eq i32 %.0.highbits, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
  %9 = call i32 @llvm.usub.sat.i32(i32 %1, i32 15) ; 2 uses
  %10 = icmp ult i32 %9, %1
  br i1 %10, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 280
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 288
  br label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
  %i.l = add i32 %.0, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %6, i8 0, i64 17, i1 false)
  store ptr %3, ptr %.sroa.472.0..sroa_idx, align 8
  call void @_ZN2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE6ModifyIZNSC_3SetEjSA_EUlPSA_E_EEvjT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.l, ptr nonnull align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.m = add nuw nsw i32 %.0, 1
  br label %switch.lookup, !llvm.loop !78

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge
  %storemerge81 = phi i32 [ %9, %.lr.ph ], [ %i.ch, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.n = xor i32 %storemerge81, -1
  %i.o = shl i32 %storemerge81, 15
  %i.p = add i32 %i.o, %i.n                       ; 2 uses
  %i.q = lshr i32 %i.p, 12
  %i.r = xor i32 %i.q, %i.p
  %i.s = mul i32 %i.r, 5                          ; 2 uses
  %i.t = lshr i32 %i.s, 4
  %i.u = xor i32 %i.t, %i.s
  %i.v = mul i32 %i.u, 2057                       ; 2 uses
  %i.w = lshr i32 %i.v, 16
  %i.x = xor i32 %i.w, %i.v                       ; 4 uses
  %i.y = load ptr, ptr %0, align 8                ; 3 uses
  %.not16.i.i = icmp eq ptr %i.y, null
  br i1 %.not16.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit.thread, label %.lr.ph.i.i

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit.thread: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.h
  %.018.i.i = phi ptr [ %i.al, %bb.h ], [ %i.y, %bb.e ] ; 6 uses
  %.01217.i.i = phi i32 [ %i.ad, %bb.h ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 44
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.z, align 4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.x, %.sroa.01.0.copyload.i.i
  br i1 %.not15.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.aa = xor i32 %.sroa.01.0.copyload.i.i, %i.x
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.ad, %bb.f ], [ %.01217.i.i, %.preheader.i.i ] ; 4 uses
  %i.ab = lshr exact i32 -2147483648, %.1.i.i
  %i.ac = and i32 %i.ab, %i.aa
  %.not.i.not.i.i = icmp eq i32 %i.ac, 0
  %i.ad = add nsw i32 %.1.i.i, 1                  ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.f, label %bb.g, !llvm.loop !21

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = sext i8 %i.af to i32
  %i.ah = icmp slt i32 %.1.i.i, %i.ag
  br i1 %i.ah, label %bb.h, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 56
  %i.aj = sext i32 %.1.i.i to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i, !llvm.loop !22

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i: ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not11.i.i = icmp eq ptr %i.an, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ap, %bb.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.aq, %bb.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = icmp ult i32 %i.as, %storemerge81       ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.at, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.at, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !23

_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.au = icmp eq ptr %.19.i.i.i.i.i, %i.aq
  br i1 %i.au, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, label %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i

_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp ult i32 %storemerge81, %i.aw       ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.ax, ptr %i.aq, ptr %.19.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32
  %spec.select.i.i = select i1 %i.ax, ptr %0, ptr %i.ay
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

bb.j:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i
  %i.az = load i32, ptr %.018.i.i, align 8
  %i.ba = icmp eq i32 %storemerge81, %i.az
  %..i.i = select i1 %i.ba, ptr %.018.i.i, ptr %0
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit: ; preds = %bb.g, %bb.h, %bb.i, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i, %bb.j
  %.sink.i.i = phi ptr [ %0, %bb.i ], [ %..i.i, %bb.j ], [ %spec.select.i.i, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i ], [ %0, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ], [ %0, %bb.h ], [ %0, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false)
  br label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit, %bb.m
  %.018.i.i20 = phi ptr [ %i.bo, %bb.m ], [ %i.y, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit ] ; 6 uses
  %.01217.i.i21 = phi i32 [ %i.bg, %bb.m ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.018.i.i20, i64 44
  %.sroa.01.0.copyload.i.i22 = load i32, ptr %i.bc, align 4 ; 2 uses
  %.not15.i.i23 = icmp eq i32 %i.x, %.sroa.01.0.copyload.i.i22
  br i1 %.not15.i.i23, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i29, label %.preheader.i.i24

.preheader.i.i24:                                 ; preds = %.lr.ph.i.i19
  %i.bd = xor i32 %.sroa.01.0.copyload.i.i22, %i.x
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.i.i24
  %.1.i.i25 = phi i32 [ %i.bg, %bb.k ], [ %.01217.i.i21, %.preheader.i.i24 ] ; 4 uses
  %i.be = lshr exact i32 -2147483648, %.1.i.i25
  %i.bf = and i32 %i.be, %i.bd
  %.not.i.not.i.i26 = icmp eq i32 %i.bf, 0
  %i.bg = add nsw i32 %.1.i.i25, 1                ; 2 uses
  br i1 %.not.i.not.i.i26, label %bb.k, label %bb.l, !llvm.loop !21

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.018.i.i20, i64 40
  %i.bi = load i8, ptr %i.bh, align 8
  %i.bj = sext i8 %i.bi to i32
  %i.bk = icmp slt i32 %.1.i.i25, %i.bj
  br i1 %i.bk, label %bb.m, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %.018.i.i20, i64 56
  %i.bm = sext i32 %.1.i.i25 to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i28, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45, label %.lr.ph.i.i19, !llvm.loop !22

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i29: ; preds = %.lr.ph.i.i19
  %i.bp = getelementptr inbounds nuw i8, ptr %.018.i.i20, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %.not11.i.i30 = icmp eq ptr %i.bq, null
  br i1 %.not11.i.i30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i29
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  %.not10.i.i.i.i.i31 = icmp eq ptr %i.bs, null
  br i1 %.not10.i.i.i.i.i31, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45, label %.lr.ph.i.i.i.i.i32

.lr.ph.i.i.i.i.i32:                               ; preds = %bb.n, %.lr.ph.i.i.i.i.i32
  %.012.i.i.i.i.i33 = phi ptr [ %.1.i.i.i.i.i38, %.lr.ph.i.i.i.i.i32 ], [ %i.bs, %bb.n ] ; 3 uses
  %.0811.i.i.i.i.i34 = phi ptr [ %.19.i.i.i.i.i35, %.lr.ph.i.i.i.i.i32 ], [ %i.bt, %bb.n ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i33, i64 32
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = icmp ult i32 %i.bv, %storemerge81       ; 2 uses
  %.19.i.i.i.i.i35 = select i1 %i.bw, ptr %.0811.i.i.i.i.i34, ptr %.012.i.i.i.i.i33 ; 4 uses
  %.1.in.v.i.i.i.i.i36 = select i1 %i.bw, i64 24, i64 16
  %.1.in.i.i.i.i.i37 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i33, i64 %.1.in.v.i.i.i.i.i36
  %.1.i.i.i.i.i38 = load ptr, ptr %.1.in.i.i.i.i.i37, align 8 ; 2 uses
  %.not.i.i.i.i.i39 = icmp eq ptr %.1.i.i.i.i.i38, null
  br i1 %.not.i.i.i.i.i39, label %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i40, label %.lr.ph.i.i.i.i.i32, !llvm.loop !23

_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i40: ; preds = %.lr.ph.i.i.i.i.i32
  %i.bx = icmp eq ptr %.19.i.i.i.i.i35, %i.bt
  br i1 %i.bx, label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45, label %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i41

_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i41: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i40
  %i.by = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i35, i64 32
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = icmp ult i32 %storemerge81, %i.bz       ; 2 uses
  %spec.select.i.i.i.i42 = select i1 %i.ca, ptr %i.bt, ptr %.19.i.i.i.i.i35
  %i.cb = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i42, i64 32
  %spec.select.i.i43 = select i1 %i.ca, ptr %0, ptr %i.cb
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45

bb.o:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE8FindHashENSC_9HashValueE.exit.i29
  %i.cc = load i32, ptr %.018.i.i20, align 8
  %i.cd = icmp eq i32 %storemerge81, %i.cc
  %..i.i44 = select i1 %i.cd, ptr %.018.i.i20, ptr %0
  br label %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45

_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45: ; preds = %bb.l, %bb.m, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit.thread, %bb.n, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i40, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i41, %bb.o
  %.sink.i.i27 = phi ptr [ %0, %bb.n ], [ %..i.i44, %bb.o ], [ %spec.select.i.i43, %_ZNKSt3mapIjN2v88internal8compiler13PersistentMapIPNS2_4NodeENS2_18CsaLoadElimination9FieldInfoENS0_4base4hashIS5_EEEESt4lessIjENS1_13ZoneAllocatorISt4pairIKjSB_EEEE4findERSG_.exit.i.i41 ], [ %0, %_ZNKSt8_Rb_treeIjSt4pairIKjN2v88internal8compiler13PersistentMapIPNS4_4NodeENS4_18CsaLoadElimination9FieldInfoENS2_4base4hashIS7_EEEEESt10_Select1stISE_ESt4lessIjENS3_13ZoneAllocatorISE_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISE_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i40 ], [ %0, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit.thread ], [ %0, %bb.m ], [ %0, %bb.l ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sink.i.i27, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::PersistentMap<v8::internal::compiler::Node *, v8::internal::compiler::CsaLoadElimination::FieldInfo>::iterator") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ce)
  %i.cf = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not80 = icmp eq ptr %i.cf, null
  br i1 %.not80, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph: ; preds = %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45
  %i.cg = sub i32 %1, %storemerge81
  %.pre = load ptr, ptr %i.g, align 8             ; 2 uses
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge: ; preds = %bb.aa, %bb.x, %.critedge.i, %_ZNK2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE3GetERKj.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @_ZN2v88internal8compiler13PersistentMapIjNS2_IPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEEENS8_IjEEE6ModifyIZNSC_3SetEjSA_EUlPSA_E_EEvjT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %storemerge81, ptr nonnull align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.ch = add nuw i32 %storemerge81, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !79

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit: ; preds = %bb.z, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i
  %.ph = phi ptr [ %i.cq, %bb.z ], [ %.0.lcssa.i.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  %.promoted.i91.ph = phi ptr [ %i.cu, %bb.z ], [ %.promoted.i89, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  %.ph136 = phi ptr [ %i.cu, %bb.z ], [ %i.eh, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ]
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit: ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph
  %i.ci = phi ptr [ %i.cf, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph ], [ %.ph, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit ] ; 5 uses
  %.promoted.i91.a = phi ptr [ %.pre, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph ], [ %.promoted.i91.ph, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit ] ; 2 uses
  %i.cj = phi ptr [ %.pre, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.lr.ph ], [ %.ph136, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !80
  %.not.i = icmp eq ptr %i.cl, null               ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %.sroa.054.0.in = select i1 %.not.i, ptr %i.ci, ptr %i.cm
  %.sroa.6.0.in = select i1 %.not.i, ptr %.sroa.6.0..sroa_idx, ptr %.sroa.6.8..sroa_idx
  %.sroa.6.0 = load i8, ptr %.sroa.6.0.in, align 8
  %.sroa.054.0 = load ptr, ptr %.sroa.054.0.in, align 8
  switch i8 %.sroa.6.0, label %bb.u [
    i8 0, label %bb.w
    i8 1, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49
    i8 2, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49
    i8 3, label %bb.p
    i8 16, label %bb.p
    i8 4, label %bb.q
    i8 17, label %bb.q
    i8 13, label %bb.q
    i8 5, label %bb.r
    i8 18, label %bb.r
    i8 19, label %bb.s
    i8 20, label %bb.t
    i8 7, label %bb.r
    i8 8, label %bb.r
    i8 9, label %bb.r
    i8 6, label %bb.r
    i8 10, label %bb.r
    i8 11, label %bb.r
    i8 12, label %bb.r
    i8 14, label %bb.r
  ]

bb.p:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49

bb.q:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49

bb.r:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49

bb.s:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49

bb.t:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49

bb.u:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #15
  unreachable

_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49: ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i.i48 = phi i32 [ 0, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ], [ 1, %bb.p ], [ 2, %bb.q ], [ 3, %bb.r ], [ 4, %bb.s ], [ 5, %bb.t ], [ 0, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ]
  %i.cn = shl nuw nsw i32 1, %.0.i.i48
  %i.co = icmp sgt i32 %i.cn, %i.cg
  br i1 %i.co, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr null, ptr %4, align 8
  store i8 0, ptr %i.h, align 8
  call void @_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE6ModifyIZNSA_3SetES4_S6_EUlPS6_E_EEvS4_T_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %.sroa.054.0, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.promoted32.i.pre = load ptr, ptr %i.f, align 8
  %.promoted.i.pre = load ptr, ptr %i.g, align 8
  br label %bb.w

bb.w:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit, %bb.v, %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49
  %i.cp = phi ptr [ %i.ci, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ], [ %.promoted32.i.pre, %bb.v ], [ %i.ci, %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49 ]
  %.promoted.i = phi ptr [ %.promoted.i91.a, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit ], [ %.promoted.i.pre, %bb.v ], [ %.promoted.i91.a, %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit49 ] ; 2 uses
  %.promoted33.i = load i32, ptr %8, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i, %bb.w
  %i.cq = phi ptr [ %.0.lcssa.i.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %i.cp, %bb.w ] ; 4 uses
  %.promoted.i94 = phi ptr [ %.promoted.i89, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %.promoted.i, %bb.w ]
  %i.cr = phi ptr [ %i.eh, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %.promoted.i, %bb.w ] ; 2 uses
  %.promoted34.i = phi i32 [ %.promoted35.i, %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i ], [ %.promoted33.i, %bb.w ] ; 2 uses
  %.not.i50 = icmp eq ptr %i.cq, null
  br i1 %.not.i50, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not10.i = icmp eq ptr %i.ct, null
  br i1 %.not10.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.cr) #16 ; 6 uses
  store ptr %i.cu, ptr %i.g, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %bb.aa, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.loopexit

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.promoted.i90.a = phi ptr [ %i.cu, %bb.z ], [ %.promoted.i94, %bb.y ]
  %i.cx = phi ptr [ %i.cu, %bb.z ], [ %i.cr, %bb.y ]
  %i.cy = icmp eq i32 %.promoted34.i, 0
  br i1 %i.cy, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.da = sext i32 %.promoted34.i to i64
  %.pre96 = load i32, ptr %i.cz, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %i.da, %.preheader.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.db = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %i.db, ptr %8, align 8
  %i.dc = lshr exact i32 -2147483648, %i.db
  %i.dd = and i32 %i.dc, %.pre96
  %.not.i.not.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i.not.i, label %bb.ac, label %.critedge.i

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i
  %i.df = load ptr, ptr %i.de, align 8            ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.critedge.i, label %bb.ad

.critedge.i:                                      ; preds = %bb.ac, %bb.ab
  %i.dh = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %i.dh, label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratorneERKSB_.exit._crit_edge, label %bb.ab, !llvm.loop !40

bb.ad:                                            ; preds = %bb.ac
  %i.di = trunc nsw i64 %indvars.iv.i to i32      ; 2 uses
  store i32 %i.di, ptr %8, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dk = load i8, ptr %i.dj, align 8
  %i.dl = sext i8 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.i, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i51, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i

.lr.ph.i.i51:                                     ; preds = %bb.ad, %.lr.ph.i.i51
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %.lr.ph.i.i51 ], [ %indvars.iv.i, %bb.ad ] ; 4 uses
  %.041.i.i = phi ptr [ %.1.i.i53, %.lr.ph.i.i51 ], [ %i.df, %bb.ad ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 28
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = trunc nsw i64 %indvars.iv39.i to i32
  %i.dq = lshr exact i32 -2147483648, %i.dp
  %i.dr = and i32 %i.do, %i.dq
  %.not.i.i.not.i.i = icmp eq i32 %i.dr, 0        ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 40
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %indvars.iv39.i
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %.not.i13.i = icmp eq ptr %i.du, null           ; 2 uses
  %spec.select.i = select i1 %.not.i13.i, ptr null, ptr %.041.i.i
  %.sink.i.i52 = select i1 %.not.i.i.not.i.i, ptr %i.du, ptr %spec.select.i
  %i.dv = select i1 %.not.i.i.not.i.i, i1 true, i1 %.not.i13.i
  %.1.i.i53 = select i1 %i.dv, ptr %.041.i.i, ptr %i.du ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv39.i
  store ptr %.sink.i.i52, ptr %i.dw, align 8
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, 1 ; 3 uses
  %i.dx = trunc nsw i64 %indvars.iv.next40.i to i32 ; 2 uses
  store i32 %i.dx, ptr %8, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.1.i.i53, i64 24
  %i.dz = load i8, ptr %i.dy, align 8
  %i.ea = sext i8 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next40.i, %i.ea
  br i1 %i.eb, label %.lr.ph.i.i51, label %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i, !llvm.loop !36

_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i: ; preds = %.lr.ph.i.i51, %bb.ad
  %.promoted35.i = phi i32 [ %i.di, %bb.ad ], [ %i.dx, %.lr.ph.i.i51 ]
  %.0.lcssa.i.i = phi ptr [ %i.df, %bb.ad ], [ %.1.i.i53, %.lr.ph.i.i51 ] ; 6 uses
  store ptr %.0.lcssa.i.i, ptr %i.f, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not11.i = icmp eq ptr %i.ed, null
  br i1 %.not11.i, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8            ; 5 uses
  store ptr %i.ef, ptr %i.g, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i

.thread.i:                                        ; preds = %_ZN2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE12FindLeftmostEPKNSA_11FocusedTreeEPiPSt5arrayISD_Lm32EE.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 16
  br label %_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i

_ZNK2v88internal8compiler13PersistentMapIPNS1_4NodeENS1_18CsaLoadElimination9FieldInfoENS_4base4hashIS4_EEE8iteratordeEv.exit.i: ; preds = %.thread.i, %bb.ae
  %.promoted.i89 = phi ptr [ %.promoted.i90.a, %.thread.i ], [ %i.ef, %bb.ae ] ; 2 uses
  %i.eh = phi ptr [ %i.cx, %.thread.i ], [ %i.ef, %bb.ae ] ; 2 uses
end_hunk_0
