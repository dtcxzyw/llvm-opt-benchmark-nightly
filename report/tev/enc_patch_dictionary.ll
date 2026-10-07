Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_patch_dictionary?download=true
inline.NumInlined: 4484
inline.NumDeleted: 2596
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3jxl23FindBestPatchDictionaryERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEb:bb.a
.sink.split.i15.i.i.i:                            ; preds = %.lr.ph.i17.i.i.i, %bb.m
  %i.cl = load atomic i32, ptr %i.ci seq_cst, align 8, !noalias !662
  %.not.i16.i.i.i = icmp ne i32 %i.cl, 0
  %i.cm = zext i1 %.not.i16.i.i.i to i32
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i15.i.i.i, %bb.m
  %.sroa.04.0.shrunk.i.i.i.i = phi i32 [ 1, %bb.m ], [ %i.cm, %.sink.split.i15.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !662
  br label %"_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbE3$_0EENS_6StatusESD_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.i"

"_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbE3$_0EENS_6StatusESD_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.i": ; preds = %bb.n, %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPS0_PNS_6AuxOutEbE3$_0EENS_6StatusESE_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_EESI_jjSO_RKT0_SQ_.exit.i.i.i"
  %.sroa.0.0.i.i.i = phi i32 [ %.sroa.04.1.i.i.i.i, %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPS0_PNS_6AuxOutEbE3$_0EENS_6StatusESE_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SH_EESI_jjSO_RKT0_SQ_.exit.i.i.i" ], [ %.sroa.04.0.shrunk.i.i.i.i, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !662
  %i.cn = icmp eq i32 %.sroa.0.0.i.i.i, 0
  br i1 %i.cn, label %.critedge363.i, label %bb.dx

.critedge363.i:                                   ; preds = %"_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbE3$_0EENS_6StatusESD_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.i", %"_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_119FindTextLikePatchesERKNS_14CompressParamsERKNS_6Image3IfEEPKNS_18PassesEncoderStateEPNS_10ThreadPoolEPNS_6AuxOutEbE3$_0EENS_6StatusESD_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread.i", %_ZN3jxl13ZeroFillImageIhEEvPNS_5PlaneIT_EE.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 3776 ; 3 uses
  %.val388.i = load ptr, ptr %i.co, align 8, !tbaa !679, !noalias !662
  %.not237.i = icmp eq ptr %.val388.i, null
  br i1 %.not237.i, label %.critedge365.i, label %bb.o

bb.o:                                             ; preds = %.critedge363.i
  %i.cp = call i32 @_ZN3jxl19DumpPlaneNormalizedERKNS_14CompressParamsEPKcRKNS_5PlaneIhEE(ptr noundef nonnull align 8 dereferenceable(648) %i.c, ptr noundef nonnull @.str.34, ptr noundef nonnull align 8 dereferenceable(56) %18) #23, !noalias !662 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %.critedge365.i, label %bb.dx

.critedge365.i:                                   ; preds = %bb.o, %.critedge363.i
  %i.cr = load atomic i32, ptr %14 seq_cst, align 4, !noalias !662 ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = icmp ne i32 %i.cr, 0                    ; 2 uses
  %cond.i = icmp eq i8 %i.e, 1
  %brmerge.i = select i1 %cond.i, i1 true, i1 %i.ct
  br i1 %brmerge.i, label %_ZN3jxlL13ApplyOverrideENS_8OverrideEb.exit.thread.i, label %_ZN3jxlL13ApplyOverrideENS_8OverrideEb.exit.thread223.i

_ZN3jxlL13ApplyOverrideENS_8OverrideEb.exit.thread223.i: ; preds = %.critedge365.i
  %i.cu = load ptr, ptr %13, align 8, !tbaa !203, !noalias !662
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !204, !noalias !662
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !205, !noalias !662
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !noalias !662
  br label %bb.dx

_ZN3jxlL13ApplyOverrideENS_8OverrideEb.exit.thread.i: ; preds = %.critedge365.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19, !noalias !662
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.cz = icmp ult i64 %i.x, 4294967296
  %i.da = icmp ult i64 %i.aa, 4294967296
  %or.cond761.i = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %or.cond761.i, label %bb.p, label %_ZN3jxl8StatusOrINS_5PlaneIhEEED2Ev.exit498.i

bb.p:                                             ; preds = %_ZN3jxlL13ApplyOverrideENS_8OverrideEb.exit.thread.i
  %i.db = trunc nuw i64 %i.aa to i32
  %i.dc = trunc nuw i64 %i.x to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !681
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %7, i32 noundef %i.dc, i32 noundef %i.db, i64 noundef 1) #23, !noalias !681
  %i.dd = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %i.j, i64 noundef 0) #23, !noalias !681 ; 2 uses
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 56 ; 4 uses
  br i1 %i.de, label %.critedge.i401.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.dd, ptr %i.df, align 8, !tbaa !192, !alias.scope !680, !noalias !662
  br label %_ZN3jxl5PlaneIhE6CreateEP22JxlMemoryManagerStructmmm.exit402.i

.critedge.i401.i:                                 ; preds = %bb.p
  store i32 0, ptr %i.df, align 8, !tbaa !192, !alias.scope !680, !noalias !662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %21, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 24, i1 false), !noalias !662
  %i.dg = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.dh) #23, !noalias !662
  %i.di = getelementptr inbounds nuw i8, ptr %21, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !193, !noalias !681
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !193, !alias.scope !680, !noalias !662
  br label %_ZN3jxl5PlaneIhE6CreateEP22JxlMemoryManagerStructmmm.exit402.i

_ZN3jxl5PlaneIhE6CreateEP22JxlMemoryManagerStructmmm.exit402.i: ; preds = %.critedge.i401.i, %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dl) #23, !noalias !662
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !681
  %.pre553.i = load i32, ptr %i.df, align 8, !tbaa !192, !noalias !662 ; 2 uses
  %i.dm = icmp eq i32 %.pre553.i, 0
  br i1 %i.dm, label %.critedge367.i, label %_ZN3jxl8StatusOrINS_5PlaneIhEEED2Ev.exit498.i

.critedge367.i:                                   ; preds = %_ZN3jxl5PlaneIhE6CreateEP22JxlMemoryManagerStructmmm.exit402.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19, !noalias !662
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull align 8 dereferenceable(60) %21, i64 24, i1 false), !noalias !662
  %i.dn = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.do) #23, !noalias !662
  %i.dp = getelementptr inbounds nuw i8, ptr %22, i64 48
  %i.dq = getelementptr inbounds nuw i8, ptr %21, i64 48
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !193, !noalias !683
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !193, !alias.scope !682, !noalias !662
  %i.ds = load i32, ptr %22, align 8, !tbaa !194, !noalias !662
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_ZN3jxl13ZeroFillImageIhEEvPNS_5PlaneIT_EE.exit407.i, label %.preheader.i403.i

.preheader.i403.i:                                ; preds = %.critedge367.i
  %i.du = getelementptr inbounds nuw i8, ptr %22, i64 4 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !100, !noalias !662
  %.not.i404.i = icmp eq i32 %i.dv, 0
  br i1 %.not.i404.i, label %_ZN3jxl13ZeroFillImageIhEEvPNS_5PlaneIT_EE.exit407.i, label %.lr.ph.i405.i

.lr.ph.i405.i:                                    ; preds = %.preheader.i403.i
  %i.dw = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %22, i64 16
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i405.i
  %.07.i406.i = phi i64 [ 0, %.lr.ph.i405.i ], [ %i.ee, %bb.r ] ; 2 uses
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !102, !noalias !662
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !101, !noalias !662
  %i.ea = mul i64 %i.dz, %.07.i406.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ea ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eb, i64 64) ]
  %i.ec = load i32, ptr %22, align 8, !tbaa !194, !noalias !662
  %i.ed = zext i32 %i.ec to i64
  call void @llvm.memset.p0.i64(ptr align 64 %i.eb, i8 0, i64 %i.ed, i1 false), !noalias !662
  %i.ee = add nuw nsw i64 %.07.i406.i, 1          ; 2 uses
  %i.ef = load i32, ptr %i.du, align 4, !tbaa !100, !noalias !662
  %i.eg = zext i32 %i.ef to i64
  %i.eh = icmp samesign ult i64 %i.ee, %i.eg
  br i1 %i.eh, label %bb.r, label %_ZN3jxl13ZeroFillImageIhEEvPNS_5PlaneIT_EE.exit407.i, !llvm.loop !568

_ZN3jxl13ZeroFillImageIhEEvPNS_5PlaneIT_EE.exit407.i: ; preds = %bb.r, %.preheader.i403.i, %.critedge367.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19, !noalias !662
  call void @_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.210") align 8 %23, ptr noundef %i.j, i64 noundef %i.x, i64 noundef %i.aa) #24, !noalias !662
  %i.ei = getelementptr inbounds nuw i8, ptr %23, i64 168 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !207, !noalias !662 ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %.critedge369.i, label %.thread231.i

.critedge369.i:                                   ; preds = %_ZN3jxl13ZeroFillImageIhEEvPNS_5PlaneIT_EE.exit407.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19, !noalias !662
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.el = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.el, i8 0, i64 144, i1 false), !alias.scope !684, !noalias !662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %24, ptr noundef nonnull align 8 dereferenceable(172) %23, i64 24, i1 false), !noalias !662
  %i.em = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.en = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %i.em) #23, !noalias !662 ; 0 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !193, !noalias !685
  %i.eq = getelementptr inbounds nuw i8, ptr %24, i64 48
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !193, !alias.scope !684, !noalias !662
  %i.er = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.es = getelementptr inbounds nuw i8, ptr %24, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.es, ptr noundef nonnull align 8 dereferenceable(56) %i.er, i64 24, i1 false), !noalias !662
  %i.et = getelementptr inbounds nuw i8, ptr %24, i64 80 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 2 uses
  %i.ev = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %i.eu) #23, !noalias !662 ; 0 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %23, i64 104
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !193, !noalias !685
  %i.ey = getelementptr inbounds nuw i8, ptr %24, i64 104
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !193, !alias.scope !684, !noalias !662
  %i.ez = getelementptr inbounds nuw i8, ptr %23, i64 112
  %i.fa = getelementptr inbounds nuw i8, ptr %24, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fa, ptr noundef nonnull align 8 dereferenceable(56) %i.ez, i64 24, i1 false), !noalias !662
  %i.fb = getelementptr inbounds nuw i8, ptr %24, i64 136 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %23, i64 136 ; 2 uses
  %i.fd = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %i.fc) #23, !noalias !662 ; 0 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %23, i64 160
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !193, !noalias !685
  %i.fg = getelementptr inbounds nuw i8, ptr %24, i64 160
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !193, !alias.scope !684, !noalias !662
  %i.fh = getelementptr inbounds nuw i8, ptr %24, i64 4 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !100, !noalias !662 ; 2 uses
  %.not13.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not13.i.i, label %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i, label %.lr.ph.i409.i

