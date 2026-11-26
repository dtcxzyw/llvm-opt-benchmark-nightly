Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFRaBitQFastScan?download=true
inline.NumInlined: 863
inline.NumDeleted: 409
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK5faiss22IndexIVFRaBitQFastScan17compute_LUT_uint8EmPKfRKNS_16IndexIVFFastScan15CoarseQuantizedERNS_12AlignedTableIhLi32EEERNS7_ItLi32EEEPfRKNS_30FastScanDistancePostProcessingE.omp_outlined:bb.a
  %i.s = icmp slt i32 %i.q, 0
  br i1 %i.s, label %.invoke, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN5faiss12AlignedTableIfLi32EEC2Em.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.t = shl nuw nsw i64 %i.r, 2
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #35
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc50:                                         ; preds = %bb.e
  store ptr %i.u, ptr %15, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !63
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !64
  %i.x = getelementptr i8, ptr %i.u, i64 4        ; 3 uses
  %i.y = add nsw i64 %i.r, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc50
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.y, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc50
  %.0.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.x, %.noexc50 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.ac = load i32, ptr %i.p, align 8, !tbaa !60  ; 3 uses
  %i.ad = sext i32 %i.ac to i64                   ; 3 uses
  %i.ae = icmp slt i32 %i.ac, 0
  br i1 %i.ae, label %.invoke, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i51

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i51: ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %.not.i.i.i.i52 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i52, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i56, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i51
  %i.af = shl nuw nsw i64 %i.ad, 2
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #35
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc58:                                         ; preds = %bb.f
  store ptr %i.ag, ptr %16, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !63
  store float 0.000000e+00, ptr %i.ag, align 4, !tbaa !64
  %i.aj = getelementptr i8, ptr %i.ag, i64 4      ; 3 uses
  %i.ak = add nsw i64 %i.ad, -1                   ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i56, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i53

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i53: ; preds = %.noexc58
  %.idx.i.i.i.i.i.i.i54 = shl nuw nsw i64 %i.ak, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %.idx.i.i.i.i.i.i.i54, i1 false), !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i.i54
  br label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i56

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i56: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i51, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i53, %.noexc58
  %.0.i.i.i.i.i55 = phi ptr [ %i.am, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i53 ], [ %i.aj, %.noexc58 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i51 ]
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.0.i.i.i.i.i55, ptr %i.an, align 8, !tbaa !65
  %i.ao = load i64, ptr %2, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 280 ; 4 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !131
  %i.ar = mul i64 %i.aq, %i.ao                    ; 5 uses
  %i.as = icmp ugt i64 %i.ar, 2305843009213693951
  br i1 %i.as, label %.invoke, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i60

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i60: ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i56
  %.not.i.i.i.i61 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i61, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit68, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i60
  %i.at = shl nuw nsw i64 %i.ar, 2
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #35
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc67:                                         ; preds = %bb.g
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ar ; 2 uses
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !64
  %i.aw = add nsw i64 %i.ar, -1                   ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit68, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i62

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i62: ; preds = %.noexc67
  %i.ay = getelementptr i8, ptr %i.au, i64 4
  %.idx.i.i.i.i.i.i.i63 = shl nuw nsw i64 %i.aw, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ay, i8 0, i64 %.idx.i.i.i.i.i.i.i63, i1 false), !tbaa !64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit68

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit68:             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i62, %.noexc67, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i60
  %.sroa.0121.0 = phi ptr [ %i.au, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i62 ], [ %i.au, %.noexc67 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i60 ] ; 5 uses
  %.sroa.9125.0 = phi ptr [ %i.av, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i62 ], [ %i.av, %.noexc67 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i60 ]
  %i.az = load i64, ptr %2, align 8, !tbaa !23    ; 5 uses
  %i.ba = icmp ugt i64 %i.az, 2305843009213693951
  br i1 %i.ba, label %.invoke, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i69

.invoke:                                          ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit68, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i56, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, %_ZN5faiss12AlignedTableIfLi32EEC2Em.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i69: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit68
  %.not.i.i.i.i70 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i70, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit77, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i69
  %i.bb = shl nuw nsw i64 %i.az, 2
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #35
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc76:                                         ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.az ; 2 uses
  store float 0.000000e+00, ptr %i.bc, align 4, !tbaa !64
  %i.be = add nsw i64 %i.az, -1                   ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit77, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i71

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i71: ; preds = %.noexc76
  %i.bg = getelementptr i8, ptr %i.bc, i64 4
  %.idx.i.i.i.i.i.i.i72 = shl nuw nsw i64 %i.be, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bg, i8 0, i64 %.idx.i.i.i.i.i.i.i72, i1 false), !tbaa !64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit77

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit77:             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i71, %.noexc76, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i69
  %.sroa.0.0 = phi ptr [ %i.bc, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i71 ], [ %i.bc, %.noexc76 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i69 ] ; 6 uses
  %.sroa.9.0 = phi ptr [ %i.bd, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i71 ], [ %i.bd, %.noexc76 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i69 ]
  %i.bh = load i64, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  %.pre166 = load i32, ptr %0, align 4, !tbaa !66 ; 5 uses
  br i1 %i.bi, label %bb.i, label %bb.ak

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit77
  %i.bj = add nsw i64 %i.bh, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.b, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i64 1, ptr %i.d, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 0, ptr %i.e, align 4, !tbaa !66
  tail call void @__kmpc_dispatch_init_8(ptr nonnull @2, i32 %.pre166, i32 1073741859, i64 0, i64 %i.bj, i64 1, i64 1)
  %i.bk = call i32 @__kmpc_dispatch_next_8(ptr nonnull @2, i32 %.pre166, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d)
  %.not153 = icmp eq i32 %i.bk, 0
  br i1 %.not153, label %._crit_edge156, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 28
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 296 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 304
  br label %bb.j

.loopexit142:                                     ; preds = %"_ZN5faiss25with_selected_simd_levelsILi7EZNKS_22IndexIVFRaBitQFastScan17compute_LUT_uint8EmPKfRKNS_16IndexIVFFastScan15CoarseQuantizedERNS_12AlignedTableIhLi32EEERNS8_ItLi32EEEPfRKNS_30FastScanDistancePostProcessingEE3$_0EEDaOT0_.exit", %bb.j
  %i.bu = call i32 @__kmpc_dispatch_next_8(ptr nonnull @2, i32 %.pre166, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d)
  %.not = icmp eq i32 %i.bu, 0
  br i1 %.not, label %._crit_edge156, label %bb.j

bb.j:                                             ; preds = %.lr.ph155, %.loopexit142
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !23, !llvm.access.group !225
  %.not46149 = icmp sgt i64 %i.bv, %i.bw
  br i1 %.not46149, label %.loopexit142, label %.lr.ph152

.lr.ph152:                                        ; preds = %bb.j, %"_ZN5faiss25with_selected_simd_levelsILi7EZNKS_22IndexIVFRaBitQFastScan17compute_LUT_uint8EmPKfRKNS_16IndexIVFFastScan15CoarseQuantizedERNS_12AlignedTableIhLi32EEERNS8_ItLi32EEEPfRKNS_30FastScanDistancePostProcessingEE3$_0EEDaOT0_.exit"
  %.042150 = phi i64 [ %i.lj, %"_ZN5faiss25with_selected_simd_levelsILi7EZNKS_22IndexIVFRaBitQFastScan17compute_LUT_uint8EmPKfRKNS_16IndexIVFFastScan15CoarseQuantizedERNS_12AlignedTableIhLi32EEERNS8_ItLi32EEEPfRKNS_30FastScanDistancePostProcessingEE3$_0EEDaOT0_.exit" ], [ %i.bv, %bb.j ] ; 6 uses
  %i.bx = load ptr, ptr %6, align 8, !tbaa !26, !llvm.access.group !225
  %i.by = load i32, ptr %i.p, align 8, !tbaa !60, !llvm.access.group !225
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul nsw i64 %.042150, %i.bz
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ca
  %i.cc = load i64, ptr %2, align 8, !tbaa !23, !llvm.access.group !225 ; 2 uses
  %.not157 = icmp eq i64 %i.cc, 0
  br i1 %.not157, label %._crit_edge94.i.i.i, label %.lr.ph

._crit_edge:                                      ; preds = %bb.aj
  %.not.i.i.i = icmp eq i64 %i.le, 0
  br i1 %.not.i.i.i, label %._crit_edge94.i.i.i, label %.preheader87.lr.ph.i.i.i

.preheader87.lr.ph.i.i.i:                         ; preds = %._crit_edge
  %i.cd = load i64, ptr %i.ap, align 8, !tbaa !131, !llvm.access.group !225 ; 3 uses
  %.not99.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not99.i.i.i, label %.preheader87.i.i.i.preheader, label %.preheader87.lr.ph.split.us.i.i.i

.preheader87.i.i.i.preheader:                     ; preds = %.preheader87.lr.ph.i.i.i
  %18 = shl nuw i64 %i.le, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.sroa.0.0, i8 0, i64 %18, i1 false), !tbaa !64
  %min.iters.check = icmp ult i64 %i.le, 8
  br i1 %min.iters.check, label %.preheader87.i.i.i.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %.preheader87.i.i.i.preheader
  %n.vec = and i64 %i.le, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x float> [ splat (float -inf), %vector.ph ], [ %21, %vector.body ] ; 2 uses
  %vec.phi214 = phi <4 x float> [ splat (float -inf), %vector.ph ], [ %22, %vector.body ] ; 2 uses
  %vec.phi215 = phi <4 x float> [ splat (float +inf), %vector.ph ], [ %25, %vector.body ] ; 2 uses
  %vec.phi216 = phi <4 x float> [ splat (float +inf), %vector.ph ], [ %26, %vector.body ] ; 2 uses
  %19 = fcmp olt <4 x float> %vec.phi, zeroinitializer
  %20 = fcmp olt <4 x float> %vec.phi214, zeroinitializer
  %21 = select <4 x i1> %19, <4 x float> zeroinitializer, <4 x float> %vec.phi ; 2 uses
  %22 = select <4 x i1> %20, <4 x float> zeroinitializer, <4 x float> %vec.phi214 ; 2 uses
  %23 = fcmp ogt <4 x float> %vec.phi215, zeroinitializer
  %24 = fcmp ogt <4 x float> %vec.phi216, zeroinitializer
  %25 = select <4 x i1> %23, <4 x float> zeroinitializer, <4 x float> %vec.phi215 ; 2 uses
  %26 = select <4 x i1> %24, <4 x float> zeroinitializer, <4 x float> %vec.phi216 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %27 = icmp eq i64 %index.next, %n.vec
  br i1 %27, label %.preheader87.i.i.i.preheader.a, label %vector.body, !llvm.loop !226

.preheader87.i.i.i.preheader.a:                   ; preds = %vector.body
  %rdx.minmax = call nnan <4 x float> @llvm.maxnum.v4f32(<4 x float> %21, <4 x float> %22)
  %28 = call nnan float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax) ; 2 uses
  %rdx.minmax217 = call nnan <4 x float> @llvm.minnum.v4f32(<4 x float> %25, <4 x float> %26)
  %29 = call nnan float @llvm.vector.reduce.fmin.v4f32(<4 x float> %rdx.minmax217) ; 2 uses
  %i.ce = icmp eq i64 %i.le, %n.vec
  br i1 %i.ce, label %._crit_edge94.i.i.i, label %.preheader87.i.i.i.preheader.new

.preheader87.i.i.i.preheader.new:                 ; preds = %.preheader87.i.i.i.preheader, %.preheader87.i.i.i.preheader.a
  %.2134.ph = phi float [ -inf, %.preheader87.i.i.i.preheader ], [ %28, %.preheader87.i.i.i.preheader.a ]
  %.2.ph = phi float [ +inf, %.preheader87.i.i.i.preheader ], [ %29, %.preheader87.i.i.i.preheader.a ]
  %.093.i.i.i.ph = phi i64 [ 0, %.preheader87.i.i.i.preheader ], [ %n.vec, %.preheader87.i.i.i.preheader.a ]
  br label %.preheader87.i.i.i

.preheader87.lr.ph.split.us.i.i.i:                ; preds = %.preheader87.lr.ph.i.i.i
  %i.cf = load i64, ptr %3, align 8, !tbaa !23, !llvm.access.group !225
  %i.cg = load i64, ptr %i.bs, align 8, !tbaa !153, !llvm.access.group !225
  br label %.preheader87.us.i.i.i

