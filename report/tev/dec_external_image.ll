Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_external_image?download=true
inline.NumInlined: 1219
inline.NumDeleted: 470
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3jxl25ConvertChannelsToExternalEPPKNS_5PlaneIfEEmmb13JxlEndiannessmPNS_10ThreadPoolEPvmRKNS_13PixelCallbackENS_11OrientationE:bb.a
_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit300.i:    ; preds = %bb.ck, %.critedge100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  br label %bb.cr

.critedge102.i:                                   ; preds = %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE1_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.i, %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE1_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  %i.akg = load i32, ptr %i.ca, align 8, !tbaa !44
  %i.akh = icmp eq i32 %i.akg, 0
  br i1 %i.akh, label %bb.cl, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit301.i

bb.cl:                                            ; preds = %.critedge102.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cb) #23
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit301.i

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit301.i:    ; preds = %bb.cl, %.critedge102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  br label %bb.cr

.critedge104.i:                                   ; preds = %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE2_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.i, %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE2_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  %i.aki = load i32, ptr %i.bp, align 8, !tbaa !44
  %i.akj = icmp eq i32 %i.aki, 0
  br i1 %i.akj, label %bb.cm, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit302.i

bb.cm:                                            ; preds = %.critedge104.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bq) #23
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit302.i

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit302.i:    ; preds = %bb.cm, %.critedge104.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br label %bb.cr

.critedge106.i:                                   ; preds = %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE3_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.i, %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE3_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  %i.akk = load i32, ptr %i.bd, align 8, !tbaa !44
  %i.akl = icmp eq i32 %i.akk, 0
  br i1 %i.akl, label %bb.cn, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit303.i

bb.cn:                                            ; preds = %.critedge106.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.be) #23
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit303.i

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit303.i:    ; preds = %bb.cn, %.critedge106.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  br label %bb.cr

.critedge108.i:                                   ; preds = %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE4_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.i, %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE4_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  %i.akm = load i32, ptr %i.ar, align 8, !tbaa !44
  %i.akn = icmp eq i32 %i.akm, 0
  br i1 %i.akn, label %bb.co, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit304.i

bb.co:                                            ; preds = %.critedge108.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #23
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit304.i

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit304.i:    ; preds = %bb.co, %.critedge108.i
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  br label %bb.cr

.critedge110.i:                                   ; preds = %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE5_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.i, %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE5_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  %i.ako = load i32, ptr %i.ae, align 8, !tbaa !44
  %i.akp = icmp eq i32 %i.ako, 0
  br i1 %i.akp, label %bb.cp, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit305.i

bb.cp:                                            ; preds = %.critedge110.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.af) #23
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit305.i

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit305.i:    ; preds = %bb.cp, %.critedge110.i
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br label %bb.cr

bb.cq:                                            ; preds = %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit269.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit111.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit143.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit114.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit172.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit146.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit202.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit175.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit234.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit205.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit266.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit237.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit298.i
  %.sroa.0.0.i.ph = phi i32 [ 1, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit298.i ], [ %i.acm, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit237.i ], [ 1, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit266.i ], [ %i.xs, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit205.i ], [ 1, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit234.i ], [ %i.tn, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit175.i ], [ 1, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit202.i ], [ %i.oo, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit146.i ], [ 1, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit172.i ], [ %i.jb, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit114.i ], [ 1, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit143.i ], [ %i.dy, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.i ], [ 1, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit111.i ], [ %i.ago, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit269.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.df

bb.cr:                                            ; preds = %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit305.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit304.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit303.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit302.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit301.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit300.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit299.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.akq = load ptr, ptr %53, align 8, !tbaa !38  ; 2 uses
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %i.akq, i64 %.070181
  store ptr %i.dn, ptr %i.akr, align 8, !tbaa !22
  %.pre206 = load i64, ptr %i.c, align 8, !tbaa !18
  br label %bb.cs

bb.cs:                                            ; preds = %bb.h, %bb.cr
  %i.aks = phi i64 [ %i.dj, %bb.h ], [ %.pre206, %bb.cr ] ; 3 uses
  %i.akt = phi ptr [ %i.dk, %bb.h ], [ %i.akq, %bb.cr ] ; 2 uses
  %i.aku = add nuw i64 %.070181, 1                ; 2 uses
  %.not79 = icmp ult i64 %i.aku, %i.aks
  br i1 %.not79, label %bb.h, label %.critedge, !llvm.loop !235

.critedge:                                        ; preds = %bb.cs, %bb.g
  %i.akv = phi i64 [ %1, %bb.g ], [ %i.aks, %bb.cs ] ; 2 uses
  %i.akw = phi ptr [ %.pre207, %bb.g ], [ %i.akt, %bb.cs ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !22 ; 2 uses
  %i.aky = load i32, ptr %i.akx, align 8, !tbaa !40
  %i.akz = zext i32 %i.aky to i64                 ; 3 uses
  store i64 %i.akz, ptr %i.h, align 8, !tbaa !18
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !41 ; 4 uses
  %i.alc = zext i32 %i.alb to i64
  %i.ald = load i64, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  %i.ale = mul i64 %i.ad, %i.akz                  ; 2 uses
  %i.alf = icmp ult i64 %i.ald, %i.ale
  br i1 %i.alf, label %bb.de, label %bb.ct

bb.ct:                                            ; preds = %.critedge
  %i.alg = load ptr, ptr %i.q, align 8, !tbaa !28
  %.not118 = icmp eq ptr %i.alg, null
  br i1 %.not118, label %bb.cu, label %.fold.split

bb.cu:                                            ; preds = %bb.ct
  %i.alh = add nsw i64 %i.alc, -1
  %i.ali = mul i64 %i.alh, %i.ald
  %i.alj = add i64 %i.ali, %i.ale
  %i.alk = icmp ult i64 %8, %i.alj
  br i1 %i.alk, label %bb.de, label %.fold.split

.fold.split:                                      ; preds = %bb.cu, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  %switch = icmp ult i32 %4, 2
  %spec.select = zext i1 %switch to i8            ; 2 uses
  store i8 %spec.select, ptr %i.i, align 1, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %58, i8 0, i64 56, i1 false)
  %.not185 = icmp eq i64 %i.akv, 0
  br i1 %.not185, label %.critedge82, label %.lr.ph183

bb.cv:                                            ; preds = %.lr.ph183
  %i.all = add nuw i64 %.071182, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.all, %i.akv
  br i1 %exitcond.not, label %.critedge82, label %.lr.ph183, !llvm.loop !236

.lr.ph183:                                        ; preds = %.fold.split, %bb.cv
  %.071182 = phi i64 [ %i.all, %bb.cv ], [ 0, %.fold.split ] ; 2 uses
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %i.akw, i64 %.071182
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !22
  %.not80 = icmp eq ptr %i.aln, null
  br i1 %.not80, label %bb.cw, label %bb.cv

bb.cw:                                            ; preds = %.lr.ph183
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #21
  %i.alo = load ptr, ptr %i.g, align 8, !tbaa !26
  call void @_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %59, ptr noundef %i.alo, i64 noundef %i.akz, i64 noundef 1, i64 noundef 0) #22
  %i.alp = getelementptr inbounds nuw i8, ptr %59, i64 56 ; 2 uses
  %i.alq = load i32, ptr %i.alp, align 8, !tbaa !44 ; 2 uses
  %i.alr = icmp eq i32 %i.alq, 0
  br i1 %i.alr, label %bb.cx, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.thread

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.thread:  ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #21
  br label %bb.dd

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %60, ptr noundef nonnull align 8 dereferenceable(60) %59, i64 24, i1 false)
  %i.als = getelementptr inbounds nuw i8, ptr %60, i64 24 ; 3 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %59, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.als, ptr noundef nonnull align 8 dereferenceable(24) %i.alt) #23
  %i.alu = getelementptr inbounds nuw i8, ptr %60, i64 48 ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %59, i64 48
  %i.alw = load i64, ptr %i.alv, align 8, !tbaa !45, !noalias !273
  store i64 %i.alw, ptr %i.alu, align 8, !tbaa !45, !alias.scope !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %58, ptr noundef nonnull align 8 dereferenceable(56) %60, i64 24, i1 false)
  %i.alx = getelementptr inbounds nuw i8, ptr %58, i64 24
  %i.aly = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.alx, ptr noundef nonnull align 8 dereferenceable(24) %i.als) #23 ; 0 uses
  %i.alz = load i64, ptr %i.alu, align 8, !tbaa !45
  %i.ama = getelementptr inbounds nuw i8, ptr %58, i64 48
  store i64 %i.alz, ptr %i.ama, align 8, !tbaa !45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.als) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  %i.amb = getelementptr inbounds nuw i8, ptr %58, i64 4
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !41 ; 2 uses
  %i.amd = zext i32 %i.amc to i64
  %.not.i = icmp eq i32 %i.amc, 0
  br i1 %.not.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit, label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %bb.cx
  %i.ame = getelementptr inbounds nuw i8, ptr %58, i64 40
  %i.amf = load ptr, ptr %i.ame, align 8, !tbaa !46
  %i.amg = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.amh = load i64, ptr %i.amg, align 8, !tbaa !47
  %i.ami = load i32, ptr %58, align 8, !tbaa !40  ; 3 uses
  %i.amj = zext i32 %i.ami to i64                 ; 3 uses
  %.not16.i = icmp eq i32 %i.ami, 0
  br i1 %.not16.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph14.i
  %min.iters.check436 = icmp ult i32 %i.ami, 8
  %n.vec438 = and i64 %i.amj, 4294967288          ; 3 uses
  %cmp.n443 = icmp eq i64 %n.vec438, %i.amj
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %scalar.ph435.a
  %.01012.us.i = phi i64 [ %i.amp, %scalar.ph435.a ], [ 0, %.lr.ph.us.i.preheader ] ; 2 uses
  %i.amk = mul i64 %.01012.us.i, %i.amh
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amf, i64 %i.amk ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aml, i64 64) ]
  br i1 %min.iters.check436, label %scalar.ph435.preheader, label %vector.body439

