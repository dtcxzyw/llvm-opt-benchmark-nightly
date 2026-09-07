Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/yolov3detectionoutput?download=true
inline.NumInlined: 320
inline.NumDeleted: 163
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4ncnn21Yolov3DetectionOutput7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %.not72155.not = icmp eq ptr %i.i, %i.j
  br i1 %.not72155.not, label %_ZNK4ncnn21Yolov3DetectionOutput21qsort_descent_inplaceERSt6vectorINS0_8BBoxRectESaIS2_EE.exit, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph158, %bb.z
  %i.s = phi ptr [ null, %.lr.ph158 ], [ %.lcssa, %bb.z ] ; 2 uses
  %.056156 = phi i64 [ 0, %.lr.ph158 ], [ %i.dd, %bb.z ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.t = load i32, ptr %i.k, align 4, !tbaa !34   ; 3 uses
  %.not126 = icmp ne i32 %i.t, 0
  call void @llvm.assume(i1 %.not126)
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = icmp slt i32 %i.t, 0
  br i1 %i.v, label %bb.c, label %_ZNKSt6vectorIS_IN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #19
          to label %.noexc107 unwind label %.loopexit.split-lp134

.noexc107:                                        ; preds = %bb.c
  unreachable

_ZNKSt6vectorIS_IN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.b
  %i.w = mul nuw nsw i64 %i.u, 24                 ; 2 uses
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #20
          to label %.noexc108 unwind label %.loopexit133 ; 5 uses

.noexc108:                                        ; preds = %_ZNKSt6vectorIS_IN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.w, i1 false)
  store ptr %i.x, ptr %5, align 8, !tbaa !48
  %.idx = mul nuw nsw i64 %i.u, 24                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 2 uses
  store ptr %i.y, ptr %i.l, align 8, !tbaa !49
  store ptr %i.y, ptr %i.m, align 8, !tbaa !50
  %.pre = load ptr, ptr %1, align 8, !tbaa !84
  %.pre183 = load i32, ptr %i.k, align 4, !tbaa !34 ; 2 uses
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %.pre, i64 %.056156 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51 ; 2 uses
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !52 ; 2 uses
  store i32 %i.ad, ptr %i.b, align 4, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ag = sdiv i32 %i.af, %.pre183                ; 2 uses
  store i32 %i.ag, ptr %i.c, align 4, !tbaa !44
  %i.ah = load i32, ptr %i.n, align 8, !tbaa !33
  %i.ai = add nsw i32 %i.ah, 5
  %.not = icmp eq i32 %i.ag, %i.ai
  br i1 %.not, label %bb.d, label %.critedge

.loopexit133:                                     ; preds = %_ZNKSt6vectorIS_IN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit135 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp134:                            ; preds = %bb.c
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.d:                                             ; preds = %.noexc108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.aj = sext i32 %.pre183 to i64
  %i.ak = mul i64 %.056156, %i.aj
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.056156 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !54
  %i.ao = sitofp fast i32 %i.ab to float
  %i.ap = fmul fast float %i.an, %i.ao
  %i.aq = fptosi float %i.ap to i32
  store i32 %i.aq, ptr %i.e, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.ar = load float, ptr %i.am, align 4, !tbaa !54
  %i.as = sitofp fast i32 %i.ad to float
  %i.at = fmul fast float %i.ar, %i.as
  %i.au = fptosi float %i.at to i32
  store i32 %i.au, ptr %i.f, align 4, !tbaa !44
  %i.av = load i32, ptr %i.p, align 4, !tbaa !86
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.av)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn21Yolov3DetectionOutput7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.z, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %5)
  %.promoted = load ptr, ptr %4, align 8          ; 2 uses
  %i.aw = load i32, ptr %i.k, align 4, !tbaa !34
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %.pre184 = load ptr, ptr %i.q, align 8, !tbaa !56
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.x, %bb.d
  %.lcssa = phi ptr [ %.promoted, %bb.d ], [ %i.cz, %bb.x ] ; 6 uses
  store ptr %.lcssa, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ay = load ptr, ptr %5, align 8, !tbaa !48    ; 3 uses
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !49  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bg, %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i ], [ %i.ay, %._crit_edge ] ; 3 uses
  %i.ba = load ptr, ptr %.05.i.i.i, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !59
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #17
  br label %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bg, %i.az
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.bh = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ay, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i1.i, label %bb.z, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.bi = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #17
  br label %bb.z

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %i.bm = phi ptr [ %.pre184, %.lr.ph.preheader ], [ %i.cy, %bb.x ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.bn = phi ptr [ %.promoted, %.lr.ph.preheader ], [ %i.cz, %bb.x ] ; 10 uses
  %i.bo = load ptr, ptr %5, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %indvars.iv ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !56 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !56 ; 2 uses
  %i.bt = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bu = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 5 uses
  %.not70.i = icmp eq ptr %i.bq, %i.bs
  br i1 %.not70.i, label %bb.x, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = ptrtoint ptr %i.bq to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 10 uses
  %i.bz = sdiv exact i64 %i.by, 28                ; 2 uses
  %i.ca = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.cb = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cc = sub i64 %i.cb, %i.bt
  %.not.i109 = icmp ult i64 %i.cc, %i.by
  br i1 %.not.i109, label %bb.l, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4ncnn21Yolov3DetectionOutput8BBoxRectESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4ncnn21Yolov3DetectionOutput8BBoxRectESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.g
  %i.cd = icmp sgt i64 %i.by, 28
  br i1 %i.cd, label %bb.h, label %bb.i, !prof !87

bb.h:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4ncnn21Yolov3DetectionOutput8BBoxRectESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bm, ptr align 4 %i.bq, i64 %i.by, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4ncnn21Yolov3DetectionOutput8BBoxRectESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ce = icmp eq i64 %i.by, 28
  br i1 %i.ce, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bm, ptr noundef nonnull align 4 dereferenceable(28) %i.bq, i64 28, i1 false), !tbaa.struct !61
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.by ; 2 uses
  store ptr %i.cf, ptr %i.q, align 8, !tbaa !62
  br label %bb.x