.preheader87.us.i.i.i:                            ; preds = %._crit_edge.us.i.i.i, %.preheader87.lr.ph.split.us.i.i.i
  %.0135 = phi float [ -inf, %.preheader87.lr.ph.split.us.i.i.i ], [ %.sroa.speculated38.us.i.i.i, %._crit_edge.us.i.i.i ]
  %.0132 = phi float [ -inf, %.preheader87.lr.ph.split.us.i.i.i ], [ %.sroa.speculated77.us.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %.0131 = phi float [ +inf, %.preheader87.lr.ph.split.us.i.i.i ], [ %.sroa.speculated83.us.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %.093.us.i.i.i = phi i64 [ 0, %.preheader87.lr.ph.split.us.i.i.i ], [ %i.gj, %._crit_edge.us.i.i.i ] ; 4 uses
  %i.ch = mul i64 %.093.us.i.i.i, %i.cf
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.0, i64 %i.ch
  %i.cj = mul i64 %.093.us.i.i.i, %i.cd
  %i.ck = getelementptr [4 x i8], ptr %.sroa.0121.0, i64 %i.cj
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader87.us.i.i.i
  %.1136 = phi float [ %.0135, %.preheader87.us.i.i.i ], [ %.sroa.speculated38.us.i.i.i, %bb.k ] ; 2 uses
  %.02991.us.i.i.i = phi i64 [ 0, %.preheader87.us.i.i.i ], [ %i.gf, %bb.k ] ; 3 uses
  %.08590.us.i.i.i = phi float [ 0.000000e+00, %.preheader87.us.i.i.i ], [ %i.gd, %bb.k ]
  %.08689.us.i.i.i = phi float [ 0.000000e+00, %.preheader87.us.i.i.i ], [ %i.ge, %bb.k ]
  %i.cl = mul i64 %.02991.us.i.i.i, %i.cg
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cl ; 16 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cp = load float, ptr %i.co, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.cq = fcmp olt float %i.cp, %i.cn
  %i.cr = select i1 %i.cq, float %i.cp, float %i.cn ; 2 uses
  %i.cs = fcmp olt float %i.cn, %i.cp
  %i.ct = select i1 %i.cs, float %i.cp, float %i.cn ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.cw = fcmp olt float %i.cv, %i.cr
  %i.cx = select i1 %i.cw, float %i.cv, float %i.cr ; 2 uses
  %i.cy = fcmp olt float %i.ct, %i.cv
  %i.cz = select i1 %i.cy, float %i.cv, float %i.ct ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.db = load float, ptr %i.da, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.dc = fcmp olt float %i.db, %i.cx
  %i.dd = select i1 %i.dc, float %i.db, float %i.cx ; 2 uses
  %i.de = fcmp olt float %i.cz, %i.db
  %i.df = select i1 %i.de, float %i.db, float %i.cz ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.di = fcmp olt float %i.dh, %i.dd
  %i.dj = select i1 %i.di, float %i.dh, float %i.dd ; 2 uses
  %i.dk = fcmp olt float %i.df, %i.dh
  %i.dl = select i1 %i.dk, float %i.dh, float %i.df ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.do = fcmp olt float %i.dn, %i.dj
  %i.dp = select i1 %i.do, float %i.dn, float %i.dj ; 2 uses
  %i.dq = fcmp olt float %i.dl, %i.dn
  %i.dr = select i1 %i.dq, float %i.dn, float %i.dl ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.du = fcmp olt float %i.dt, %i.dp
  %i.dv = select i1 %i.du, float %i.dt, float %i.dp ; 2 uses
  %i.dw = fcmp olt float %i.dr, %i.dt
  %i.dx = select i1 %i.dw, float %i.dt, float %i.dr ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cm, i64 28
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.ea = fcmp olt float %i.dz, %i.dv
  %i.eb = select i1 %i.ea, float %i.dz, float %i.dv ; 2 uses
  %i.ec = fcmp olt float %i.dx, %i.dz
  %i.ed = select i1 %i.ec, float %i.dz, float %i.dx ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.eg = fcmp olt float %i.ef, %i.eb
  %i.eh = select i1 %i.eg, float %i.ef, float %i.eb ; 2 uses
  %i.ei = fcmp olt float %i.ed, %i.ef
  %i.ej = select i1 %i.ei, float %i.ef, float %i.ed ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cm, i64 36
  %i.el = load float, ptr %i.ek, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.em = fcmp olt float %i.el, %i.eh
  %i.en = select i1 %i.em, float %i.el, float %i.eh ; 2 uses
  %i.eo = fcmp olt float %i.ej, %i.el
  %i.ep = select i1 %i.eo, float %i.el, float %i.ej ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.er = load float, ptr %i.eq, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.es = fcmp olt float %i.er, %i.en
  %i.et = select i1 %i.es, float %i.er, float %i.en ; 2 uses
  %i.eu = fcmp olt float %i.ep, %i.er
  %i.ev = select i1 %i.eu, float %i.er, float %i.ep ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cm, i64 44
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.ey = fcmp olt float %i.ex, %i.et
  %i.ez = select i1 %i.ey, float %i.ex, float %i.et ; 2 uses
  %i.fa = fcmp olt float %i.ev, %i.ex
  %i.fb = select i1 %i.fa, float %i.ex, float %i.ev ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.fe = fcmp olt float %i.fd, %i.ez
  %i.ff = select i1 %i.fe, float %i.fd, float %i.ez ; 2 uses
  %i.fg = fcmp olt float %i.fb, %i.fd
  %i.fh = select i1 %i.fg, float %i.fd, float %i.fb ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cm, i64 52
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.fk = fcmp olt float %i.fj, %i.ff
  %i.fl = select i1 %i.fk, float %i.fj, float %i.ff ; 2 uses
  %i.fm = fcmp olt float %i.fh, %i.fj
  %i.fn = select i1 %i.fm, float %i.fj, float %i.fh ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.fq = fcmp olt float %i.fp, %i.fl
  %i.fr = select i1 %i.fq, float %i.fp, float %i.fl ; 2 uses
  %i.fs = fcmp olt float %i.fn, %i.fp
  %i.ft = select i1 %i.fs, float %i.fp, float %i.fn ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cm, i64 60
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !64, !llvm.access.group !225 ; 4 uses
  %i.fw = fcmp olt float %i.fv, %i.fr
  %i.fx = select i1 %i.fw, float %i.fv, float %i.fr ; 3 uses
  %i.fy = fcmp olt float %i.ft, %i.fv
  %i.fz = select i1 %i.fy, float %i.fv, float %i.ft
  %i.ga = getelementptr [4 x i8], ptr %i.ck, i64 %.02991.us.i.i.i
  store float %i.fx, ptr %i.ga, align 4, !tbaa !64, !llvm.access.group !225
  %i.gb = fsub float %i.fz, %i.fx                 ; 3 uses
  %i.gc = fcmp olt float %.1136, %i.gb
  %.sroa.speculated38.us.i.i.i = select i1 %i.gc, float %i.gb, float %.1136 ; 3 uses
  %i.gd = fadd float %.08590.us.i.i.i, %i.fx      ; 4 uses
  %i.ge = fadd float %.08689.us.i.i.i, %i.gb      ; 3 uses
  %i.gf = add nuw i64 %.02991.us.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.gf, %i.cd
  br i1 %exitcond.not.i.i.i, label %._crit_edge.us.i.i.i, label %bb.k, !llvm.loop !227

._crit_edge.us.i.i.i:                             ; preds = %bb.k
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.093.us.i.i.i
  store float %i.gd, ptr %i.gg, align 4, !tbaa !64, !llvm.access.group !225
  %i.gh = fcmp olt float %.0132, %i.ge
  %.sroa.speculated77.us.i.i.i = select i1 %i.gh, float %i.ge, float %.0132 ; 2 uses
  %i.gi = fcmp olt float %i.gd, %.0131
  %.sroa.speculated83.us.i.i.i = select i1 %i.gi, float %i.gd, float %.0131 ; 2 uses
  %i.gj = add nuw i64 %.093.us.i.i.i, 1           ; 2 uses
  %exitcond106.not.i.i.i = icmp eq i64 %i.gj, %i.le
  br i1 %exitcond106.not.i.i.i, label %._crit_edge94.i.i.i, label %.preheader87.us.i.i.i, !llvm.loop !228

.preheader87.i.i.i:                               ; preds = %.preheader87.i.i.i.preheader.new, %.preheader87.i.i.i
  %.2134 = phi float [ %.sroa.speculated77.i.i.i, %.preheader87.i.i.i ], [ %.2134.ph, %.preheader87.i.i.i.preheader.new ] ; 2 uses
  %.2 = phi float [ %.sroa.speculated83.i.i.i, %.preheader87.i.i.i ], [ %.2.ph, %.preheader87.i.i.i.preheader.new ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.preheader87.i.i.i ], [ %.093.i.i.i.ph, %.preheader87.i.i.i.preheader.new ]
  %i.gk = fcmp olt float %.2134, 0.000000e+00
  %.sroa.speculated77.i.i.i = select i1 %i.gk, float 0.000000e+00, float %.2134 ; 2 uses
  %i.gl = fcmp ogt float %.2, 0.000000e+00
  %.sroa.speculated83.i.i.i = select i1 %i.gl, float 0.000000e+00, float %.2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 1           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.le
  br i1 %niter.ncmp.1, label %._crit_edge94.i.i.i, label %.preheader87.i.i.i, !llvm.loop !229

._crit_edge94.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader87.i.i.i, %.preheader87.i.i.i.preheader.a, %.lr.ph152, %._crit_edge
  %.not.i.i.i202 = phi i1 [ true, %._crit_edge ], [ false, %.preheader87.i.i.i.preheader.a ], [ true, %.lr.ph152 ], [ false, %.preheader87.i.i.i ], [ false, %._crit_edge.us.i.i.i ]
  %.lcssa201 = phi i64 [ 0, %._crit_edge ], [ %i.le, %.preheader87.i.i.i.preheader.a ], [ 0, %.lr.ph152 ], [ %i.le, %.preheader87.i.i.i ], [ %i.le, %._crit_edge.us.i.i.i ]
  %.2137 = phi float [ -inf, %._crit_edge ], [ -inf, %.preheader87.i.i.i.preheader.a ], [ -inf, %.lr.ph152 ], [ -inf, %.preheader87.i.i.i ], [ %.sroa.speculated38.us.i.i.i, %._crit_edge.us.i.i.i ]
  %.1133 = phi float [ -inf, %._crit_edge ], [ %28, %.preheader87.i.i.i.preheader.a ], [ -inf, %.lr.ph152 ], [ %.sroa.speculated77.i.i.i, %.preheader87.i.i.i ], [ %.sroa.speculated77.us.i.i.i, %._crit_edge.us.i.i.i ]
  %.1 = phi float [ +inf, %._crit_edge ], [ %29, %.preheader87.i.i.i.preheader.a ], [ +inf, %.lr.ph152 ], [ %.sroa.speculated83.i.i.i, %.preheader87.i.i.i ], [ %.sroa.speculated83.us.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %i.gm = insertelement <2 x float> poison, float %.1133, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %.2137, i64 1
  %i.go = fdiv <2 x float> <float 6.553500e+04, float 2.550000e+02>, %i.gn ; 2 uses
  %i.gp = extractelement <2 x float> %i.go, i64 0 ; 2 uses
  %i.gq = extractelement <2 x float> %i.go, i64 1 ; 2 uses
  %i.gr = fcmp olt float %i.gp, %i.gq
  %.sroa.speculated.i.i.i = select i1 %i.gr, float %i.gp, float %i.gq ; 3 uses
  %i.gs = load ptr, ptr %11, align 8, !tbaa !143, !llvm.access.group !225
  %i.gt = mul i64 %.lcssa201, %.042150            ; 2 uses
  %i.gu = load i64, ptr %12, align 8, !tbaa !23, !llvm.access.group !225
  %i.gv = mul i64 %i.gu, %i.gt
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gv ; 2 uses
  %i.gx = load ptr, ptr %13, align 8, !tbaa !141, !llvm.access.group !225
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.gx, i64 %i.gt
  br i1 %.not.i.i.i202, label %"_ZN5faiss25with_selected_simd_levelsILi7EZNKS_22IndexIVFRaBitQFastScan17compute_LUT_uint8EmPKfRKNS_16IndexIVFFastScan15CoarseQuantizedERNS_12AlignedTableIhLi32EEERNS8_ItLi32EEEPfRKNS_30FastScanDistancePostProcessingEE3$_0EEDaOT0_.exit", label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge94.i.i.i, %._crit_edge.i.i.i
  %.03197.i.i.i = phi i64 [ %i.hr, %._crit_edge.i.i.i ], [ 0, %._crit_edge94.i.i.i ] ; 7 uses
  %i.gz = load i64, ptr %i.ap, align 8, !tbaa !131, !llvm.access.group !225 ; 2 uses
  %.not101.i.i.i = icmp eq i64 %i.gz, 0
  br i1 %.not101.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc78, %.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.ik, %.noexc78 ] ; 2 uses
  %i.ha = load i64, ptr %12, align 8, !tbaa !23, !llvm.access.group !225
  %i.hb = mul i64 %i.ha, %.03197.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hb
  %i.hd = load i64, ptr %i.bs, align 8, !tbaa !153, !llvm.access.group !225 ; 2 uses
  %i.he = mul i64 %i.hd, %.lcssa.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.he
  %i.hg = load i64, ptr %i.bt, align 8, !tbaa !138, !llvm.access.group !225
  %i.hh = sub i64 %i.hg, %.lcssa.i.i.i
  %i.hi = mul i64 %i.hh, %i.hd
  call void @llvm.memset.p0.i64(ptr align 1 %i.hf, i8 0, i64 %i.hi, i1 false), !llvm.access.group !225
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.03197.i.i.i
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !64, !llvm.access.group !225
  %i.hl = fsub float %i.hk, %.1
  %i.hm = fmul float %.sroa.speculated.i.i.i, %i.hl
  %i.hn = fadd float %i.hm, 5.000000e-01
  %i.ho = fptosi float %i.hn to i32
  %i.hp = trunc i32 %i.ho to i16
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %.03197.i.i.i
  store i16 %i.hp, ptr %i.hq, align 2, !tbaa !163, !llvm.access.group !225
  %i.hr = add nuw i64 %.03197.i.i.i, 1            ; 2 uses
  %i.hs = load i64, ptr %2, align 8, !tbaa !23, !llvm.access.group !225
  %i.ht = icmp ult i64 %i.hr, %i.hs
  br i1 %i.ht, label %.preheader.i.i.i, label %"_ZN5faiss25with_selected_simd_levelsILi7EZNKS_22IndexIVFRaBitQFastScan17compute_LUT_uint8EmPKfRKNS_16IndexIVFFastScan15CoarseQuantizedERNS_12AlignedTableIhLi32EEERNS8_ItLi32EEEPfRKNS_30FastScanDistancePostProcessingEE3$_0EEDaOT0_.exit", !llvm.loop !230

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.noexc78
  %i.hu = phi i64 [ %i.ik, %.noexc78 ], [ %i.gz, %.preheader.i.i.i ]
  %.03096.i.i.i = phi i64 [ %i.ij, %.noexc78 ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.hv = load i64, ptr %3, align 8, !tbaa !23, !llvm.access.group !225
  %i.hw = mul i64 %i.hv, %.03197.i.i.i
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.0, i64 %i.hw
  %i.hy = load i64, ptr %i.bs, align 8, !tbaa !153, !llvm.access.group !225
  %i.hz = mul i64 %i.hy, %.03096.i.i.i            ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.hz
  %i.ib = mul i64 %i.hu, %.03197.i.i.i
  %i.ic = getelementptr [4 x i8], ptr %.sroa.0121.0, i64 %i.ib
  %i.id = getelementptr [4 x i8], ptr %i.ic, i64 %.03096.i.i.i
  %i.ie = load float, ptr %i.id, align 4, !tbaa !64, !llvm.access.group !225
  %i.if = load i64, ptr %12, align 8, !tbaa !23, !llvm.access.group !225
  %i.ig = mul i64 %i.if, %.03197.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.hz
  invoke void @_ZN5faiss6rabitq24lut_quantize_16_to_uint8ILNS_9SIMDLevelE0EEEvPKfffPh(ptr noundef %i.ia, float noundef %i.ie, float noundef %.sroa.speculated.i.i.i, ptr noundef %i.ii)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.access.group !225

.noexc78:                                         ; preds = %.lr.ph.i.i.i
  %i.ij = add nuw i64 %.03096.i.i.i, 1            ; 2 uses
  %i.ik = load i64, ptr %i.ap, align 8, !tbaa !131, !llvm.access.group !225 ; 3 uses
  %i.il = icmp ult i64 %i.ij, %i.ik
  br i1 %i.il, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !231

.lr.ph:                                           ; preds = %.lr.ph152, %bb.aj
  %i.im = phi i64 [ %i.le, %bb.aj ], [ %i.cc, %.lr.ph152 ]
  %.0148 = phi i64 [ %i.ld, %bb.aj ], [ 0, %.lr.ph152 ] ; 4 uses
  %i.in = mul i64 %i.im, %.042150
  %i.io = add i64 %i.in, %.0148                   ; 2 uses
  %i.ip = load ptr, ptr %i.bl, align 8, !tbaa !102, !llvm.access.group !225
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.io
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !23, !llvm.access.group !225 ; 2 uses
  %i.is = icmp sgt i64 %i.ir, -1
  br i1 %i.is, label %bb.l, label %bb.ai

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18, !llvm.access.group !225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %17, i8 0, i64 24, i1 false), !llvm.access.group !225
  store float 1.000000e+00, ptr %i.bm, align 8, !tbaa !93, !llvm.access.group !225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bn, i8 0, i64 28, i1 false), !llvm.access.group !225
  %i.it = load i64, ptr %3, align 8, !tbaa !23, !llvm.access.group !225
  %i.iu = mul i64 %i.it, %.0148
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.0, i64 %i.iu
  %i.iw = load i8, ptr %8, align 1, !tbaa !22, !llvm.access.group !225
  %i.ix = load i8, ptr %9, align 1, !tbaa !68, !range !32, !llvm.access.group !225, !noundef !33
  %i.iy = trunc nuw i8 %i.ix to i1
  invoke void @_ZNK5faiss22IndexIVFRaBitQFastScan20compute_residual_LUTEPKflRNS_12rabitq_utils16QueryFactorsDataEPfhbRSt6vectorIfSaIfEESA_(ptr noundef nonnull align 8 dereferenceable(402) %4, ptr noundef %i.cb, i64 noundef %i.ir, ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef %i.iv, i8 noundef zeroext %i.iw, i1 noundef zeroext %i.iy, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.access.group !225

bb.m:                                             ; preds = %bb.l
  %i.iz = load ptr, ptr %i.bo, align 8, !tbaa !98, !llvm.access.group !225 ; 2 uses
  %.not48 = icmp eq ptr %i.iz, null
  br i1 %.not48, label %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ja = getelementptr inbounds nuw [56 x i8], ptr %i.iz, i64 %i.io ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ja, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 32, i1 false), !llvm.access.group !225
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32 ; 5 uses
  %.not.i = icmp eq ptr %17, %i.ja
  br i1 %.not.i, label %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jc = load ptr, ptr %i.bq, align 8, !tbaa !65, !llvm.access.group !225
  %i.jd = load ptr, ptr %i.bp, align 8, !tbaa !62, !llvm.access.group !225 ; 9 uses
  %i.je = ptrtoint ptr %i.jc to i64               ; 3 uses
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf                    ; 12 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 48 ; 3 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !63, !llvm.access.group !225
  %i.jj = load ptr, ptr %i.jb, align 8, !tbaa !62, !llvm.access.group !225 ; 5 uses
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64               ; 2 uses
  %i.jm = sub i64 %i.jk, %i.jl
  %i.jn = icmp ugt i64 %i.jg, %i.jm
  br i1 %i.jn, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.jo = icmp ugt i64 %i.jg, 9223372036854775804
  br i1 %i.jo, label %bb.q, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i, !prof !159

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.access.group !225

.noexc88:                                         ; preds = %bb.q
  unreachable

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.jp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jg) #35
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.access.group !225 ; 4 uses

