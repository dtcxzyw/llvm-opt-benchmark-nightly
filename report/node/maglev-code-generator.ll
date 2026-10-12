Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-code-generator?download=true
inline.NumInlined: 32460
inline.NumDeleted: 3454
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder26BuildDeoptFrameSingleValueEPKNS1_9ValueNodeERPKNS1_13InputLocationERKNS1_17VirtualObjectListE:bb.a
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15BuildHeapNumberENS0_7Float64E.exit

_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15BuildHeapNumberENS0_7Float64E.exit: ; preds = %._crit_edge.i.i, %bb.d
  %i.ap = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ao, %bb.d ]
  tail call void @_ZN2v88internal23FrameTranslationBuilder12StoreLiteralEi(ptr noundef nonnull align 8 dereferenceable(133) %i.ad, i32 noundef %i.ap) #20
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKNS1_13VirtualObjectERPKNS1_13InputLocationERKNS1_17VirtualObjectListE.exit.thread

bb.e:                                             ; preds = %.critedge
  %i.aq = ptrtoint ptr %..i to i64                ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 5 uses
  %i.au = load ptr, ptr %i.ar, align 8            ; 7 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 9 uses
  %i.ay = ashr exact i64 %i.ax, 3                 ; 8 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.preheader.i, label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = and i64 %i.ay, 2147483647
  br label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.k, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.k ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = icmp eq i64 %i.bc, %i.aq
  br i1 %i.bd, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph.i35
  %i.be = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not.i.i = icmp eq ptr %i.at, %i.bg
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.aq, ptr %i.at, align 8
  %i.bh = load ptr, ptr %i.as, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bi, ptr %i.as, align 8
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDuplicatedIdEl.exit

bb.h:                                             ; preds = %bb.f
  %i.bj = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.bj, label %bb.i, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ay ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.ay
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 1152921504606846975)
  %i.bn = select i1 %i.bl, i64 1152921504606846975, i64 %i.bm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #21 ; 4 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.ax ; 2 uses
  store i64 %i.aq, ptr %i.bq, align 8
  %i.br = icmp sgt i64 %i.ax, 0
  br i1 %i.br, label %bb.j, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr nonnull align 8 %i.au, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load ptr, ptr %i.bf, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.bv) #24
  store ptr %i.bp, ptr %i.ar, align 8
  store ptr %i.bs, ptr %i.as, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.bw, ptr %i.bf, align 8
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDuplicatedIdEl.exit

bb.k:                                             ; preds = %.lr.ph.i35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit.i, label %.lr.ph.i35, !llvm.loop !139

_ZNSt6vectorIlSaIlEE9push_backERKl.exit.i:        ; preds = %bb.k, %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %.not.i8.i = icmp eq ptr %i.at, %i.by
  br i1 %.not.i8.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit.i
  store i64 %i.aq, ptr %i.at, align 8
  %i.bz = load ptr, ptr %i.as, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.ca, ptr %i.as, align 8
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDuplicatedIdEl.exit.thread

bb.m:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit.i
  %i.cb = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.cb, label %bb.n, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i9.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i9.i: ; preds = %bb.m
  %.sroa.speculated.i.i.i10.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i10.i, %i.ay ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.ay
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 3 uses
  %.not.i.i.i11.i = icmp ne i64 %i.cf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i11.i)
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #21 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.ax ; 2 uses
  store i64 %i.aq, ptr %i.ci, align 8
  %i.cj = icmp sgt i64 %i.ax, 0
  br i1 %i.cj, label %bb.o, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i12.i

bb.o:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i9.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr align 8 %i.au, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i12.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i12.i: ; preds = %bb.o, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i9.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.not.i17.i.i13.i = icmp eq ptr %i.au, null
  br i1 %.not.i17.i.i13.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i14.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i12.i
  %i.cl = load ptr, ptr %i.bx, align 8
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.cn) #24
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i14.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i14.i: ; preds = %bb.p, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i12.i
  store ptr %i.ch, ptr %i.ar, align 8
  store ptr %i.ck, ptr %i.as, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.co, ptr %i.bx, align 8
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDuplicatedIdEl.exit.thread