vector.body439:                                   ; preds = %.lr.ph.us.i, %vector.body439
  %index440 = phi i64 [ %index.next441, %vector.body439 ], [ 0, %.lr.ph.us.i ] ; 2 uses
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %i.aml, i64 %index440 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.amm, align 32, !tbaa !49
  store <4 x float> splat (float 1.000000e+00), ptr %i.amn, align 16, !tbaa !49
  %index.next441 = add nuw i64 %index440, 8       ; 2 uses
  %i.amo = icmp eq i64 %index.next441, %n.vec438
  br i1 %i.amo, label %middle.block442, label %vector.body439, !llvm.loop !239

middle.block442:                                  ; preds = %vector.body439
  br i1 %cmp.n443, label %scalar.ph435.a, label %scalar.ph435.preheader

scalar.ph435.preheader:                           ; preds = %.lr.ph.us.i, %middle.block442
  %.011.us.i.ph = phi i64 [ 0, %.lr.ph.us.i ], [ %n.vec438, %middle.block442 ]
  br label %._crit_edge.us.i

scalar.ph435.a:                                   ; preds = %._crit_edge.us.i, %middle.block442
  %i.amp = add nuw nsw i64 %.01012.us.i, 1        ; 2 uses
  %exitcond.not.i.a = icmp eq i64 %i.amp, %i.amd
  br i1 %exitcond.not.i.a, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit, label %.lr.ph.us.i, !llvm.loop !240

._crit_edge.us.i:                                 ; preds = %scalar.ph435.preheader, %._crit_edge.us.i
  %.011.i = phi i64 [ %i.amq, %._crit_edge.us.i ], [ %.011.us.i.ph, %scalar.ph435.preheader ] ; 2 uses
  %69 = getelementptr inbounds nuw [4 x i8], ptr %i.aml, i64 %.011.i
  store float 1.000000e+00, ptr %69, align 4, !tbaa !49
  %i.amq = add nuw nsw i64 %.011.i, 1             ; 2 uses
  %exitcond18.not.i = icmp eq i64 %i.amq, %i.amj
  br i1 %exitcond18.not.i, label %scalar.ph435.a, label %._crit_edge.us.i, !llvm.loop !241

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit:    ; preds = %scalar.ph435.a, %.lr.ph14.i, %bb.cx
  %.pr = load i32, ptr %i.alp, align 8, !tbaa !44
  %i.amr = icmp eq i32 %.pr, 0
  br i1 %i.amr, label %bb.cy, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.cy:                                            ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.alt) #23
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit:         ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #21
  br label %.critedge82