.lr.ph.i409.i:                                    ; preds = %.critedge369.i
  %i.fk = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.fl = load i32, ptr %24, align 8, !tbaa !194, !noalias !662 ; 3 uses
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i, label %.lr.ph.split.i.i

._crit_edge.i.i:                                  ; preds = %bb.x
  %.not13.1.i.i = icmp eq i32 %i.gz, 0
  br i1 %.not13.1.i.i, label %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i, label %.lr.ph.1.i.i

.lr.ph.1.i.i:                                     ; preds = %._crit_edge.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %24, i64 96
  %i.fo = icmp eq i32 %.pr.i.i, 0
  br i1 %i.fo, label %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i, label %.lr.ph.split.1.i.i

.lr.ph.split.1.i.i:                               ; preds = %.lr.ph.1.i.i, %bb.t
  %.pr41.i556.i = phi i32 [ %.pr41.i.i, %bb.t ], [ %.pr.i.i, %.lr.ph.1.i.i ]
  %i.fp = phi i32 [ %i.fx, %bb.t ], [ %i.gz, %.lr.ph.1.i.i ]
  %i.fq = phi i32 [ %i.fy, %bb.t ], [ %.pr.i.i, %.lr.ph.1.i.i ] ; 2 uses
  %.011.1.i.i = phi i64 [ %i.fz, %bb.t ], [ 0, %.lr.ph.1.i.i ] ; 2 uses
  %.not.1.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not.1.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.1.i.i
  %i.fr = zext i32 %i.fq to i64
  %i.fs = load ptr, ptr %i.fn, align 8, !tbaa !102, !noalias !662 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fs, i64 64) ]
  %i.ft = load i64, ptr %i.fi, align 8, !tbaa !101, !noalias !662
  %i.fu = mul i64 %i.ft, %.011.1.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fu ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fv, i64 64) ]
  %i.fw = shl nuw nsw i64 %i.fr, 2
  call void @llvm.memset.p0.i64(ptr align 64 %i.fv, i8 0, i64 %i.fw, i1 false), !noalias !662
  %.pre17.i.i = load i32, ptr %24, align 8, !tbaa !194, !noalias !662 ; 2 uses
  %.pre19.i.i = load i32, ptr %i.fh, align 4, !tbaa !100, !noalias !662
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.1.i.i
  %.pr41.i.i = phi i32 [ %.pre17.i.i, %bb.s ], [ %.pr41.i556.i, %.lr.ph.split.1.i.i ] ; 3 uses
  %i.fx = phi i32 [ %.pre19.i.i, %bb.s ], [ %i.fp, %.lr.ph.split.1.i.i ] ; 4 uses
  %i.fy = phi i32 [ %.pre17.i.i, %bb.s ], [ 0, %.lr.ph.split.1.i.i ]
  %i.fz = add nuw nsw i64 %.011.1.i.i, 1          ; 2 uses
  %i.ga = zext i32 %i.fx to i64
  %i.gb = icmp samesign ult i64 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph.split.1.i.i, label %._crit_edge.1.i.i, !llvm.loop !577

._crit_edge.1.i.i:                                ; preds = %bb.t
  %.not13.2.i.i = icmp eq i32 %i.fx, 0
  br i1 %.not13.2.i.i, label %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i, label %.lr.ph.2.i.i

.lr.ph.2.i.i:                                     ; preds = %._crit_edge.1.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %24, i64 152
  %i.gd = icmp eq i32 %.pr41.i.i, 0
  br i1 %i.gd, label %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i, label %.lr.ph.split.2.i.i

.lr.ph.split.2.i.i:                               ; preds = %.lr.ph.2.i.i, %bb.v
  %i.ge = phi i32 [ %i.gm, %bb.v ], [ %i.fx, %.lr.ph.2.i.i ]
  %i.gf = phi i32 [ %i.gn, %bb.v ], [ %.pr41.i.i, %.lr.ph.2.i.i ] ; 2 uses
  %.011.2.i.i = phi i64 [ %i.go, %bb.v ], [ 0, %.lr.ph.2.i.i ] ; 2 uses
  %.not.2.i.i = icmp eq i32 %i.gf, 0
  br i1 %.not.2.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.2.i.i
  %i.gg = zext i32 %i.gf to i64
  %i.gh = load ptr, ptr %i.gc, align 8, !tbaa !102, !noalias !662 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gh, i64 64) ]
  %i.gi = load i64, ptr %i.fi, align 8, !tbaa !101, !noalias !662
  %i.gj = mul i64 %i.gi, %.011.2.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gk, i64 64) ]
  %i.gl = shl nuw nsw i64 %i.gg, 2
  call void @llvm.memset.p0.i64(ptr align 64 %i.gk, i8 0, i64 %i.gl, i1 false), !noalias !662
  %.pre20.i.i = load i32, ptr %24, align 8, !tbaa !194, !noalias !662
  %.pre22.i.i = load i32, ptr %i.fh, align 4, !tbaa !100, !noalias !662
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.split.2.i.i
  %i.gm = phi i32 [ %.pre22.i.i, %bb.u ], [ %i.ge, %.lr.ph.split.2.i.i ] ; 2 uses
  %i.gn = phi i32 [ %.pre20.i.i, %bb.u ], [ 0, %.lr.ph.split.2.i.i ]
  %i.go = add nuw nsw i64 %.011.2.i.i, 1          ; 2 uses
  %i.gp = zext i32 %i.gm to i64
  %i.gq = icmp samesign ult i64 %i.go, %i.gp
  br i1 %i.gq, label %.lr.ph.split.2.i.i, label %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i, !llvm.loop !577

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i409.i, %bb.x
  %.pr.i554.i = phi i32 [ %.pr.i.i, %bb.x ], [ %i.fl, %.lr.ph.i409.i ]
  %i.gr = phi i32 [ %i.gz, %bb.x ], [ %i.fj, %.lr.ph.i409.i ]
  %i.gs = phi i32 [ %i.ha, %bb.x ], [ %i.fl, %.lr.ph.i409.i ] ; 2 uses
  %.011.i.i = phi i64 [ %i.hb, %bb.x ], [ 0, %.lr.ph.i409.i ] ; 2 uses
  %.not.i410.i = icmp eq i32 %i.gs, 0
  br i1 %.not.i410.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.i.i
  %i.gt = zext i32 %i.gs to i64
  %i.gu = load ptr, ptr %i.fk, align 8, !tbaa !102, !noalias !662 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gu, i64 64) ]
  %i.gv = load i64, ptr %i.fi, align 8, !tbaa !101, !noalias !662
  %i.gw = mul i64 %i.gv, %.011.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gx, i64 64) ]
  %i.gy = shl nuw nsw i64 %i.gt, 2
  call void @llvm.memset.p0.i64(ptr align 64 %i.gx, i8 0, i64 %i.gy, i1 false), !noalias !662
  %.pre.i.i = load i32, ptr %24, align 8, !tbaa !194, !noalias !662 ; 2 uses
  %.pre16.i.i = load i32, ptr %i.fh, align 4, !tbaa !100, !noalias !662
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.split.i.i
  %.pr.i.i = phi i32 [ %.pre.i.i, %bb.w ], [ %.pr.i554.i, %.lr.ph.split.i.i ] ; 4 uses
  %i.gz = phi i32 [ %.pre16.i.i, %bb.w ], [ %i.gr, %.lr.ph.split.i.i ] ; 4 uses
  %i.ha = phi i32 [ %.pre.i.i, %bb.w ], [ 0, %.lr.ph.split.i.i ]
  %i.hb = add nuw nsw i64 %.011.i.i, 1            ; 2 uses
  %i.hc = zext i32 %i.gz to i64
  %i.hd = icmp samesign ult i64 %i.hb, %i.hc
  br i1 %i.hd, label %.lr.ph.split.i.i, label %._crit_edge.i.i, !llvm.loop !577

_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i: ; preds = %bb.v, %.lr.ph.2.i.i, %._crit_edge.1.i.i, %.lr.ph.1.i.i, %._crit_edge.i.i, %.lr.ph.i409.i, %.critedge369.i
  %i.he = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !102, !noalias !662 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hf, i64 64) ]
  %i.hg = getelementptr inbounds nuw i8, ptr %24, i64 96
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !102, !noalias !662 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hh, i64 64) ]
  %i.hi = getelementptr inbounds nuw i8, ptr %24, i64 152
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !102, !noalias !662 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hj, i64 64) ]
  %i.hk = load i64, ptr %i.fi, align 8, !tbaa !101, !noalias !662
  %i.hl = lshr i64 %i.hk, 2                       ; 8 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !102, !noalias !662 ; 8 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hn, i64 64) ]
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !101, !noalias !662 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19, !noalias !662
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false), !noalias !662
  %i.hq = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 18 uses
  br i1 %i.ct, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEEC2EmmS6_.exit.i.i, label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE7reserveEm.exit.i

_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEEC2EmmS6_.exit.i.i: ; preds = %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i
  %i.hr = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.hs = shl nuw nsw i64 %i.cs, 9                ; 2 uses
  %i.ht = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #20, !noalias !662 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hs
  %i.hv = load ptr, ptr %i.hr, align 8, !tbaa !690, !noalias !662 ; 2 uses
  %i.hw = load ptr, ptr %25, align 8, !tbaa !691, !noalias !662 ; 5 uses
  %.not13.i.i.i.i = icmp eq ptr %i.hv, %i.hw
  br i1 %.not13.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i411.i