_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDuplicatedIdEl.exit: ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, %bb.g
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void @_ZN2v88internal23FrameTranslationBuilder15DuplicateObjectEi(ptr noundef nonnull align 8 dereferenceable(133) %i.cq, i32 noundef %i.be) #20, !inline_history !140
  %.sroa.03.0.copyload.i = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %2, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.03.0.copyload.i, ptr %4, align 8
  %i.cr = load i8, ptr %i.s, align 4
  switch i8 %i.cr, label %_ZNK2v88internal6maglev13VirtualObject25ForEachNestedRuntimeInputIZNS1_12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKS2_RPKNS1_13InputLocationERKNS1_17VirtualObjectListEEUlPNS1_9ValueNodeEE_EEvSC_OT_.exit [
    i8 0, label %.preheader.i.i
    i8 3, label %.preheader2.preheader.i.i
  ]

.preheader2.preheader.i.i:                        ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDuplicatedIdEl.exit
  %.012.ptr.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 56
  %i.cs = load ptr, ptr %.012.ptr.i.i, align 8
  call fastcc void @_ZZNK2v88internal6maglev13VirtualObject25ForEachNestedRuntimeInputIZNS1_12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKS2_RPKNS1_13InputLocationERKNS1_17VirtualObjectListEEUlPNS1_9ValueNodeEE_EEvSC_OT_ENKUlSG_E_clESG_(ptr nonnull readonly %4, ptr nonnull align 8 dereferenceable(8) %5, ptr noundef %i.cs)
  %.012.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 64
  %i.ct = load ptr, ptr %.012.ptr.1.i.i, align 8
  call fastcc void @_ZZNK2v88internal6maglev13VirtualObject25ForEachNestedRuntimeInputIZNS1_12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKS2_RPKNS1_13InputLocationERKNS1_17VirtualObjectListEEUlPNS1_9ValueNodeEE_EEvSC_OT_ENKUlSG_E_clESG_(ptr nonnull readonly %4, ptr nonnull align 8 dereferenceable(8) %5, ptr noundef %i.ct)
  br label %_ZNK2v88internal6maglev13VirtualObject25ForEachNestedRuntimeInputIZNS1_12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKS2_RPKNS1_13InputLocationERKNS1_17VirtualObjectListEEUlPNS1_9ValueNodeEE_EEvSC_OT_.exit

.preheader.i.i:                                   ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDuplicatedIdEl.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 40 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8
  %.not6.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not6.i.i, label %_ZNK2v88internal6maglev13VirtualObject25ForEachNestedRuntimeInputIZNS1_12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKS2_RPKNS1_13InputLocationERKNS1_17VirtualObjectListEEUlPNS1_9ValueNodeEE_EEvSC_OT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 48
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.q ] ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.i.i
  %i.cz = load ptr, ptr %i.cy, align 8
  call fastcc void @_ZZNK2v88internal6maglev13VirtualObject25ForEachNestedRuntimeInputIZNS1_12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKS2_RPKNS1_13InputLocationERKNS1_17VirtualObjectListEEUlPNS1_9ValueNodeEE_EEvSC_OT_ENKUlSG_E_clESG_(ptr nonnull readonly %4, ptr nonnull align 8 dereferenceable(8) %5, ptr noundef %i.cz)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.da = load i32, ptr %i.cu, align 8
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv.next.i.i, %i.db
  br i1 %i.dc, label %bb.q, label %_ZNK2v88internal6maglev13VirtualObject25ForEachNestedRuntimeInputIZNS1_12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKS2_RPKNS1_13InputLocationERKNS1_17VirtualObjectListEEUlPNS1_9ValueNodeEE_EEvSC_OT_.exit, !llvm.loop !141

_ZNK2v88internal6maglev13VirtualObject25ForEachNestedRuntimeInputIZNS1_12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKS2_RPKNS1_13InputLocationERKNS1_17VirtualObjectListEEUlPNS1_9ValueNodeEE_EEvSC_OT_.exit: ; preds = %bb.q, %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDuplicatedIdEl.exit, %.preheader2.preheader.i.i, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKNS1_13VirtualObjectERPKNS1_13InputLocationERKNS1_17VirtualObjectListE.exit.thread

