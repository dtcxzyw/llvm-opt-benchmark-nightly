Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sphere_solver?download=true
inline.NumInlined: 209
inline.NumDeleted: 138
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv17PointCloudWrapperC2ERKNS_3MatE:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail21check_failed_MatDepthEiiRKNS0_12CheckContextE(i32 noundef %i.q, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv17PointCloudWrapperC1ERKNS_3MatEE14__cv_check__36) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = lshr i32 %i.p, 5
  %i.t = and i32 %i.s, 127                        ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i32 %i.t, 1
  tail call void @_ZN2cv6detail24check_failed_MatChannelsEiiRKNS0_12CheckContextE(i32 noundef %i.v, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv17PointCloudWrapperC1ERKNS_3MatEE14__cv_check__38) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.c, 3
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.c, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv17PointCloudWrapperC1ERKNS_3MatEE14__cv_check__40) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = and i32 %i.p, 16384
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv17PointCloudWrapperC2ERKNS_3MatE, ptr noundef nonnull @.str.1, i32 noundef 41) #17
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !20
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.y

bb.k:                                             ; preds = %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac28SphereModelMinimalSolverImplD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv9Algorithm5writeERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm4readERKNS_8FileNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv9Algorithm5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

declare void @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac28SphereModelMinimalSolverImpl8estimateERKSt6vectorIiSaIiEERS2_INS_3MatESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 7 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !32     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #15
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !73

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !33
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit:      ; preds = %bb.a, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.f = load ptr, ptr %1, align 8, !tbaa !37     ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 4 uses
  %i.p = sext i32 %i.g to i64                     ; 3 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !40 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 4 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.p
  %i.v = load float, ptr %i.u, align 4, !tbaa !40 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26   ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.p
  %i.z = load float, ptr %i.y, align 4, !tbaa !40 ; 4 uses
  %i.aa = sext i32 %i.i to i64                    ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !40 ; 4 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.aa
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !40 ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.aa
  %i.ag = load float, ptr %i.af, align 4, !tbaa !40 ; 4 uses
  %i.ah = sext i32 %i.k to i64                    ; 3 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !40 ; 3 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ah
  %i.al = load float, ptr %i.ak, align 4, !tbaa !40
  %i.am = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ah
  %i.an = load float, ptr %i.am, align 4, !tbaa !40 ; 3 uses
  %i.ao = sext i32 %i.m to i64                    ; 3 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !40 ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ao
  %i.as = load float, ptr %i.ar, align 4, !tbaa !40 ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ao
  %i.au = load float, ptr %i.at, align 4, !tbaa !40 ; 2 uses
  %i.av = fsub float %i.ae, %i.v
  %i.aw = fsub float %i.ag, %i.z
  %i.ax = fpext float %i.aw to double             ; 2 uses
  %i.ay = fsub float %i.an, %i.ag
  %i.az = fpext float %i.ay to double             ; 4 uses
  %i.ba = insertelement <2 x float> poison, float %i.al, i64 0 ; 3 uses
  %i.bb = insertelement <2 x float> %i.ba, float %i.aq, i64 1
  %i.bc = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.aj, i64 1
  %i.be = fsub <2 x float> %i.bb, %i.bd
  %i.bf = fpext <2 x float> %i.be to <2 x double> ; 5 uses
  %i.bg = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.au, i64 1
  %i.bi = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.an, i64 1
  %i.bk = fsub <2 x float> %i.bh, %i.bj
  %i.bl = fpext <2 x float> %i.bk to <2 x double> ; 5 uses
  %i.bm = fpext float %i.av to double             ; 3 uses
  %i.bn = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.aj, i64 1
  %i.bp = insertelement <2 x float> %i.ba, float %i.ac, i64 1
  %i.bq = fsub <2 x float> %i.bo, %i.bp
  %i.br = fpext <2 x float> %i.bq to <2 x double> ; 6 uses
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> %i.bl, <2 x i32> <i32 0, i32 3>
  %i.bt = fneg <2 x double> %i.bs                 ; 2 uses
  %i.bu = insertelement <2 x double> %i.br, double %i.az, i64 0
  %i.bv = fmul <2 x double> %i.bu, %i.bt
  %i.bw = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bx = insertelement <2 x double> %i.bw, double %i.az, i64 1
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bf, <2 x double> %i.bv) ; 4 uses
  %i.bz = shufflevector <2 x double> %i.bf, <2 x double> %i.by, <2 x i32> <i32 0, i32 3>
  %i.ca = fneg <2 x double> %i.bf
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cc = insertelement <2 x double> %i.cb, double %i.bm, i64 1
  %i.cd = fmul <2 x double> %i.bz, %i.cc
  %i.ce = shufflevector <2 x double> %i.br, <2 x double> %i.bl, <2 x i32> <i32 1, i32 2>
  %i.cf = shufflevector <2 x double> %i.br, <2 x double> %i.by, <2 x i32> <i32 0, i32 2>
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.cf, <2 x double> %i.cd) ; 3 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0
  %i.ci = extractelement <2 x double> %i.cg, i64 1
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ch, double %i.ci) ; 2 uses
  %i.ck = fcmp une double %i.cj, 0.000000e+00
  br i1 %i.ck, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit
  %i.cl = fmul float %i.ae, %i.ae
  %i.cm = fmul float %i.v, %i.v
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.cm)
  %i.co = tail call float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.cn)
  %i.cp = fpext float %i.co to double
  %i.cq = insertelement <2 x float> %i.ba, float %i.as, i64 1 ; 2 uses
  %i.cr = fmul <2 x float> %i.cq, %i.cq
  %i.cs = fneg double %i.az
  %i.ct = fdiv double 5.000000e-01, %i.cj         ; 2 uses
  %i.cu = fpext float %i.r to double
  %i.cv = fpext float %i.v to double
  %i.cw = fpext float %i.z to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.cl)
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.cx)
  %i.cz = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.aq, i64 1 ; 2 uses
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.da, <2 x float> %i.cr)
  %i.dc = insertelement <2 x float> poison, float %i.an, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %i.au, i64 1 ; 2 uses
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.dd, <2 x float> %i.db) ; 2 uses
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dg = insertelement <2 x float> %i.df, float %i.cy, i64 0
  %i.dh = fpext <2 x float> %i.dg to <2 x double> ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0
  %i.dj = fsub double %i.di, %i.cp                ; 2 uses
  %i.dk = fpext <2 x float> %i.de to <2 x double>
  %i.dl = fsub <2 x double> %i.dk, %i.dh          ; 8 uses
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dn = fneg <2 x double> %i.br
  %i.do = fmul <2 x double> %i.dl, %i.dn
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.dm, <2 x double> %i.do) ; 2 uses
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> %i.dl, <2 x i32> <i32 1, i32 3>
  %i.dr = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %i.cs, i64 1
  %i.dt = fmul <2 x double> %i.dq, %i.ds
  %i.du = shufflevector <2 x double> %i.dp, <2 x double> %i.dl, <2 x i32> <i32 0, i32 2>
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.du, <2 x double> %i.dt) ; 2 uses
  %i.dw = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dx = fneg <2 x double> %i.bf
  %i.dy = fmul <2 x double> %i.dw, %i.dx
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.br, <2 x double> %i.dy)
  %shift = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.dl, %shift
  %5 = insertelement <2 x double> poison, double %i.dj, i64 0
  %6 = insertelement <2 x double> %5, double %i.az, i64 1
  %7 = shufflevector <2 x double> %i.cg, <2 x double> %i.dl, <2 x i32> <i32 0, i32 3>
  %8 = shufflevector <2 x double> %i.dv, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %7, <2 x double> %8) ; 2 uses
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ea = insertelement <2 x double> %10, double %i.dj, i64 1 ; 2 uses
  %i.eb = insertelement <2 x double> %i.by, double %i.bm, i64 0
  %i.ec = fmul <2 x double> %i.ea, %i.eb
  %i.ed = shufflevector <2 x double> %i.ea, <2 x double> %i.bl, <2 x i32> <i32 1, i32 2>
  %i.ee = shufflevector <2 x double> %i.by, <2 x double> %i.dv, <2 x i32> <i32 0, i32 3>
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.ee, <2 x double> %i.ec)
  %i.eg = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.dz, <2 x double> %i.ef)
  %i.ej = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x double> %i.ei, %i.ek          ; 3 uses
  %11 = extractelement <2 x double> %9, i64 0
  %i.em = fmul double %i.ct, %11                  ; 2 uses
  %i.en = extractelement <2 x double> %i.el, i64 0
  %i.eo = fsub double %i.en, %i.cu                ; 2 uses
  %i.ep = extractelement <2 x double> %i.el, i64 1
  %i.eq = fsub double %i.ep, %i.cv                ; 2 uses
  %i.er = fsub double %i.em, %i.cw                ; 2 uses
  %i.es = fmul double %i.eq, %i.eq
  %i.et = tail call double @llvm.fmuladd.f64(double %i.eo, double %i.eo, double %i.es)
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.er, double %i.er, double %i.et)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.eu)
  store <2 x double> %i.el, ptr %i.a, align 16, !tbaa !42
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.em, ptr %i.ev, align 16, !tbaa !42
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %sqrt, ptr %i.ew, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 1, i32 noundef 4, i32 noundef 6, ptr noundef nonnull %i.a, i64 noundef 0)
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ex = load ptr, ptr %i.c, align 8, !tbaa !33  ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.ex, %i.ez
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ex, ptr noundef nonnull align 8 dereferenceable(208) %3) #15
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 208
  store ptr %i.fb, ptr %i.c, align 8, !tbaa !33
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ex, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit unwind label %bb.g

_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.e, %bb.d
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.fd, %bb.g ], [ %i.fc, %bb.f ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit, %_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.1 = phi i32 [ 1, %_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ 0, %_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac28SphereModelMinimalSolverImpl13getSampleSizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac28SphereModelMinimalSolverImpl23getMaxNumberOfSolutionsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac24SphereModelMinimalSolverD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

declare void @_ZN2cv9AlgorithmC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZN2cv6detail21check_failed_MatDepthEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZN2cv6detail24check_failed_MatChannelsEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !74
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.d, ptr %i.a, align 8, !tbaa !75
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !30
  %i.g = load i64, ptr %i.a, align 8, !tbaa !75
  store i64 %i.g, ptr %i.b, align 8, !tbaa !20
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.i, ptr %i.h, align 1, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !76
  %i.l = load ptr, ptr %0, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #11

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #6

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !32     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775696
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #17
  unreachable

end_hunk_0