.lr.ph.i.i.i411.i:                                ; preds = %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEEC2EmmS6_.exit.i.i, %.lr.ph.i.i.i411.i
  %i.hx = phi ptr [ %i.hy, %.lr.ph.i.i.i411.i ], [ %i.ht, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEEC2EmmS6_.exit.i.i ]
  %.sroa.18.014.i.i.i.i = phi ptr [ %i.hz, %.lr.ph.i.i.i411.i ], [ %i.hv, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEEC2EmmS6_.exit.i.i ]
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 -16 ; 3 uses
  %i.hz = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hy, ptr noundef nonnull align 4 dereferenceable(16) %i.hz, i64 16, i1 false), !tbaa.struct !692, !noalias !662
  %.not.i.i.i412.i = icmp eq ptr %i.hz, %i.hw
  br i1 %.not.i.i.i412.i, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i411.i, !llvm.loop !578

_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i411.i, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEEC2EmmS6_.exit.i.i
  %storemerge.i.i = phi ptr [ %i.ht, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEEC2EmmS6_.exit.i.i ], [ %i.hy, %.lr.ph.i.i.i411.i ]
  store ptr %storemerge.i.i, ptr %25, align 8, !tbaa !693, !noalias !662
  store ptr %i.ht, ptr %i.hr, align 8, !tbaa !693, !noalias !662
  %i.ia = load ptr, ptr %i.hq, align 8, !tbaa !693, !noalias !662
  store ptr %i.hu, ptr %i.hq, align 8, !tbaa !693, !noalias !662
  %.not.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE7reserveEm.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hw to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.id) #21, !noalias !662
  br label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE7reserveEm.exit.i

_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE7reserveEm.exit.i: ; preds = %bb.y, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i, %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i
  br i1 %i.bw, label %.preheader254.i, label %.loopexit255.i

.preheader254.i:                                  ; preds = %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE7reserveEm.exit.i
  %i.ie = add nsw i64 %i.bo, -1                   ; 2 uses
  %i.if = icmp ugt i64 %i.ie, 1
  br i1 %i.if, label %.lr.ph.i, label %.loopexit255.i

.lr.ph.i:                                         ; preds = %.preheader254.i
  %i.ig = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.ih = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 16 uses
  %.pre559.i = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !662 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge343.i, %.lr.ph.i
  %i.ij = phi i64 [ %.pre559.i, %.lr.ph.i ], [ %i.pe, %._crit_edge343.i ] ; 2 uses
  %i.ik = phi i64 [ %.pre559.i, %.lr.ph.i ], [ %i.pf, %._crit_edge343.i ] ; 2 uses
  %.0291346.i = phi i64 [ 1, %.lr.ph.i ], [ %i.pg, %._crit_edge343.i ] ; 6 uses
  %i.il = load ptr, ptr %i.ig, align 8, !tbaa !102, !noalias !662
  %i.im = load i64, ptr %i.ih, align 8, !tbaa !101, !noalias !662
  %i.in = mul i64 %i.im, %.0291346.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.in ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.io, i64 64) ]
  %i.ip = add i64 %i.ik, -3
  %i.iq = icmp ult i64 %i.ip, -2
  br i1 %i.iq, label %.lr.ph342.split.us.i.preheader, label %._crit_edge343.i

.lr.ph342.split.us.i.preheader:                   ; preds = %bb.z
  %i.ir = shl i64 %.0291346.i, 34
  %.sroa.8161.0.insert.ext.us.i = shl i64 %.0291346.i, 34 ; 3 uses
  %i.is = ashr exact i64 %.sroa.8161.0.insert.ext.us.i, 32
  %i.it = mul i64 %i.is, %i.hp
  %i.iu = getelementptr i8, ptr %i.hn, i64 %i.it
  %i.iv = shl i64 %.0291346.i, 34
  %.sroa.8161.0.insert.ext.us.i.1 = or disjoint i64 %i.iv, 4294967296 ; 3 uses
  %i.iw = ashr exact i64 %.sroa.8161.0.insert.ext.us.i.1, 32
  %i.ix = mul i64 %i.iw, %i.hp
  %i.iy = getelementptr i8, ptr %i.hn, i64 %i.ix
  %i.iz = shl i64 %.0291346.i, 34
  %.sroa.8161.0.insert.ext.us.i.2 = or disjoint i64 %i.iz, 8589934592 ; 3 uses
  %i.ja = ashr exact i64 %.sroa.8161.0.insert.ext.us.i.2, 32
  %i.jb = mul i64 %i.ja, %i.hp
  %i.jc = getelementptr i8, ptr %i.hn, i64 %i.jb
  %i.jd = or disjoint i64 %i.ir, 12884901888      ; 3 uses
  %i.je = ashr exact i64 %i.jd, 32
  %i.jf = mul i64 %i.je, %i.hp
  %i.jg = getelementptr i8, ptr %i.hn, i64 %i.jf
  br label %.lr.ph342.split.us.i

.lr.ph342.split.us.i:                             ; preds = %.lr.ph342.split.us.i.preheader, %..loopexit253_crit_edge.split.us.i
  %i.jh = phi i64 [ %i.kw, %..loopexit253_crit_edge.split.us.i ], [ %i.ij, %.lr.ph342.split.us.i.preheader ] ; 2 uses
  %.0292339.us.i = phi i64 [ %i.kx, %..loopexit253_crit_edge.split.us.i ], [ 1, %.lr.ph342.split.us.i.preheader ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.io, i64 %.0292339.us.i
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !72, !noalias !662
  %.not361.us.i = icmp eq i8 %i.jj, 0
  br i1 %.not361.us.i, label %..loopexit253_crit_edge.split.us.i, label %.lr.ph338.us.i

.lr.ph338.us.i:                                   ; preds = %.lr.ph342.split.us.i
  %i.jk = shl i64 %.0292339.us.i, 2               ; 6 uses
  %i.jl = add i64 %i.jk, 4                        ; 4 uses
  %.not483.i = icmp eq i64 %i.jk, -4
  br i1 %.not483.i, label %..loopexit253_crit_edge.split.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph338.us.i, %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i
  %.0332335.us.i = phi i64 [ %i.ku, %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i ], [ %i.jk, %.lr.ph338.us.i ] ; 4 uses
  %i.jm = load ptr, ptr %i.ii, align 8, !tbaa !690, !noalias !662 ; 5 uses
  %i.jn = load ptr, ptr %i.hq, align 8, !tbaa !693, !noalias !662 ; 2 uses
  %i.jo = icmp ult ptr %i.jm, %i.jn
  br i1 %i.jo, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.us.i.preheader
  %i.jp = load ptr, ptr %25, align 8, !tbaa !691, !noalias !662
  %i.jq = ptrtoint ptr %i.jm to i64
  %i.jr = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.js = sub i64 %i.jq, %i.jr                    ; 2 uses
  %i.jt = ashr exact i64 %i.js, 4
  %i.ju = add nsw i64 %i.jt, 1                    ; 2 uses
  %i.jv = icmp ugt i64 %i.ju, 1152921504606846975
  br i1 %i.jv, label %.split.us.i, label %_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i.us.i

_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i.us.i: ; preds = %bb.aa
  %i.jw = ptrtoint ptr %i.jn to i64
  %i.jx = sub i64 %i.jw, %i.jr                    ; 2 uses
  %.not.i.i.i413.us.i = icmp ult i64 %i.jx, 9223372036854775792
  %i.jy = ashr exact i64 %i.jx, 3
  %.sroa.speculated.i.i.i.us.i = call i64 @llvm.umax.i64(i64 %i.jy, i64 %i.ju)
  %.0.i.i.i.us.i = select i1 %.not.i.i.i413.us.i, i64 %.sroa.speculated.i.i.i.us.i, i64 1152921504606846975 ; 4 uses
  %i.jz = icmp ne i64 %.0.i.i.i.us.i, 0
  call void @llvm.assume(i1 %i.jz)
  %i.ka = icmp ugt i64 %.0.i.i.i.us.i, 1152921504606846975
  br i1 %i.ka, label %.split345.us.i, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i: ; preds = %_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i.us.i
  %i.kb = shl nuw i64 %.0.i.i.i.us.i, 4
  %i.kc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kb) #20, !noalias !662 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.js ; 5 uses
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %.0.i.i.i.us.i
  %.sroa.0148.0.insert.ext.us.i = and i64 %.0332335.us.i, 4294967295
  %.sroa.0148.0.insert.insert.us.i = or disjoint i64 %.sroa.0148.0.insert.ext.us.i, %.sroa.8161.0.insert.ext.us.i ; 2 uses
  store i64 %.sroa.0148.0.insert.insert.us.i, ptr %i.kd, align 4, !tbaa !209, !noalias !662
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store i64 %.sroa.0148.0.insert.insert.us.i, ptr %i.kf, align 4, !tbaa !209, !noalias !662
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 3 uses
  %i.kh = load ptr, ptr %i.ii, align 8, !tbaa !690, !noalias !662 ; 2 uses
  %i.ki = load ptr, ptr %25, align 8, !tbaa !691, !noalias !662 ; 5 uses
  %.not13.i.i.i.i.us.i = icmp eq ptr %i.kh, %i.ki
  br i1 %.not13.i.i.i.i.us.i, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i, label %.lr.ph.i.i.i.i.us.i

.lr.ph.i.i.i.i.us.i:                              ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i, %.lr.ph.i.i.i.i.us.i
  %i.kj = phi ptr [ %i.kk, %.lr.ph.i.i.i.i.us.i ], [ %i.kd, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i ]
  %.sroa.18.014.i.i.i.i.us.i = phi ptr [ %i.kl, %.lr.ph.i.i.i.i.us.i ], [ %i.kh, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i ]
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 -16 ; 3 uses
  %i.kl = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i.us.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kk, ptr noundef nonnull align 4 dereferenceable(16) %i.kl, i64 16, i1 false), !tbaa.struct !692, !noalias !662
  %.not.i.i.i.i.us.i = icmp eq ptr %i.kl, %i.ki
  br i1 %.not.i.i.i.i.us.i, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i, label %.lr.ph.i.i.i.i.us.i, !llvm.loop !578