.critedge82:                                      ; preds = %bb.cv, %.fold.split, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit
  br i1 %3, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %.critedge82
  %i.ams = load i64, ptr %i.d, align 8, !tbaa !18
  switch i64 %i.ams, label %bb.dd [
    i64 16, label %bb.da
    i64 32, label %bb.db
  ]

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  %i.amt = xor i8 %spec.select, 1
  store i8 %i.amt, ptr %i.j, align 1, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %61, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #21
  store ptr %i.g, ptr %62, align 8, !tbaa !274
  %i.amu = getelementptr inbounds nuw i8, ptr %62, i64 8
  store ptr %i.h, ptr %i.amu, align 8, !tbaa !247
  %i.amv = getelementptr inbounds nuw i8, ptr %62, i64 16
  store ptr %i.c, ptr %i.amv, align 8, !tbaa !247
  %i.amw = getelementptr inbounds nuw i8, ptr %62, i64 24
  store ptr %61, ptr %i.amw, align 8, !tbaa !275
  %i.amx = getelementptr inbounds nuw i8, ptr %62, i64 32
  store ptr %56, ptr %i.amx, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #21
  store ptr %i.c, ptr %63, align 8, !tbaa !247
  %i.amy = getelementptr inbounds nuw i8, ptr %63, i64 8
  store ptr %53, ptr %i.amy, align 8, !tbaa !276
  %i.amz = getelementptr inbounds nuw i8, ptr %63, i64 16
  store ptr %58, ptr %i.amz, align 8, !tbaa !22
  %i.ana = getelementptr inbounds nuw i8, ptr %63, i64 24
  store ptr %61, ptr %i.ana, align 8, !tbaa !275
  %i.anb = getelementptr inbounds nuw i8, ptr %63, i64 32
  store ptr %i.h, ptr %i.anb, align 8, !tbaa !247
  %i.anc = getelementptr inbounds nuw i8, ptr %63, i64 40
  store ptr %9, ptr %i.anc, align 8, !tbaa !245
  %i.and = getelementptr inbounds nuw i8, ptr %63, i64 48
  store ptr %54, ptr %i.and, align 8, !tbaa !248
  %i.ane = getelementptr inbounds nuw i8, ptr %63, i64 56
  store ptr %i.f, ptr %i.ane, align 8, !tbaa !277
  %i.anf = getelementptr inbounds nuw i8, ptr %63, i64 64
  store ptr %i.e, ptr %i.anf, align 8, !tbaa !247
  %i.ang = getelementptr inbounds nuw i8, ptr %63, i64 72
  store ptr %i.j, ptr %i.ang, align 8, !tbaa !278
  %i.anh = getelementptr inbounds nuw i8, ptr %63, i64 80
  store ptr %55, ptr %i.anh, align 8, !tbaa !246
  %i.ani = call fastcc i32 @"_ZN3jxl9RunOnPoolIZNS_25ConvertChannelsToExternalEPPKNS_5PlaneIfEEmmb13JxlEndiannessmPNS_10ThreadPoolEPvmRKNS_13PixelCallbackENS_11OrientationEE3$_2ZNS_25ConvertChannelsToExternalES5_mmbS6_mS8_S9_mSC_SD_E3$_3EENS_6StatusES8_jjRKT_RKT0_PKc"(ptr noundef %6, i32 noundef %i.alb, ptr noundef nonnull align 8 dereferenceable(40) %62, ptr noundef nonnull align 8 dereferenceable(88) %63) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  %i.anj = getelementptr inbounds nuw i8, ptr %61, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.anj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  br label %bb.dd

bb.db:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #21
  store ptr %56, ptr %64, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #21
  store ptr %9, ptr %65, align 8, !tbaa !245
  %i.ank = getelementptr inbounds nuw i8, ptr %65, i64 8
  store ptr %54, ptr %i.ank, align 8, !tbaa !248
  %i.anl = getelementptr inbounds nuw i8, ptr %65, i64 16
  store ptr %i.f, ptr %i.anl, align 8, !tbaa !277
  %i.anm = getelementptr inbounds nuw i8, ptr %65, i64 24
  store ptr %i.e, ptr %i.anm, align 8, !tbaa !247
  %i.ann = getelementptr inbounds nuw i8, ptr %65, i64 32
  store ptr %i.c, ptr %i.ann, align 8, !tbaa !247
  %i.ano = getelementptr inbounds nuw i8, ptr %65, i64 40
  store ptr %53, ptr %i.ano, align 8, !tbaa !276
  %i.anp = getelementptr inbounds nuw i8, ptr %65, i64 48
  store ptr %58, ptr %i.anp, align 8, !tbaa !22
  %i.anq = getelementptr inbounds nuw i8, ptr %65, i64 56
  store ptr %i.i, ptr %i.anq, align 8, !tbaa !278
  %i.anr = getelementptr inbounds nuw i8, ptr %65, i64 64
  store ptr %i.h, ptr %i.anr, align 8, !tbaa !247
  %i.ans = getelementptr inbounds nuw i8, ptr %65, i64 72
  store ptr %55, ptr %i.ans, align 8, !tbaa !246
  %i.ant = call fastcc i32 @"_ZN3jxl9RunOnPoolIZNS_25ConvertChannelsToExternalEPPKNS_5PlaneIfEEmmb13JxlEndiannessmPNS_10ThreadPoolEPvmRKNS_13PixelCallbackENS_11OrientationEE3$_4ZNS_25ConvertChannelsToExternalES5_mmbS6_mS8_S9_mSC_SD_E3$_5EENS_6StatusES8_jjRKT_RKT0_PKc"(ptr noundef %6, i32 noundef %i.alb, ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef nonnull align 8 dereferenceable(80) %65) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #21
  br label %bb.dd