.noexc89:                                         ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i
  %i.jq = icmp samesign ugt i64 %i.jg, 4
  br i1 %i.jq, label %bb.r, label %bb.s, !prof !162

bb.r:                                             ; preds = %.noexc89
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jp, ptr align 4 %i.jd, i64 %i.jg, i1 false), !llvm.access.group !225
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit.i

bb.s:                                             ; preds = %.noexc89
  %i.jr = icmp eq i64 %i.jg, 4
  br i1 %i.jr, label %bb.t, label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.js = load float, ptr %i.jd, align 4, !tbaa !64, !llvm.access.group !225
  store float %i.js, ptr %i.jp, align 4, !tbaa !64, !llvm.access.group !225
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit.i

_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.jt = load ptr, ptr %i.jb, align 8, !tbaa !62, !llvm.access.group !225 ; 3 uses
  %.not.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit.i
  %i.ju = load ptr, ptr %i.jh, align 8, !tbaa !63, !llvm.access.group !225
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.jt to i64
  %i.jx = sub i64 %i.jv, %i.jw
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jx) #33, !llvm.access.group !225
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i: ; preds = %bb.u, %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit.i
  store ptr %i.jp, ptr %i.jb, align 8, !tbaa !62, !llvm.access.group !225
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jg
  store ptr %i.jy, ptr %i.jh, align 8, !tbaa !63, !llvm.access.group !225
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit.i

bb.v:                                             ; preds = %bb.o
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ja, i64 40 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !65, !llvm.access.group !225 ; 3 uses
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = sub i64 %i.kb, %i.jl                    ; 5 uses
  %.not24.i = icmp ult i64 %i.kc, %i.jg
  br i1 %.not24.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kd = icmp sgt i64 %i.jg, 4
  br i1 %i.kd, label %bb.x, label %bb.y, !prof !162

bb.x:                                             ; preds = %bb.w
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.jj, ptr align 4 %i.jd, i64 %i.jg, i1 false), !llvm.access.group !225
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit.i

bb.y:                                             ; preds = %bb.w
  %i.ke = icmp eq i64 %i.jg, 4
  br i1 %i.ke, label %bb.z, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit.i

bb.z:                                             ; preds = %bb.y
  %i.kf = load float, ptr %i.jd, align 4, !tbaa !64, !llvm.access.group !225
  store float %i.kf, ptr %i.jj, align 4, !tbaa !64, !llvm.access.group !225
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit.i

bb.aa:                                            ; preds = %bb.v
  %i.kg = icmp sgt i64 %i.kc, 4
  br i1 %i.kg, label %bb.ab, label %bb.ac, !prof !162

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.jj, ptr align 4 %i.jd, i64 %i.kc, i1 false), !llvm.access.group !225
  %.pre.i = load ptr, ptr %i.bp, align 8, !tbaa !62, !llvm.access.group !225
  %.pre25.i = load ptr, ptr %i.jz, align 8, !tbaa !65, !llvm.access.group !225 ; 2 uses
  %.pre26.i = load ptr, ptr %i.jb, align 8, !tbaa !62, !llvm.access.group !225
  %.pre27.i = load ptr, ptr %i.bq, align 8, !tbaa !65, !llvm.access.group !225
  %.pre28.i = ptrtoint ptr %.pre25.i to i64
  %.pre29.i = ptrtoint ptr %.pre26.i to i64
  %.pre31.i = sub i64 %.pre28.i, %.pre29.i
  %.pre33.i = ptrtoint ptr %.pre27.i to i64
  br label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.kh = icmp eq i64 %i.kc, 4
  br i1 %i.kh, label %bb.ad, label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.ki = load float, ptr %i.jd, align 4, !tbaa !64, !llvm.access.group !225
  store float %i.ki, ptr %i.jj, align 4, !tbaa !64, !llvm.access.group !225
  br label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPfS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.ad, %bb.ac, %bb.ab
  %.pre-phi34.i = phi i64 [ %.pre33.i, %bb.ab ], [ %i.je, %bb.ac ], [ %i.je, %bb.ad ]
  %.pre-phi32.i = phi i64 [ %.pre31.i, %bb.ab ], [ %i.kc, %bb.ac ], [ 4, %bb.ad ]
  %i.kj = phi ptr [ %.pre25.i, %bb.ab ], [ %i.ka, %bb.ac ], [ %i.ka, %bb.ad ] ; 2 uses
  %i.kk = phi ptr [ %.pre.i, %bb.ab ], [ %i.jd, %bb.ac ], [ %i.jd, %bb.ad ]
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.pre-phi32.i ; 3 uses
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = sub i64 %.pre-phi34.i, %i.km            ; 3 uses
  %i.ko = icmp sgt i64 %i.kn, 4
  br i1 %i.ko, label %bb.ae, label %bb.af, !prof !162

bb.ae:                                            ; preds = %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.kj, ptr align 4 %i.kl, i64 %i.kn, i1 false), !llvm.access.group !225
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit.i

bb.af:                                            ; preds = %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit.i
  %i.kp = icmp eq i64 %i.kn, 4
  br i1 %i.kp, label %bb.ag, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.kq = load float, ptr %i.kl, align 4, !tbaa !64, !llvm.access.group !225
  store float %i.kq, ptr %i.kj, align 4, !tbaa !64, !llvm.access.group !225
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit.i: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.z, %bb.y, %bb.x, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i
  %i.kr = load ptr, ptr %i.jb, align 8, !tbaa !62, !llvm.access.group !225
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.jg
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  store ptr %i.ks, ptr %i.kt, align 8, !tbaa !65, !llvm.access.group !225
  br label %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit

_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit: ; preds = %bb.n, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit.i, %bb.m
  %i.ku = load ptr, ptr %i.bp, align 8, !tbaa !62, !llvm.access.group !225 ; 3 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i.i80, label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit
  %i.kv = load ptr, ptr %i.br, align 8, !tbaa !63, !llvm.access.group !225
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.ku to i64
  %i.ky = sub i64 %i.kw, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef %i.ky) #33, !llvm.access.group !225
  br label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit

_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit: ; preds = %_ZN5faiss12rabitq_utils16QueryFactorsDataaSERKS1_.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18, !llvm.access.group !225
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph
  %i.kz = load i64, ptr %3, align 8, !tbaa !23, !llvm.access.group !225 ; 2 uses
  %i.la = mul i64 %i.kz, %.0148
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.0, i64 %i.la
  %i.lc = shl i64 %i.kz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.lb, i8 0, i64 %i.lc, i1 false), !llvm.access.group !225
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit
  %i.ld = add nuw i64 %.0148, 1                   ; 2 uses
  %i.le = load i64, ptr %2, align 8, !tbaa !23, !llvm.access.group !225 ; 12 uses
  %i.lf = icmp ult i64 %i.ld, %i.le
  br i1 %i.lf, label %.lr.ph, label %._crit_edge, !llvm.loop !232

"_ZN5faiss25with_selected_simd_levelsILi7EZNKS_22IndexIVFRaBitQFastScan17compute_LUT_uint8EmPKfRKNS_16IndexIVFFastScan15CoarseQuantizedERNS_12AlignedTableIhLi32EEERNS8_ItLi32EEEPfRKNS_30FastScanDistancePostProcessingEE3$_0EEDaOT0_.exit": ; preds = %._crit_edge.i.i.i, %._crit_edge94.i.i.i
  %i.lg = load ptr, ptr %14, align 8, !tbaa !26, !llvm.access.group !225
  %.idx = shl nsw i64 %.042150, 3
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 %.idx ; 2 uses
  store float %.sroa.speculated.i.i.i, ptr %i.lh, align 4, !tbaa !64, !llvm.access.group !225
  %i.li = getelementptr i8, ptr %i.lh, i64 4
  store float %.1, ptr %i.li, align 4, !tbaa !64, !llvm.access.group !225
  %i.lj = add nsw i64 %.042150, 1
  %i.lk = load i64, ptr %i.c, align 8, !tbaa !23, !llvm.access.group !225
  %.not46.not = icmp slt i64 %.042150, %i.lk
  br i1 %.not46.not, label %.lr.ph152, label %.loopexit142, !llvm.loop !233

._crit_edge156:                                   ; preds = %.loopexit142, %bb.i
  call void @__kmpc_dispatch_deinit(ptr nonnull @2, i32 %.pre166)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.pre = load i32, ptr %0, align 4, !tbaa !66
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge156, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit77
  %i.ll = phi i32 [ %.pre, %._crit_edge156 ], [ %.pre166, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit77 ]
  call void @__kmpc_barrier(ptr nonnull @3, i32 %i.ll)
  %.not.i.i.i81 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lm = ptrtoint ptr %.sroa.9.0 to i64
  %i.ln = ptrtoint ptr %.sroa.0.0 to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.lo) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %.not.i.i.i82 = icmp eq ptr %.sroa.0121.0, null
  br i1 %.not.i.i.i82, label %_ZNSt6vectorIfSaIfEED2Ev.exit83, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.lp = ptrtoint ptr %.sroa.9125.0 to i64
  %i.lq = ptrtoint ptr %.sroa.0121.0 to i64
  %i.lr = sub i64 %i.lp, %i.lq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.0, i64 noundef %i.lr) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit83