_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i: ; preds = %.lr.ph.i.i.i.i.us.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i
  %storemerge.i.i.us.i = phi ptr [ %i.kd, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i ], [ %i.kk, %.lr.ph.i.i.i.i.us.i ]
  store ptr %storemerge.i.i.us.i, ptr %25, align 8, !tbaa !693, !noalias !662
  store ptr %i.kg, ptr %i.ii, align 8, !tbaa !693, !noalias !662
  %i.km = load ptr, ptr %i.hq, align 8, !tbaa !693, !noalias !662
  store ptr %i.ke, ptr %i.hq, align 8, !tbaa !693, !noalias !662
  %.not.i5.i.i.us.i = icmp eq ptr %i.ki, null
  br i1 %.not.i5.i.i.us.i, label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = ptrtoint ptr %i.ki to i64
end_hunk_0
begin_hunk_1_@_ZN3jxl23FindBestPatchDictionaryERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEb:bb.a
  %i.bcj = load i8, ptr %i.bci, align 1, !tbaa !72
  %.not167.us.us.epil = icmp eq i8 %i.bcj, 0
  br i1 %.not167.us.us.epil, label %bb.ex, label %._crit_edge538.us

bb.ex:                                            ; preds = %bb.ew
  %i.bck = add i64 %.1148531.us.us.epil, 1        ; 2 uses
  %exitcond.not.epil = icmp eq i64 %i.bck, %i.bbq
  br i1 %exitcond.not.epil, label %._crit_edge538.us, label %bb.ew, !llvm.loop !606

._crit_edge538.us:                                ; preds = %bb.ew, %bb.ex, %._crit_edge538.us.unr-lcssa
  %.1148.lcssa.us.us.lcssa = phi i64 [ %.1148.lcssa.us.us.1, %._crit_edge538.us.unr-lcssa ], [ %.1148531.us.us.epil, %bb.ew ], [ %i.bbq, %bb.ex ]
  %.1150.us.us.lcssa = phi i1 [ %.1150.us.us.1, %._crit_edge538.us.unr-lcssa ], [ true, %bb.ew ], [ %.0149536.us.us.epil.init, %bb.ex ]
  br i1 %.1150.us.us.lcssa, label %bb.er, label %.thread435

._crit_edge:                                      ; preds = %bb.er
  %i.bcl = add nuw i64 %.0553, 1                  ; 2 uses
  %i.bcm = add i64 %i.bcl, %i.bbi
  %.not = icmp ugt i64 %i.bcm, %i.baf
  br i1 %.not, label %.thread442, label %.preheader473, !llvm.loop !608

.thread435:                                       ; preds = %.preheader471.us, %._crit_edge538.us
  %i.bcn = load ptr, ptr %35, align 8, !tbaa !233
  %i.bco = getelementptr inbounds nuw [16 x i8], ptr %i.bcn, i64 %.0156569 ; 2 uses
  store i64 %storemerge543.us, ptr %i.bco, align 8, !tbaa !708
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 8
  store i64 %.0553, ptr %i.bcp, align 8, !tbaa !709
  %i.bcq = add i64 %storemerge543.us, %i.bbg
  %i.bcr = icmp ult i64 %storemerge543.us, %i.bcq
  br i1 %i.bcr, label %.preheader472.preheader, label %._crit_edge567.split

.preheader472.preheader:                          ; preds = %.thread435
  %i.bcs = mul i64 %i.bbe, %.0553
  %i.bct = getelementptr i8, ptr %i.bbd, i64 %storemerge543.us
  %i.bcu = getelementptr i8, ptr %i.bct, i64 %i.bcs ; 9 uses
  %xtraiter1370 = and i64 %i.bbi, 7               ; 3 uses
  %i.bcv = icmp ult i64 %i.bbj, 7
  br i1 %i.bcv, label %.preheader472.epil.preheader, label %.preheader472.preheader.new

.preheader472.preheader.new:                      ; preds = %.preheader472.preheader
  %unroll_iter1373 = and i64 %i.bbi, -8
  br label %.preheader472

.preheader472:                                    ; preds = %.preheader472, %.preheader472.preheader.new
  %indvar = phi i64 [ 0, %.preheader472.preheader.new ], [ %indvar.next.7, %.preheader472 ] ; 9 uses
  %niter1374 = phi i64 [ 0, %.preheader472.preheader.new ], [ %niter1374.next.7, %.preheader472 ]
  %i.bcw = mul i64 %i.bbe, %indvar
  %scevgep = getelementptr i8, ptr %i.bcu, i64 %i.bcw
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 1, i64 %i.bbg, i1 false), !tbaa !72
  %indvar.next = or disjoint i64 %indvar, 1
  %i.bcx = mul i64 %i.bbe, %indvar.next
  %scevgep.1 = getelementptr i8, ptr %i.bcu, i64 %i.bcx
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.1, i8 1, i64 %i.bbg, i1 false), !tbaa !72
  %indvar.next.1 = or disjoint i64 %indvar, 2
  %i.bcy = mul i64 %i.bbe, %indvar.next.1
  %scevgep.2 = getelementptr i8, ptr %i.bcu, i64 %i.bcy
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.2, i8 1, i64 %i.bbg, i1 false), !tbaa !72
  %indvar.next.2 = or disjoint i64 %indvar, 3
  %i.bcz = mul i64 %i.bbe, %indvar.next.2
  %scevgep.3 = getelementptr i8, ptr %i.bcu, i64 %i.bcz
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.3, i8 1, i64 %i.bbg, i1 false), !tbaa !72
  %indvar.next.3 = or disjoint i64 %indvar, 4
  %i.bda = mul i64 %i.bbe, %indvar.next.3
  %scevgep.4 = getelementptr i8, ptr %i.bcu, i64 %i.bda
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.4, i8 1, i64 %i.bbg, i1 false), !tbaa !72
  %indvar.next.4 = or disjoint i64 %indvar, 5
  %i.bdb = mul i64 %i.bbe, %indvar.next.4
  %scevgep.5 = getelementptr i8, ptr %i.bcu, i64 %i.bdb
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.5, i8 1, i64 %i.bbg, i1 false), !tbaa !72
  %indvar.next.5 = or disjoint i64 %indvar, 6
  %i.bdc = mul i64 %i.bbe, %indvar.next.5
  %scevgep.6 = getelementptr i8, ptr %i.bcu, i64 %i.bdc
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.6, i8 1, i64 %i.bbg, i1 false), !tbaa !72
  %indvar.next.6 = or disjoint i64 %indvar, 7
  %i.bdd = mul i64 %i.bbe, %indvar.next.6
  %scevgep.7 = getelementptr i8, ptr %i.bcu, i64 %i.bdd
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.7, i8 1, i64 %i.bbg, i1 false), !tbaa !72
  %indvar.next.7 = add i64 %indvar, 8             ; 2 uses
  %niter1374.next.7 = add i64 %niter1374, 8       ; 2 uses
  %niter1374.ncmp.7 = icmp eq i64 %niter1374.next.7, %unroll_iter1373
  br i1 %niter1374.ncmp.7, label %._crit_edge567.split.loopexit.unr-lcssa, label %.preheader472, !llvm.loop !609

._crit_edge567.split.loopexit.unr-lcssa:          ; preds = %.preheader472
  %lcmp.mod1371.not = icmp eq i64 %xtraiter1370, 0
  br i1 %lcmp.mod1371.not, label %._crit_edge567.split, label %.preheader472.epil.preheader

.preheader472.epil.preheader:                     ; preds = %._crit_edge567.split.loopexit.unr-lcssa, %.preheader472.preheader
  %indvar.epil.init = phi i64 [ 0, %.preheader472.preheader ], [ %indvar.next.7, %._crit_edge567.split.loopexit.unr-lcssa ]
  %lcmp.mod1372 = icmp ne i64 %xtraiter1370, 0
  call void @llvm.assume(i1 %lcmp.mod1372)
  br label %.preheader472.epil

.preheader472.epil:                               ; preds = %.preheader472.epil, %.preheader472.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader472.epil.preheader ], [ %indvar.next.epil, %.preheader472.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader472.epil.preheader ], [ %epil.iter.next, %.preheader472.epil ]
  %i.bde = mul i64 %i.bbe, %indvar.epil
  %scevgep.epil = getelementptr i8, ptr %i.bcu, i64 %i.bde
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.epil, i8 1, i64 %i.bbg, i1 false), !tbaa !72
  %indvar.next.epil = add i64 %indvar.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1370
  br i1 %epil.iter.cmp.not, label %._crit_edge567.split, label %.preheader472.epil, !llvm.loop !610

._crit_edge567.split:                             ; preds = %._crit_edge567.split.loopexit.unr-lcssa, %.preheader472.epil, %.thread435.thread, %.thread435
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.0400568, i64 %i.bbl) ; 2 uses
  %i.bdf = add nuw i64 %.0156569, 1               ; 2 uses
  %exitcond694.not = icmp eq i64 %i.bdf, %i.ayr
  br i1 %exitcond694.not, label %.thread442, label %.lr.ph, !llvm.loop !611

.thread442:                                       ; preds = %._crit_edge567.split, %.lr.ph, %._crit_edge
  %.0400485 = phi i64 [ %.0400568, %._crit_edge ], [ %.0400568, %.lr.ph ], [ %.sroa.speculated, %._crit_edge567.split ] ; 2 uses
  %.2159 = phi i1 [ false, %._crit_edge ], [ false, %.lr.ph ], [ %.not552, %._crit_edge567.split ]
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.azp) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %.pr445 = load i32, ptr %i.azk, align 8, !tbaa !192
  %i.bdg = icmp eq i32 %.pr445, 0
  br i1 %i.bdg, label %bb.ey, label %_ZN3jxl8StatusOrINS_5PlaneIhEEED2Ev.exit

bb.ey:                                            ; preds = %.thread442
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.azl) #23
  br label %_ZN3jxl8StatusOrINS_5PlaneIhEEED2Ev.exit

_ZN3jxl8StatusOrINS_5PlaneIhEEED2Ev.exit:         ; preds = %.thread442, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br i1 %.2159, label %bb.ez, label %bb.en