bb.dc:                                            ; preds = %.critedge82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #21
  %i.anu = load i64, ptr %i.d, align 8, !tbaa !18
  %notmask = shl nsw i64 -1, %i.anu
  %i.anv = xor i64 %notmask, -1
  %i.anw = uitofp nneg i64 %i.anv to float
  store float %i.anw, ptr %i.k, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %66, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #21
  store ptr %i.g, ptr %67, align 8, !tbaa !274
  %i.anx = getelementptr inbounds nuw i8, ptr %67, i64 8
  store ptr %i.h, ptr %i.anx, align 8, !tbaa !247
  %i.any = getelementptr inbounds nuw i8, ptr %67, i64 16
  store ptr %i.c, ptr %i.any, align 8, !tbaa !247
  %i.anz = getelementptr inbounds nuw i8, ptr %67, i64 24
  store ptr %66, ptr %i.anz, align 8, !tbaa !279
  %i.aoa = getelementptr inbounds nuw i8, ptr %67, i64 32
  store ptr %56, ptr %i.aoa, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #21
  store ptr %9, ptr %68, align 8, !tbaa !245
  %i.aob = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %54, ptr %i.aob, align 8, !tbaa !248
  %i.aoc = getelementptr inbounds nuw i8, ptr %68, i64 16
  store ptr %i.f, ptr %i.aoc, align 8, !tbaa !277
  %i.aod = getelementptr inbounds nuw i8, ptr %68, i64 24
  store ptr %i.e, ptr %i.aod, align 8, !tbaa !247
  %i.aoe = getelementptr inbounds nuw i8, ptr %68, i64 32
  store ptr %i.c, ptr %i.aoe, align 8, !tbaa !247
  %i.aof = getelementptr inbounds nuw i8, ptr %68, i64 40
  store ptr %53, ptr %i.aof, align 8, !tbaa !276
  %i.aog = getelementptr inbounds nuw i8, ptr %68, i64 48
  store ptr %58, ptr %i.aog, align 8, !tbaa !22
  %i.aoh = getelementptr inbounds nuw i8, ptr %68, i64 56
  store ptr %66, ptr %i.aoh, align 8, !tbaa !279
  %i.aoi = getelementptr inbounds nuw i8, ptr %68, i64 64
  store ptr %i.h, ptr %i.aoi, align 8, !tbaa !247
  %i.aoj = getelementptr inbounds nuw i8, ptr %68, i64 72
  store ptr %i.k, ptr %i.aoj, align 8, !tbaa !114
  %i.aok = getelementptr inbounds nuw i8, ptr %68, i64 80
  store ptr %i.d, ptr %i.aok, align 8, !tbaa !247
  %i.aol = getelementptr inbounds nuw i8, ptr %68, i64 88
  store ptr %i.i, ptr %i.aol, align 8, !tbaa !278
  %i.aom = getelementptr inbounds nuw i8, ptr %68, i64 96
  store ptr %55, ptr %i.aom, align 8, !tbaa !246
  %i.aon = call fastcc i32 @"_ZN3jxl9RunOnPoolIZNS_25ConvertChannelsToExternalEPPKNS_5PlaneIfEEmmb13JxlEndiannessmPNS_10ThreadPoolEPvmRKNS_13PixelCallbackENS_11OrientationEE3$_6ZNS_25ConvertChannelsToExternalES5_mmbS6_mS8_S9_mSC_SD_E3$_7EENS_6StatusES8_jjRKT_RKT0_PKc"(ptr noundef %6, i32 noundef %i.alb, ptr noundef nonnull align 8 dereferenceable(40) %67, ptr noundef nonnull align 8 dereferenceable(104) %68) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  %i.aoo = getelementptr inbounds nuw i8, ptr %66, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aoo) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.da, %bb.db, %bb.cz, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.thread
  %.sroa.099.0 = phi i32 [ %i.alq, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.thread ], [ 1, %bb.cz ], [ %i.ani, %bb.da ], [ %i.ant, %bb.db ], [ %i.aon, %bb.dc ]
  %i.aop = getelementptr inbounds nuw i8, ptr %58, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aop) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  br label %bb.de

bb.de:                                            ; preds = %bb.cu, %.critedge, %bb.dd
  %.sroa.099.1 = phi i32 [ 1, %.critedge ], [ %.sroa.099.0, %bb.dd ], [ 1, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  br label %bb.df

bb.df:                                            ; preds = %bb.cq, %bb.de
  %.sroa.099.2 = phi i32 [ %.sroa.099.1, %bb.de ], [ %.sroa.0.0.i.ph, %bb.cq ]
  %i.aoq = getelementptr inbounds nuw i8, ptr %57, i64 192
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aoq) #23
  %i.aor = getelementptr inbounds nuw i8, ptr %57, i64 136
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aor) #23
  %i.aos = getelementptr inbounds nuw i8, ptr %57, i64 80
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aos) #23
  %i.aot = getelementptr inbounds nuw i8, ptr %57, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aot) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  %i.aou = load ptr, ptr %55, align 8, !tbaa !20  ; 2 uses
  store ptr null, ptr %55, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.aou, null
  br i1 %.not.i.i, label %"_ZNSt3__110unique_ptrIvKZN3jxl25ConvertChannelsToExternalEPPKNS1_5PlaneIfEEmmb13JxlEndiannessmPNS1_10ThreadPoolEPvmRKNS1_13PixelCallbackENS1_11OrientationEE3$_0ED2B8nn180100Ev.exit", label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.val.i.i = load ptr, ptr %i.x, align 8, !tbaa !116
  %i.aov = getelementptr i8, ptr %.val.i.i, i64 16
  %.val.val.i.i = load ptr, ptr %i.aov, align 8, !tbaa !117
  call void %.val.val.i.i(ptr noundef nonnull %i.aou) #23, !inline_history !242
  br label %"_ZNSt3__110unique_ptrIvKZN3jxl25ConvertChannelsToExternalEPPKNS1_5PlaneIfEEmmb13JxlEndiannessmPNS1_10ThreadPoolEPvmRKNS1_13PixelCallbackENS1_11OrientationEE3$_0ED2B8nn180100Ev.exit"

"_ZNSt3__110unique_ptrIvKZN3jxl25ConvertChannelsToExternalEPPKNS1_5PlaneIfEEmmb13JxlEndiannessmPNS1_10ThreadPoolEPvmRKNS1_13PixelCallbackENS1_11OrientationEE3$_0ED2B8nn180100Ev.exit": ; preds = %bb.df, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  %i.aow = load ptr, ptr %54, align 8, !tbaa !122 ; 5 uses
  %.not.i.i89 = icmp eq ptr %i.aow, null
  br i1 %.not.i.i89, label %_ZNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEED2B8nn180100Ev.exit, label %bb.dh

bb.dh:                                            ; preds = %"_ZNSt3__110unique_ptrIvKZN3jxl25ConvertChannelsToExternalEPPKNS1_5PlaneIfEEmmb13JxlEndiannessmPNS1_10ThreadPoolEPvmRKNS1_13PixelCallbackENS1_11OrientationEE3$_0ED2B8nn180100Ev.exit"
  %i.aox = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !123 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.aow, %i.aoy
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEE7__clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