_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDuplicatedIdEl.exit.thread: ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i14.i, %bb.l
  %i.dd = load i8, ptr %i.s, align 4
  switch i8 %i.dd, label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKNS1_13VirtualObjectERPKNS1_13InputLocationERKNS1_17VirtualObjectListE.exit.thread [
    i8 1, label %bb.r
    i8 3, label %bb.s
    i8 2, label %bb.t
    i8 0, label %bb.u
  ]

bb.r:                                             ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDuplicatedIdEl.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.30) #22, !inline_history !140
  unreachable

bb.s:                                             ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDuplicatedIdEl.exit.thread
  tail call fastcc void @_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15BuildConsStringEPKNS1_13VirtualObjectERPKNS1_13InputLocationERKNS1_17VirtualObjectListE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %.sroa.08.014.i, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3), !inline_history !140
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKNS1_13VirtualObjectERPKNS1_13InputLocationERKNS1_17VirtualObjectListE.exit.thread

bb.t:                                             ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDuplicatedIdEl.exit.thread
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 40
  %i.df = load i32, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 48
  %.sroa.0.0.copyload.i34 = load ptr, ptr %i.dg, align 8
  tail call fastcc void @_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder21BuildFixedDoubleArrayEjNS0_8compiler19FixedDoubleArrayRefE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.df, ptr %.sroa.0.0.copyload.i34), !inline_history !140
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKNS1_13VirtualObjectERPKNS1_13InputLocationERKNS1_17VirtualObjectListE.exit.thread

bb.u:                                             ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDuplicatedIdEl.exit.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 40
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = add i32 %i.dk, 1
  tail call void @_ZN2v88internal23FrameTranslationBuilder19BeginCapturedObjectEi(ptr noundef nonnull align 8 dereferenceable(133) %i.di, i32 noundef %i.dl) #20, !inline_history !140
  %i.dm = load ptr, ptr %i.dh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 24
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %_ZNK2v88internal6maglev13VirtualObject3mapEv.exit, !prof !17

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.29) #22
  unreachable

_ZNK2v88internal6maglev13VirtualObject3mapEv.exit: ; preds = %bb.u
  store ptr %i.do, ptr %6, align 8
  %i.dp = call ptr @_ZNK2v88internal8compiler6MapRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20, !inline_history !140
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call { ptr, i8 } @_ZN2v88internal15IdentityMapBase17FindOrInsertEntryEm(ptr noundef nonnull align 8 dereferenceable(66) %i.ds, i64 noundef %i.dq) #20 ; 2 uses
  %i.du = extractvalue { ptr, i8 } %i.dt, 1
  %i.dv = extractvalue { ptr, i8 } %i.dt, 0       ; 2 uses
  %i.dw = trunc i8 %i.du to i1
  br i1 %i.dw, label %._crit_edge.i31, label %bb.w

._crit_edge.i31:                                  ; preds = %_ZNK2v88internal6maglev13VirtualObject3mapEv.exit
  %.pre.i32 = load i32, ptr %i.dv, align 4
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDeoptLiteralENS0_6TaggedINS0_6ObjectEEE.exit33

bb.w:                                             ; preds = %_ZNK2v88internal6maglev13VirtualObject3mapEv.exit
  %i.dx = load ptr, ptr %i.dr, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 28
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = add nsw i32 %i.dz, -1                   ; 2 uses
  store i32 %i.ea, ptr %i.dv, align 4
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDeoptLiteralENS0_6TaggedINS0_6ObjectEEE.exit33