_ZNSt6vectorIfSaIfEED2Ev.exit83:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.am
  %i.ls = load ptr, ptr %16, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i84 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIfSaIfEED2Ev.exit85, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit83
  %i.lt = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !63
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.ls to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.lx) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit85

_ZNSt6vectorIfSaIfEED2Ev.exit85:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit83, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.ly = load ptr, ptr %15, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i86 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIfSaIfEED2Ev.exit87, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit85
  %i.lz = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !63
  %i.mb = ptrtoint ptr %i.ma to i64
  %i.mc = ptrtoint ptr %i.ly to i64
  %i.md = sub i64 %i.mb, %i.mc
  call void @_ZdlPvm(ptr noundef nonnull %i.ly, i64 noundef %i.md) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit87

_ZNSt6vectorIfSaIfEED2Ev.exit87:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit85, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @free(ptr noundef %.sroa.0126.0) #18
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i, %bb.l, %.invoke, %bb.q, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %lpad.loopexit.split-lp216 = landingpad { ptr, i32 }
          catch ptr null
  %i.me = extractvalue { ptr, i32 } %lpad.loopexit.split-lp216, 0
  call void @__clang_call_terminate(ptr %i.me) #36
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_dispatch_init_8(ptr, i32, i32, i64, i64, i64, i64) local_unnamed_addr #18

; Function Attrs: nounwind
declare i32 @__kmpc_dispatch_next_8(ptr, i32, ptr, ptr, ptr, ptr) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @__kmpc_dispatch_deinit(ptr, i32) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5faiss6rabitq24lut_quantize_16_to_uint8ILNS_9SIMDLevelE0EEEvPKfffPh(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef %3) local_unnamed_addr #28 comdat {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !64
  %i.b = fsub float %i.a, %1
  %i.c = fmul float %2, %i.b                      ; 3 uses
  %i.d = fcmp ugt float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.b, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp ult float %i.c, 2.550000e+02
  br i1 %i.e, label %bb.c, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit

bb.c:                                             ; preds = %bb.b
  %i.f = fadd float %i.c, 5.000000e-01
  %i.g = fptosi float %i.f to i32
  %i.h = trunc i32 %i.g to i8
  br label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit

_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i8 [ %i.h, %bb.c ], [ 0, %bb.a ], [ -1, %bb.b ]
  store i8 %.0.i.i, ptr %3, align 1, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !64
  %i.k = fsub float %i.j, %1
  %i.l = fmul float %2, %i.k                      ; 3 uses
  %i.m = fcmp ugt float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.d, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.1

bb.d:                                             ; preds = %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit
  %i.n = fcmp ult float %i.l, 2.550000e+02
  br i1 %i.n, label %bb.e, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.1

bb.e:                                             ; preds = %bb.d
  %i.o = fadd float %i.l, 5.000000e-01
  %i.p = fptosi float %i.o to i32
  %i.q = trunc i32 %i.p to i8
  br label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.1

_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.1: ; preds = %bb.e, %bb.d, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit
  %.0.i.i.1 = phi i8 [ %i.q, %bb.e ], [ 0, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit ], [ -1, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %.0.i.i.1, ptr %i.r, align 1, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !64
  %i.u = fsub float %i.t, %1
  %i.v = fmul float %2, %i.u                      ; 3 uses
  %i.w = fcmp ugt float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.f, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.2

bb.f:                                             ; preds = %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.1
  %i.x = fcmp ult float %i.v, 2.550000e+02
  br i1 %i.x, label %bb.g, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.2

bb.g:                                             ; preds = %bb.f
  %i.y = fadd float %i.v, 5.000000e-01
  %i.z = fptosi float %i.y to i32
  %i.aa = trunc i32 %i.z to i8
  br label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.2

_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.2: ; preds = %bb.g, %bb.f, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.1
  %.0.i.i.2 = phi i8 [ %i.aa, %bb.g ], [ 0, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.1 ], [ -1, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %.0.i.i.2, ptr %i.ab, align 1, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !64
  %i.ae = fsub float %i.ad, %1
  %i.af = fmul float %2, %i.ae                    ; 3 uses
  %i.ag = fcmp ugt float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.h, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.3

bb.h:                                             ; preds = %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.2
  %i.ah = fcmp ult float %i.af, 2.550000e+02
  br i1 %i.ah, label %bb.i, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.3

bb.i:                                             ; preds = %bb.h
  %i.ai = fadd float %i.af, 5.000000e-01
  %i.aj = fptosi float %i.ai to i32
  %i.ak = trunc i32 %i.aj to i8
  br label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.3

_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.3: ; preds = %bb.i, %bb.h, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.2
  %.0.i.i.3 = phi i8 [ %i.ak, %bb.i ], [ 0, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.2 ], [ -1, %bb.h ]
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %.0.i.i.3, ptr %i.al, align 1, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load float, ptr %i.am, align 4, !tbaa !64
  %i.ao = fsub float %i.an, %1
  %i.ap = fmul float %2, %i.ao                    ; 3 uses
  %i.aq = fcmp ugt float %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.j, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.4

bb.j:                                             ; preds = %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.3
  %i.ar = fcmp ult float %i.ap, 2.550000e+02
  br i1 %i.ar, label %bb.k, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.4

bb.k:                                             ; preds = %bb.j
  %i.as = fadd float %i.ap, 5.000000e-01
  %i.at = fptosi float %i.as to i32
  %i.au = trunc i32 %i.at to i8
  br label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.4

_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.4: ; preds = %bb.k, %bb.j, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.3
  %.0.i.i.4 = phi i8 [ %i.au, %bb.k ], [ 0, %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.3 ], [ -1, %bb.j ]
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %.0.i.i.4, ptr %i.av, align 1, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !64
  %i.ay = fsub float %i.ax, %1
  %i.az = fmul float %2, %i.ay                    ; 3 uses
  %i.ba = fcmp ugt float %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.l, label %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.5

bb.l:                                             ; preds = %_ZN5faiss6rabitq29round_nonnegative_byte_scalarEf.exit.4
  %i.bb = fcmp ult float %i.az, 2.550000e+02
end_hunk_0
begin_hunk_1_@_ZN5faiss6rabitq24lut_quantize_16_to_uint8ILNS_9SIMDLevelE0EEEvPKfffPh:bb.a
  store i8 %.0.i.i.15, ptr %i.fb, align 1, !tbaa !22
  ret void
}

declare noundef zeroext i8 @_ZN5faiss22pq4_get_packed_elementEPKhmmmm(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss22IndexIVFRaBitQFastScan27decode_fastscan_to_residualEPKhPff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(402) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, float noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.d, i1 false)
  %i.e = load i32, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = sitofp i32 %i.e to float
  %i.h = tail call noundef float @sqrtf(float noundef %i.g) #18
  %i.i = fdiv float 1.000000e+00, %i.h
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.012 = phi i64 [ %i.p, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.j = tail call noundef zeroext i1 @_ZN5faiss12rabitq_utils20extract_bit_fastscanEPKhm(ptr noundef %1, i64 noundef %.012)
  %i.k = select i1 %i.j, float 5.000000e-01, float -5.000000e-01
  %i.l = fmul float %3, %i.k
  %i.m = fmul float %i.l, 2.000000e+00
  %i.n = fmul float %i.i, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.012
  store float %i.n, ptr %i.o, align 4, !tbaa !64
  %i.p = add nuw i64 %.012, 1                     ; 2 uses
  %i.q = load i32, ptr %i.a, align 8, !tbaa !60
  %i.r = sext i32 %i.q to i64
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !3
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK5faiss22IndexIVFRaBitQFastScan9sa_decodeElPKhPf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %10) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.g, ptr %i.b, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 1, ptr %i.c, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !66
  %i.h = load i32, ptr %0, align 4, !tbaa !66     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !23
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !23
  %i.k = load i64, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %.not40 = icmp sgt i64 %i.k, %i.j
  br i1 %.not40, label %._crit_edge, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph42, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph42 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.03641 = phi i64 [ %i.k, %.lr.ph42 ], [ %i.dp, %.loopexit ] ; 4 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !24
  %i.p = load i64, ptr %4, align 8, !tbaa !23
  %i.q = mul i64 %i.p, %.03641
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !26     ; 2 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = load i32, ptr %i.l, align 8, !tbaa !60
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = mul nsw i64 %.03641, %i.v
  %i.x = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.w ; 7 uses
  %i.y = invoke noundef i64 @_ZNK5faiss15Level1Quantizer13decode_listnoEPKh(ptr noundef nonnull align 8 dereferenceable(88) %i.m, ptr noundef %i.r)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.z = icmp sgt i64 %i.y, -1
  br i1 %i.z, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !158
  %i.ab = icmp slt i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !145 ; 2 uses
  %i.ad = load ptr, ptr %7, align 8, !tbaa !62
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(36) %i.ac, i64 noundef %i.y, ptr noundef %i.ad)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %8, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %9, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %10, align 8, !tbaa !62   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load float, ptr %i.am, align 1, !tbaa !149
  %i.ao = load i32, ptr %i.l, align 8, !tbaa !60
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.al, i8 0, i64 %i.aq, i1 false)
  %i.ar = load i32, ptr %i.l, align 8, !tbaa !60  ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.at = sitofp i32 %i.ar to float
  %i.au = call noundef float @sqrtf(float noundef %i.at) #18
  %i.av = fdiv float 1.000000e+00, %i.au
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.lr.ph.preheader.i
  %.012.i = phi i64 [ %i.bc, %.noexc ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.aw = invoke noundef zeroext i1 @_ZN5faiss12rabitq_utils20extract_bit_fastscanEPKhm(ptr noundef %i.ai, i64 noundef %.012.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i
  %i.ax = select i1 %i.aw, float 5.000000e-01, float -5.000000e-01
  %i.ay = fmul float %i.an, %i.ax
  %i.az = fmul float %i.ay, 2.000000e+00
  %i.ba = fmul float %i.av, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.012.i
  store float %i.ba, ptr %i.bb, align 4, !tbaa !64
  %i.bc = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.bd = load i32, ptr %i.l, align 8, !tbaa !60  ; 5 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp ult i64 %i.bc, %i.be
  br i1 %i.bf, label %.lr.ph.i, label %_ZNK5faiss22IndexIVFRaBitQFastScan27decode_fastscan_to_residualEPKhPff.exit, !llvm.loop !3

_ZNK5faiss22IndexIVFRaBitQFastScan27decode_fastscan_to_residualEPKhPff.exit: ; preds = %.noexc
  %i.bg = sext i32 %i.bd to i64                   ; 5 uses
  %.not43 = icmp eq i32 %i.bd, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5faiss22IndexIVFRaBitQFastScan27decode_fastscan_to_residualEPKhPff.exit
  %i.bh = load ptr, ptr %7, align 8, !tbaa !62    ; 7 uses
  %i.bi = load ptr, ptr %10, align 8, !tbaa !62   ; 7 uses
  %min.iters.check = icmp ult i32 %i.bd, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = ptrtoaddr ptr %i.bh to i64
  %i.bl = add i64 %i.k, %indvar
  %i.bm = shl i64 %i.bl, 2
  %i.bn = mul i64 %i.bm, %i.v
  %i.bo = add i64 %i.bn, %i.t                     ; 2 uses
  %i.bp = sub i64 %i.bk, %i.bo
  %diff.check = icmp ugt i64 %i.bp, -32
  %i.bq = sub i64 %i.bj, %i.bo
  %diff.check51 = icmp ugt i64 %i.bq, -32
  %conflict.rdx = or i1 %diff.check, %diff.check51
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load = load <4 x float>, ptr %i.br, align 4, !tbaa !64
  %wide.load52 = load <4 x float>, ptr %i.bs, align 4, !tbaa !64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load53 = load <4 x float>, ptr %i.bt, align 4, !tbaa !64
  %wide.load54 = load <4 x float>, ptr %i.bu, align 4, !tbaa !64
  %i.bv = fadd <4 x float> %wide.load, %wide.load53
  %i.bw = fadd <4 x float> %wide.load52, %wide.load54
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <4 x float> %i.bv, ptr %i.bx, align 4, !tbaa !64
  store <4 x float> %i.bw, ptr %i.by, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bg
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.039.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.bg, 3
  %i.ca = and i32 %i.bd, 3
  %lcmp.mod.not = icmp eq i32 %i.ca, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.039.prol = phi i64 [ %i.ch, %scalar.ph.prol ], [ %.039.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.039.prol
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.039.prol
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !64
  %i.cf = fadd float %i.cc, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.039.prol
  store float %i.cf, ptr %i.cg, align 4, !tbaa !64
  %i.ch = add nuw i64 %.039.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !236

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.039.unr = phi i64 [ %.039.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.ci = sub nsw i64 %.039.ph, %i.bg
  %i.cj = icmp ugt i64 %i.ci, -4
  br i1 %i.cj, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.039 = phi i64 [ %i.dl, %scalar.ph ], [ %.039.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.039
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.039
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !64
  %i.co = fadd float %i.cl, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.039
  store float %i.co, ptr %i.cp, align 4, !tbaa !64
  %i.cq = add nuw i64 %.039, 1                    ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cq
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !64
  %i.cv = fadd float %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cq
  store float %i.cv, ptr %i.cw, align 4, !tbaa !64
  %i.cx = add nuw i64 %.039, 2                    ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cx
  %i.db = load float, ptr %i.da, align 4, !tbaa !64
  %i.dc = fadd float %i.cz, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cx
  store float %i.dc, ptr %i.dd, align 4, !tbaa !64
  %i.de = add nuw i64 %.039, 3                    ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.de
  %i.di = load float, ptr %i.dh, align 4, !tbaa !64
  %i.dj = fadd float %i.dg, %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.de
  store float %i.dj, ptr %i.dk, align 4, !tbaa !64
  %i.dl = add nuw i64 %.039, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dl, %i.bg
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !237

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.dm = load i32, ptr %i.l, align 8, !tbaa !60
  %i.dn = sext i32 %i.dm to i64
  %i.do = shl nsw i64 %i.dn, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %i.do, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.g, %_ZNK5faiss22IndexIVFRaBitQFastScan27decode_fastscan_to_residualEPKhPff.exit, %bb.h
  %i.dp = add nsw i64 %.03641, 1
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !23
  %.not.not = icmp slt i64 %.03641, %i.dq
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.a
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %bb.f, %bb.c
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %lpad.loopexit.split-lp55, 0
  call void @__clang_call_terminate(ptr %i.dr) #36
  unreachable
}

declare noundef i64 @_ZNK5faiss15Level1Quantizer13decode_listnoEPKh(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5faiss12rabitq_utils20extract_bit_fastscanEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #29

declare void @_ZN5faiss27rabitq_ivf_make_knn_scannerEbPKNS_22IndexIVFRaBitQFastScanEmmPfPlPKNS_10IDSelectorEPKNS_30FastScanDistancePostProcessingEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, i1 noundef zeroext, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN5faiss12_GLOBAL__N_124IVFRaBitQFastScanScanner9set_queryEPKf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(336) initializes((56, 64)) %0, ptr noundef %1) unnamed_addr #30 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.a, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5faiss12_GLOBAL__N_124IVFRaBitQFastScanScanner8set_listElf(ptr noundef nonnull align 8 dereferenceable(336) initializes((8, 16)) %0, i64 noundef %1, float %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165, !nonnull !33, !align !166
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !164
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !130, !range !32, !noundef !33
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @_ZNK5faiss22IndexIVFRaBitQFastScan20compute_residual_LUTEPKflRNS_12rabitq_utils16QueryFactorsDataEPfhbRSt6vectorIfSaIfEESA_(ptr noundef nonnull align 8 dereferenceable(402) %i.c, ptr noundef %i.e, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef %i.h, i8 noundef zeroext %i.j, i1 noundef zeroext %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o)
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !165, !nonnull !33, !align !166 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 280
  %i.r = load i64, ptr %i.q, align 8, !tbaa !131  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %i.t = load i64, ptr %i.s, align 8, !tbaa !138
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %i.v = load i64, ptr %i.u, align 8, !tbaa !153
  %i.w = icmp eq i64 %i.v, 16
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !155
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_124IVFRaBitQFastScanScanner8set_listElf, ptr noundef nonnull @.str.2, i32 noundef 933) #37 ; 0 uses
  tail call void @abort() #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN5faiss25with_selected_simd_levelsILi7EZNS_12_GLOBAL__N_124IVFRaBitQFastScanScanner8set_listElfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !133
  br label %bb.d

.lr.ph54.i.i.i:                                   ; preds = %bb.d
  %i.ae = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %.sroa.speculated15.i.i.i, i64 1
  %i.ag = fdiv <2 x float> <float 6.553500e+04, float 2.550000e+02>, %i.af ; 2 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0 ; 2 uses
  %i.ai = extractelement <2 x float> %i.ag, i64 1 ; 2 uses
  %i.aj = fcmp olt float %i.ah, %i.ai
  %.sroa.speculated.i.i.i = select i1 %i.aj, float %i.ah, float %i.ai ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.027 = phi float [ -inf, %.lr.ph.i.i.i ], [ %.sroa.speculated15.i.i.i, %bb.d ] ; 2 uses
  %.025 = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %i.eb, %bb.d ]
  %.0 = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %i.ec, %bb.d ]
  %.051.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ed, %bb.d ] ; 3 uses
  %.idx = shl i64 %.051.i.i.i, 6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 16 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !64 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load float, ptr %i.am, align 4, !tbaa !64 ; 4 uses
  %i.ao = fcmp olt float %i.an, %i.al
  %i.ap = select i1 %i.ao, float %i.an, float %i.al ; 2 uses
  %i.aq = fcmp olt float %i.al, %i.an
  %i.ar = select i1 %i.aq, float %i.an, float %i.al ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !64 ; 4 uses
  %i.au = fcmp olt float %i.at, %i.ap
  %i.av = select i1 %i.au, float %i.at, float %i.ap ; 2 uses
  %i.aw = fcmp olt float %i.ar, %i.at
  %i.ax = select i1 %i.aw, float %i.at, float %i.ar ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !64 ; 4 uses
  %i.ba = fcmp olt float %i.az, %i.av
  %i.bb = select i1 %i.ba, float %i.az, float %i.av ; 2 uses
  %i.bc = fcmp olt float %i.ax, %i.az
  %i.bd = select i1 %i.bc, float %i.az, float %i.ax ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bf = load float, ptr %i.be, align 4, !tbaa !64 ; 4 uses
  %i.bg = fcmp olt float %i.bf, %i.bb
  %i.bh = select i1 %i.bg, float %i.bf, float %i.bb ; 2 uses
  %i.bi = fcmp olt float %i.bd, %i.bf
  %i.bj = select i1 %i.bi, float %i.bf, float %i.bd ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !64 ; 4 uses
  %i.bm = fcmp olt float %i.bl, %i.bh
  %i.bn = select i1 %i.bm, float %i.bl, float %i.bh ; 2 uses
  %i.bo = fcmp olt float %i.bj, %i.bl
  %i.bp = select i1 %i.bo, float %i.bl, float %i.bj ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.br = load float, ptr %i.bq, align 4, !tbaa !64 ; 4 uses
  %i.bs = fcmp olt float %i.br, %i.bn
  %i.bt = select i1 %i.bs, float %i.br, float %i.bn ; 2 uses
  %i.bu = fcmp olt float %i.bp, %i.br
  %i.bv = select i1 %i.bu, float %i.br, float %i.bp ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !64 ; 4 uses
  %i.by = fcmp olt float %i.bx, %i.bt
  %i.bz = select i1 %i.by, float %i.bx, float %i.bt ; 2 uses
  %i.ca = fcmp olt float %i.bv, %i.bx
  %i.cb = select i1 %i.ca, float %i.bx, float %i.bv ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !64 ; 4 uses
  %i.ce = fcmp olt float %i.cd, %i.bz
  %i.cf = select i1 %i.ce, float %i.cd, float %i.bz ; 2 uses
  %i.cg = fcmp olt float %i.cb, %i.cd
  %i.ch = select i1 %i.cg, float %i.cd, float %i.cb ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !64 ; 4 uses
  %i.ck = fcmp olt float %i.cj, %i.cf
  %i.cl = select i1 %i.ck, float %i.cj, float %i.cf ; 2 uses
  %i.cm = fcmp olt float %i.ch, %i.cj
  %i.cn = select i1 %i.cm, float %i.cj, float %i.ch ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.cp = load float, ptr %i.co, align 4, !tbaa !64 ; 4 uses
  %i.cq = fcmp olt float %i.cp, %i.cl
  %i.cr = select i1 %i.cq, float %i.cp, float %i.cl ; 2 uses
  %i.cs = fcmp olt float %i.cn, %i.cp
  %i.ct = select i1 %i.cs, float %i.cp, float %i.cn ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !64 ; 4 uses
  %i.cw = fcmp olt float %i.cv, %i.cr
  %i.cx = select i1 %i.cw, float %i.cv, float %i.cr ; 2 uses
  %i.cy = fcmp olt float %i.ct, %i.cv
  %i.cz = select i1 %i.cy, float %i.cv, float %i.ct ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.db = load float, ptr %i.da, align 4, !tbaa !64 ; 4 uses
  %i.dc = fcmp olt float %i.db, %i.cx
  %i.dd = select i1 %i.dc, float %i.db, float %i.cx ; 2 uses
  %i.de = fcmp olt float %i.cz, %i.db
  %i.df = select i1 %i.de, float %i.db, float %i.cz ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ak, i64 52
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !64 ; 4 uses
  %i.di = fcmp olt float %i.dh, %i.dd
  %i.dj = select i1 %i.di, float %i.dh, float %i.dd ; 2 uses
  %i.dk = fcmp olt float %i.df, %i.dh
  %i.dl = select i1 %i.dk, float %i.dh, float %i.df ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !64 ; 4 uses
  %i.do = fcmp olt float %i.dn, %i.dj
  %i.dp = select i1 %i.do, float %i.dn, float %i.dj ; 2 uses
  %i.dq = fcmp olt float %i.dl, %i.dn
  %i.dr = select i1 %i.dq, float %i.dn, float %i.dl ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ak, i64 60
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !64 ; 4 uses
  %i.du = fcmp olt float %i.dt, %i.dp
  %i.dv = select i1 %i.du, float %i.dt, float %i.dp ; 3 uses
  %i.dw = fcmp olt float %i.dr, %i.dt
  %i.dx = select i1 %i.dw, float %i.dt, float %i.dr
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.051.i.i.i
  store float %i.dv, ptr %i.dy, align 4, !tbaa !64
  %i.dz = fsub float %i.dx, %i.dv                 ; 3 uses
  %i.ea = fcmp olt float %.027, %i.dz
  %.sroa.speculated15.i.i.i = select i1 %i.ea, float %i.dz, float %.027 ; 2 uses
  %i.eb = fadd float %.025, %i.dz                 ; 2 uses
  %i.ec = fadd float %.0, %i.dv                   ; 2 uses
  %i.ed = add nuw i64 %.051.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ed, %i.r
  br i1 %exitcond.not.i.i.i, label %.lr.ph54.i.i.i, label %bb.d, !llvm.loop !238

