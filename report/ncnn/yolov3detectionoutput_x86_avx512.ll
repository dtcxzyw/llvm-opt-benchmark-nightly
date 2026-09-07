Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/yolov3detectionoutput_x86_avx512?download=true
inline.NumInlined: 257
inline.NumDeleted: 138
begin_hunk_0_@_ZNK4ncnn32Yolov3DetectionOutput_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !60
  %.not72153.not = icmp eq ptr %i.i, %i.j
  br i1 %.not72153.not, label %.critedge78, label %.lr.ph156

.lr.ph156:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph156, %bb.z
  %.056154 = phi i64 [ 0, %.lr.ph156 ], [ %i.dg, %bb.z ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.s = load i32, ptr %i.k, align 4, !tbaa !32   ; 3 uses
  %.not126 = icmp ne i32 %i.s, 0
  call void @llvm.assume(i1 %.not126)
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = icmp slt i32 %i.s, 0
  br i1 %i.u, label %bb.c, label %_ZNKSt6vectorIS_IN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc107 unwind label %.loopexit.split-lp134

.noexc107:                                        ; preds = %bb.c
  unreachable

_ZNKSt6vectorIS_IN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.b
  %i.v = mul nuw nsw i64 %i.t, 24                 ; 2 uses
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #21
          to label %.noexc108 unwind label %.loopexit133 ; 5 uses

.noexc108:                                        ; preds = %_ZNKSt6vectorIS_IN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.w, i8 0, i64 %i.v, i1 false)
  store ptr %i.w, ptr %5, align 8, !tbaa !35
  %.idx = mul nuw nsw i64 %i.t, 24                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx ; 2 uses
  store ptr %i.x, ptr %i.l, align 8, !tbaa !36
  store ptr %i.x, ptr %i.m, align 8, !tbaa !37
  %.pre = load ptr, ptr %1, align 8, !tbaa !60
  %.pre176 = load i32, ptr %i.k, align 4, !tbaa !32 ; 2 uses
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %.pre, i64 %.056154 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !38  ; 2 uses
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.af = sdiv i32 %i.ae, %.pre176                ; 2 uses
  store i32 %i.af, ptr %i.c, align 4, !tbaa !39
  %i.ag = load i32, ptr %i.n, align 8, !tbaa !41
  %i.ah = add nsw i32 %i.ag, 5
  %.not = icmp eq i32 %i.af, %i.ah
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.ai = sext i32 %.pre176 to i64
  %i.aj = mul i64 %.056154, %i.ai
  store i64 %i.aj, ptr %i.d, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.056154 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !44
  %i.an = sitofp fast i32 %i.aa to float
  %i.ao = fmul fast float %i.am, %i.an
  %i.ap = fptosi float %i.ao to i32
  store i32 %i.ap, ptr %i.e, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.aq = load float, ptr %i.al, align 4, !tbaa !44
  %i.ar = sitofp fast i32 %i.ac to float
  %i.as = fmul fast float %i.aq, %i.ar
  %i.at = fptosi float %i.as to i32
  store i32 %i.at, ptr %i.f, align 4, !tbaa !39
  %i.au = load i32, ptr %i.p, align 4, !tbaa !63
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.au)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn32Yolov3DetectionOutput_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.y, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %5)
  %i.av = load i32, ptr %i.k, align 4, !tbaa !32
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %.pre177 = load ptr, ptr %i.q, align 8, !tbaa !64
  %.pre179.a = load ptr, ptr %4, align 8, !tbaa !64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.x, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.ax = load ptr, ptr %5, align 8, !tbaa !35    ; 3 uses
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !36  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bf, %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i ], [ %i.ax, %._crit_edge ] ; 3 uses
  %i.az = load ptr, ptr %.05.i.i.i, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !48
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #19
  br label %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, %i.ay
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.bg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ax, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i1.i, label %bb.z, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bk) #19
  br label %bb.z

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %i.bl = phi ptr [ %.pre179.a, %.lr.ph.preheader ], [ %i.db, %bb.x ] ; 8 uses
  %i.bm = phi ptr [ %.pre177, %.lr.ph.preheader ], [ %i.dc, %bb.x ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.bn = load ptr, ptr %5, align 8, !tbaa !35
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %indvars.iv ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !64 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !64 ; 2 uses
  %i.bs = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bt = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 5 uses
  %.not70.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not70.i, label %bb.x, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bp to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 10 uses
  %i.by = sdiv exact i64 %i.bx, 28                ; 2 uses
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bs
  %.not.i109 = icmp ult i64 %i.cb, %i.bx
  br i1 %.not.i109, label %bb.l, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4ncnn21Yolov3DetectionOutput8BBoxRectESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4ncnn21Yolov3DetectionOutput8BBoxRectESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.g
  %i.cc = icmp sgt i64 %i.bx, 28
  br i1 %i.cc, label %bb.h, label %bb.i, !prof !65

bb.h:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4ncnn21Yolov3DetectionOutput8BBoxRectESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bm, ptr align 4 %i.bp, i64 %i.bx, i1 false)
  %.pre178 = load ptr, ptr %4, align 8, !tbaa !64
  %.pre180 = load ptr, ptr %i.q, align 8, !tbaa !50
  br label %bb.k