end_hunk_0
begin_hunk_1_@llvm.umax.i64
!40 = !{!39, !11, i64 0}
!41 = !{!39, !11, i64 4}
!42 = !{!"_ZTSN3jxl10StatusCodeE", !10, i64 0}
!43 = !{!"_ZTSN3jxl8StatusOrINS_5PlaneIfEEEE", !10, i64 0, !42, i64 56}
!44 = !{!43, !42, i64 56}
!45 = !{!39, !17, i64 48}
!46 = !{!24, !19, i64 16}
!47 = !{!39, !17, i64 16}
!48 = !{!"float", !10, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIjEE", !10, i64 0}
!53 = !{!52, !10, i64 0}
!54 = !{!"_ZTSNSt3__117__cxx_atomic_implIjNS_22__cxx_atomic_base_implIjEEEE", !52, i64 0}
!55 = !{!"_ZTSNSt3__113__atomic_baseIjLb0EEE", !54, i64 0}
!56 = !{!"_ZTSNSt3__113__atomic_baseIjLb1EEE", !55, i64 0}
!57 = !{!"_ZTSNSt3__16atomicIjEE", !56, i64 0}
!58 = !{!"_ZTSN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_EE", !19, i64 0, !19, i64 8, !57, i64 16}
!59 = !{!58, !19, i64 8}
!60 = !{}
!61 = !{i64 8}
!62 = !{!"_ZTSZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEEUljmE_", !21, i64 0, !21, i64 8, !31, i64 16}
!63 = !{!62, !21, i64 0}
!64 = !{!62, !31, i64 16}
!65 = !{!62, !21, i64 8}
!66 = !{!"_ZTSN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_EE", !19, i64 0, !19, i64 8, !57, i64 16}
!67 = !{!66, !19, i64 8}
!68 = !{!"_ZTSZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEEUljmE0_", !21, i64 0, !21, i64 8, !31, i64 16, !31, i64 24}
!69 = !{!68, !21, i64 0}
!70 = !{!68, !31, i64 24}
!71 = !{!68, !21, i64 8}
!72 = !{!68, !31, i64 16}
!73 = !{!"_ZTSN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE1_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_EE", !19, i64 0, !19, i64 8, !57, i64 16}
!74 = !{!73, !19, i64 8}
!75 = !{!"_ZTSZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEEUljmE1_", !21, i64 0, !21, i64 8, !31, i64 16, !31, i64 24}
!76 = !{!75, !21, i64 0}
!77 = !{!75, !21, i64 8}
!78 = !{!75, !31, i64 16}
!79 = !{!75, !31, i64 24}
!80 = !{!"_ZTSN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE2_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_EE", !19, i64 0, !19, i64 8, !57, i64 16}
!81 = !{!80, !19, i64 8}
!82 = !{!"_ZTSZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEEUljmE2_", !21, i64 0, !31, i64 8, !21, i64 16}
!83 = !{!82, !21, i64 0}
!84 = !{!82, !31, i64 8}
!85 = !{!82, !21, i64 16}
!86 = !{!"_ZTSN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE3_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_EE", !19, i64 0, !19, i64 8, !57, i64 16}
!87 = !{!86, !19, i64 8}
!88 = !{!"_ZTSZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEEUljmE3_", !21, i64 0, !31, i64 8, !21, i64 16, !31, i64 24}
!89 = !{!88, !21, i64 0}
!90 = !{!88, !31, i64 8}
!91 = !{!88, !21, i64 16}
!92 = !{!88, !31, i64 24}
!93 = !{!"_ZTSN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE4_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_EE", !19, i64 0, !19, i64 8, !57, i64 16}
!94 = !{!93, !19, i64 8}
!95 = !{!"_ZTSZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEEUljmE4_", !21, i64 0, !31, i64 8, !21, i64 16, !31, i64 24}
!96 = !{!95, !21, i64 0}
!97 = !{!95, !31, i64 8}
!98 = !{!95, !21, i64 16}
!99 = !{!95, !31, i64 24}
!100 = !{!"_ZTSN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE5_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_EE", !19, i64 0, !19, i64 8, !57, i64 16}
!101 = !{!100, !19, i64 8}
!102 = !{!"_ZTSZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEEUljmE5_", !21, i64 0, !31, i64 8, !21, i64 16}
!103 = !{!102, !21, i64 0}
!104 = !{!102, !31, i64 8}
!105 = !{!102, !21, i64 16}
!106 = !{!"bool", !10, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!"p2 _ZTS22JxlMemoryManagerStruct", !33, i64 0}
!109 = !{!"p1 _ZTSN3jxl5PlaneIN3hwy9float16_tEEE", !19, i64 0}
!110 = !{!"p1 _ZTSNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEEE", !19, i64 0}
!111 = !{!"p1 bool", !19, i64 0}
!112 = !{!"p1 _ZTSN3jxl5PlaneIjEE", !19, i64 0}
!113 = !{!"p1 float", !19, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!"_ZTSZN3jxl25ConvertChannelsToExternalEPPKNS_5PlaneIfEEmmb13JxlEndiannessmPNS_10ThreadPoolEPvmRKNS_13PixelCallbackENS_11OrientationEE3$_0", !29, i64 0}
!116 = !{!115, !29, i64 0}
!117 = !{!27, !19, i64 16}
!118 = !{!"p1 _ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !19, i64 0}
!119 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6vectorIhNS_9allocatorIhEEEELi0ELb0EEE", !118, i64 0}
!120 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6vectorIhNS_9allocatorIhEEEENS2_IS4_EEEE", !119, i64 0}
!121 = !{!"_ZTSNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEEE", !118, i64 0, !118, i64 8, !120, i64 16}
!122 = !{!121, !118, i64 0}
!123 = !{!121, !118, i64 8}
!124 = !{!"p1 omnipotent char", !19, i64 0}
!125 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !124, i64 0}
!126 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !125, i64 0}
!127 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !124, i64 0, !124, i64 8, !126, i64 16}
!128 = !{!127, !124, i64 0}
!129 = !{!127, !124, i64 8}
!130 = !{!124, !124, i64 0}
!131 = !{!118, !118, i64 0}
!132 = !{!37, !34, i64 8}
!133 = !{!34, !34, i64 0}
!134 = !{!"_ZTSN3jxl10ThreadPoolE", !19, i64 0, !19, i64 8}
!135 = !{!134, !19, i64 0}
!136 = !{!134, !19, i64 8}
!137 = !{!"_ZTSZN3jxl25ConvertChannelsToExternalEPPKNS_5PlaneIfEEmmb13JxlEndiannessmPNS_10ThreadPoolEPvmRKNS_13PixelCallbackENS_11OrientationEE3$_4", !19, i64 0}
!138 = !{!137, !19, i64 0}
!139 = !{i8 0, i8 2}
!140 = !{!"_ZTSN3jxl8StatusOrINS_6Image3IfEEEE", !10, i64 0, !42, i64 168}
!141 = !{!140, !42, i64 168}
!142 = !{!11, !11, i64 0}
!143 = !{!"_ZTSN3jxl10ThreadPool12RunCallStateIZNS_25ConvertChannelsToExternalEPPKNS_5PlaneIfEEmmb13JxlEndiannessmPS0_PvmRKNS_13PixelCallbackENS_11OrientationEE3$_2ZNS_25ConvertChannelsToExternalES6_mmbS7_mS8_S9_mSC_SD_E3$_3EE", !19, i64 0, !19, i64 8, !57, i64 16}
!144 = !{!"_ZTSN3jxl10ThreadPool12RunCallStateIZNS_25ConvertChannelsToExternalEPPKNS_5PlaneIfEEmmb13JxlEndiannessmPS0_PvmRKNS_13PixelCallbackENS_11OrientationEE3$_4ZNS_25ConvertChannelsToExternalES6_mmbS7_mS8_S9_mSC_SD_E3$_5EE", !19, i64 0, !19, i64 8, !57, i64 16}
!145 = !{!"_ZTSN3jxl10ThreadPool12RunCallStateIZNS_25ConvertChannelsToExternalEPPKNS_5PlaneIfEEmmb13JxlEndiannessmPS0_PvmRKNS_13PixelCallbackENS_11OrientationEE3$_6ZNS_25ConvertChannelsToExternalES6_mmbS7_mS8_S9_mSC_SD_E3$_7EE", !19, i64 0, !19, i64 8, !57, i64 16}
!146 = distinct !{!146, !15}
!147 = distinct !{!147, !15}
!148 = distinct !{!148, !15}
!149 = distinct !{!149, i1 true, !"_ZN3hwy6N_AVX2L5StoreINS0_4SimdItLm16ELin1EEETnPNS_9EnableIfTIXeqmlsrT_13kPrivateLanesstNS5_1TELi16EEE4typeELPv0ETnPNS4_IXaantclsr3hwyE7IsFloatIS6_EEntclsr3hwyE14IsSpecialFloatIS6_EEEE4typeELSA_0EEEvDTcl4ZerocvS5__EEES5_PS6_"}
!150 = distinct !{!150, !149, !"_ZN3hwy6N_AVX2L5StoreINS0_4SimdItLm16ELin1EEETnPNS_9EnableIfTIXeqmlsrT_13kPrivateLanesstNS5_1TELi16EEE4typeELPv0ETnPNS4_IXaantclsr3hwyE7IsFloatIS6_EEntclsr3hwyE14IsSpecialFloatIS6_EEEE4typeELSA_0EEEvDTcl4ZerocvS5__EEES5_PS6_: argument 0"}
!151 = distinct !{!151, !16}
!152 = distinct !{!152, !15}
!153 = !{!150}
!154 = distinct !{!154, !15}
!155 = distinct !{!155, !15}
!156 = distinct !{!156, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!157 = distinct !{!157, !156, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!158 = distinct !{!158, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!159 = distinct !{!159, !158, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!160 = distinct !{!160, i1 false, !"LVerDomain"}
!161 = distinct !{!161, !160}
!162 = distinct !{!162, !160}
!163 = distinct !{!163, !15, !50, !51}
!164 = distinct !{!164, !16}
!165 = distinct !{!165, !15, !50}
!166 = distinct !{!166, !15}
!167 = distinct !{!167, i1 false, !"LVerDomain"}
!168 = distinct !{!168, !167}
!169 = distinct !{!169, !167}
!170 = distinct !{!170, !15, !50, !51}
!171 = distinct !{!171, !16}
!172 = distinct !{!172, !15, !50}
!173 = distinct !{null, null, null, null}
!174 = distinct !{!174, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!175 = distinct !{!175, !174, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!176 = distinct !{!176, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!177 = distinct !{!177, !176, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!178 = distinct !{!178, i1 false, !"LVerDomain"}
!179 = distinct !{!179, !178}
!180 = distinct !{!180, !178}
!181 = distinct !{!181, !15, !50, !51}
!182 = distinct !{!182, !16}
!183 = distinct !{!183, !15, !50}
!184 = distinct !{!184, !15}
!185 = distinct !{!185, i1 false, !"LVerDomain"}
!186 = distinct !{!186, !185}
!187 = distinct !{!187, !185}
!188 = distinct !{!188, !15, !50, !51}
!189 = distinct !{!189, !16}
!190 = distinct !{!190, !15, !50}
!191 = distinct !{null, null, null, null}
!192 = distinct !{!192, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!193 = distinct !{!193, !192, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!194 = distinct !{!194, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!195 = distinct !{!195, !194, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!196 = distinct !{!196, i1 false, !"LVerDomain"}
!197 = distinct !{!197, !196}
!198 = distinct !{!198, !196}
!199 = distinct !{!199, !15, !50, !51}
!200 = distinct !{!200, !16}
!201 = distinct !{!201, !15, !50}
!202 = distinct !{!202, !15}
!203 = distinct !{!203, !15, !50, !51}
!204 = distinct !{!204, !16}
!205 = distinct !{!205, !15, !50}
!206 = distinct !{null, null, null, null}
!207 = distinct !{!207, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!208 = distinct !{!208, !207, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!209 = distinct !{!209, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!210 = distinct !{!210, !209, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!211 = distinct !{!211, !16}
!212 = distinct !{!212, !15}
!213 = distinct !{!213, !16}
!214 = distinct !{null, null, null, null}
!215 = distinct !{!215, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!216 = distinct !{!216, !215, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!217 = distinct !{!217, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!218 = distinct !{!218, !217, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!219 = distinct !{!219, !16}
!220 = distinct !{!220, !15}
!221 = distinct !{!221, !16}
!222 = distinct !{null, null, null, null}
!223 = distinct !{!223, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!224 = distinct !{!224, !223, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!225 = distinct !{!225, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!226 = distinct !{!226, !225, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!227 = distinct !{!227, !15}
!228 = distinct !{null, null, null, null}
!229 = distinct !{!229, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!230 = distinct !{!230, !229, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!231 = distinct !{!231, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!232 = distinct !{!232, !231, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!233 = distinct !{!233, !15}
!234 = distinct !{null, null, null, null}
!235 = distinct !{!235, !15}
!236 = distinct !{!236, !15}
!237 = distinct !{!237, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!238 = distinct !{!238, !237, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!239 = distinct !{!239, !15, !50, !51}
!240 = distinct !{!240, !15}
!241 = distinct !{!241, !15, !51, !50}
!242 = distinct !{null, null, null}
!243 = !{!"_ZTSNSt3__122__compressed_pair_elemIPvLi0ELb0EEE", !19, i64 0}
!244 = !{!243, !19, i64 0}
!245 = !{!29, !29, i64 0}
!246 = !{!30, !30, i64 0}
!247 = !{!31, !31, i64 0}
!248 = !{!32, !32, i64 0}
!249 = !{!157}
!250 = !{!159}
!251 = !{!161}
!252 = !{!162}
!253 = !{!168}
!254 = !{!169}
!255 = !{!175}
!256 = !{!177}
!257 = !{!179}
!258 = !{!180}
!259 = !{!186}
!260 = !{!187}
!261 = !{!193}
!262 = !{!195}
!263 = !{!197}
!264 = !{!198}
!265 = !{!208}
!266 = !{!210}
!267 = !{!216}
!268 = !{!218}
!269 = !{!224}
!270 = !{!226}
!271 = !{!230}
!272 = !{!232}
!273 = !{!238}
!274 = !{!108, !108, i64 0}
!275 = !{!109, !109, i64 0}
!276 = !{!110, !110, i64 0}
!277 = !{!33, !33, i64 0}
!278 = !{!111, !111, i64 0}
!279 = !{!112, !112, i64 0}
!280 = distinct !{!280, !15}
!281 = distinct !{null}
!282 = distinct !{!282, !15}
!283 = distinct !{null}
!284 = distinct !{!284, !15}
!285 = distinct !{null}
!286 = distinct !{!286, i1 true, !"_ZNO3jxl8StatusOrINS_6Image3IfEEE6value_Ev"}
!287 = distinct !{!287, !286, !"_ZNO3jxl8StatusOrINS_6Image3IfEEE6value_Ev: argument 0"}
!288 = distinct !{!288, i1 true, !"_ZN3jxl11CopyImageToINS_6Image3IfEEEENS_6StatusERKT_PS4_"}
!289 = distinct !{!289, !288, !"_ZN3jxl11CopyImageToINS_6Image3IfEEEENS_6StatusERKT_PS4_: argument 0"}
!290 = distinct !{!290, !15}
!291 = !{!"p1 _ZTSN3jxl4jpeg8JPEGDataE", !19, i64 0}
!292 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg8JPEGDataELi0ELb0EEE", !291, i64 0}
!293 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEEE", !292, i64 0}
!294 = !{!"_ZTSNSt3__110unique_ptrIN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEEE", !293, i64 0}
!295 = !{!"_ZTSN3jxl14ColorTransformE", !10, i64 0}
!296 = !{!"_ZTSN3jxl6FieldsE"}
!297 = !{!"_ZTSN3jxl22YCbCrChromaSubsamplingE", !296, i64 0, !10, i64 8, !10, i64 20, !10, i64 21}
!298 = !{!"_ZTSN3jxl11FrameOriginE", !11, i64 0, !11, i64 4}
!299 = !{!"_ZTSN3jxl9BlendModeE", !10, i64 0}
!300 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !10, i64 0}
!301 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !300, i64 0}
!302 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !301, i64 0}
!303 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !302, i64 0}
!304 = !{!"p1 _ZTSN3jxl13ImageMetadataE", !19, i64 0}
!305 = !{!"_ZTSN3jxl6Image3IfEE", !10, i64 0}
!306 = !{!"_ZTSN3jxl3cms10WhitePointE", !10, i64 0}
!307 = !{!"_ZTSN3jxl3cms9PrimariesE", !10, i64 0}
!308 = !{!"_ZTSN3jxl3cms15RenderingIntentE", !10, i64 0}
!309 = !{!"_ZTSN3jxl3cms10ColorSpaceE", !10, i64 0}
!310 = !{!"_ZTSN3jxl3cms16TransferFunctionE", !10, i64 0}
!311 = !{!"_ZTSN3jxl3cms22CustomTransferFunctionE", !106, i64 0, !11, i64 4, !310, i64 8}
!312 = !{!"_ZTSN3jxl3cms8CustomxyE", !11, i64 0, !11, i64 4}
!313 = !{!"_ZTSN3jxl3cms13ColorEncodingE", !306, i64 0, !307, i64 4, !308, i64 8, !106, i64 12, !127, i64 16, !309, i64 40, !106, i64 44, !311, i64 48, !312, i64 60, !312, i64 68, !312, i64 76, !312, i64 84}
!314 = !{!"_ZTSN3jxl8CustomxyE", !296, i64 0, !312, i64 8}
!315 = !{!"_ZTSN3jxl22CustomTransferFunctionE", !296, i64 0, !309, i64 8, !311, i64 12}
!316 = !{!"_ZTSN3jxl13ColorEncodingE", !296, i64 0, !106, i64 8, !106, i64 9, !313, i64 16, !314, i64 112, !315, i64 128, !314, i64 152, !314, i64 168, !314, i64 184}
!317 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl5PlaneIfEELi0ELb0EEE", !21, i64 0}
!318 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl5PlaneIfEENS_9allocatorIS3_EEEE", !317, i64 0}
!319 = !{!"_ZTSNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEEE", !21, i64 0, !21, i64 8, !318, i64 16}
!320 = !{!"_ZTSN3jxl11ImageBundleE", !23, i64 0, !294, i64 8, !295, i64 16, !297, i64 24, !298, i64 48, !11, i64 56, !11, i64 60, !106, i64 64, !106, i64 65, !299, i64 68, !303, i64 72, !304, i64 96, !305, i64 104, !316, i64 272, !319, i64 472, !17, i64 496}
!321 = !{!320, !304, i64 96}
!322 = !{!"p1 _ZTSN3jxl16ExtraChannelInfoE", !19, i64 0}
!323 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl16ExtraChannelInfoELi0ELb0EEE", !322, i64 0}
!324 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEEE", !323, i64 0}
!325 = !{!"_ZTSNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEEE", !322, i64 0, !322, i64 8, !324, i64 16}
!326 = !{!325, !322, i64 0}
!327 = !{!325, !322, i64 8}
!328 = !{!"_ZTSN3jxl12ExtraChannelE", !10, i64 0}
!329 = !{!"_ZTSN3jxl8BitDepthE", !296, i64 0, !106, i64 8, !11, i64 12, !11, i64 16}
!330 = !{!"_ZTSN3jxl16ExtraChannelInfoE", !296, i64 0, !106, i64 8, !328, i64 12, !329, i64 16, !11, i64 40, !303, i64 48, !106, i64 72, !10, i64 76, !11, i64 92}
!331 = !{!330, !328, i64 12}
!332 = !{!330, !106, i64 72}
!333 = !{!287}
!334 = !{!289}
!335 = distinct !{!335, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!336 = distinct !{!336, !335, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!337 = distinct !{!337, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!338 = distinct !{!338, !337, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!339 = distinct !{!339, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!340 = distinct !{!340, !339, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!341 = distinct !{!341, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!342 = distinct !{!342, !341, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!343 = distinct !{!343, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!344 = distinct !{!344, !343, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!345 = distinct !{!345, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!346 = distinct !{!346, !345, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!347 = !{!336}
!348 = !{!338}
!349 = !{!340}
!350 = !{!342}
!351 = !{!344}
!352 = !{!346}
!353 = distinct !{!353, i1 true, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_"}
!354 = distinct !{!354, !353, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_: argument 0"}
!355 = distinct !{!355, !15}
!356 = distinct !{!356, i1 true, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_"}
!357 = distinct !{!357, !356, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_: argument 0:It1"}
!358 = distinct !{!358, i1 true, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_"}
!359 = distinct !{!359, !358, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_: argument 0:It2"}
!360 = !{!"_ZTSN3jxl5RectTImEE", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!361 = !{!360, !17, i64 16}
!362 = !{!354}
!363 = !{!360, !17, i64 0}
!364 = !{!360, !17, i64 8}
!365 = !{!360, !17, i64 24}
!366 = !{!357}
!367 = !{!359}
!368 = distinct !{!368, i1 false, !"LVerDomain"}
!369 = distinct !{!369, !368}
!370 = distinct !{!370, !368}
!371 = distinct !{!371, !15, !50, !51}
!372 = distinct !{!372, !16}
!373 = distinct !{!373, !15, !50}
!374 = !{!369}
!375 = !{!370}
!376 = distinct !{!376, i1 false, !"LVerDomain"}
!377 = distinct !{!377, !376}
!378 = distinct !{!378, !376}
!379 = distinct !{!379, !15, !50, !51}
!380 = distinct !{!380, !16}
!381 = distinct !{!381, !15, !50}
!382 = !{!377}
!383 = !{!378}
!384 = distinct !{!384, !15, !50, !51}
!385 = distinct !{!385, !16}
!386 = distinct !{!386, !15, !50}
!387 = distinct !{!387, !16}
!388 = distinct !{!388, !16}
!389 = distinct !{!389, i1 true, !"_ZN3jxl5PlaneIN3hwy9float16_tEE6CreateEP22JxlMemoryManagerStructmmm"}
!390 = distinct !{!390, !389, !"_ZN3jxl5PlaneIN3hwy9float16_tEE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!391 = distinct !{!391, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIN3hwy9float16_tEEEE6value_Ev"}
!392 = distinct !{!392, !391, !"_ZNO3jxl8StatusOrINS_5PlaneIN3hwy9float16_tEEEE6value_Ev: argument 0"}
!393 = !{!143, !19, i64 0}
!394 = !{!"_ZTSZN3jxl25ConvertChannelsToExternalEPPKNS_5PlaneIfEEmmb13JxlEndiannessmPNS_10ThreadPoolEPvmRKNS_13PixelCallbackENS_11OrientationEE3$_2", !108, i64 0, !31, i64 8, !31, i64 16, !109, i64 24, !19, i64 32}
!395 = !{!394, !108, i64 0}
!396 = !{!394, !31, i64 8}
!397 = !{!394, !31, i64 16}
!398 = !{!390}
!399 = !{!"_ZTSN3jxl8StatusOrINS_5PlaneIN3hwy9float16_tEEEEE", !10, i64 0, !42, i64 56}
!400 = !{!399, !42, i64 56}
!401 = !{!392}
!402 = !{!394, !109, i64 24}
!403 = !{!394, !19, i64 32}
!404 = distinct !{!404, !15}
!405 = distinct !{null}
!406 = distinct !{!406, !15}
!407 = distinct !{!407, !15, !424}
!408 = distinct !{!408, !15}
!409 = distinct !{!409, !15}
!410 = distinct !{!410, !16}
!411 = !{!143, !19, i64 8}
!412 = !{!"_ZTSZN3jxl25ConvertChannelsToExternalEPPKNS_5PlaneIfEEmmb13JxlEndiannessmPNS_10ThreadPoolEPvmRKNS_13PixelCallbackENS_11OrientationEE3$_3", !31, i64 0, !110, i64 8, !21, i64 16, !109, i64 24, !31, i64 32, !29, i64 40, !32, i64 48, !33, i64 56, !31, i64 64, !111, i64 72, !30, i64 80}
!413 = !{!412, !31, i64 0}
!414 = !{!412, !110, i64 8}
!415 = !{!412, !29, i64 40}
!416 = !{!412, !109, i64 24}
!417 = !{!"p1 _ZTSN3hwy9float16_tE", !19, i64 0}
!418 = !{!417, !417, i64 0}
!419 = !{!412, !31, i64 32}
!420 = !{!412, !32, i64 48}
!421 = !{!412, !33, i64 56}
!422 = !{!412, !31, i64 64}
!423 = !{!412, !111, i64 72}
!424 = !{!"llvm.loop.unswitch.partial.disable"}
!425 = !{!412, !30, i64 80}
!426 = distinct !{null}
!427 = distinct !{null, null}
!428 = distinct !{!428, !15}
!429 = !{!"_ZTSZN3jxl25ConvertChannelsToExternalEPPKNS_5PlaneIfEEmmb13JxlEndiannessmPNS_10ThreadPoolEPvmRKNS_13PixelCallbackENS_11OrientationEE3$_1", !29, i64 0, !30, i64 8, !31, i64 16, !32, i64 24}
!430 = !{!429, !29, i64 0}
!431 = !{!429, !30, i64 8}
!432 = !{!429, !31, i64 16}
!433 = !{!27, !19, i64 0}
!434 = !{!27, !19, i64 24}
!435 = !{!429, !32, i64 24}
!436 = distinct !{!436, !15}
!437 = distinct !{!437, !15}
!438 = distinct !{!438, i1 true, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!439 = distinct !{!439, !438, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!440 = distinct !{!440, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!441 = distinct !{!441, !440, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
end_hunk_1