bb.ez:                                            ; preds = %_ZN3jxl8StatusOrINS_5PlaneIhEEED2Ev.exit
  %.not166 = icmp ugt i64 %.0400485, %i.baf
  br i1 %.not166, label %bb.gq, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  call void @_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.210") align 8 %38, ptr noundef %i.aym, i64 noundef %i.bac, i64 noundef %.0400485) #24
  %i.bdh = getelementptr inbounds nuw i8, ptr %38, i64 168 ; 2 uses
  %i.bdi = load i32, ptr %i.bdh, align 8, !tbaa !207 ; 2 uses
  %i.bdj = icmp eq i32 %i.bdi, 0
  br i1 %i.bdj, label %bb.fb, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.bdk = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bdk, i8 0, i64 144, i1 false), !alias.scope !710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %39, ptr noundef nonnull align 8 dereferenceable(172) %38, i64 24, i1 false)
  %i.bdl = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 2 uses
  %i.bdm = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bdk, ptr noundef nonnull align 8 dereferenceable(24) %i.bdl) #23 ; 0 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.bdo = load i64, ptr %i.bdn, align 8, !tbaa !193, !noalias !710
  %i.bdp = getelementptr inbounds nuw i8, ptr %39, i64 48
  store i64 %i.bdo, ptr %i.bdp, align 8, !tbaa !193, !alias.scope !710
  %i.bdq = getelementptr inbounds nuw i8, ptr %38, i64 56
  %i.bdr = getelementptr inbounds nuw i8, ptr %39, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bdr, ptr noundef nonnull align 8 dereferenceable(56) %i.bdq, i64 24, i1 false)
  %i.bds = getelementptr inbounds nuw i8, ptr %39, i64 80 ; 2 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %38, i64 80 ; 2 uses
  %i.bdu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bds, ptr noundef nonnull align 8 dereferenceable(24) %i.bdt) #23 ; 0 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %38, i64 104
  %i.bdw = load i64, ptr %i.bdv, align 8, !tbaa !193, !noalias !710
  %i.bdx = getelementptr inbounds nuw i8, ptr %39, i64 104
  store i64 %i.bdw, ptr %i.bdx, align 8, !tbaa !193, !alias.scope !710
  %i.bdy = getelementptr inbounds nuw i8, ptr %38, i64 112
  %i.bdz = getelementptr inbounds nuw i8, ptr %39, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bdz, ptr noundef nonnull align 8 dereferenceable(56) %i.bdy, i64 24, i1 false)
  %i.bea = getelementptr inbounds nuw i8, ptr %39, i64 136 ; 2 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %38, i64 136 ; 2 uses
  %i.bec = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bea, ptr noundef nonnull align 8 dereferenceable(24) %i.beb) #23 ; 0 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %38, i64 160
  %i.bee = load i64, ptr %i.bed, align 8, !tbaa !193, !noalias !710
  %i.bef = getelementptr inbounds nuw i8, ptr %39, i64 160
  store i64 %i.bee, ptr %i.bef, align 8, !tbaa !193, !alias.scope !710
  %i.beg = getelementptr inbounds nuw i8, ptr %39, i64 4 ; 4 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.bei = load i32, ptr %i.beg, align 4, !tbaa !100 ; 2 uses
  %.not13.i = icmp eq i32 %i.bei, 0
  br i1 %.not13.i, label %.lr.ph585, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %bb.fb
  %i.bej = getelementptr inbounds nuw i8, ptr %39, i64 40
  %i.bek = load i32, ptr %39, align 8, !tbaa !194 ; 3 uses
  %i.bel = icmp eq i32 %i.bek, 0
  br i1 %i.bel, label %.lr.ph585, label %.lr.ph.split.i

._crit_edge.i193:                                 ; preds = %bb.fh
  %.not13.1.i = icmp eq i32 %i.bfy, 0
  br i1 %.not13.1.i, label %.lr.ph585, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i193
  %i.bem = getelementptr inbounds nuw i8, ptr %39, i64 96
  %i.ben = icmp eq i32 %.pr.i194, 0
  br i1 %i.ben, label %.lr.ph585, label %.lr.ph.split.1.i

.lr.ph.split.1.i:                                 ; preds = %.lr.ph.1.i, %bb.fd
  %.pr41.i725 = phi i32 [ %.pr41.i, %bb.fd ], [ %.pr.i194, %.lr.ph.1.i ]
  %i.beo = phi i32 [ %i.bew, %bb.fd ], [ %i.bfy, %.lr.ph.1.i ]
  %i.bep = phi i32 [ %i.bex, %bb.fd ], [ %.pr.i194, %.lr.ph.1.i ] ; 2 uses
  %.011.1.i = phi i64 [ %i.bey, %bb.fd ], [ 0, %.lr.ph.1.i ] ; 2 uses
  %.not.1.i = icmp eq i32 %i.bep, 0
  br i1 %.not.1.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph.split.1.i
  %i.beq = zext i32 %i.bep to i64
  %i.ber = load ptr, ptr %i.bem, align 8, !tbaa !102 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ber, i64 64) ]
  %i.bes = load i64, ptr %i.beh, align 8, !tbaa !101
  %i.bet = mul i64 %i.bes, %.011.1.i
  %i.beu = getelementptr inbounds nuw i8, ptr %i.ber, i64 %i.bet ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.beu, i64 64) ]
  %i.bev = shl nuw nsw i64 %i.beq, 2
  call void @llvm.memset.p0.i64(ptr align 64 %i.beu, i8 0, i64 %i.bev, i1 false)
  %.pre17.i = load i32, ptr %39, align 8, !tbaa !194 ; 2 uses
  %.pre19.i = load i32, ptr %i.beg, align 4, !tbaa !100
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.lr.ph.split.1.i
  %.pr41.i = phi i32 [ %.pre17.i, %bb.fc ], [ %.pr41.i725, %.lr.ph.split.1.i ] ; 3 uses
  %i.bew = phi i32 [ %.pre19.i, %bb.fc ], [ %i.beo, %.lr.ph.split.1.i ] ; 4 uses
  %i.bex = phi i32 [ %.pre17.i, %bb.fc ], [ 0, %.lr.ph.split.1.i ]
  %i.bey = add nuw nsw i64 %.011.1.i, 1           ; 2 uses
  %i.bez = zext i32 %i.bew to i64
  %i.bfa = icmp samesign ult i64 %i.bey, %i.bez
  br i1 %i.bfa, label %.lr.ph.split.1.i, label %._crit_edge.1.i, !llvm.loop !577

._crit_edge.1.i:                                  ; preds = %bb.fd
  %.not13.2.i = icmp eq i32 %i.bew, 0
  br i1 %.not13.2.i, label %.lr.ph585, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i
  %i.bfb = getelementptr inbounds nuw i8, ptr %39, i64 152
  %i.bfc = icmp eq i32 %.pr41.i, 0
  br i1 %i.bfc, label %.lr.ph585, label %.lr.ph.split.2.i

.lr.ph.split.2.i:                                 ; preds = %.lr.ph.2.i, %bb.ff
  %i.bfd = phi i32 [ %i.bfl, %bb.ff ], [ %i.bew, %.lr.ph.2.i ]
  %i.bfe = phi i32 [ %i.bfm, %bb.ff ], [ %.pr41.i, %.lr.ph.2.i ] ; 2 uses
  %.011.2.i = phi i64 [ %i.bfn, %bb.ff ], [ 0, %.lr.ph.2.i ] ; 2 uses
  %.not.2.i = icmp eq i32 %i.bfe, 0
  br i1 %.not.2.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph.split.2.i
  %i.bff = zext i32 %i.bfe to i64
  %i.bfg = load ptr, ptr %i.bfb, align 8, !tbaa !102 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bfg, i64 64) ]
  %i.bfh = load i64, ptr %i.beh, align 8, !tbaa !101
  %i.bfi = mul i64 %i.bfh, %.011.2.i
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfg, i64 %i.bfi ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bfj, i64 64) ]
  %i.bfk = shl nuw nsw i64 %i.bff, 2
  call void @llvm.memset.p0.i64(ptr align 64 %i.bfj, i8 0, i64 %i.bfk, i1 false)
  %.pre20.i = load i32, ptr %39, align 8, !tbaa !194
  %.pre22.i = load i32, ptr %i.beg, align 4, !tbaa !100
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.lr.ph.split.2.i
  %i.bfl = phi i32 [ %.pre22.i, %bb.fe ], [ %i.bfd, %.lr.ph.split.2.i ] ; 2 uses
  %i.bfm = phi i32 [ %.pre20.i, %bb.fe ], [ 0, %.lr.ph.split.2.i ]
  %i.bfn = add nuw nsw i64 %.011.2.i, 1           ; 2 uses
  %i.bfo = zext i32 %i.bfl to i64
  %i.bfp = icmp samesign ult i64 %i.bfn, %i.bfo
  br i1 %i.bfp, label %.lr.ph.split.2.i, label %.lr.ph585, !llvm.loop !577

.lr.ph.split.i:                                   ; preds = %.lr.ph.i190, %bb.fh
  %.pr.i194723 = phi i32 [ %.pr.i194, %bb.fh ], [ %i.bek, %.lr.ph.i190 ]
  %i.bfq = phi i32 [ %i.bfy, %bb.fh ], [ %i.bei, %.lr.ph.i190 ]
  %i.bfr = phi i32 [ %i.bfz, %bb.fh ], [ %i.bek, %.lr.ph.i190 ] ; 2 uses
  %.011.i = phi i64 [ %i.bga, %bb.fh ], [ 0, %.lr.ph.i190 ] ; 2 uses
  %.not.i191 = icmp eq i32 %i.bfr, 0
  br i1 %.not.i191, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %.lr.ph.split.i
  %i.bfs = zext i32 %i.bfr to i64
  %i.bft = load ptr, ptr %i.bej, align 8, !tbaa !102 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bft, i64 64) ]
  %i.bfu = load i64, ptr %i.beh, align 8, !tbaa !101
  %i.bfv = mul i64 %i.bfu, %.011.i
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bfv ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bfw, i64 64) ]
  %i.bfx = shl nuw nsw i64 %i.bfs, 2
  call void @llvm.memset.p0.i64(ptr align 64 %i.bfw, i8 0, i64 %i.bfx, i1 false)
  %.pre.i192 = load i32, ptr %39, align 8, !tbaa !194 ; 2 uses
  %.pre16.i = load i32, ptr %i.beg, align 4, !tbaa !100
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.lr.ph.split.i
  %.pr.i194 = phi i32 [ %.pre.i192, %bb.fg ], [ %.pr.i194723, %.lr.ph.split.i ] ; 4 uses
  %i.bfy = phi i32 [ %.pre16.i, %bb.fg ], [ %i.bfq, %.lr.ph.split.i ] ; 4 uses
  %i.bfz = phi i32 [ %.pre.i192, %bb.fg ], [ 0, %.lr.ph.split.i ]
  %i.bga = add nuw nsw i64 %.011.i, 1             ; 2 uses
  %i.bgb = zext i32 %i.bfy to i64
  %i.bgc = icmp samesign ult i64 %i.bga, %i.bgb
  br i1 %i.bgc, label %.lr.ph.split.i, label %._crit_edge.i193, !llvm.loop !577