bb.l:                                             ; preds = %bb.g
  %i.cg = sdiv exact i64 %i.bv, 28                ; 4 uses
  %i.ch = sub nsw i64 329406144173384850, %i.cg
  %i.ci = icmp ult i64 %i.ch, %i.bz
  br i1 %i.ci, label %bb.m, label %_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  store ptr %i.bn, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
          to label %.noexc112 unwind label %.loopexit.split-lp129

.noexc112:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %.sroa.speculated.i.i110 = call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.bz)
  %i.cj = add nsw i64 %.sroa.speculated.i.i110, %i.cg ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.cg
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 329406144173384850)
  %i.cm = select i1 %i.ck, i64 329406144173384850, i64 %i.cl ; 3 uses
  %.not.i.i111 = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i111, label %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_M_allocateEm.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.cn = mul nuw nsw i64 %i.cm, 28
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #20
          to label %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_M_allocateEm.exit.i unwind label %.loopexit128

_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.n, %_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.cp = phi ptr [ null, %_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.co, %bb.n ] ; 5 uses
  %i.cq = icmp sgt i64 %i.bv, 28
  br i1 %i.cq, label %bb.o, label %bb.p, !prof !87

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cp, ptr align 4 %i.bn, i64 %i.bv, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_M_allocateEm.exit.i
  %i.cr = icmp eq i64 %i.bv, 28
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cp, ptr noundef nonnull align 4 dereferenceable(28) %i.bn, i64 28, i1 false), !tbaa.struct !61
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.cs = getelementptr inbounds i8, ptr %i.cp, i64 %i.bv ; 3 uses
  %i.ct = icmp sgt i64 %i.by, 28
  br i1 %i.ct, label %bb.s, label %bb.t, !prof !87

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cs, ptr align 4 %i.bq, i64 %i.by, i1 false)
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cu = icmp eq i64 %i.by, 28
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cs, ptr noundef nonnull align 4 dereferenceable(28) %i.bq, i64 28, i1 false), !tbaa.struct !61
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.by ; 2 uses
  %.not.i55.i = icmp eq ptr %i.bn, null
  br i1 %.not.i55.i, label %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = sub i64 %i.cb, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.cw) #17
  br label %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.w, %bb.v
  store ptr %i.cv, ptr %i.q, align 8, !tbaa !62
  %i.cx = getelementptr inbounds nuw [28 x i8], ptr %i.cp, i64 %i.cm
  store ptr %i.cx, ptr %i.r, align 8, !tbaa !59
  br label %bb.x

