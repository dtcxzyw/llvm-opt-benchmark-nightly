Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turboshaft-graph-interface?download=true
inline.NumInlined: 30203
inline.NumDeleted: 8011
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 120
begin_hunk_0_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface20SetupControlFlowEdgeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS0_8compiler10turboshaft5BlockEjNSA_1VINS0_6ObjectEEEPNS1_5MergeINS2_5ValueEEE:bb.a
  %i.dm = phi i32 [ %.pre48, %.lr.ph40 ], [ %i.du, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit29 ]
  %.038 = phi i64 [ 0, %.lr.ph40 ], [ %i.eb, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit29 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.ph, i64 %.038
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %.sroa.01.0.copyload = load i32, ptr %i.do, align 4
  %.not.i27 = icmp ult i32 %i.dm, %i.dl
  br i1 %.not.i27, label %bb.w, label %bb.v, !prof !36

bb.v:                                             ; preds = %bb.u
  tail call preserve_mostcc void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis16GrowInputsVectorEv(ptr noundef nonnull align 8 dereferenceable(72) %i.be)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dp = load ptr, ptr %i.dh, align 8
  %i.dq = load i32, ptr %i.di, align 8
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dr
  store i32 %.sroa.01.0.copyload, ptr %i.ds, align 4
  %i.dt = load i32, ptr %i.df, align 4
  %i.du = add i32 %i.dt, 1                        ; 2 uses
  store i32 %i.du, ptr %i.df, align 4
  %i.dv = load i32, ptr %i.dj, align 4
  %i.dw = load i32, ptr %i.di, align 8
  %i.dx = add i32 %i.dw, %i.dv                    ; 2 uses
  store i32 %i.dx, ptr %i.di, align 8
  %i.dy = load i32, ptr %i.dg, align 8            ; 2 uses
  %.not1.i28 = icmp ult i32 %i.dx, %i.dy
  br i1 %.not1.i28, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit29, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dz = load i32, ptr %i.dk, align 8
  %i.ea = add i32 %i.dz, 1                        ; 2 uses
  store i32 %i.ea, ptr %i.dk, align 8
  store i32 %i.ea, ptr %i.di, align 8
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit29

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit29: ; preds = %bb.w, %bb.x
  %i.eb = add nuw nsw i64 %.038, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.eb, %i.de
  br i1 %exitcond.not, label %._crit_edge41, label %bb.u, !llvm.loop !338

bb.y:                                             ; preds = %._crit_edge41
  %i.ec = getelementptr inbounds nuw i8, ptr %i.az, i64 64 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.eg = icmp ult ptr %i.ed, %i.ef
  br i1 %i.eg, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis20AddIncomingExceptionENS0_8compiler10turboshaft7OpIndexE.exit, label %bb.z, !prof !36

bb.z:                                             ; preds = %bb.y
  %i.eh = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.ei = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = ptrtoint ptr %i.ef to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2
  %i.eo = add nsw i64 %i.en, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.eh, i64 noundef %i.eo)
  %.pre.i.i = load ptr, ptr %i.ec, align 8
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis20AddIncomingExceptionENS0_8compiler10turboshaft7OpIndexE.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis20AddIncomingExceptionENS0_8compiler10turboshaft7OpIndexE.exit: ; preds = %bb.y, %bb.z
  %i.ep = phi ptr [ %i.ed, %bb.y ], [ %.pre.i.i, %bb.z ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store ptr %i.eq, ptr %i.ec, align 8
  store i32 %4, ptr %i.ep, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge41, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis20AddIncomingExceptionENS0_8compiler10turboshaft7OpIndexE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13GetBranchHintEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.k [
    i32 0, label %_ZNK2v88internal4wasm13BranchHintMap10GetHintForEj.exit
    i32 1, label %bb.b
    i32 2, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.p = load i32, ptr %i.o, align 8
  %i.q = sub i32 %i.n, %i.p
  %i.r = add i32 %i.q, %i.l                       ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %.not.not.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.not.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.u, %bb.c ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8 ; 4 uses
  %i.v = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.v, label %_ZNK2v88internal4wasm13BranchHintMap10GetHintForEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.r, %i.x
  br i1 %i.y, label %_ZNKSt13unordered_mapIjN2v88internal10BranchHintESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.i, label %bb.d, !llvm.loop !339

bb.f:                                             ; preds = %bb.b
  %i.z = zext i32 %i.r to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = urem i64 %i.z, %i.ab                    ; 2 uses
  %i.ad = load ptr, ptr %i.d, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZNK2v88internal4wasm13BranchHintMap10GetHintForEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.r, %i.ai
  br i1 %i.aj, label %_ZNKSt13unordered_mapIjN2v88internal10BranchHintESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.i, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.ak = icmp eq i32 %i.r, %i.an
  br i1 %i.ak, label %_ZNKSt13unordered_mapIjN2v88internal10BranchHintESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !340

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.al, %bb.h ], [ %i.ag, %bb.g ]
  %i.al = load ptr, ptr %.020.i.i.i.i.i, align 8  ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.i.i.i.i.i, label %_ZNK2v88internal4wasm13BranchHintMap10GetHintForEj.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = urem i64 %i.ao, %i.ab
  %.not19.i.i.i.i.i = icmp eq i64 %i.ap, %i.ac
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !340

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %_ZNK2v88internal4wasm13BranchHintMap10GetHintForEj.exit, !llvm.loop !340

_ZNKSt13unordered_mapIjN2v88internal10BranchHintESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.ag, %bb.g ], [ %i.al, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 12
  %i.ar = load i8, ptr %i.aq, align 4
  br label %_ZNK2v88internal4wasm13BranchHintMap10GetHintForEj.exit

bb.j:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1568), align 32
  %i.au = load i32, ptr %i.as, align 8            ; 2 uses
  %i.av = shl nuw i32 1, %i.au
  %i.aw = and i32 %i.av, %i.at
  %i.ax = add nsw i32 %i.au, 1
  %i.ay = and i32 %i.ax, 31
  store i32 %i.ay, ptr %i.as, align 8
  %i.az = icmp eq i32 %i.aw, 0
  %i.ba = select i1 %i.az, i8 2, i8 1
  br label %_ZNK2v88internal4wasm13BranchHintMap10GetHintForEj.exit