.lr.ph585:                                        ; preds = %bb.ff, %.lr.ph.2.i, %._crit_edge.1.i, %.lr.ph.1.i, %._crit_edge.i193, %.lr.ph.i190, %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %i.bgd = getelementptr inbounds nuw i8, ptr %39, i64 40
  %i.bge = load ptr, ptr %i.bgd, align 8, !tbaa !102 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bge, i64 64) ]
  %i.bgf = getelementptr inbounds nuw i8, ptr %39, i64 96
  %i.bgg = load ptr, ptr %i.bgf, align 8, !tbaa !102 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bgg, i64 64) ]
  %i.bgh = getelementptr inbounds nuw i8, ptr %39, i64 152
  %i.bgi = load ptr, ptr %i.bgh, align 8, !tbaa !102 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bgi, i64 64) ]
  %i.bgj = load i64, ptr %i.beh, align 8, !tbaa !101 ; 5 uses
  %i.bgk = lshr i64 %i.bgj, 2                     ; 2 uses
  %i.bgl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bgm = load ptr, ptr %i.bgl, align 8, !tbaa !237
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 320
  %i.bgo = load i32, ptr %i.bgn, align 8, !tbaa !720 ; 2 uses
  %i.bgp = zext i32 %i.bgo to i64                 ; 2 uses
  %i.bgq = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.bgt = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 7 uses
  %i.bgu = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 6 uses
  %.not587 = icmp eq i32 %i.bgo, 0
  %i.bgv = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 3 uses
  %.pre727 = load ptr, ptr %35, align 8, !tbaa !233
  %i.bgw = and i64 %i.bgj, -4
  %stride.check1188 = icmp slt i64 %i.bgj, 0
  %i.bgx = insertelement <8 x i1> poison, i1 %stride.check1188, i64 7
  br label %bb.fi

._crit_edge586:                                   ; preds = %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  call void @_ZN3jxl14CompressParamsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(648) %43, ptr noundef nonnull align 8 dereferenceable(648) %i.c) #24
  %i.bgy = getelementptr inbounds nuw i8, ptr %43, i64 87
  store i8 0, ptr %i.bgy, align 1, !tbaa !721
  %i.bgz = getelementptr inbounds nuw i8, ptr %43, i64 632
  %.val = load ptr, ptr %i.bgz, align 8, !tbaa !679
  %.not467 = icmp eq ptr %.val, null
  br i1 %.not467, label %bb.gg, label %bb.gd

bb.fi:                                            ; preds = %.lr.ph585, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit
  %i.bha = phi ptr [ null, %.lr.ph585 ], [ %i.bmo, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ]
  %i.bhb = phi ptr [ null, %.lr.ph585 ], [ %i.blm, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 2 uses
  %i.bhc = phi ptr [ null, %.lr.ph585 ], [ %i.bln, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 2 uses
  %i.bhd = phi ptr [ null, %.lr.ph585 ], [ %i.blo, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 2 uses
  %i.bhe = phi ptr [ null, %.lr.ph585 ], [ %i.bmp, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 7 uses
  %i.bhf = phi ptr [ null, %.lr.ph585 ], [ %.0.i197, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 11 uses
  %.0143584 = phi i64 [ 0, %.lr.ph585 ], [ %i.bmq, %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit ] ; 3 uses
  %i.bhg = getelementptr inbounds nuw [184 x i8], ptr %.sroa.0347.1, i64 %.0143584 ; 7 uses
  %i.bhh = load i64, ptr %i.bhg, align 8, !tbaa !231 ; 12 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhg, i64 8
  %i.bhj = load i64, ptr %i.bhi, align 8, !tbaa !232 ; 6 uses
  %i.bhk = getelementptr inbounds nuw [16 x i8], ptr %.pre727, i64 %.0143584 ; 2 uses
  %i.bhl = load i64, ptr %i.bhk, align 8, !tbaa !708 ; 6 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhk, i64 8
  %i.bhn = load i64, ptr %i.bhm, align 8, !tbaa !709 ; 5 uses
  %.not588 = icmp eq i64 %i.bhj, 0
  %.not589 = icmp eq i64 %i.bhh, 0
  %or.cond1077 = select i1 %.not588, i1 true, i1 %.not589
  br i1 %or.cond1077, label %._crit_edge575.split, label %.preheader469.preheader

.preheader469.preheader:                          ; preds = %bb.fi
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhg, i64 88
  %.pre728.pre = load ptr, ptr %i.bho, align 8, !tbaa !225 ; 5 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bhg, i64 112
  %.pre729.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !225 ; 5 uses
  %.phi.trans.insert730.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bhg, i64 136
  %.pre731.pre = load ptr, ptr %.phi.trans.insert730.phi.trans.insert, align 8, !tbaa !225 ; 5 uses
  %invariant.gep1069 = getelementptr [4 x i8], ptr %i.bge, i64 %i.bhl
  %invariant.gep = getelementptr [4 x i8], ptr %i.bgg, i64 %i.bhl
  %invariant.gep1072 = getelementptr [4 x i8], ptr %i.bgi, i64 %i.bhl
  %i.bhp = mul i64 %i.bgw, %i.bhn
  %i.bhq = shl i64 %i.bhl, 2                      ; 2 uses
  %i.bhr = add i64 %i.bhp, %i.bhq                 ; 3 uses
  %scevgep1175 = getelementptr i8, ptr %i.bge, i64 %i.bhr ; 5 uses
  %i.bhs = add i64 %i.bhj, %i.bhn
  %i.bht = shl i64 %i.bhs, 2
  %i.bhu = add i64 %i.bht, -4
  %i.bhv = mul i64 %i.bgk, %i.bhu
  %i.bhw = shl i64 %i.bhh, 2                      ; 3 uses
  %i.bhx = add i64 %i.bhv, %i.bhw
  %i.bhy = add i64 %i.bhx, %i.bhq                 ; 3 uses
  %scevgep1176 = getelementptr i8, ptr %i.bge, i64 %i.bhy ; 5 uses
  %scevgep1177 = getelementptr i8, ptr %i.bgg, i64 %i.bhr ; 2 uses
  %scevgep1178 = getelementptr i8, ptr %i.bgg, i64 %i.bhy ; 2 uses
  %scevgep1179 = getelementptr i8, ptr %i.bgi, i64 %i.bhr ; 3 uses
  %scevgep1180 = getelementptr i8, ptr %i.bgi, i64 %i.bhy ; 4 uses
  %i.bhz = shl i64 %i.bhj, 2
  %i.bia = mul i64 %i.bhz, %i.bhh                 ; 3 uses
  %scevgep1181 = getelementptr i8, ptr %.pre728.pre, i64 %i.bia ; 3 uses
  %scevgep1182 = getelementptr i8, ptr %.pre729.pre, i64 %i.bia ; 3 uses
  %scevgep1183 = getelementptr i8, ptr %.pre731.pre, i64 %i.bia ; 3 uses
  %i.bib = insertelement <4 x ptr> poison, ptr %scevgep1177, i64 0
  %i.bic = shufflevector <4 x ptr> %i.bib, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bid = insertelement <4 x ptr> poison, ptr %scevgep1180, i64 0
  %i.bie = insertelement <4 x ptr> %i.bid, ptr %scevgep1181, i64 1
  %i.bif = insertelement <4 x ptr> %i.bie, ptr %scevgep1182, i64 2
  %i.big = insertelement <4 x ptr> %i.bif, ptr %scevgep1183, i64 3
  %i.bih = insertelement <2 x ptr> poison, ptr %scevgep1181, i64 0
  %i.bii = insertelement <2 x ptr> %i.bih, ptr %scevgep1182, i64 1
  %i.bij = insertelement <4 x ptr> poison, ptr %scevgep1179, i64 0 ; 2 uses
  %i.bik = insertelement <4 x ptr> %i.bij, ptr %.pre728.pre, i64 1
  %i.bil = insertelement <4 x ptr> %i.bik, ptr %.pre729.pre, i64 2
  %i.bim = insertelement <4 x ptr> %i.bil, ptr %.pre731.pre, i64 3
  %i.bin = insertelement <4 x ptr> poison, ptr %scevgep1178, i64 0
  %i.bio = shufflevector <4 x ptr> %i.bin, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bip = shufflevector <4 x ptr> %i.bij, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.biq = insertelement <2 x ptr> poison, ptr %.pre728.pre, i64 0
  %i.bir = insertelement <2 x ptr> %i.biq, ptr %.pre729.pre, i64 1
  %i.bis = insertelement <2 x ptr> poison, ptr %scevgep1180, i64 0
  %i.bit = shufflevector <2 x ptr> %i.bis, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check1251 = icmp ult i64 %i.bhh, 60
  %bound0 = icmp ult ptr %scevgep1175, %scevgep1178
  %bound1 = icmp ult ptr %scevgep1177, %scevgep1176
  %found.conflict = and i1 %bound0, %bound1
  %bound01185 = icmp ult ptr %scevgep1175, %scevgep1180
  %bound11186 = icmp ult ptr %scevgep1179, %scevgep1176
  %found.conflict1187 = and i1 %bound01185, %bound11186
  %bound01190 = icmp ult ptr %scevgep1175, %scevgep1181
  %bound11191 = icmp ult ptr %.pre728.pre, %scevgep1176
  %found.conflict1192 = and i1 %bound01190, %bound11191
  %bound01196 = icmp ult ptr %scevgep1175, %scevgep1182
  %bound11197 = icmp ult ptr %.pre729.pre, %scevgep1176
  %found.conflict1198 = and i1 %bound01196, %bound11197
  %i.biu = or i64 %i.bhw, %i.bgj
  %bound01202 = icmp ult ptr %scevgep1175, %scevgep1183
  %bound11203 = icmp ult ptr %.pre731.pre, %scevgep1176
  %found.conflict1204 = and i1 %bound01202, %bound11203
  %i.biv = icmp ult <4 x ptr> %i.bic, %i.big
  %i.biw = icmp ult <4 x ptr> %i.bim, %i.bio
  %i.bix = icmp ult <2 x ptr> %i.bip, %i.bii
  %i.biy = icmp ult <2 x ptr> %i.bir, %i.bit
  %bound01244 = icmp ult ptr %scevgep1179, %scevgep1183
  %bound11245 = icmp ult ptr %.pre731.pre, %scevgep1180
  %i.biz = insertelement <8 x i1> %i.bgx, i1 %bound01244, i64 6
  %i.bja = shufflevector <4 x i1> %i.biv, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bjb = shufflevector <8 x i1> %i.bja, <8 x i1> %i.biz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bjc = shufflevector <2 x i1> %i.bix, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bjd = shufflevector <8 x i1> %i.bjb, <8 x i1> %i.bjc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bje = shufflevector <2 x i1> %i.biy, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bjf = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.bje, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.bjg = insertelement <8 x i1> %i.bjf, i1 %bound11245, i64 6
  %i.bjh = shufflevector <4 x i1> %i.biw, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bji = shufflevector <8 x i1> %i.bjh, <8 x i1> %i.bjg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bjj = and <8 x i1> %i.bjd, %i.bji
  %i.bjk = or i64 %i.bhw, %i.bgj
  %i.bjl = bitcast <8 x i1> %i.bjj to i8
  %i.bjm = icmp ne i8 %i.bjl, 0
  %op.rdx = or i1 %i.bjm, %found.conflict1187
  %op.rdx1266 = or i1 %found.conflict, %found.conflict1192
  %op.rdx1267 = or i1 %found.conflict1198, %found.conflict1204
  %op.rdx1268 = icmp slt i64 %i.biu, 0
  %op.rdx1272 = or i1 %op.rdx, %op.rdx1266
  %op.rdx1273 = or i1 %op.rdx1267, %op.rdx1268
  %op.rdx1276 = or i1 %op.rdx1272, %op.rdx1273
  %op.rdx1277 = icmp slt i64 %i.bjk, 0
  %op.rdx1278 = or i1 %op.rdx1276, %op.rdx1277
  %n.vec1253 = and i64 %i.bhh, -8                 ; 3 uses
  %cmp.n1264 = icmp eq i64 %i.bhh, %n.vec1253
  %xtraiter1375 = and i64 %i.bhh, 1
  %lcmp.mod1376.not = icmp eq i64 %xtraiter1375, 0
  br label %.preheader469

.preheader469:                                    ; preds = %.preheader469.preheader, %._crit_edge573
  %.0142574 = phi i64 [ %i.blk, %._crit_edge573 ], [ 0, %.preheader469.preheader ] ; 3 uses
  %i.bjn = mul i64 %.0142574, %i.bhh              ; 3 uses
  %i.bjo = add i64 %.0142574, %i.bhn
  %i.bjp = mul i64 %i.bjo, %i.bgk                 ; 3 uses
  %i.bjq = getelementptr [4 x i8], ptr %.pre728.pre, i64 %i.bjn ; 4 uses
  %gep1070 = getelementptr [4 x i8], ptr %invariant.gep1069, i64 %i.bjp ; 4 uses
  %i.bjr = getelementptr [4 x i8], ptr %.pre729.pre, i64 %i.bjn ; 4 uses
  %gep1071 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bjp ; 4 uses
  %i.bjs = getelementptr [4 x i8], ptr %.pre731.pre, i64 %i.bjn ; 4 uses
  %gep1073 = getelementptr [4 x i8], ptr %invariant.gep1072, i64 %i.bjp ; 4 uses
  %brmerge = select i1 %min.iters.check1251, i1 true, i1 %op.rdx1278
  br i1 %brmerge, label %.preheader.preheader, label %vector.body1254

vector.body1254:                                  ; preds = %.preheader469, %vector.body1254
  %index1255 = phi i64 [ %index.next1262, %vector.body1254 ], [ 0, %.preheader469 ] ; 7 uses
  %i.bjt = getelementptr [4 x i8], ptr %i.bjq, i64 %index1255 ; 2 uses
  %i.bju = getelementptr i8, ptr %i.bjt, i64 16
end_hunk_1
begin_hunk_2_@_ZN3jxl17PassesSharedStateC2EP22JxlMemoryManagerStruct:.lr.ph.i.i.i.i
  store ptr %1, ptr %i.al, align 8, !tbaa !284, !noalias !990
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !285, !noalias !990
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i32 1, ptr %i.an, align 8, !tbaa !286, !noalias !990
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  tail call void @_ZN3jxl22YCbCrChromaSubsamplingC1Ev(ptr noundef nonnull align 8 dereferenceable(22) %i.ao) #23, !noalias !990
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ap, i8 0, i64 18, i1 false), !noalias !990
  store i32 2, ptr %i.aq, align 4, !tbaa !287, !noalias !990
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ar, i8 0, i64 200, i1 false), !noalias !990
  tail call void @_ZN3jxl13ColorEncodingC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.as) #23, !noalias !990
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i8 0, i64 32, i1 false), !noalias !990
  %i.au = load ptr, ptr %.ptr.1.i, align 8, !tbaa !105 ; 3 uses
  store ptr %i.al, ptr %.ptr.1.i, align 8, !tbaa !105
  %.not.i.i.1 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.1, label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.1, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.1

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.1: ; preds = %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.au) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 504) #21
  br label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.1