bb.i:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4ncnn21Yolov3DetectionOutput8BBoxRectESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.cd = icmp eq i64 %i.bx, 28
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bm, ptr noundef nonnull align 4 dereferenceable(28) %i.bp, i64 28, i1 false), !tbaa.struct !66
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ce = phi ptr [ %i.bm, %bb.j ], [ %i.bm, %bb.i ], [ %.pre180, %bb.h ]
  %i.cf = phi ptr [ %i.bl, %bb.j ], [ %i.bl, %bb.i ], [ %.pre178, %bb.h ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bx ; 2 uses
  store ptr %i.cg, ptr %i.q, align 8, !tbaa !50
  br label %bb.x

bb.l:                                             ; preds = %bb.g
  %i.ch = sdiv exact i64 %i.bu, 28                ; 4 uses
  %i.ci = sub nsw i64 329406144173384850, %i.ch
  %i.cj = icmp ult i64 %i.ci, %i.by
  br i1 %i.cj, label %bb.m, label %_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #20
          to label %.noexc112 unwind label %.loopexit.split-lp129

.noexc112:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %.sroa.speculated.i.i110 = call i64 @llvm.umax.i64(i64 %i.ch, i64 %i.by)
  %i.ck = add nsw i64 %.sroa.speculated.i.i110, %i.ch ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.ch
  %i.cm = call i64 @llvm.umin.i64(i64 %i.ck, i64 329406144173384850)
  %i.cn = select i1 %i.cl, i64 329406144173384850, i64 %i.cm ; 3 uses
  %.not.i.i111 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i111, label %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_M_allocateEm.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.co = mul nuw nsw i64 %i.cn, 28
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #21
          to label %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_M_allocateEm.exit.i unwind label %.loopexit128

_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.n, %_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.cq = phi ptr [ null, %_ZNKSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.cp, %bb.n ] ; 6 uses
  %i.cr = icmp sgt i64 %i.bu, 28
  br i1 %i.cr, label %bb.o, label %bb.p, !prof !65

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cq, ptr align 4 %i.bl, i64 %i.bu, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE11_M_allocateEm.exit.i
  %i.cs = icmp eq i64 %i.bu, 28
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cq, ptr noundef nonnull align 4 dereferenceable(28) %i.bl, i64 28, i1 false), !tbaa.struct !66
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 %i.bu ; 3 uses
  %i.cu = icmp sgt i64 %i.bx, 28
  br i1 %i.cu, label %bb.s, label %bb.t, !prof !65

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ct, ptr align 4 %i.bp, i64 %i.bx, i1 false)
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cv = icmp eq i64 %i.bx, 28
  br i1 %i.cv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ct, ptr noundef nonnull align 4 dereferenceable(28) %i.bp, i64 28, i1 false), !tbaa.struct !66
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.cw = getelementptr inbounds i8, ptr %i.ct, i64 %i.bx ; 2 uses
  %.not.i55.i = icmp eq ptr %i.bl, null
  br i1 %.not.i55.i, label %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.cz) #19
  br label %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.w, %bb.v
  store ptr %i.cq, ptr %4, align 8, !tbaa !47
  store ptr %i.cw, ptr %i.q, align 8, !tbaa !50
  %i.da = getelementptr inbounds nuw [28 x i8], ptr %i.cq, i64 %i.cn
  store ptr %i.da, ptr %i.r, align 8, !tbaa !48
  br label %bb.x