bb.e:                                             ; preds = %bb.e, %.lr.ph54.i.i.i
  %.01152.i.i.i = phi i64 [ 0, %.lr.ph54.i.i.i ], [ %i.ek, %bb.e ] ; 3 uses
  %i.ee = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.ef = shl i64 %.01152.i.i.i, 4                ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.01152.i.i.i
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ef
  tail call void @_ZN5faiss6rabitq24lut_quantize_16_to_uint8ILNS_9SIMDLevelE0EEEvPKfffPh(ptr noundef %i.eg, float noundef %i.ei, float noundef %.sroa.speculated.i.i.i, ptr noundef %i.ej)
  %i.ek = add nuw i64 %.01152.i.i.i, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %i.r
  br i1 %exitcond.not, label %_ZN5faiss25with_selected_simd_levelsILi7EZNS_12_GLOBAL__N_124IVFRaBitQFastScanScanner8set_listElfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit, label %bb.e, !llvm.loop !239

_ZN5faiss25with_selected_simd_levelsILi7EZNS_12_GLOBAL__N_124IVFRaBitQFastScanScanner8set_listElfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit: ; preds = %bb.e, %bb.c
  %.sroa.speculated.i.i.i34 = phi float [ -0.000000e+00, %bb.c ], [ %.sroa.speculated.i.i.i, %bb.e ]
  %.133 = phi float [ 0.000000e+00, %bb.c ], [ %i.ec, %bb.e ]
  %i.el = shl i64 %i.r, 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.el
  %i.en = sub i64 %i.t, %i.r
  %i.eo = shl i64 %i.en, 4
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.em, i8 0, i64 %i.eo, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !241
  store i16 0, ptr %i.eq, align 2, !tbaa !163
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float %.sroa.speculated.i.i.i34, ptr %i.er, align 8, !tbaa !64
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 116
  store float %.133, ptr %i.es, align 4, !tbaa !64
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.eu = load ptr, ptr %i.b, align 8, !tbaa !165, !nonnull !33, !align !166
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 352
  %i.ew = load i8, ptr %i.i, align 8, !tbaa !129
  %i.ex = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.ey = load i8, ptr %i.k, align 1, !tbaa !130, !range !32, !noundef !33
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = tail call noundef ptr @_ZNK5faiss14RaBitQuantizer21get_distance_computerEhPKfb(ptr noundef nonnull align 8 dereferenceable(48) %i.ev, i8 noundef zeroext %i.ew, ptr noundef %i.ex, i1 noundef zeroext %i.ez) ; 2 uses
  %i.fb = load ptr, ptr %i.et, align 8, !tbaa !142 ; 3 uses
  store ptr %i.fa, ptr %i.et, align 8, !tbaa !142
  %.not.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5faiss25FlatCodesDistanceComputerESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN5faiss25FlatCodesDistanceComputerEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5faiss25FlatCodesDistanceComputerEEclEPS1_.exit.i.i: ; preds = %_ZN5faiss25with_selected_simd_levelsILi7EZNS_12_GLOBAL__N_124IVFRaBitQFastScanScanner8set_listElfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !15
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8
  tail call void %i.fe(ptr noundef nonnull align 8 dereferenceable(32) %i.fb) #18, !inline_history !240
  %.pre = load ptr, ptr %i.et, align 8, !tbaa !142
  br label %_ZNSt10unique_ptrIN5faiss25FlatCodesDistanceComputerESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN5faiss25FlatCodesDistanceComputerESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZN5faiss25with_selected_simd_levelsILi7EZNS_12_GLOBAL__N_124IVFRaBitQFastScanScanner8set_listElfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit, %_ZNKSt14default_deleteIN5faiss25FlatCodesDistanceComputerEEclEPS1_.exit.i.i
  %i.ff = phi ptr [ %i.fa, %_ZN5faiss25with_selected_simd_levelsILi7EZNS_12_GLOBAL__N_124IVFRaBitQFastScanScanner8set_listElfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit ], [ %.pre, %_ZNKSt14default_deleteIN5faiss25FlatCodesDistanceComputerEEclEPS1_.exit.i.i ] ; 2 uses
  %i.fg = load ptr, ptr %i.d, align 8, !tbaa !164
  %i.fh = load ptr, ptr %i.ff, align 8, !tbaa !15
  %i.fi = load ptr, ptr %i.fh, align 8
  tail call void %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, ptr noundef %i.fg)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZNK5faiss12_GLOBAL__N_124IVFRaBitQFastScanScanner16distance_to_codeEPKh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef float %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %1)
  ret float %i.f
}