_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDeoptLiteralENS0_6TaggedINS0_6ObjectEEE.exit33: ; preds = %._crit_edge.i31, %bb.w
  %i.eb = phi i32 [ %.pre.i32, %._crit_edge.i31 ], [ %i.ea, %bb.w ]
  call void @_ZN2v88internal23FrameTranslationBuilder12StoreLiteralEi(ptr noundef nonnull align 8 dereferenceable(133) %i.dm, i32 noundef %i.eb) #20, !inline_history !140
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %0, ptr %7, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %i.ed, align 8
  call fastcc void @_ZNK2v88internal6maglev13VirtualObject12ForEachInputIZNS1_12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKS2_RPKNS1_13InputLocationERKNS1_17VirtualObjectListEEUlPNS1_9ValueNodeEE0_EEvOT_(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.08.014.i, ptr noundef nonnull align 8 dereferenceable(24) %7), !inline_history !140
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKNS1_13VirtualObjectERPKNS1_13InputLocationERKNS1_17VirtualObjectListE.exit.thread

_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKNS1_13VirtualObjectERPKNS1_13InputLocationERKNS1_17VirtualObjectListE.exit: ; preds = %bb.b, %_ZNK2v88internal6maglev17VirtualObjectList17FindAllocatedWithEPKNS1_17InlinedAllocationE.exit, %_ZNK2v88internal6maglev9ValueNode16UnwrapIdentitiesEv.exit
  %i.ee = load ptr, ptr %2, align 8
  %i.ef = load i64, ptr %i.ee, align 8            ; 10 uses
  %i.eg = and i64 %i.ef, 7                        ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 2
  br i1 %i.eh, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKNS1_13VirtualObjectERPKNS1_13InputLocationERKNS1_17VirtualObjectListE.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = load ptr, ptr %0, align 8
  %i.el = tail call ptr @_ZNK2v88internal6maglev9ValueNode5ReifyEPNS0_12LocalIsolateE(ptr noundef nonnull align 8 dereferenceable(20) %.0.lcssa.i, ptr noundef %i.ek) #20
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = tail call { ptr, i8 } @_ZN2v88internal15IdentityMapBase17FindOrInsertEntryEm(ptr noundef nonnull align 8 dereferenceable(66) %i.eo, i64 noundef %i.em) #20 ; 2 uses
  %i.eq = extractvalue { ptr, i8 } %i.ep, 1
  %i.er = extractvalue { ptr, i8 } %i.ep, 0       ; 2 uses
  %i.es = trunc i8 %i.eq to i1
  br i1 %i.es, label %._crit_edge.i, label %bb.y

._crit_edge.i:                                    ; preds = %bb.x
  %.pre.i = load i32, ptr %i.er, align 4
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDeoptLiteralENS0_6TaggedINS0_6ObjectEEE.exit

bb.y:                                             ; preds = %bb.x
  %i.et = load ptr, ptr %i.en, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 28
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %i.er, align 4
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDeoptLiteralENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDeoptLiteralENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %._crit_edge.i, %bb.y
  %i.ex = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.ew, %bb.y ]
  tail call void @_ZN2v88internal23FrameTranslationBuilder12StoreLiteralEi(ptr noundef nonnull align 8 dereferenceable(133) %i.ej, i32 noundef %i.ex) #20
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder23BuildDeoptStoreRegisterERKNS0_8compiler16AllocatedOperandENS1_19ValueRepresentationE.exit