bb.x:                                             ; preds = %bb.k, %.lr.ph, %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.cy = phi ptr [ %i.cf, %bb.k ], [ %i.bm, %.lr.ph ], [ %i.cv, %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.cz = phi ptr [ %i.bn, %bb.k ], [ %i.bn, %.lr.ph ], [ %i.cp, %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = load i32, ptr %i.k, align 4, !tbaa !34
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %.lr.ph, label %._crit_edge, !llvm.loop !79

.loopexit128:                                     ; preds = %bb.n
  %lpad.loopexit130 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bn, ptr %4, align 8
  br label %bb.y

.loopexit.split-lp129:                            ; preds = %bb.m
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp129, %.loopexit128
  %lpad.phi132 = phi { ptr, i32 } [ %lpad.loopexit130, %.loopexit128 ], [ %lpad.loopexit.split-lp131, %.loopexit.split-lp129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.aa

bb.z:                                             ; preds = %bb.f, %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.dd = add nuw i64 %.056156, 1                 ; 2 uses
  %i.de = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.df = load ptr, ptr %1, align 8, !tbaa !84
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = sdiv exact i64 %i.di, 72
  %.not72 = icmp ult i64 %i.dd, %i.dj
  br i1 %.not72, label %bb.b, label %.critedge78, !llvm.loop !80

bb.aa:                                            ; preds = %.loopexit133, %.loopexit.split-lp134, %bb.y
  %i.dk = phi ptr [ %i.bn, %bb.y ], [ %i.s, %.loopexit133 ], [ %i.s, %.loopexit.split-lp134 ]
  %.pn = phi { ptr, i32 } [ %lpad.phi132, %bb.y ], [ %lpad.loopexit135, %.loopexit133 ], [ %lpad.loopexit.split-lp136, %.loopexit.split-lp134 ]
  call void @_ZNSt6vectorIS_IN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.av

.critedge:                                        ; preds = %.noexc108
  %i.dl = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.lr.ph.i.i.i81

.lr.ph.i.i.i81:                                   ; preds = %.critedge, %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84
  %.05.i.i.i82 = phi ptr [ %i.ds, %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84 ], [ %i.x, %.critedge ] ; 3 uses
  %i.dm = load ptr, ptr %.05.i.i.i82, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i.i.i.i.i83 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i.i.i83, label %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i81
  %i.dn = getelementptr inbounds nuw i8, ptr %.05.i.i.i82, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !59
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #17
  br label %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84

_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84: ; preds = %bb.ab, %.lr.ph.i.i.i81
  %i.ds = getelementptr inbounds nuw i8, ptr %.05.i.i.i82, i64 24 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.ds, %i.dl
  br i1 %.not.i.i.i85, label %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i86, label %.lr.ph.i.i.i81, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i86: ; preds = %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84
  %.pr.i87 = load ptr, ptr %5, align 8, !tbaa !48 ; 3 uses
  %.not.i.i1.i89 = icmp eq ptr %.pr.i87, null
  br i1 %.not.i.i1.i89, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i86
  %i.dt = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %.pr.i87 to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i87, i64 noundef %i.dw) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.at

.critedge78:                                      ; preds = %bb.z
  %.pre185 = load ptr, ptr %i.q, align 8, !tbaa !56 ; 2 uses
  %i.dx = icmp eq ptr %.lcssa, %.pre185
  br i1 %i.dx, label %_ZNK4ncnn21Yolov3DetectionOutput21qsort_descent_inplaceERSt6vectorINS0_8BBoxRectESaIS2_EE.exit, label %bb.ae

bb.ae:                                            ; preds = %.critedge78
  %i.dy = ptrtoint ptr %.pre185 to i64
  %i.dz = ptrtoint ptr %.lcssa to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 28
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = add i32 %i.ec, -1
  call void @_ZNK4ncnn21Yolov3DetectionOutput21qsort_descent_inplaceERSt6vectorINS0_8BBoxRectESaIS2_EEii(ptr noundef nonnull readnone align 8 dereferenceable(456) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i32 noundef 0, i32 noundef %i.ed)
  br label %_ZNK4ncnn21Yolov3DetectionOutput21qsort_descent_inplaceERSt6vectorINS0_8BBoxRectESaIS2_EE.exit

_ZNK4ncnn21Yolov3DetectionOutput21qsort_descent_inplaceERSt6vectorINS0_8BBoxRectESaIS2_EE.exit: ; preds = %bb.a, %bb.ae, %.critedge78
  %.pre187232 = phi ptr [ %.lcssa, %.critedge78 ], [ %.lcssa, %bb.ae ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !36
  invoke void @_ZNK4ncnn21Yolov3DetectionOutput17nms_sorted_bboxesERSt6vectorINS0_8BBoxRectESaIS2_EERS1_ImSaImEEf(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, float noundef nofpclass(nan inf) %i.ef)
          to label %.preheader127 unwind label %bb.af

.preheader127:                                    ; preds = %_ZNK4ncnn21Yolov3DetectionOutput21qsort_descent_inplaceERSt6vectorINS0_8BBoxRectESaIS2_EE.exit
end_hunk_0