declare noundef i64 @_ZNK5faiss19InvertedListScanner13iterate_codesEPNS_21InvertedListsIteratorEPfPlmRm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZNK5faiss19InvertedListScanner16scan_codes_rangeEmPKhPKlfRNS_16RangeQueryResultE(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, ptr noundef, ptr noundef, float noundef, ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

declare void @_ZNK5faiss19InvertedListScanner19iterate_codes_rangeEPNS_21InvertedListsIteratorEfRNS_16RangeQueryResultERm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, float noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZNK5faiss12_GLOBAL__N_124IVFRaBitQFastScanScanner10scan_codesEmPKhPKlRNS_22ResultHandlerUnorderedIflEE(ptr noundef nonnull align 8 dereferenceable(336) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.a = alloca [1 x i32], align 4                ; 5 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.b = alloca [1 x i32], align 4                ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.7", align 1  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !105, !range !32, !noundef !33
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__dynamic_cast(ptr nonnull %4, ptr nonnull @_ZTIN5faiss22ResultHandlerUnorderedIflEE, ptr nonnull @_ZTIN5faiss17HeapResultHandlerINS_4CMaxIflEELb0EEE, i64 0) #18 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %.val = load i64, ptr %i.g, align 8, !tbaa !254 ; 7 uses
  %i.h = icmp eq i64 %.val, 0
  br i1 %i.h, label %_ZZNK5faiss12_GLOBAL__N_124IVFRaBitQFastScanScanner10scan_codesEmPKhPKlRNS_22ResultHandlerUnorderedIflEEENKUlPT_E_clINS_17HeapResultHandlerINS_4CMaxIflEELb0EEEEEmSA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt i64 %.val, 2305843009213693951
  br i1 %i.i, label %.noexc.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = shl nuw nsw i64 %.val, 2                 ; 5 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.n = load float, ptr %i.j, align 8, !tbaa !64 ; 2 uses
  %i.o = add nsw i64 %i.k, -4                     ; 2 uses
  %i.p = lshr exact i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %n.vec = and i64 %i.q, 9223372036854775800      ; 3 uses
  %i.r = shl i64 %n.vec, 2
  %i.s = getelementptr i8, ptr %i.l, i64 %i.r
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !64
  store <4 x float> %broadcast.splat, ptr %i.u, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !242

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.l, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.s, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float %i.n, ptr %.07.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.m
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !243

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.x = icmp samesign ugt i64 %.val, 1152921504606846975
  br i1 %i.x, label %bb.e, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
          to label %.noexc49.i unwind label %bb.k

.noexc49.i:                                       ; preds = %bb.e
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i
  %i.y = shl nuw nsw i64 %.val, 3                 ; 4 uses
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #35
          to label %.noexc50.i unwind label %bb.k ; 5 uses

.noexc50.i:                                       ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.z, i8 -1, i64 %i.y, i1 false), !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !165, !nonnull !33, !align !166 ; 2 uses
  %i.ac = load i8, ptr %i.c, align 8, !tbaa !105, !range !32, !noundef !33
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = xor i1 %i.ad, true
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !106
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 360
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(402) %i.ab, i1 noundef zeroext %i.ae, i64 noundef 1, i64 noundef %.val, ptr noundef nonnull %i.l, ptr noundef nonnull %i.z, ptr noundef %i.ag, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(26) %i.ah)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %.noexc50.i
  %i.al = load ptr, ptr %6, align 8, !tbaa !256   ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.g unwind label %bb.m       ; 12 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store ptr %i.b, ptr %i.aq, align 8, !tbaa !258
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, ptr noundef nonnull %i.ar)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !141
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !259
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i64 %1, ptr %i.ax, align 8, !tbaa !260
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store ptr %3, ptr %i.ay, align 8, !tbaa !261
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !104
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, i64 noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 56 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !262
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %bb.i
  store ptr %2, ptr %i.bf, align 8, !tbaa !262
  br label %._crit_edge.i

bb.k:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i, %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit58.i

bb.l:                                             ; preds = %.noexc50.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit56.i

bb.m:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

._crit_edge.i:                                    ; preds = %bb.j, %bb.i
  %i.bk = load ptr, ptr %6, align 8, !tbaa !256   ; 2 uses
  %i.bl = load ptr, ptr %i.aa, align 8, !tbaa !165, !nonnull !33, !align !166 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 276
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !147 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 304
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !138
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !143
  %i.bs = invoke noundef i64 @_ZNK5faiss16IndexIVFFastScan16get_block_strideEv(ptr noundef nonnull align 8 dereferenceable(352) %i.bl)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %._crit_edge.i
  %i.bt = trunc i64 %i.bp to i32
  %i.bu = add i64 %1, -1
  %i.bv = sext i32 %i.bn to i64                   ; 2 uses
  %i.bw = add i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = urem i64 %i.bw, %i.bv
  %i.by = sub nuw i64 %i.bw, %i.bx
  %i.bz = load ptr, ptr %i.bk, align 8, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i32 noundef 1, i64 noundef %i.by, i32 noundef %i.bn, i32 noundef %i.bt, ptr noundef %2, ptr noundef %i.br, i32 noundef 0, i64 noundef %i.bs)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !263
  %i.ce = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(88) %i.ap)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !264
  %i.cj = add i64 %i.ci, %i.cd
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !264
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.cl = load ptr, ptr %6, align 8, !tbaa !256   ; 3 uses
  %.not.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %_ZNKSt14default_deleteIN5faiss19FastScanCodeScannerEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5faiss19FastScanCodeScannerEEclEPS1_.exit.i.i: ; preds = %bb.q
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.cl) #18, !inline_history !244
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %_ZNKSt14default_deleteIN5faiss19FastScanCodeScannerEEclEPS1_.exit.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.y) #33
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.k) #33
  br label %_ZZNK5faiss12_GLOBAL__N_124IVFRaBitQFastScanScanner10scan_codesEmPKhPKlRNS_22ResultHandlerUnorderedIflEEENKUlPT_E_clINS_17HeapResultHandlerINS_4CMaxIflEELb0EEEEEmSA_.exit

bb.r:                                             ; preds = %bb.v, %bb.p
  %.019.i = phi i64 [ 0, %bb.p ], [ %i.da, %bb.v ] ; 3 uses
  %.02718.i = phi i64 [ 0, %bb.p ], [ %.1.i, %bb.v ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.019.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !23 ; 2 uses
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.019.i
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !64
  %i.cu = load ptr, ptr %4, align 8, !tbaa !15
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef zeroext i1 %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %4, float noundef %i.ct, i64 noundef %i.cq)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cx = load i64, ptr %i.ck, align 8, !tbaa !265
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %i.ck, align 8, !tbaa !265
  %i.cz = add i64 %.02718.i, 1
  br label %bb.v

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.o, %bb.n, %._crit_edge.i, %bb.h, %bb.g
  %lpad.loopexit.split-lp114 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r
  %.1.i = phi i64 [ %.02718.i, %bb.r ], [ %i.cz, %bb.u ], [ %.02718.i, %bb.t ] ; 2 uses
  %i.da = add nuw nsw i64 %.019.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.da, %.val
  br i1 %exitcond.not.i, label %bb.q, label %bb.r, !llvm.loop !245

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m
  %.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp114, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bj, %bb.m ] ; 2 uses
  %i.db = load ptr, ptr %6, align 8, !tbaa !256   ; 3 uses
  %.not.i52.i = icmp eq ptr %i.db, null
  br i1 %.not.i52.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit56.i, label %_ZNKSt14default_deleteIN5faiss19FastScanCodeScannerEEclEPS1_.exit.i53.i

_ZNKSt14default_deleteIN5faiss19FastScanCodeScannerEEclEPS1_.exit.i53.i: ; preds = %bb.w
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !15
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.db) #18, !inline_history !244
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit56.i

_ZNSt6vectorIlSaIlEED2Ev.exit56.i:                ; preds = %_ZNKSt14default_deleteIN5faiss19FastScanCodeScannerEEclEPS1_.exit.i53.i, %bb.w, %bb.l
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.bi, %bb.l ], [ %.pn.pn.pn.i, %bb.w ], [ %.pn.pn.pn.i, %_ZNKSt14default_deleteIN5faiss19FastScanCodeScannerEEclEPS1_.exit.i53.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.y) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit58.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt6vectorIfSaIfEED2Ev.exit58.i33, %_ZNSt6vectorIfSaIfEED2Ev.exit58.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %_ZNSt6vectorIfSaIfEED2Ev.exit58.i ], [ %.pn.pn.pn.pn.pn.i34, %_ZNSt6vectorIfSaIfEED2Ev.exit58.i33 ], [ %.pn77, %bb.aw ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIfSaIfEED2Ev.exit58.i:                ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit56.i, %bb.k
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %_ZNSt6vectorIlSaIlEED2Ev.exit56.i ], [ %i.bh, %bb.k ]
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.k) #33
  br label %common.resume

bb.x:                                             ; preds = %bb.a
  %i.df = tail call ptr @__dynamic_cast(ptr nonnull %4, ptr nonnull @_ZTIN5faiss22ResultHandlerUnorderedIflEE, ptr nonnull @_ZTIN5faiss17HeapResultHandlerINS_4CMinIflEELb0EEE, i64 0) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.df, null
  br i1 %.not22, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = getelementptr i8, ptr %i.df, i64 32
  %.val26 = load i64, ptr %i.dg, align 8, !tbaa !268 ; 7 uses
  %i.dh = icmp eq i64 %.val26, 0
  br i1 %i.dh, label %_ZZNK5faiss12_GLOBAL__N_124IVFRaBitQFastScanScanner10scan_codesEmPKhPKlRNS_22ResultHandlerUnorderedIflEEENKUlPT_E_clINS_17HeapResultHandlerINS_4CMaxIflEELb0EEEEEmSA_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = icmp ugt i64 %.val26, 2305843009213693951
  br i1 %i.di, label %.noexc.i54, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i27

.noexc.i54:                                       ; preds = %bb.z
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i27: ; preds = %bb.z
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dk = shl nuw nsw i64 %.val26, 2              ; 5 uses
  %i.dl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #35 ; 8 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  %i.dn = load float, ptr %i.dj, align 8, !tbaa !64 ; 2 uses
  %i.do = add nsw i64 %i.dk, -4                   ; 2 uses
  %i.dp = lshr exact i64 %i.do, 2
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.do, 28
  br i1 %min.iters.check101, label %.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader, label %vector.ph102

vector.ph102:                                     ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i27
  %n.vec103 = and i64 %i.dq, 9223372036854775800  ; 3 uses
  %i.dr = shl i64 %n.vec103, 2
  %i.ds = getelementptr i8, ptr %i.dl, i64 %i.dr
  %broadcast.splatinsert104 = insertelement <4 x float> poison, float %i.dn, i64 0
  %broadcast.splat105 = shufflevector <4 x float> %broadcast.splatinsert104, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph102
  %index107 = phi i64 [ 0, %vector.ph102 ], [ %index.next109, %vector.body106 ] ; 2 uses
  %i.dt = shl i64 %index107, 2
  %next.gep108 = getelementptr i8, ptr %i.dl, i64 %i.dt ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep108, i64 16
  store <4 x float> %broadcast.splat105, ptr %next.gep108, align 4, !tbaa !64
  store <4 x float> %broadcast.splat105, ptr %i.du, align 4, !tbaa !64
  %index.next109 = add nuw i64 %index107, 8       ; 2 uses
  %i.dv = icmp eq i64 %index.next109, %n.vec103
  br i1 %i.dv, label %middle.block110, label %vector.body106, !llvm.loop !246

middle.block110:                                  ; preds = %vector.body106
  %cmp.n111 = icmp eq i64 %i.dq, %n.vec103
  br i1 %cmp.n111, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i31, label %.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader:           ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i27, %middle.block110
  %.07.i.i.i.i.i.i.i.i.i.i29.ph = phi ptr [ %i.dl, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i27 ], [ %i.ds, %middle.block110 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i.i.i.i.i28:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i28
  %.07.i.i.i.i.i.i.i.i.i.i29 = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i28 ], [ %.07.i.i.i.i.i.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader ] ; 2 uses
  store float %i.dn, ptr %.07.i.i.i.i.i.i.i.i.i.i29, align 4, !tbaa !64
  %i.dw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i29, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.dw, %i.dm
  br i1 %.not.i.i.i.i.i.i.i.i.i.i30, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i31, label %.lr.ph.i.i.i.i.i.i.i.i.i.i28, !llvm.loop !247

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i31:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i28, %middle.block110
  %i.dx = icmp samesign ugt i64 %.val26, 1152921504606846975
  br i1 %i.dx, label %bb.aa, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i32

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i31
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
          to label %.noexc49.i53 unwind label %bb.ag

.noexc49.i53:                                     ; preds = %bb.aa
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i32: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i31
  %i.dy = shl nuw nsw i64 %.val26, 3              ; 4 uses
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #35
          to label %.noexc50.i35 unwind label %bb.ag ; 5 uses