bb.z:                                             ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder18BuildVirtualObjectEPKNS1_13VirtualObjectERPKNS1_13InputLocationERKNS1_17VirtualObjectListE.exit
  %sum.shift = lshr i64 %i.k, 40
  %i.ey = trunc i64 %sum.shift to i8
  %i.ez = and i8 %i.ey, 7                         ; 2 uses
  %i.fa = icmp samesign ugt i64 %i.eg, 4
  %i.fb = and i64 %i.ef, 8
  %i.fc = icmp eq i64 %i.fb, 0
  %i.fd = and i1 %i.fa, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.fe, align 8            ; 12 uses
  br i1 %i.fd, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  switch i8 %i.ez, label %default.unreachable [
    i8 5, label %bb.ab
    i8 0, label %bb.ac
    i8 1, label %bb.ad
    i8 2, label %bb.ae
    i8 3, label %bb.af
    i8 4, label %bb.ag
    i8 6, label %bb.ah
    i8 7, label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder23BuildDeoptStoreRegisterERKNS0_8compiler16AllocatedOperandENS1_19ValueRepresentationE.exit
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ff = lshr i64 %i.ef, 32
  %i.fg = trunc i64 %i.ff to i8                   ; 2 uses
  %i.fh = icmp samesign ult i8 %i.fg, 16
  tail call void @llvm.assume(i1 %i.fh)
  tail call void @_ZN2v88internal23FrameTranslationBuilder19StoreIntPtrRegisterENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(133) %.val, i8 %i.fg) #20
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder23BuildDeoptStoreRegisterERKNS0_8compiler16AllocatedOperandENS1_19ValueRepresentationE.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fi = lshr i64 %i.ef, 32
  %i.fj = trunc i64 %i.fi to i8                   ; 2 uses
  %i.fk = icmp samesign ult i8 %i.fj, 16
  tail call void @llvm.assume(i1 %i.fk)
  tail call void @_ZN2v88internal23FrameTranslationBuilder13StoreRegisterENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(133) %.val, i8 %i.fj) #20
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder23BuildDeoptStoreRegisterERKNS0_8compiler16AllocatedOperandENS1_19ValueRepresentationE.exit

bb.ad:                                            ; preds = %bb.aa
  %i.fl = lshr i64 %i.ef, 32
  %i.fm = trunc i64 %i.fl to i8                   ; 2 uses
  %i.fn = icmp samesign ult i8 %i.fm, 16
  tail call void @llvm.assume(i1 %i.fn)
  tail call void @_ZN2v88internal23FrameTranslationBuilder18StoreInt32RegisterENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(133) %.val, i8 %i.fm) #20
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder23BuildDeoptStoreRegisterERKNS0_8compiler16AllocatedOperandENS1_19ValueRepresentationE.exit

bb.ae:                                            ; preds = %bb.aa
  %i.fo = lshr i64 %i.ef, 32
  %i.fp = trunc i64 %i.fo to i8                   ; 2 uses
  %i.fq = icmp samesign ult i8 %i.fp, 16
  tail call void @llvm.assume(i1 %i.fq)
  tail call void @_ZN2v88internal23FrameTranslationBuilder19StoreUint32RegisterENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(133) %.val, i8 %i.fp) #20
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder23BuildDeoptStoreRegisterERKNS0_8compiler16AllocatedOperandENS1_19ValueRepresentationE.exit

bb.af:                                            ; preds = %bb.aa
  %i.fr = lshr i64 %i.ef, 32
  %i.fs = trunc i64 %i.fr to i8                   ; 2 uses
  %i.ft = icmp samesign ult i8 %i.fs, 16
  tail call void @llvm.assume(i1 %i.ft)
  tail call void @_ZN2v88internal23FrameTranslationBuilder19StoreDoubleRegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(133) %.val, i8 %i.fs) #20
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder23BuildDeoptStoreRegisterERKNS0_8compiler16AllocatedOperandENS1_19ValueRepresentationE.exit

bb.ag:                                            ; preds = %bb.aa
  %i.fu = lshr i64 %i.ef, 32
  %i.fv = trunc i64 %i.fu to i8                   ; 2 uses
  %i.fw = icmp samesign ult i8 %i.fv, 16
  tail call void @llvm.assume(i1 %i.fw)
  tail call void @_ZN2v88internal23FrameTranslationBuilder24StoreHoleyDoubleRegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(133) %.val, i8 %i.fv) #20
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder23BuildDeoptStoreRegisterERKNS0_8compiler16AllocatedOperandENS1_19ValueRepresentationE.exit

bb.ah:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.30) #22
  unreachable

bb.ai:                                            ; preds = %bb.z
  %i.fx = lshr i64 %i.ef, 32
  %i.fy = trunc nuw i64 %i.fx to i32              ; 2 uses
  %i.fz = and i64 %i.ef, 4080
  %.not.i.i.i = icmp eq i64 %i.fz, 144
  br i1 %.not.i.i.i, label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder27DeoptStackSlotFromStackSlotERKNS0_8compiler16AllocatedOperandE.exit.i, label %bb.aj
end_hunk_0