bb.x:                                             ; preds = %bb.k, %.lr.ph, %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.db = phi ptr [ %i.cf, %bb.k ], [ %i.bl, %.lr.ph ], [ %i.cq, %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.dc = phi ptr [ %i.cg, %bb.k ], [ %i.bm, %.lr.ph ], [ %i.cw, %_ZNSt12_Vector_baseIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dd = load i32, ptr %i.k, align 4, !tbaa !32
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next, %i.de
  br i1 %i.df, label %.lr.ph, label %._crit_edge, !llvm.loop !55

.loopexit128:                                     ; preds = %bb.n
  %lpad.loopexit130 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp129:                            ; preds = %bb.m
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp129, %.loopexit128
  %lpad.phi132 = phi { ptr, i32 } [ %lpad.loopexit130, %.loopexit128 ], [ %lpad.loopexit.split-lp131, %.loopexit.split-lp129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.aa

bb.z:                                             ; preds = %bb.f, %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  %i.dg = add nuw i64 %.056154, 1                 ; 2 uses
  %i.dh = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.di = load ptr, ptr %1, align 8, !tbaa !60
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 72
  %.not72 = icmp ult i64 %i.dg, %i.dm
  br i1 %.not72, label %bb.b, label %.critedge78, !llvm.loop !56

bb.aa:                                            ; preds = %.loopexit133, %.loopexit.split-lp134, %bb.y
  %.pn = phi { ptr, i32 } [ %lpad.phi132, %bb.y ], [ %lpad.loopexit135, %.loopexit133 ], [ %lpad.loopexit.split-lp136, %.loopexit.split-lp134 ]
  call void @_ZNSt6vectorIS_IN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.aw

.critedge:                                        ; preds = %.noexc108
  %i.dn = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.lr.ph.i.i.i81

.lr.ph.i.i.i81:                                   ; preds = %.critedge, %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84
  %.05.i.i.i82 = phi ptr [ %i.du, %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84 ], [ %i.w, %.critedge ] ; 3 uses
  %i.do = load ptr, ptr %.05.i.i.i82, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i.i83 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i.i.i83, label %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i81
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i82, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !48
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dt) #19
  br label %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84

_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84: ; preds = %bb.ab, %.lr.ph.i.i.i81
  %i.du = getelementptr inbounds nuw i8, ptr %.05.i.i.i82, i64 24 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.du, %i.dn
  br i1 %.not.i.i.i85, label %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i86, label %.lr.ph.i.i.i81, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i86: ; preds = %_ZSt8_DestroyISt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EEEvPT_.exit.i.i.i84
  %.pr.i87 = load ptr, ptr %5, align 8, !tbaa !35 ; 3 uses
  %.not.i.i1.i89 = icmp eq ptr %.pr.i87, null
  br i1 %.not.i.i1.i89, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i86
  %i.dv = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %.pr.i87 to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i87, i64 noundef %i.dy) #19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZSt8_DestroyIPSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.au

.critedge78:                                      ; preds = %bb.z, %bb.a
  invoke void @_ZNK4ncnn21Yolov3DetectionOutput21qsort_descent_inplaceERSt6vectorINS0_8BBoxRectESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.critedge78
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !67
  invoke void @_ZNK4ncnn21Yolov3DetectionOutput17nms_sorted_bboxesERSt6vectorINS0_8BBoxRectESaIS2_EERS1_ImSaImEEf(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, float noundef nofpclass(nan inf) %i.ea)
          to label %.preheader127 unwind label %bb.ag

.preheader127:                                    ; preds = %bb.ae
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !70 ; 2 uses
  %i.ed = load ptr, ptr %6, align 8, !tbaa !71    ; 2 uses
  %.not167 = icmp eq ptr %i.ec, %i.ed
  br i1 %.not167, label %._crit_edge162, label %.lr.ph161

._crit_edge162.loopexit:                          ; preds = %_ZNSt6vectorIN4ncnn21Yolov3DetectionOutput8BBoxRectESaIS2_EE9push_backERKS2_.exit
  %i.ee = ptrtoint ptr %.sroa.10.1 to i64
  br label %._crit_edge162

._crit_edge162:                                   ; preds = %._crit_edge162.loopexit, %.preheader127
  %.sroa.0.0.lcssa = phi ptr [ null, %.preheader127 ], [ %.sroa.0.1, %._crit_edge162.loopexit ] ; 5 uses
end_hunk_0