.noexc50.i35:                                     ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dz, i8 -1, i64 %i.dy, i1 false), !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !165, !nonnull !33, !align !166 ; 2 uses
  %i.ec = load i8, ptr %i.c, align 8, !tbaa !105, !range !32, !noundef !33
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = xor i1 %i.ed, true
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !106
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ei = load ptr, ptr %i.eb, align 8, !tbaa !15
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 360
  %i.ek = load ptr, ptr %i.ej, align 8
  invoke void %i.ek(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(402) %i.eb, i1 noundef zeroext %i.ee, i64 noundef 1, i64 noundef %.val26, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dz, ptr noundef %i.eg, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(26) %i.eh)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %.noexc50.i35
  %i.el = load ptr, ptr %5, align 8, !tbaa !256   ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = invoke noundef ptr %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %bb.ac unwind label %bb.ai     ; 12 uses

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  store ptr %i.a, ptr %i.eq, align 8, !tbaa !258
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !15
  %i.et = load ptr, ptr %i.es, align 8
  invoke void %i.et(ptr noundef nonnull align 8 dereferenceable(88) %i.ep, ptr noundef nonnull %i.er)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.i41.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !141
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !259
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  store i64 %1, ptr %i.ex, align 8, !tbaa !260
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  store ptr %3, ptr %i.ey, align 8, !tbaa !261
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !104
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.fc = load ptr, ptr %i.ep, align 8, !tbaa !15
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8
  invoke void %i.fe(ptr noundef nonnull align 8 dereferenceable(88) %i.ep, i64 noundef %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.i41.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 56 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !262
  %.not.i43 = icmp eq ptr %i.fg, null
  br i1 %.not.i43, label %bb.af, label %._crit_edge.i44

bb.af:                                            ; preds = %bb.ae
  store ptr %2, ptr %i.ff, align 8, !tbaa !262
  br label %._crit_edge.i44

bb.ag:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i32, %bb.aa
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit58.i33

bb.ah:                                            ; preds = %.noexc50.i35
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit56.i36

bb.ai:                                            ; preds = %bb.ab
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

._crit_edge.i44:                                  ; preds = %bb.af, %bb.ae
  %i.fk = load ptr, ptr %5, align 8, !tbaa !256   ; 2 uses
  %i.fl = load ptr, ptr %i.ea, align 8, !tbaa !165, !nonnull !33, !align !166 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 276
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !147 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 304
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !138
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !143
  %i.fs = invoke noundef i64 @_ZNK5faiss16IndexIVFFastScan16get_block_strideEv(ptr noundef nonnull align 8 dereferenceable(352) %i.fl)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.i41.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %._crit_edge.i44
  %i.ft = trunc i64 %i.fp to i32
  %i.fu = add i64 %1, -1
  %i.fv = sext i32 %i.fn to i64                   ; 2 uses
  %i.fw = add i64 %i.fu, %i.fv                    ; 2 uses
  %i.fx = urem i64 %i.fw, %i.fv
  %i.fy = sub nuw i64 %i.fw, %i.fx
  %i.fz = load ptr, ptr %i.fk, align 8, !tbaa !15
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  invoke void %i.gb(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, i32 noundef 1, i64 noundef %i.fy, i32 noundef %i.fn, i32 noundef %i.ft, ptr noundef %2, ptr noundef %i.fr, i32 noundef 0, i64 noundef %i.fs)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.i41.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ep, i64 80
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !263
  %i.ge = load ptr, ptr %i.ep, align 8, !tbaa !15
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  invoke void %i.gg(ptr noundef nonnull align 8 dereferenceable(88) %i.ep)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.i41.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !264
  %i.gj = add i64 %i.gi, %i.gd
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !264
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br label %bb.an

bb.am:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.gl = load ptr, ptr %5, align 8, !tbaa !256   ; 3 uses
  %.not.i.i49 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i49, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i51, label %_ZNKSt14default_deleteIN5faiss19FastScanCodeScannerEEclEPS1_.exit.i.i50

_ZNKSt14default_deleteIN5faiss19FastScanCodeScannerEEclEPS1_.exit.i.i50: ; preds = %bb.am
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !15
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(8) %i.gl) #18, !inline_history !248
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i51

_ZNSt6vectorIfSaIfEED2Ev.exit.i51:                ; preds = %_ZNKSt14default_deleteIN5faiss19FastScanCodeScannerEEclEPS1_.exit.i.i50, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.dy) #33
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dk) #33
  br label %_ZZNK5faiss12_GLOBAL__N_124IVFRaBitQFastScanScanner10scan_codesEmPKhPKlRNS_22ResultHandlerUnorderedIflEEENKUlPT_E_clINS_17HeapResultHandlerINS_4CMaxIflEELb0EEEEEmSA_.exit

bb.an:                                            ; preds = %bb.ar, %bb.al
  %.019.i45 = phi i64 [ 0, %bb.al ], [ %i.ha, %bb.ar ] ; 3 uses
  %.02718.i46 = phi i64 [ 0, %bb.al ], [ %.1.i47, %bb.ar ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.019.i45
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !23 ; 2 uses
  %i.gr = icmp slt i64 %i.gq, 0
  br i1 %i.gr, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.019.i45
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !64
  %i.gu = load ptr, ptr %4, align 8, !tbaa !15
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = invoke noundef zeroext i1 %i.gv(ptr noundef nonnull align 8 dereferenceable(32) %4, float noundef %i.gt, i64 noundef %i.gq)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.i41.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.gw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gx = load i64, ptr %i.gk, align 8, !tbaa !265
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.gk, align 8, !tbaa !265
  %i.gz = add i64 %.02718.i46, 1
  br label %bb.ar

.loopexit.split-lp.loopexit.split-lp.i41.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ao, %bb.ak, %bb.aj, %._crit_edge.i44, %bb.ad, %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.an
  %.1.i47 = phi i64 [ %.02718.i46, %bb.an ], [ %i.gz, %bb.aq ], [ %.02718.i46, %bb.ap ] ; 2 uses
  %i.ha = add nuw nsw i64 %.019.i45, 1            ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %i.ha, %.val26
  br i1 %exitcond.not.i48, label %bb.am, label %bb.an, !llvm.loop !249

bb.as:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i41.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai
  %.pn.pn.pn.i38 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i41.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fj, %bb.ai ] ; 2 uses
  %i.hb = load ptr, ptr %5, align 8, !tbaa !256   ; 3 uses
  %.not.i52.i39 = icmp eq ptr %i.hb, null
  br i1 %.not.i52.i39, label %_ZNSt6vectorIlSaIlEED2Ev.exit56.i36, label %_ZNKSt14default_deleteIN5faiss19FastScanCodeScannerEEclEPS1_.exit.i53.i40

_ZNKSt14default_deleteIN5faiss19FastScanCodeScannerEEclEPS1_.exit.i53.i40: ; preds = %bb.as
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !15
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(8) %i.hb) #18, !inline_history !248
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit56.i36

_ZNSt6vectorIlSaIlEED2Ev.exit56.i36:              ; preds = %_ZNKSt14default_deleteIN5faiss19FastScanCodeScannerEEclEPS1_.exit.i53.i40, %bb.as, %bb.ah
  %.pn.pn.pn.pn.i37 = phi { ptr, i32 } [ %i.fi, %bb.ah ], [ %.pn.pn.pn.i38, %bb.as ], [ %.pn.pn.pn.i38, %_ZNKSt14default_deleteIN5faiss19FastScanCodeScannerEEclEPS1_.exit.i53.i40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.dy) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit58.i33

_ZNSt6vectorIfSaIfEED2Ev.exit58.i33:              ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit56.i36, %bb.ag
  %.pn.pn.pn.pn.pn.i34 = phi { ptr, i32 } [ %.pn.pn.pn.pn.i37, %_ZNSt6vectorIlSaIlEED2Ev.exit56.i36 ], [ %i.fh, %bb.ag ]
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dk) #33
  br label %common.resume