bb.k:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #21
  unreachable

_ZNK2v88internal4wasm13BranchHintMap10GetHintForEj.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %_ZNKSt13unordered_mapIjN2v88internal10BranchHintESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.i, %..loopexit_crit_edge21.i.i.i.i.i, %bb.f, %bb.a, %bb.j
  %.0 = phi i8 [ %i.ba, %bb.j ], [ 0, %bb.a ], [ %i.ar, %_ZNKSt13unordered_mapIjN2v88internal10BranchHintESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit.i ], [ 0, %..loopexit_crit_edge21.i.i.i.i.i ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %.lr.ph.i.i.i.i.i ]
  ret i8 %.0
}

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis16GrowInputsVectorEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = shl i32 %i.e, 1
  store i32 %i.h, ptr %i.d, align 4
  %i.i = shl i32 %i.g, 1                          ; 2 uses
  store i32 %i.i, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = zext i32 %i.i to i64
  %i.m = shl nuw nsw i64 %i.l, 2                  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp ugt i64 %i.m, %i.r
  br i1 %i.s, label %bb.b, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit, !prof !37

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 noundef %i.m) #22
  %.pre.i.i = load i64, ptr %i.p, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit: ; preds = %bb.a, %bb.b
  %i.t = phi i64 [ %.pre.i.i, %bb.b ], [ %i.q, %bb.a ] ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = add i64 %i.t, %i.m
  store i64 %i.v, ptr %i.p, align 8
  store ptr %i.u, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit
  %i.y = zext i32 %i.e to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre18 = load i32, ptr %i.d, align 4
  %i.ac = mul nsw i64 %i.y, -4
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit, %.lr.ph, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit
  %1 = phi i32 [ %4, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit ], [ %i.x, %.lr.ph.split.preheader ]
  %i.ad = phi i32 [ %5, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit ], [ %.pre18, %.lr.ph.split.preheader ] ; 2 uses
  %2 = phi ptr [ %6, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit ], [ %i.u, %.lr.ph.split.preheader ] ; 3 uses
  %i.ae = phi i32 [ %i.bg, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit ], [ %i.aa, %.lr.ph.split.preheader ] ; 2 uses
  %.012 = phi i64 [ %i.bh, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  %3 = ptrtoaddr ptr %2 to i64
  %i.af = mul i64 %i.ac, %.012
  %i.ag = sub i64 %i.af, %i.c
  %i.ah = shl nuw nsw i64 %.012, 2
  %i.ai = mul nuw i64 %.012, %i.y
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ai ; 5 uses
  %i.ak = zext i32 %i.ae to i64
  %.idx = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx
  %.not9.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.split
  %i.am = zext i32 %i.ad to i64                   ; 2 uses
  %i.an = mul nuw i64 %.012, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.an ; 4 uses
  %i.ap = add nsw i64 %.idx, -4                   ; 2 uses
  %i.aq = lshr exact i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 44
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.as = add i64 %i.ag, %3
  %i.at = mul i64 %i.ah, %i.am
  %i.au = add i64 %i.as, %i.at
  %i.av = add i64 %i.au, -1
  %diff.check = icmp ult i64 %i.av, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ao, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.aj, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.az ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.aj, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep16, align 4
  %wide.load17 = load <4 x i32>, ptr %i.ba, align 4
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load17, ptr %i.bb, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !341

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i.preheader19

.lr.ph.i.i.i.preheader19:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.011.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0810.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader19, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader19 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader19 ] ; 2 uses
  %i.bd = load i32, ptr %.0810.i.i.i, align 4
  store i32 %i.bd, ptr %.011.i.i.i, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.be, %i.al
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !342

_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.pre = load i32, ptr %i.z, align 8
  %.pre15 = load ptr, ptr %i.a, align 8
  %.pre17 = load i32, ptr %i.d, align 4
  %.pre.a = load i32, ptr %i.w, align 4
  br label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit

_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit: ; preds = %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit, %.lr.ph.split
  %4 = phi i32 [ %.pre.a, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit ], [ %1, %.lr.ph.split ] ; 2 uses
  %5 = phi i32 [ %.pre17, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit ], [ %i.ad, %.lr.ph.split ]
  %6 = phi ptr [ %.pre15, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit ], [ %2, %.lr.ph.split ]
  %i.bg = phi i32 [ %.pre, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit ], [ 0, %.lr.ph.split ]
  %i.bh = add nuw nsw i64 %.012, 1                ; 2 uses
  %i.bi = zext i32 %4 to i64
  %i.bj = icmp samesign ult i64 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph.split, label %._crit_edge, !llvm.loop !343
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface24BindBlockAndGeneratePhisEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS0_8compiler10turboshaft5BlockEPNS1_5MergeINS2_5ValueEEEPNSA_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !39, !align !41 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load i8, ptr %i.c, align 8
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(696) %i.b, ptr noundef nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull %2, i1 noundef zeroext false) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !39, !align !41 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  %.not67 = icmp eq ptr %i.s, null
  br i1 %.not67, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.v, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = load ptr, ptr %i.m, align 8
  %i.ad = load ptr, ptr %i.o, align 8
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 3
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp ult ptr %i.ak, %i.am
  br i1 %i.an, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.g, !prof !36

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %i.at = add nsw i64 %i.as, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.at)
  %.pre.i = load ptr, ptr %i.m, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.f, %bb.g
  %i.au = phi ptr [ %i.ak, %bb.f ], [ %.pre.i, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.m, align 8
  store ptr %2, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.h, label %.preheader.i, !prof !37

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %2, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  br label %bb.l

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.ax, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = sub nsw i32 %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = sub nsw i32 %i.bg, %i.bj
  %i.bl = icmp eq i32 %i.bh, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.i, %._crit_edge.i
  %.0.i.i = phi ptr [ %i.bn, %bb.i ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.07.lcssa.i, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.0.i.i, ptr %i.bp, align 8
  %i.bq = load i32, ptr %i.bd, align 4
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %i.br, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  store ptr %i.bx, ptr %2, align 8
  store ptr %2, ptr %i.bw, align 8
  %.pre.i44 = load i32, ptr %i.bs, align 4
  br label %bb.l

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i
  %.012.i = phi ptr [ %.0.i42, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %.09.i, %.preheader.i ] ; 4 uses
  %.0711.i = phi ptr [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %i.ax, %.preheader.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i, i64 20
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.0711.i, i64 20
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = icmp sgt i32 %i.bz, %i.cb               ; 2 uses
  %spec.select.i.i = select i1 %i.cc, ptr %.012.i, ptr %.0711.i ; 3 uses
  %spec.select17.i.i = select i1 %i.cc, ptr %.0711.i, ptr %.012.i ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %spec.select17.i.i, i64 20
  %i.ce = load i32, ptr %i.cd, align 4            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 20
  %i.cg = load i32, ptr %i.cf, align 4
  %.not18.i.i = icmp eq i32 %i.cg, %i.ce
  br i1 %.not18.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.116.lcssa.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i ], [ %storemerge7.i.i, %.lr.ph.i.i ] ; 3 uses
  %.not520.i.i = icmp eq ptr %.116.lcssa.i.i, %spec.select17.i.i
  br i1 %.not520.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.11619.i.i = phi ptr [ %storemerge7.i.i, %.lr.ph.i.i ], [ %spec.select.i.i, %.lr.ph.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 16
  %i.ci = load i32, ptr %i.ch, align 8
  %.not6.i.i = icmp slt i32 %i.ci, %i.ce
  %storemerge7.in.v.i.i = select i1 %.not6.i.i, i64 24, i64 32
  %storemerge7.in.i.i = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 %storemerge7.in.v.i.i
  %storemerge7.i.i = load ptr, ptr %storemerge7.in.i.i, align 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %storemerge7.i.i, i64 20
  %i.ck = load i32, ptr %i.cj, align 4
  %.not.i.i = icmp eq i32 %i.ck, %i.ce
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !3

.lr.ph23.i.i:                                     ; preds = %.preheader.i.i, %bb.k
  %.122.i.i = phi ptr [ %storemerge.i.i, %bb.k ], [ %spec.select17.i.i, %.preheader.i.i ] ; 2 uses
  %.221.i.i = phi ptr [ %.3.i.i, %bb.k ], [ %.116.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 32
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = icmp eq ptr %i.cm, %i.co
  br i1 %i.cp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph23.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 24
  %storemerge.pre.i.i = load ptr, ptr %i.cs, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph23.i.i
  %storemerge.i.i = phi ptr [ %storemerge.pre.i.i, %bb.j ], [ %i.co, %.lr.ph23.i.i ] ; 2 uses
  %.3.i.i = phi ptr [ %i.cr, %bb.j ], [ %i.cm, %.lr.ph23.i.i ] ; 3 uses
  %.not5.i.i = icmp eq ptr %.3.i.i, %storemerge.i.i
  br i1 %.not5.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i, !llvm.loop !4

end_hunk_0