_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.1: ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.1, %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit
  %i.av = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #20, !noalias !990 ; 10 uses
  store ptr %1, ptr %i.av, align 8, !tbaa !284, !noalias !990
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !285, !noalias !990
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i32 1, ptr %i.ax, align 8, !tbaa !286, !noalias !990
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  tail call void @_ZN3jxl22YCbCrChromaSubsamplingC1Ev(ptr noundef nonnull align 8 dereferenceable(22) %i.ay) #23, !noalias !990
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.az, i8 0, i64 18, i1 false), !noalias !990
  store i32 2, ptr %i.ba, align 4, !tbaa !287, !noalias !990
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bb, i8 0, i64 200, i1 false), !noalias !990
  tail call void @_ZN3jxl13ColorEncodingC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.bc) #23, !noalias !990
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i8 0, i64 32, i1 false), !noalias !990
  %i.be = load ptr, ptr %.ptr.2.i, align 8, !tbaa !105 ; 3 uses
  store ptr %i.av, ptr %.ptr.2.i, align 8, !tbaa !105
  %.not.i.i.2 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.2, label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.2, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.2

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.2: ; preds = %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.1
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.be) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 504) #21
  br label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.2

_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.2: ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.2, %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.1
  %i.bf = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #20, !noalias !990 ; 10 uses
  store ptr %1, ptr %i.bf, align 8, !tbaa !284, !noalias !990
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr null, ptr %i.bg, align 8, !tbaa !285, !noalias !990
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i32 1, ptr %i.bh, align 8, !tbaa !286, !noalias !990
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  tail call void @_ZN3jxl22YCbCrChromaSubsamplingC1Ev(ptr noundef nonnull align 8 dereferenceable(22) %i.bi) #23, !noalias !990
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.bj, i8 0, i64 18, i1 false), !noalias !990
  store i32 2, ptr %i.bk, align 4, !tbaa !287, !noalias !990
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bl, i8 0, i64 200, i1 false), !noalias !990
  tail call void @_ZN3jxl13ColorEncodingC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.bm) #23, !noalias !990
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i8 0, i64 32, i1 false), !noalias !990
  %i.bo = load ptr, ptr %.ptr.3.i, align 8, !tbaa !105 ; 3 uses
  store ptr %i.bf, ptr %.ptr.3.i, align 8, !tbaa !105
  %.not.i.i.3 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.3, label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.3, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.3

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.3: ; preds = %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.2
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.bo) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 504) #21
  br label %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.3

_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.3: ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.3, %_ZNSt3__110unique_ptrIN3jxl11ImageBundleENS_14default_deleteIS2_EEED2B8nn180100Ev.exit.2
  ret void
}

declare void @_ZN3jxl15DequantMatricesC1Ev(ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #2

declare void @_ZN3jxl9QuantizerC1ERKNS_15DequantMatricesE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK3jxl8ACImageTIiE4TypeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3jxl8ACImageTIiE8PlaneRowEmmm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.f, i64 64) ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.g, i64 64) ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK3jxl8ACImageTIiE8PlaneRowEmmm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.f, i64 64) ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.g, i64 64) ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK3jxl8ACImageTIiE12PixelsPerRowEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101
  %i.c = lshr i64 %i.b, 2
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiE8ZeroFillEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !100  ; 2 uses
  %.not13.i = icmp eq i32 %i.d, 0
  br i1 %.not13.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.a, align 8, !tbaa !194  ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.g
  %.not13.1.i = icmp eq i32 %i.at, 0
  br i1 %.not13.1.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = icmp eq i32 %.pr.i, 0
  br i1 %i.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.split.1.i