.critedge:                                        ; preds = %bb.x, %bb.b
  %i.hf = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.at unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.at:                                            ; preds = %.critedge
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss12_GLOBAL__N_124IVFRaBitQFastScanScanner10scan_codesEmPKhPKlRNS_22ResultHandlerUnorderedIflEE, ptr noundef nonnull @.str.2, i32 noundef 1059)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @__cxa_throw(ptr nonnull %i.hf, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #34
          to label %bb.ax unwind label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.critedge
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0 = phi i1 [ false, %bb.au ], [ true, %bb.at ] ; 2 uses
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hi = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.av
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !22
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %.0, label %bb.aw, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %.0, label %bb.aw, label %common.resume

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn77 = phi { ptr, i32 } [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.hf) #18
  br label %common.resume

_ZZNK5faiss12_GLOBAL__N_124IVFRaBitQFastScanScanner10scan_codesEmPKhPKlRNS_22ResultHandlerUnorderedIflEEENKUlPT_E_clINS_17HeapResultHandlerINS_4CMaxIflEELb0EEEEEmSA_.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i51, %bb.y, %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.c
  %.2 = phi i64 [ 0, %bb.c ], [ %.1.i, %_ZNSt6vectorIfSaIfEED2Ev.exit.i ], [ %.1.i47, %_ZNSt6vectorIfSaIfEED2Ev.exit.i51 ], [ 0, %bb.y ]
  ret i64 %.2

bb.ax:                                            ; preds = %bb.au
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_124IVFRaBitQFastScanScannerD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(336) dereferenceable(336) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_124IVFRaBitQFastScanScannerE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5faiss25FlatCodesDistanceComputerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5faiss25FlatCodesDistanceComputerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5faiss25FlatCodesDistanceComputerEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #18, !inline_history !269
  br label %_ZNSt10unique_ptrIN5faiss25FlatCodesDistanceComputerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss25FlatCodesDistanceComputerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5faiss25FlatCodesDistanceComputerEEclEPS1_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN5faiss25FlatCodesDistanceComputerESt14default_deleteIS1_EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN5faiss25FlatCodesDistanceComputerESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #33
  br label %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit

_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIfSaIfEED2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit3

_ZNSt6vectorIfSaIfEED2Ev.exit3:                   ; preds = %_ZN5faiss12rabitq_utils16QueryFactorsDataD2Ev.exit, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIfSaIfEED2Ev.exit5, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !63
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit5

_ZNSt6vectorIfSaIfEED2Ev.exit5:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit3, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !133
  tail call void @free(ptr noundef %i.ap) #18
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !141
  tail call void @free(ptr noundef %i.ar) #18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !143
  tail call void @free(ptr noundef %i.at) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_124IVFRaBitQFastScanScannerD0Ev(ptr noundef nonnull align 8 dereferenceable(336) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5faiss12_GLOBAL__N_124IVFRaBitQFastScanScannerD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #33
  ret void
}

declare noundef ptr @_ZNK5faiss14RaBitQuantizer21get_distance_computerEhPKfb(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !34
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.40) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #34
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !159

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #35 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  store i64 %i.c, ptr %i.a, align 8, !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !22
  store i8 %i.j, ptr %i.i, align 1, !tbaa !22
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !22
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v4f32(<4 x float>) #26

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #24 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { convergent nounwind }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { noreturn nounwind }
attributes #37 = { cold nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !95}
!1 = distinct !{!1, !95}
!2 = distinct !{null}
!3 = distinct !{!3, !95}
!4 = distinct !{!4, !95}
!5 = !{i32 7, !"openmp", i32 51}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"vtable pointer", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!19 = !{!"long", !10, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !19, i64 8, !10, i64 16}
!21 = !{!20, !17, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{!19, !19, i64 0}
!24 = !{!17, !17, i64 0}
!25 = !{!"p1 float", !16, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"bool", !10, i64 0}
!28 = !{!"_ZTSN5faiss10MetricTypeE", !10, i64 0}
!29 = !{!"float", !10, i64 0}
!30 = !{!"_ZTSN5faiss5IndexE", !11, i64 8, !19, i64 16, !27, i64 24, !27, i64 25, !28, i64 28, !29, i64 32}
!31 = !{!30, !27, i64 25}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{!18, !17, i64 0}
!35 = !{!20, !19, i64 8}
!36 = !{!"p1 _ZTSN5faiss5IndexE", !16, i64 0}
!37 = !{!"_ZTSN5faiss20ClusteringInitMethodE", !10, i64 0}
!38 = !{!"short", !10, i64 0}
!39 = !{!"double", !10, i64 0}
!40 = !{!"_ZTSN5faiss20ClusteringParametersE", !11, i64 0, !11, i64 4, !27, i64 8, !27, i64 9, !27, i64 10, !27, i64 11, !27, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !19, i64 32, !27, i64 40, !27, i64 41, !37, i64 42, !38, i64 44, !39, i64 48}
!41 = !{!"_ZTSN5faiss15Level1QuantizerE", !36, i64 0, !19, i64 8, !10, i64 16, !27, i64 17, !40, i64 24, !36, i64 80}
!42 = !{!"_ZTSN5faiss17IndexIVFInterfaceE", !41, i64 8, !19, i64 96, !19, i64 104}
!43 = !{!"p1 _ZTSN5faiss13InvertedListsE", !16, i64 0}
!44 = !{!"_ZTSN5faiss9DirectMap4TypeE", !10, i64 0}
!45 = !{!"p1 long", !16, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIlSaIlEE", !48, i64 0}
!50 = !{!"any p2 pointer", !16, i64 0}
!51 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !50, i64 0}
!52 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!53 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !52, i64 0}
!54 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !29, i64 0, !19, i64 8}
!55 = !{!"_ZTSSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !51, i64 0, !19, i64 8, !53, i64 16, !19, i64 24, !54, i64 32, !52, i64 48}
!56 = !{!"_ZTSSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE", !55, i64 0}
!57 = !{!"_ZTSN5faiss9DirectMapE", !44, i64 0, !49, i64 8, !56, i64 32}
!58 = !{!"_ZTSN5faiss8IndexIVFE", !30, i64 0, !42, i64 40, !43, i64 152, !27, i64 160, !19, i64 168, !11, i64 176, !11, i64 180, !57, i64 184, !27, i64 272}
!59 = !{!58, !19, i64 168}
!60 = !{!30, !11, i64 8}
!61 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!62 = !{!61, !25, i64 0}
!63 = !{!61, !25, i64 16}
!64 = !{!29, !29, i64 0}
!65 = !{!61, !25, i64 8}
!66 = !{!11, !11, i64 0}
!67 = !{!45, !45, i64 0}
!68 = !{!27, !27, i64 0}
!69 = !{!"p1 _ZTSN5faiss9QuantizerE", !16, i64 0}
!70 = !{!"_ZTSN5faiss16IndexIVFFastScanE", !58, i64 0, !11, i64 276, !19, i64 280, !19, i64 288, !19, i64 296, !19, i64 304, !11, i64 312, !11, i64 316, !11, i64 320, !19, i64 328, !69, i64 336, !43, i64 344}
!71 = !{!"_ZTSN5faiss9QuantizerE", !19, i64 8, !19, i64 16}
!72 = !{!"_ZTSN5faiss14RaBitQuantizerE", !71, i64 0, !25, i64 24, !28, i64 32, !19, i64 40}
!73 = !{!"_ZTSN5faiss22IndexIVFRaBitQFastScanE", !70, i64 0, !72, i64 352, !10, i64 400, !27, i64 401}
!74 = !{!73, !19, i64 392}
!75 = !{!42, !19, i64 96}
!76 = !{!73, !10, i64 400}
!77 = !{!73, !27, i64 401}
!78 = !{!"p1 _ZTSN5faiss10IDSelectorE", !16, i64 0}
!79 = !{!"_ZTSN5faiss16SearchParametersE", !78, i64 8}
!80 = !{!"p1 _ZTSN5faiss16SearchParametersE", !16, i64 0}
!81 = !{!"_ZTSN5faiss19SearchParametersIVFE", !79, i64 0, !19, i64 16, !19, i64 24, !19, i64 32, !27, i64 40, !19, i64 48, !80, i64 56, !16, i64 64}
!82 = !{!"_ZTSN5faiss25IVFRaBitQSearchParametersE", !81, i64 0, !10, i64 72, !27, i64 73}
!83 = !{!82, !10, i64 72}
!84 = !{!82, !27, i64 73}
!85 = !{!"p1 _ZTSN5faiss12rabitq_utils16QueryFactorsDataE", !16, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIN5faiss12rabitq_utils16QueryFactorsDataESaIS2_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!86, !85, i64 0}
!88 = !{!86, !85, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !61, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorIfSaIfEE", !90, i64 0}
!92 = !{!"_ZTSN5faiss12rabitq_utils16QueryFactorsDataE", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !29, i64 24, !29, i64 28, !91, i64 32}
!93 = !{!92, !29, i64 24}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!86, !85, i64 8}
!97 = !{!"_ZTSN5faiss30FastScanDistancePostProcessingE", !11, i64 0, !85, i64 8, !19, i64 16, !10, i64 24, !27, i64 25}
!98 = !{!97, !85, i64 8}
!99 = !{!97, !10, i64 24}
!100 = !{!"_ZTSN5faiss16IndexIVFFastScan15CoarseQuantizedE", !19, i64 0, !25, i64 8, !45, i64 16}
!101 = !{!100, !19, i64 0}
!102 = !{!100, !45, i64 16}
!103 = !{!"_ZTSN5faiss19InvertedListScannerE", !19, i64 8, !27, i64 16, !27, i64 17, !78, i64 24, !19, i64 32}
!104 = !{!103, !19, i64 8}
!105 = !{!103, !27, i64 16}
!106 = !{!103, !78, i64 24}
!107 = !{!"p1 _ZTSN5faiss22IndexIVFRaBitQFastScanE", !16, i64 0}
!108 = !{!"_ZTSN5faiss22AlignedTableTightAllocIhLi32EEE", !17, i64 0, !19, i64 8}
!109 = !{!"_ZTSN5faiss12AlignedTableIhLi32EEE", !108, i64 0, !19, i64 16}
!110 = !{!"p1 short", !16, i64 0}
!111 = !{!"_ZTSN5faiss22AlignedTableTightAllocItLi32EEE", !110, i64 0, !19, i64 8}
!112 = !{!"_ZTSN5faiss12AlignedTableItLi32EEE", !111, i64 0, !19, i64 16}
!113 = !{!"_ZTSSt5arrayIfLm2EE", !10, i64 0}
!114 = !{!"_ZTSN5faiss22AlignedTableTightAllocIfLi32EEE", !25, i64 0, !19, i64 8}
!115 = !{!"_ZTSN5faiss12AlignedTableIfLi32EEE", !114, i64 0, !19, i64 16}
!116 = !{!"p1 int", !16, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !116, i64 0, !116, i64 8, !116, i64 16}
!118 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !117, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !118, i64 0}
!120 = !{!"_ZTSSt6vectorIiSaIiEE", !119, i64 0}
!121 = !{!"p1 _ZTSN5faiss25FlatCodesDistanceComputerE", !16, i64 0}
!122 = !{!"_ZTSSt10_Head_baseILm0EPN5faiss25FlatCodesDistanceComputerELb0EE", !121, i64 0}
!123 = !{!"_ZTSSt11_Tuple_implILm0EJPN5faiss25FlatCodesDistanceComputerESt14default_deleteIS1_EEE", !122, i64 0}
!124 = !{!"_ZTSSt5tupleIJPN5faiss25FlatCodesDistanceComputerESt14default_deleteIS1_EEE", !123, i64 0}
!125 = !{!"_ZTSSt15__uniq_ptr_implIN5faiss25FlatCodesDistanceComputerESt14default_deleteIS1_EE", !124, i64 0}
!126 = !{!"_ZTSSt15__uniq_ptr_dataIN5faiss25FlatCodesDistanceComputerESt14default_deleteIS1_ELb1ELb1EE", !125, i64 0}
!127 = !{!"_ZTSSt10unique_ptrIN5faiss25FlatCodesDistanceComputerESt14default_deleteIS1_EE", !126, i64 0}
!128 = !{!"_ZTSN5faiss12_GLOBAL__N_124IVFRaBitQFastScanScannerE", !103, i64 0, !107, i64 40, !10, i64 48, !27, i64 49, !25, i64 56, !109, i64 64, !112, i64 88, !113, i64 112, !115, i64 120, !91, i64 144, !91, i64 168, !92, i64 192, !97, i64 248, !120, i64 280, !91, i64 304, !127, i64 328}
!129 = !{!128, !10, i64 48}
!130 = !{!128, !27, i64 49}
!131 = !{!70, !19, i64 280}
!132 = !{!114, !19, i64 8}
!133 = !{!114, !25, i64 0}
!134 = !{!115, !19, i64 16}
!135 = !{!117, !116, i64 0}
!136 = !{!117, !116, i64 16}
!137 = !{!30, !28, i64 28}
!138 = !{!70, !19, i64 304}
!139 = !{!111, !19, i64 8}
!140 = !{!110, !110, i64 0}
!141 = !{!111, !110, i64 0}
!142 = !{!121, !121, i64 0}
!143 = !{!108, !17, i64 0}
!144 = !{!112, !19, i64 16}
!145 = !{!41, !36, i64 0}
!146 = !{!58, !43, i64 152}
!147 = !{!70, !11, i64 276}
!148 = !{!"_ZTSN5faiss12rabitq_utils14SignBitFactorsE", !29, i64 0, !29, i64 4}
!149 = !{!148, !29, i64 4}
!150 = !{!"llvm.loop.isvectorized", i32 1}
!151 = !{!"llvm.loop.unroll.runtime.disable"}
!152 = !{!58, !27, i64 272}
!153 = !{!70, !19, i64 296}
!154 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!155 = !{!154, !154, i64 0}
!156 = !{!70, !69, i64 336}
!157 = !{!70, !19, i64 288}
!158 = !{!41, !19, i64 8}
!159 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!160 = !{i64 2, i64 -1, i64 -1, i1 true}
!161 = !{!160}
!162 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!163 = !{!38, !38, i64 0}
!164 = !{!128, !25, i64 56}
!165 = !{!128, !107, i64 40}
!166 = !{i64 8}
!167 = distinct !{!167, !94}
!168 = distinct !{!168, !95}
!169 = !{!81, !19, i64 24}
!170 = !{!81, !19, i64 16}
!171 = !{!97, !11, i64 0}
!172 = !{!97, !19, i64 16}
!173 = !{!97, !27, i64 25}
!174 = !{!100, !25, i64 8}
!175 = distinct !{null, null, null}
!176 = !{!103, !27, i64 17}
!177 = !{!103, !19, i64 32}
!178 = !{!107, !107, i64 0}
!179 = !{!117, !116, i64 8}
!180 = !{!122, !121, i64 0}
!181 = !{!128, !85, i64 256}
!182 = !{!128, !19, i64 264}
!183 = !{!128, !10, i64 272}
!184 = !{!128, !27, i64 273}
!185 = distinct !{!185, !95}
!186 = distinct !{!186, !95, !150, !151}
!187 = distinct !{!187, !95, !151, !150}
!188 = distinct !{!188, !95}
!189 = !{!"p1 _ZTSN5faiss12AlignedTableIhLi32EEE", !16, i64 0}
!190 = !{!"_ZTSNSt12_Vector_baseIN5faiss12AlignedTableIhLi32EEESaIS2_EE17_Vector_impl_dataE", !189, i64 0, !189, i64 8, !189, i64 16}
!191 = !{!190, !189, i64 0}
!192 = !{!58, !27, i64 160}
!193 = !{!"_ZTSN5faiss14IndexIVFRaBitQE", !58, i64 0, !72, i64 280, !10, i64 328}
!194 = !{!193, !10, i64 328}
!195 = !{!30, !19, i64 16}
!196 = !{!70, !43, i64 344}
!197 = distinct !{!197, !95}
!198 = distinct !{!198, !95}
!199 = distinct !{null}
!200 = distinct !{!200, !95}
!201 = distinct !{null, null}
!202 = !{!"_ZTSN5faiss10CodePackerE", !19, i64 8, !19, i64 16, !19, i64 24}
!203 = !{!202, !19, i64 24}
!204 = distinct !{!204, !95}
!205 = distinct !{!205, !95, !150, !151}
!206 = distinct !{!206, !94}
!207 = distinct !{!207, !95, !150}
!208 = !{!73, !28, i64 384}
!209 = distinct !{!209, !95, !150, !151}
!210 = distinct !{!210, !94}
!211 = distinct !{!211, !95, !150}
!212 = distinct !{!212, !95}
!213 = distinct !{!213, !95}
!214 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!215 = !{!214, !17, i64 0}
!216 = !{!214, !17, i64 16}
!217 = !{!214, !17, i64 8}
!218 = !{!92, !29, i64 16}
!219 = !{!92, !29, i64 20}
!220 = !{!92, !29, i64 0}
!221 = !{!92, !29, i64 4}
!222 = !{!108, !19, i64 8}
!223 = !{!109, !19, i64 16}
!224 = distinct !{!224, !95}
!225 = distinct !{}
!226 = distinct !{!226, !95, !150, !151}
!227 = distinct !{!227, !95}
!228 = distinct !{!228, !95}
!229 = distinct !{!229, !95, !151, !150}
!230 = distinct !{!230, !95}
!231 = distinct !{!231, !95}
!232 = distinct !{!232, !95}
!233 = distinct !{!233, !234}
!234 = !{!"llvm.loop.parallel_accesses", !225}
!235 = distinct !{!235, !95, !150, !151}
!236 = distinct !{!236, !94}
!237 = distinct !{!237, !95, !150}
!238 = distinct !{!238, !95}
!239 = distinct !{!239, !95}
!240 = distinct !{null, null, null}
!241 = !{!112, !110, i64 0}
!242 = distinct !{!242, !95, !150, !151}
!243 = distinct !{!243, !95, !151, !150}
!244 = distinct !{null, null, null}
!245 = distinct !{!245, !95}
!246 = distinct !{!246, !95, !150, !151}
!247 = distinct !{!247, !95, !151, !150}
!248 = distinct !{null, null, null}
!249 = distinct !{!249, !95}
!250 = !{!"_ZTSN5faiss24InvertedListScannerStatsE", !19, i64 0, !19, i64 8}
!251 = !{!"_ZTSN5faiss22ResultHandlerUnorderedIflEE", !29, i64 8, !250, i64 16}
!252 = !{!"_ZTSN5faiss14ResultHandlerTINS_4CMaxIflEEEE", !251, i64 0}
!253 = !{!"_ZTSN5faiss17HeapResultHandlerINS_4CMaxIflEELb0EEE", !252, i64 0, !19, i64 32, !25, i64 40, !45, i64 48}
!254 = !{!253, !19, i64 32}
!255 = !{!"p1 _ZTSN5faiss19FastScanCodeScannerE", !16, i64 0}
!256 = !{!255, !255, i64 0}
!257 = !{!"_ZTSN5faiss24SIMDResultHandlerToFloatE", !27, i64 8, !10, i64 9, !27, i64 10, !19, i64 16, !19, i64 24, !19, i64 32, !45, i64 40, !116, i64 48, !17, i64 56, !110, i64 64, !25, i64 72, !19, i64 80}
!258 = !{!257, !116, i64 48}
!259 = !{!257, !110, i64 64}
!260 = !{!257, !19, i64 32}
!261 = !{!257, !45, i64 40}
!262 = !{!257, !17, i64 56}
!263 = !{!257, !19, i64 80}
!264 = !{!251, !19, i64 16}
!265 = !{!251, !19, i64 24}
!266 = !{!"_ZTSN5faiss14ResultHandlerTINS_4CMinIflEEEE", !251, i64 0}
!267 = !{!"_ZTSN5faiss17HeapResultHandlerINS_4CMinIflEELb0EEE", !266, i64 0, !19, i64 32, !25, i64 40, !45, i64 48}
!268 = !{!267, !19, i64 32}
!269 = distinct !{null, null}
end_hunk_1