.lr.ph.split.1.i:                                 ; preds = %.lr.ph.1.i, %bb.c
  %.pr41.i5 = phi i32 [ %.pr41.i, %bb.c ], [ %.pr.i, %.lr.ph.1.i ]
  %i.j = phi i32 [ %i.r, %bb.c ], [ %i.at, %.lr.ph.1.i ]
  %i.k = phi i32 [ %i.s, %bb.c ], [ %.pr.i, %.lr.ph.1.i ] ; 2 uses
  %.011.1.i = phi i64 [ %i.t, %bb.c ], [ 0, %.lr.ph.1.i ] ; 2 uses
  %.not.1.i = icmp eq i32 %i.k, 0
  br i1 %.not.1.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.1.i
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !102  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 64) ]
  %i.n = load i64, ptr %i.c, align 8, !tbaa !101
  %i.o = mul i64 %i.n, %.011.1.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.p, i64 64) ]
  %i.q = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.p, i8 0, i64 %i.q, i1 false)
  %.pre17.i = load i32, ptr %i.a, align 8, !tbaa !194 ; 2 uses
  %.pre19.i = load i32, ptr %i.b, align 4, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.1.i
  %.pr41.i = phi i32 [ %.pre17.i, %bb.b ], [ %.pr41.i5, %.lr.ph.split.1.i ] ; 3 uses
  %i.r = phi i32 [ %.pre19.i, %bb.b ], [ %i.j, %.lr.ph.split.1.i ] ; 4 uses
  %i.s = phi i32 [ %.pre17.i, %bb.b ], [ 0, %.lr.ph.split.1.i ]
  %i.t = add nuw nsw i64 %.011.1.i, 1             ; 2 uses
  %i.u = zext i32 %i.r to i64
  %i.v = icmp samesign ult i64 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.split.1.i, label %._crit_edge.1.i, !llvm.loop !991

._crit_edge.1.i:                                  ; preds = %bb.c
  %.not13.2.i = icmp eq i32 %i.r, 0
  br i1 %.not13.2.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.x = icmp eq i32 %.pr41.i, 0
  br i1 %i.x, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, label %.lr.ph.split.2.i

.lr.ph.split.2.i:                                 ; preds = %.lr.ph.2.i, %bb.e
  %i.y = phi i32 [ %i.ag, %bb.e ], [ %i.r, %.lr.ph.2.i ]
  %i.z = phi i32 [ %i.ah, %bb.e ], [ %.pr41.i, %.lr.ph.2.i ] ; 2 uses
  %.011.2.i = phi i64 [ %i.ai, %bb.e ], [ 0, %.lr.ph.2.i ] ; 2 uses
  %.not.2.i = icmp eq i32 %i.z, 0
  br i1 %.not.2.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.2.i
  %i.aa = zext i32 %i.z to i64
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !102 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ab, i64 64) ]
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !101
  %i.ad = mul i64 %i.ac, %.011.2.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ae, i64 64) ]
  %i.af = shl nuw nsw i64 %i.aa, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.ae, i8 0, i64 %i.af, i1 false)
  %.pre20.i = load i32, ptr %i.a, align 8, !tbaa !194
  %.pre22.i = load i32, ptr %i.b, align 4, !tbaa !100
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.2.i
  %i.ag = phi i32 [ %.pre22.i, %bb.d ], [ %i.y, %.lr.ph.split.2.i ] ; 2 uses
  %i.ah = phi i32 [ %.pre20.i, %bb.d ], [ 0, %.lr.ph.split.2.i ]
  %i.ai = add nuw nsw i64 %.011.2.i, 1            ; 2 uses
  %i.aj = zext i32 %i.ag to i64
  %i.ak = icmp samesign ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %.lr.ph.split.2.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit, !llvm.loop !991

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.g
  %.pr.i3 = phi i32 [ %.pr.i, %bb.g ], [ %i.f, %.lr.ph.i ]
  %i.al = phi i32 [ %i.at, %bb.g ], [ %i.d, %.lr.ph.i ]
  %i.am = phi i32 [ %i.au, %bb.g ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.011.i = phi i64 [ %i.av, %bb.g ], [ 0, %.lr.ph.i ] ; 2 uses
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.an = zext i32 %i.am to i64
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !102 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ao, i64 64) ]
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !101
  %i.aq = mul i64 %i.ap, %.011.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ar, i64 64) ]
  %i.as = shl nuw nsw i64 %i.an, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.ar, i8 0, i64 %i.as, i1 false)
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !194 ; 2 uses
  %.pre16.i = load i32, ptr %i.b, align 4, !tbaa !100
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.i
  %.pr.i = phi i32 [ %.pre.i, %bb.f ], [ %.pr.i3, %.lr.ph.split.i ] ; 4 uses
  %i.at = phi i32 [ %.pre16.i, %bb.f ], [ %i.al, %.lr.ph.split.i ] ; 4 uses
  %i.au = phi i32 [ %.pre.i, %bb.f ], [ 0, %.lr.ph.split.i ]
  %i.av = add nuw nsw i64 %.011.i, 1              ; 2 uses
  %i.aw = zext i32 %i.at to i64
  %i.ax = icmp samesign ult i64 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !991

_ZN3jxl13ZeroFillImageIiEEvPNS_6Image3IT_EE.exit: ; preds = %bb.e, %bb.a, %.lr.ph.i, %._crit_edge.i, %.lr.ph.1.i, %._crit_edge.1.i, %.lr.ph.2.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8ACImageTIiE13ZeroFillPlaneEm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %1 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !194
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !100
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.j = load i64, ptr %i.h, align 8, !tbaa !101
  %i.k = mul i64 %i.j, %.07.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.l, i64 64) ]
  %i.m = load i32, ptr %i.b, align 8, !tbaa !194
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.l, i8 0, i64 %i.o, i1 false)
  %i.p = add nuw nsw i64 %.07.i, 1                ; 2 uses
  %i.q = load i32, ptr %i.e, align 4, !tbaa !100
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit, !llvm.loop !992

_ZN3jxl13ZeroFillImageIiEEvPNS_5PlaneIT_EE.exit:  ; preds = %bb.b, %bb.a, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3jxl8ACImageTIiE7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !194
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  ret i1 %i.g
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl18PassesDecoderStateD2Ev(ptr noundef nonnull align 8 dead_on_return(4552) dereferenceable(4552) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4064
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl13ColorEncodingE, i64 16), ptr %i.b, align 8, !tbaa !316
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86   ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN3jxl13ColorEncodingD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4104
  store ptr %i.d, ptr %i.e, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.j) #21
  br label %_ZN3jxl13ColorEncodingD2Ev.exit.i

_ZN3jxl13ColorEncodingD2Ev.exit.i:                ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3864
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl13ColorEncodingE, i64 16), ptr %i.k, align 8, !tbaa !316
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3896
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86   ; 4 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i1.i, label %_ZN3jxl13ColorEncodingD2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZN3jxl13ColorEncodingD2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3904
  store ptr %i.m, ptr %i.n, align 8, !tbaa !87
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3912
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !88
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.s) #21
  br label %_ZN3jxl13ColorEncodingD2Ev.exit2.i

_ZN3jxl13ColorEncodingD2Ev.exit2.i:               ; preds = %bb.c, %_ZN3jxl13ColorEncodingD2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl13ColorEncodingE, i64 16), ptr %i.a, align 8, !tbaa !316
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86   ; 4 uses
  %.not.i.i.i.i3.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i3.i, label %_ZN3jxl18OutputEncodingInfoD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3jxl13ColorEncodingD2Ev.exit2.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3656
  store ptr %i.u, ptr %i.v, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !88
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.aa) #21
  br label %_ZN3jxl18OutputEncodingInfoD2Ev.exit

_ZN3jxl18OutputEncodingInfoD2Ev.exit:             ; preds = %_ZN3jxl13ColorEncodingD2Ev.exit2.i, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3112
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.ab) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3104 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !998 ; 3 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !998
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt3__110unique_ptrIN3jxl14RenderPipelineENS_14default_deleteIS2_EEED2B8nn180100Ev.exit, label %_ZNKSt3__114default_deleteIN3jxl14RenderPipelineEEclB8nn180100EPS2_.exit.i.i

_ZNKSt3__114default_deleteIN3jxl14RenderPipelineEEclB8nn180100EPS2_.exit.i.i: ; preds = %_ZN3jxl18OutputEncodingInfoD2Ev.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !316
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(256) %i.ad) #23, !inline_history !993
  br label %_ZNSt3__110unique_ptrIN3jxl14RenderPipelineENS_14default_deleteIS2_EEED2B8nn180100Ev.exit

_ZNSt3__110unique_ptrIN3jxl14RenderPipelineENS_14default_deleteIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZN3jxl18OutputEncodingInfoD2Ev.exit, %_ZNKSt3__114default_deleteIN3jxl14RenderPipelineEEclB8nn180100EPS2_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3096 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !999 ; 3 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !999
  %.not.i.i1 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1, label %_ZNSt3__110unique_ptrIN3jxl7ACImageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit, label %_ZNKSt3__114default_deleteIN3jxl7ACImageEEclB8nn180100EPS2_.exit.i.i

_ZNKSt3__114default_deleteIN3jxl7ACImageEEclB8nn180100EPS2_.exit.i.i: ; preds = %_ZNSt3__110unique_ptrIN3jxl14RenderPipelineENS_14default_deleteIS2_EEED2B8nn180100Ev.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !316
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #23, !inline_history !994
  br label %_ZNSt3__110unique_ptrIN3jxl7ACImageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit

_ZNSt3__110unique_ptrIN3jxl7ACImageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__110unique_ptrIN3jxl14RenderPipelineENS_14default_deleteIS2_EEED2B8nn180100Ev.exit, %_ZNKSt3__114default_deleteIN3jxl7ACImageEEclB8nn180100EPS2_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1000 ; 4 uses
  %.not.i.i2 = icmp eq ptr %i.an, null
  br i1 %.not.i.i2, label %_ZNSt3__16vectorIN3jxl11ImageOutputENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__110unique_ptrIN3jxl7ACImageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3048
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1001
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1002
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.at) #21
  br label %_ZNSt3__16vectorIN3jxl11ImageOutputENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl11ImageOutputENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__110unique_ptrIN3jxl7ACImageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit, %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2904
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.au) #23
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2848 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1003 ; 5 uses
  %.not.i.i3 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i3, label %_ZNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEED2B8nn180100Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIN3jxl11ImageOutputENS_9allocatorIS2_EEED2B8nn180100Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2856 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1004 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.aw, %i.ay
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEE7__clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIhNS1_IhEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.az, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIhNS1_IhEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i ], [ %i.ay, %bb.f ] ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -24 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !86 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIhNS1_IhEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bb = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16
end_hunk_2
