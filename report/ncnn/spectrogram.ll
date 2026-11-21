Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/spectrogram?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%"class.ncnn::Mat" = type { ptr, ptr, i64, i32, ptr, i32, i32, i32, i32, i32, i64 }
%"class.ncnn::Option" = type { i8, i8, i8, i8, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

$_ZN4ncnn11SpectrogramD2Ev = comdat any

$_ZN4ncnn11SpectrogramD0Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN4ncnn11SpectrogramE = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn11SpectrogramE, ptr @_ZN4ncnn11SpectrogramD2Ev, ptr @_ZN4ncnn11SpectrogramD0Ev, ptr @_ZN4ncnn11Spectrogram10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn11Spectrogram7forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn11SpectrogramE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn11SpectrogramE, ptr @_ZTIN4ncnn5LayerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn11SpectrogramE = hidden constant [21 x i8] c"N4ncnn11SpectrogramE\00", align 1
@_ZTIN4ncnn5LayerE = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

@_ZN4ncnn11SpectrogramC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn11SpectrogramC2Ev

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn11SpectrogramD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn11SpectrogramE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 3 uses
  %.not3.i = icmp eq ptr %i.g, null
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.h) #7
  br label %_ZN4ncnn3MatD2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 0, ptr %i.o, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #7
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn11SpectrogramD0Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn11SpectrogramE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4ncnn11SpectrogramD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN4ncnn11SpectrogramD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 3 uses
  %.not3.i.i = icmp eq ptr %i.g, null
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  br i1 %.not3.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h)
          to label %_ZN4ncnn11SpectrogramD2Ev.exit unwind label %bb.g, !inline_history !54

bb.e:                                             ; preds = %bb.c
  %.not.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i1.i, label %_ZN4ncnn11SpectrogramD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.h) #7, !inline_history !54
  br label %_ZN4ncnn11SpectrogramD2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #14, !inline_history !54
  unreachable

_ZN4ncnn11SpectrogramD2Ev.exit:                   ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 0, ptr %i.o, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(320) %0) #7, !inline_history !54
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn11Spectrogram10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(320) initializes((208, 244)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  store i32 %i.a, ptr %i.b, align 8, !tbaa !36
  %i.c = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, i32 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 %i.c, ptr %i.d, align 4, !tbaa !37
  %i.e = load i32, ptr %i.b, align 8, !tbaa !36
  %i.f = sdiv i32 %i.e, 4
  %i.g = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2, i32 noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %i.g, ptr %i.h, align 8, !tbaa !38
  %i.i = load i32, ptr %i.b, align 8, !tbaa !36
  %i.j = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 3, i32 noundef %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !63
  %i.l = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 4, i32 noundef 0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store i32 %i.l, ptr %i.m, align 8, !tbaa !64
  %i.n = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 5, i32 noundef 1)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 %i.n, ptr %i.o, align 4, !tbaa !39
  %i.p = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 6, i32 noundef 2)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %i.p, ptr %i.q, align 8, !tbaa !40
  %i.r = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 7, i32 noundef 0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 3 uses
  store i32 %i.r, ptr %i.s, align 4, !tbaa !41
  %i.t = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 8, i32 noundef 1)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %i.t, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.w = load i32, ptr %i.s, align 4, !tbaa !41
  %i.x = icmp eq i32 %i.w, 2
  %i.y = load i32, ptr %i.b, align 8, !tbaa !36
  %i.z = zext i1 %i.x to i32
  %i.aa = add nsw i32 %i.y, %i.z
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i32 noundef %i.aa, i64 noundef 4, ptr noundef null)
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !19  ; 6 uses
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !36  ; 5 uses
  %i.ad = load i32, ptr %i.k, align 4, !tbaa !63  ; 13 uses
  %i.ae = sub nsw i32 %i.ac, %i.ad                ; 4 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.ag = lshr i32 %i.ae, 1
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 4                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ab, i8 0, i64 %i.ak, i1 false), !tbaa !44
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.ak
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %.038.lcssa = phi ptr [ %i.ab, %bb.a ], [ %scevgep, %.lr.ph.preheader ] ; 10 uses
  %i.al = load i32, ptr %i.m, align 8, !tbaa !64  ; 3 uses
  %i.am = icmp eq i32 %i.al, 0
  %i.an = icmp sgt i32 %i.ad, 0                   ; 3 uses
  %or.cond = and i1 %i.am, %i.an
  br i1 %or.cond, label %.lr.ph55.preheader, label %.loopexit45

.lr.ph55.preheader:                               ; preds = %._crit_edge
  %i.ao = zext nneg i32 %i.ad to i64              ; 2 uses
  %min.iters.check120 = icmp ult i32 %i.ad, 8
  br i1 %min.iters.check120, label %.lr.ph55.preheader147, label %vector.ph121

vector.ph121:                                     ; preds = %.lr.ph55.preheader
  %n.vec122 = and i64 %i.ao, 2147483640           ; 4 uses
  %i.ap = trunc nuw nsw i64 %n.vec122 to i32
  %i.aq = shl nuw nsw i64 %n.vec122, 2
  %i.ar = getelementptr i8, ptr %.038.lcssa, i64 %i.aq ; 2 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph121
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next126, %vector.body123 ] ; 2 uses
  %i.as = shl i64 %index124, 2
  %next.gep125 = getelementptr i8, ptr %.038.lcssa, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep125, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %next.gep125, align 4, !tbaa !44
  store <4 x float> splat (float 1.000000e+00), ptr %i.at, align 4, !tbaa !44
  %index.next126 = add nuw i64 %index124, 8       ; 2 uses
  %i.au = icmp eq i64 %index.next126, %n.vec122
  br i1 %i.au, label %middle.block127, label %vector.body123, !llvm.loop !55

middle.block127:                                  ; preds = %vector.body123
  %cmp.n128 = icmp eq i64 %n.vec122, %i.ao
  br i1 %cmp.n128, label %.loopexit, label %.lr.ph55.preheader147

.lr.ph55.preheader147:                            ; preds = %.lr.ph55.preheader, %middle.block127
  %.03654.ph = phi i32 [ 0, %.lr.ph55.preheader ], [ %i.ap, %middle.block127 ]
  %.153.ph = phi ptr [ %.038.lcssa, %.lr.ph55.preheader ], [ %i.ar, %middle.block127 ]
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.preheader147, %.lr.ph55
  %.03654 = phi i32 [ %i.aw, %.lr.ph55 ], [ %.03654.ph, %.lr.ph55.preheader147 ]
  %.153 = phi ptr [ %i.av, %.lr.ph55 ], [ %.153.ph, %.lr.ph55.preheader147 ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.153, i64 4 ; 2 uses
  store float 1.000000e+00, ptr %.153, align 4, !tbaa !44
  %i.aw = add nuw nsw i32 %.03654, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %i.ad
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph55, !llvm.loop !56

.loopexit45:                                      ; preds = %._crit_edge
  %i.ax = icmp eq i32 %i.al, 1
  %or.cond75 = and i1 %i.ax, %i.an
  br i1 %or.cond75, label %.lr.ph59, label %.loopexit43

.lr.ph59:                                         ; preds = %.loopexit45
  %i.ay = uitofp nneg i32 %i.ad to double         ; 2 uses
  %i.az = zext nneg i32 %i.ad to i64              ; 2 uses
  %min.iters.check104 = icmp ult i32 %i.ad, 4
  br i1 %min.iters.check104, label %scalar.ph103.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %.lr.ph59
  %n.vec106 = and i64 %i.az, 2147483644           ; 4 uses
  %i.ba = trunc nuw nsw i64 %n.vec106 to i32
  %i.bb = shl nuw nsw i64 %n.vec106, 2
  %i.bc = getelementptr i8, ptr %.038.lcssa, i64 %i.bb ; 2 uses
  %broadcast.splatinsert107 = insertelement <4 x double> poison, double %i.ay, i64 0
  %broadcast.splat108 = shufflevector <4 x double> %broadcast.splatinsert107, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bd = fdiv fast <4 x double> splat (double 1.000000e+00), %broadcast.splat108
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph105
  %index110 = phi i64 [ 0, %vector.ph105 ], [ %index.next113, %vector.body109 ] ; 2 uses
  %vec.ind111 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph105 ], [ %vec.ind.next114, %vector.body109 ] ; 2 uses
  %i.be = shl i64 %index110, 2
  %next.gep112 = getelementptr i8, ptr %.038.lcssa, i64 %i.be
  %i.bf = uitofp nneg <4 x i32> %vec.ind111 to <4 x double>
  %i.bg = fmul fast <4 x double> %i.bf, splat (double f0x401921FB54442D18)
  %i.bh = fmul fast <4 x double> %i.bg, %i.bd
  %i.bi = fptrunc fast <4 x double> %i.bh to <4 x float>
  %i.bj = tail call fast <4 x float> @llvm.cos.v4f32(<4 x float> %i.bi)
  %i.bk = fmul fast <4 x float> %i.bj, splat (float 5.000000e-01)
  %i.bl = fsub fast <4 x float> splat (float 5.000000e-01), %i.bk
  store <4 x float> %i.bl, ptr %next.gep112, align 4, !tbaa !44
  %index.next113 = add nuw i64 %index110, 4       ; 2 uses
  %vec.ind.next114 = add nuw nsw <4 x i32> %vec.ind111, splat (i32 4)
  %i.bm = icmp eq i64 %index.next113, %n.vec106
  br i1 %i.bm, label %middle.block115, label %vector.body109, !llvm.loop !57

middle.block115:                                  ; preds = %vector.body109
  %cmp.n116 = icmp eq i64 %n.vec106, %i.az
  br i1 %cmp.n116, label %.loopexit, label %scalar.ph103.preheader

scalar.ph103.preheader:                           ; preds = %.lr.ph59, %middle.block115
  %.03558.ph = phi i32 [ 0, %.lr.ph59 ], [ %i.ba, %middle.block115 ]
  %.357.ph = phi ptr [ %.038.lcssa, %.lr.ph59 ], [ %i.bc, %middle.block115 ]
  %i.bn = fdiv fast double 1.000000e+00, %i.ay
  br label %scalar.ph103

scalar.ph103:                                     ; preds = %scalar.ph103.preheader, %scalar.ph103
  %.03558 = phi i32 [ %i.bw, %scalar.ph103 ], [ %.03558.ph, %scalar.ph103.preheader ] ; 2 uses
  %.357 = phi ptr [ %i.bv, %scalar.ph103 ], [ %.357.ph, %scalar.ph103.preheader ] ; 2 uses
  %i.bo = uitofp ninf nsz nneg i32 %.03558 to double
  %i.bp = fmul fast double %i.bo, f0x401921FB54442D18
  %i.bq = fmul fast double %i.bp, %i.bn
  %i.br = fptrunc fast double %i.bq to float
  %i.bs = tail call fast float @llvm.cos.f32(float %i.br)
  %i.bt = fmul fast float %i.bs, 5.000000e-01
  %i.bu = fsub fast float 5.000000e-01, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.357, i64 4 ; 2 uses
  store float %i.bu, ptr %.357, align 4, !tbaa !44
  %i.bw = add nuw nsw i32 %.03558, 1              ; 2 uses
  %exitcond81.not = icmp eq i32 %i.bw, %i.ad
  br i1 %exitcond81.not, label %.loopexit, label %scalar.ph103, !llvm.loop !58

.loopexit43:                                      ; preds = %.loopexit45
  %i.bx = icmp eq i32 %i.al, 2
  %or.cond76 = and i1 %i.bx, %i.an
  br i1 %or.cond76, label %.lr.ph63, label %.loopexit

.lr.ph63:                                         ; preds = %.loopexit43
  %i.by = uitofp nneg i32 %i.ad to double         ; 2 uses
  %i.bz = zext nneg i32 %i.ad to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ad, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph63
  %n.vec = and i64 %i.bz, 2147483644              ; 4 uses
  %i.ca = trunc nuw nsw i64 %n.vec to i32
  %i.cb = shl nuw nsw i64 %n.vec, 2
  %i.cc = getelementptr i8, ptr %.038.lcssa, i64 %i.cb ; 2 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.by, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cd = fdiv fast <4 x double> splat (double 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.038.lcssa, i64 %i.ce
  %i.cf = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.cg = fmul fast <4 x double> %i.cf, splat (double f0x401921FB54442D18)
  %i.ch = fmul fast <4 x double> %i.cg, %i.cd
  %i.ci = fptrunc fast <4 x double> %i.ch to <4 x float>
  %i.cj = tail call fast <4 x float> @llvm.cos.v4f32(<4 x float> %i.ci)
  %i.ck = fmul fast <4 x float> %i.cj, splat (float 4.600000e-01)
  %i.cl = fsub fast <4 x float> splat (float 5.400000e-01), %i.ck
  store <4 x float> %i.cl, ptr %next.gep, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bz
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph63, %middle.block
  %.03462.ph = phi i32 [ 0, %.lr.ph63 ], [ %i.ca, %middle.block ]
  %.561.ph = phi ptr [ %.038.lcssa, %.lr.ph63 ], [ %i.cc, %middle.block ]
  %i.cn = fdiv fast double 1.000000e+00, %i.by
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03462 = phi i32 [ %i.cw, %scalar.ph ], [ %.03462.ph, %scalar.ph.preheader ] ; 2 uses
  %.561 = phi ptr [ %i.cv, %scalar.ph ], [ %.561.ph, %scalar.ph.preheader ] ; 2 uses
  %i.co = uitofp ninf nsz nneg i32 %.03462 to double
  %i.cp = fmul fast double %i.co, f0x401921FB54442D18
  %i.cq = fmul fast double %i.cp, %i.cn
  %i.cr = fptrunc fast double %i.cq to float
  %i.cs = tail call fast float @llvm.cos.f32(float %i.cr)
  %i.ct = fmul fast float %i.cs, 4.600000e-01
  %i.cu = fsub fast float 5.400000e-01, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.561, i64 4 ; 2 uses
  store float %i.cu, ptr %.561, align 4, !tbaa !44
  %i.cw = add nuw nsw i32 %.03462, 1              ; 2 uses
  %exitcond82.not = icmp eq i32 %i.cw, %i.ad
  br i1 %exitcond82.not, label %.loopexit, label %scalar.ph, !llvm.loop !60

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph103, %.lr.ph55, %middle.block, %middle.block115, %middle.block127, %.loopexit43
  %.6 = phi ptr [ %.038.lcssa, %.loopexit43 ], [ %i.av, %.lr.ph55 ], [ %i.bv, %scalar.ph103 ], [ %i.ar, %middle.block127 ], [ %i.bc, %middle.block115 ], [ %i.cc, %middle.block ], [ %i.cv, %scalar.ph ]
  %.neg = sdiv i32 %i.ae, -2
  %i.cx = add i32 %.neg, %i.ae                    ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph68.preheader, label %._crit_edge69

.lr.ph68.preheader:                               ; preds = %.loopexit
  %i.cz = zext nneg i32 %i.cx to i64
  %i.da = shl nuw nsw i64 %i.cz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.6, i8 0, i64 %i.da, i1 false), !tbaa !44
  br label %._crit_edge69

._crit_edge69:                                    ; preds = %.lr.ph68.preheader, %.loopexit
  %i.db = load i32, ptr %i.s, align 4, !tbaa !41
  %i.dc = icmp eq i32 %i.db, 2
  br i1 %i.dc, label %.preheader, label %bb.b

.preheader:                                       ; preds = %._crit_edge69
  %i.dd = icmp sgt i32 %i.ac, 0
  br i1 %i.dd, label %.lr.ph72.preheader, label %._crit_edge73

.lr.ph72.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.ac to i64   ; 3 uses
  %min.iters.check132 = icmp ult i32 %i.ac, 8
  br i1 %min.iters.check132, label %.lr.ph72.preheader143, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph72.preheader
  %n.vec134 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next139, %vector.body135 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph133 ], [ %i.di, %vector.body135 ]
  %vec.phi137 = phi <4 x float> [ zeroinitializer, %vector.ph133 ], [ %i.dj, %vector.body135 ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index136 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load = load <4 x float>, ptr %i.de, align 4, !tbaa !44 ; 2 uses
  %wide.load138 = load <4 x float>, ptr %i.df, align 4, !tbaa !44 ; 2 uses
  %i.dg = fmul fast <4 x float> %wide.load, %wide.load
  %i.dh = fmul fast <4 x float> %wide.load138, %wide.load138
  %i.di = fadd fast <4 x float> %i.dg, %vec.phi   ; 2 uses
  %i.dj = fadd fast <4 x float> %i.dh, %vec.phi137 ; 2 uses
  %index.next139 = add nuw i64 %index136, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.dk, label %middle.block140, label %vector.body135, !llvm.loop !61

middle.block140:                                  ; preds = %vector.body135
  %bin.rdx = fadd fast <4 x float> %i.dj, %i.di
  %i.dl = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n141 = icmp eq i64 %n.vec134, %wide.trip.count
  br i1 %cmp.n141, label %._crit_edge73.loopexit, label %.lr.ph72.preheader143

.lr.ph72.preheader143:                            ; preds = %.lr.ph72.preheader, %middle.block140
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph72.preheader ], [ %n.vec134, %middle.block140 ]
  %.03270.ph = phi float [ 0.000000e+00, %.lr.ph72.preheader ], [ %i.dl, %middle.block140 ]
  br label %.lr.ph72

._crit_edge73.loopexit:                           ; preds = %.lr.ph72, %middle.block140
  %.lcssa = phi float [ %i.dl, %middle.block140 ], [ %i.dt, %.lr.ph72 ]
  %i.dm = tail call fast nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %.lcssa)
  br label %._crit_edge73

._crit_edge73:                                    ; preds = %._crit_edge73.loopexit, %.preheader
  %.032.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.dm, %._crit_edge73.loopexit ]
  %i.dn = fdiv fast float 1.000000e+00, %.032.lcssa
  %i.do = sext i32 %i.ac to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.do
  store float %i.dn, ptr %i.dp, align 4, !tbaa !44
  br label %bb.b

.lr.ph72:                                         ; preds = %.lr.ph72.preheader143, %.lr.ph72
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph72 ], [ %indvars.iv.ph, %.lr.ph72.preheader143 ] ; 2 uses
  %.03270 = phi float [ %i.dt, %.lr.ph72 ], [ %.03270.ph, %.lr.ph72.preheader143 ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !44 ; 2 uses
  %i.ds = fmul fast float %i.dr, %i.dr
  %i.dt = fadd fast float %i.ds, %.03270          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond84.not, label %._crit_edge73.loopexit, label %.lr.ph72, !llvm.loop !62

bb.b:                                             ; preds = %._crit_edge73, %._crit_edge69
  ret i32 0
}

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn11Spectrogram7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 16        ; 18 uses
  %5 = alloca %"class.ncnn::Option", align 8      ; 8 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !65
  store <2 x ptr> %i.g, ptr %4, align 16, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  store i64 %i.j, ptr %i.h, align 16, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !66
  store i32 %i.m, ptr %i.k, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  store ptr %i.p, ptr %i.n, align 16, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.t = load <4 x i32>, ptr %i.r, align 8, !tbaa !49
  store <4 x i32> %i.t, ptr %i.q, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !67
  store i32 %i.w, ptr %i.u, align 8, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load i64, ptr %i.y, align 8, !tbaa !20
  store i64 %i.z, ptr %i.x, align 16, !tbaa !20
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = atomicrmw add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.a, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !39
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !71
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !74
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !40 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !36
  %i.am = sdiv i32 %i.al, 2                       ; 2 uses
  invoke void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef 0, i32 noundef 0, i32 noundef %i.am, i32 noundef %i.am, i32 noundef 0, float noundef nofpclass(nan inf) 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %thread-pre-split unwind label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.g, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.x

thread-pre-split:                                 ; preds = %bb.d
  %.pr = load i32, ptr %i.ah, align 8, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.c
  %i.ao = phi i32 [ %.pr, %thread-pre-split ], [ %i.ai, %bb.c ] ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !36
  %i.as = sdiv i32 %i.ar, 2                       ; 2 uses
  invoke void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef 0, i32 noundef 0, i32 noundef %i.as, i32 noundef %i.as, i32 noundef 1, float noundef nofpclass(nan inf) 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %._crit_edge unwind label %bb.e

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i32, ptr %i.ah, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %i.at = phi i32 [ %.pre, %._crit_edge ], [ %i.ao, %bb.f ]
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !36
  %i.ax = sdiv i32 %i.aw, 2                       ; 2 uses
  invoke void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef 0, i32 noundef 0, i32 noundef %i.ax, i32 noundef %i.ax, i32 noundef 2, float noundef nofpclass(nan inf) 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4ncnn3Mat6addrefEv.exit
  %i.ay = load i32, ptr %i.s, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !36 ; 3 uses
  %i.bb = sub nsw i32 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !38
  %i.be = sdiv i32 %i.bb, %i.bd
  %i.bf = add nsw i32 %i.be, 1                    ; 3 uses
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.bg = sdiv i32 %i.ba, 2
  %i.bh = add nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !49
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !42
  %.not = icmp eq i32 %i.bj, 0
  %spec.select = select i1 %.not, i32 %i.ba, i32 %i.bh ; 2 uses
  %i.bk = load i64, ptr %i.h, align 16, !tbaa !48 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !37
  %i.bn = icmp eq i32 %i.bm, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !74 ; 2 uses
  br i1 %i.bn, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 2, i32 noundef %i.bf, i32 noundef %spec.select, i64 noundef %i.bk, ptr noundef %i.bp)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.x

bb.n:                                             ; preds = %bb.k
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bf, i32 noundef %spec.select, i64 noundef %i.bk, ptr noundef %i.bp)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.br = load ptr, ptr %2, align 8, !tbaa !19
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !67
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bu, %i.bx
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !75
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.c, i32 %i.cb)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn11Spectrogram7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.b, ptr nonnull %4, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.a)
  %i.cc = load i32, ptr %i.bi, align 8, !tbaa !42
  %.not26 = icmp eq i32 %i.cc, 0
  br i1 %.not26, label %bb.q, label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !75
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.c, i32 %i.cd)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn11Spectrogram7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %2, ptr nonnull %i.a)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.o, %bb.p, %bb.q, %_ZNK4ncnn3Mat5emptyEv.exit
  %.024 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %bb.q ], [ 0, %bb.p ], [ -100, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %.not.i28 = icmp eq ptr %i.ce, null
  br i1 %.not.i28, label %_ZN4ncnn3MatD2Ev.exit27, label %bb.r

bb.r:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %i.cf = atomicrmw add ptr %i.ce, i32 -1 acq_rel, align 4
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.s, label %_ZN4ncnn3MatD2Ev.exit27

bb.s:                                             ; preds = %bb.r
  %i.ch = load ptr, ptr %i.n, align 16, !tbaa !18 ; 3 uses
  %.not3.i = icmp eq ptr %i.ch, null
  %i.ci = load ptr, ptr %4, align 16, !tbaa !19   ; 3 uses
  br i1 %.not3.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef %i.ci)
          to label %_ZN4ncnn3MatD2Ev.exit27 unwind label %bb.w, !inline_history !0

bb.u:                                             ; preds = %bb.s
  %.not.i34 = icmp eq ptr %i.ci, null
  br i1 %.not.i34, label %_ZN4ncnn3MatD2Ev.exit27, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.ci) #7
  br label %_ZN4ncnn3MatD2Ev.exit27

bb.w:                                             ; preds = %bb.t
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit27:                          ; preds = %bb.r, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i32 %.024

bb.x:                                             ; preds = %bb.m, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.m ], [ %i.an, %bb.e ]
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %.not.i29 = icmp eq ptr %i.co, null
  br i1 %.not.i29, label %_ZN4ncnn3MatD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = atomicrmw add ptr %i.co, i32 -1 acq_rel, align 4
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %bb.z, label %_ZN4ncnn3MatD2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.cr = load ptr, ptr %i.n, align 16, !tbaa !18 ; 3 uses
  %.not3.i30 = icmp eq ptr %i.cr, null
  %i.cs = load ptr, ptr %4, align 16, !tbaa !19   ; 3 uses
  br i1 %.not3.i30, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef %i.cs)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ad, !inline_history !0

bb.ab:                                            ; preds = %bb.z
  %.not.i33 = icmp eq ptr %i.cs, null
  br i1 %.not.i33, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef nonnull %i.cs) #7
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ad:                                            ; preds = %bb.aa
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.y, %bb.x, %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn11SpectrogramC2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn11SpectrogramE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 0, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  store i8 1, ptr %i.d, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.e, align 1, !tbaa !77
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Spectrogram7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !49     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !49
  %i.h = load i32, ptr %0, align 4, !tbaa !49     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !49
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 10 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !49
  %i.k = load i32, ptr %i.a, align 4, !tbaa !49   ; 9 uses
  %.not137 = icmp sgt i32 %i.k, %i.j
  br i1 %.not137, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.n = load i32, ptr %i.m, align 4, !tbaa !37   ; 3 uses
  %i.o = icmp eq i32 %i.n, 0                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.s = load i32, ptr %6, align 4, !tbaa !49     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 248
  br i1 %i.t, label %.lr.ph.split.us, label %._crit_edge

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 236
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.y = load i32, ptr %i.x, align 8, !tbaa !36   ; 5 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = sitofp fast i32 %i.y to double          ; 3 uses
  %i.ab = load i32, ptr %i.w, align 4, !tbaa !41
  %i.ac = call fast nofpclass(nan inf) double @llvm.sqrt.f64(double %i.aa)
  %i.ad = fdiv fast double 1.000000e+00, %i.ac
  %i.ae = fptrunc fast double %i.ad to float      ; 2 uses
  %i.af = load i32, ptr %i.v, align 8, !tbaa !38
  %i.ag = sext i32 %i.af to i64
  br i1 %i.z, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %i.ah = zext nneg i32 %i.s to i64               ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 2                ; 18 uses
  %i.aj = shl nuw nsw i64 %i.ah, 3                ; 9 uses
  %i.ak = sext i32 %i.k to i64                    ; 6 uses
  %i.al = add nsw i32 %i.j, 1                     ; 3 uses
  br i1 %i.o, label %.lr.ph.split.us.split.preheader.split.us, label %.lr.ph.split.us.split.preheader.split

.lr.ph.split.us.split.preheader.split.us:         ; preds = %.lr.ph.split.us.split.preheader
  %.pre219 = load ptr, ptr %5, align 8, !tbaa !19, !noalias !86 ; 9 uses
  %.pre220 = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !86
  %.pre221 = load i64, ptr %i.q, align 8, !tbaa !48, !noalias !86
  %factor.op.mul234 = mul i64 %.pre220, %.pre221  ; 9 uses
  %7 = add i32 %i.j, 1
  %8 = sub i32 %7, %i.k
  %9 = sub i32 %i.j, %i.k
  %xtraiter264 = and i32 %8, 7                    ; 2 uses
  %lcmp.mod265.not = icmp eq i32 %xtraiter264, 0
  br i1 %lcmp.mod265.not, label %._crit_edge102.split.us150.us.prol.loopexit, label %._crit_edge102.split.us150.us.prol

._crit_edge102.split.us150.us.prol:               ; preds = %.lr.ph.split.us.split.preheader.split.us, %._crit_edge102.split.us150.us.prol
  %indvars.iv.us.prol = phi i64 [ %indvars.iv.next.us.prol, %._crit_edge102.split.us150.us.prol ], [ %i.ak, %.lr.ph.split.us.split.preheader.split.us ] ; 2 uses
  %prol.iter266 = phi i32 [ %prol.iter266.next, %._crit_edge102.split.us150.us.prol ], [ 0, %.lr.ph.split.us.split.preheader.split.us ]
  %.reass235.prol = mul i64 %factor.op.mul234, %indvars.iv.us.prol
  %10 = getelementptr inbounds nuw i8, ptr %.pre219, i64 %.reass235.prol
  call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.aj, i1 false), !tbaa !44
  %indvars.iv.next.us.prol = add nsw i64 %indvars.iv.us.prol, 1 ; 2 uses
  %prol.iter266.next = add i32 %prol.iter266, 1   ; 2 uses
  %prol.iter266.cmp.not = icmp eq i32 %prol.iter266.next, %xtraiter264
  br i1 %prol.iter266.cmp.not, label %._crit_edge102.split.us150.us.prol.loopexit, label %._crit_edge102.split.us150.us.prol, !llvm.loop !80

._crit_edge102.split.us150.us.prol.loopexit:      ; preds = %._crit_edge102.split.us150.us.prol, %.lr.ph.split.us.split.preheader.split.us
  %indvars.iv.us.unr = phi i64 [ %i.ak, %.lr.ph.split.us.split.preheader.split.us ], [ %indvars.iv.next.us.prol, %._crit_edge102.split.us150.us.prol ]
  %11 = icmp ult i32 %9, 7
  br i1 %11, label %._crit_edge, label %._crit_edge102.split.us150.us

._crit_edge102.split.us150.us:                    ; preds = %._crit_edge102.split.us150.us.prol.loopexit, %._crit_edge102.split.us150.us
  %indvars.iv.us = phi i64 [ %indvars.iv.next.us.7, %._crit_edge102.split.us150.us ], [ %indvars.iv.us.unr, %._crit_edge102.split.us150.us.prol.loopexit ] ; 9 uses
  %.reass235 = mul i64 %factor.op.mul234, %indvars.iv.us
  %12 = getelementptr inbounds nuw i8, ptr %.pre219, i64 %.reass235
  call void @llvm.memset.p0.i64(ptr align 4 %12, i8 0, i64 %i.aj, i1 false), !tbaa !44
  %indvars.iv.next.us = add nsw i64 %indvars.iv.us, 1
  %.reass235.1 = mul i64 %factor.op.mul234, %indvars.iv.next.us
  %13 = getelementptr inbounds nuw i8, ptr %.pre219, i64 %.reass235.1
  call void @llvm.memset.p0.i64(ptr align 4 %13, i8 0, i64 %i.aj, i1 false), !tbaa !44
  %indvars.iv.next.us.1 = add nsw i64 %indvars.iv.us, 2
  %.reass235.2 = mul i64 %factor.op.mul234, %indvars.iv.next.us.1
  %14 = getelementptr inbounds nuw i8, ptr %.pre219, i64 %.reass235.2
  call void @llvm.memset.p0.i64(ptr align 4 %14, i8 0, i64 %i.aj, i1 false), !tbaa !44
  %indvars.iv.next.us.2 = add nsw i64 %indvars.iv.us, 3
  %.reass235.3 = mul i64 %factor.op.mul234, %indvars.iv.next.us.2
  %15 = getelementptr inbounds nuw i8, ptr %.pre219, i64 %.reass235.3
  call void @llvm.memset.p0.i64(ptr align 4 %15, i8 0, i64 %i.aj, i1 false), !tbaa !44
  %indvars.iv.next.us.3 = add nsw i64 %indvars.iv.us, 4
  %.reass235.4 = mul i64 %factor.op.mul234, %indvars.iv.next.us.3
  %16 = getelementptr inbounds nuw i8, ptr %.pre219, i64 %.reass235.4
  call void @llvm.memset.p0.i64(ptr align 4 %16, i8 0, i64 %i.aj, i1 false), !tbaa !44
  %indvars.iv.next.us.4 = add nsw i64 %indvars.iv.us, 5
  %.reass235.5 = mul i64 %factor.op.mul234, %indvars.iv.next.us.4
  %17 = getelementptr inbounds nuw i8, ptr %.pre219, i64 %.reass235.5
  call void @llvm.memset.p0.i64(ptr align 4 %17, i8 0, i64 %i.aj, i1 false), !tbaa !44
  %indvars.iv.next.us.5 = add nsw i64 %indvars.iv.us, 6
  %.reass235.6 = mul i64 %factor.op.mul234, %indvars.iv.next.us.5
  %18 = getelementptr inbounds nuw i8, ptr %.pre219, i64 %.reass235.6
  call void @llvm.memset.p0.i64(ptr align 4 %18, i8 0, i64 %i.aj, i1 false), !tbaa !44
  %indvars.iv.next.us.6 = add nsw i64 %indvars.iv.us, 7
  %.reass235.7 = mul i64 %factor.op.mul234, %indvars.iv.next.us.6
  %19 = getelementptr inbounds nuw i8, ptr %.pre219, i64 %.reass235.7
  call void @llvm.memset.p0.i64(ptr align 4 %19, i8 0, i64 %i.aj, i1 false), !tbaa !44
  %indvars.iv.next.us.7 = add nsw i64 %indvars.iv.us, 8 ; 2 uses
  %lftr.wideiv.us.7 = trunc i64 %indvars.iv.next.us.7 to i32
  %exitcond.us.not.7 = icmp eq i32 %i.al, %lftr.wideiv.us.7
  br i1 %exitcond.us.not.7, label %._crit_edge, label %._crit_edge102.split.us150.us

.lr.ph.split.us.split.preheader.split:            ; preds = %.lr.ph.split.us.split.preheader
  switch i32 %i.n, label %._crit_edge [
    i32 2, label %.lr.ph.split.us.split.preheader.split.split.us194
    i32 1, label %.lr.ph.split.us.split.preheader.split.split.us183
  ]

.lr.ph.split.us.split.preheader.split.split.us183: ; preds = %.lr.ph.split.us.split.preheader.split
  %.pre213 = load ptr, ptr %5, align 8, !tbaa !19 ; 9 uses
  %.pre214 = load i32, ptr %i.p, align 4, !tbaa !50
  %.pre215 = load i64, ptr %i.q, align 8, !tbaa !48
  %20 = sext i32 %.pre214 to i64
  %factor.op.mul = mul i64 %.pre215, %20          ; 9 uses
  %21 = add i32 %i.j, 1
  %22 = sub i32 %21, %i.k
  %23 = sub i32 %i.j, %i.k
  %xtraiter = and i32 %22, 7                      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.split.us184.prol.loopexit, label %.lr.ph.split.us.split.us184.prol

.lr.ph.split.us.split.us184.prol:                 ; preds = %.lr.ph.split.us.split.preheader.split.split.us183, %.lr.ph.split.us.split.us184.prol
  %indvars.iv.us185.prol = phi i64 [ %indvars.iv.next.us191.prol, %.lr.ph.split.us.split.us184.prol ], [ %i.ak, %.lr.ph.split.us.split.preheader.split.split.us183 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.split.us.split.us184.prol ], [ 0, %.lr.ph.split.us.split.preheader.split.split.us183 ]
  %.reass.prol = mul i64 %indvars.iv.us185.prol, %factor.op.mul
  %24 = getelementptr inbounds nuw i8, ptr %.pre213, i64 %.reass.prol
  call void @llvm.memset.p0.i64(ptr align 4 %24, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us191.prol = add nsw i64 %indvars.iv.us185.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.split.us184.prol.loopexit, label %.lr.ph.split.us.split.us184.prol, !llvm.loop !81

.lr.ph.split.us.split.us184.prol.loopexit:        ; preds = %.lr.ph.split.us.split.us184.prol, %.lr.ph.split.us.split.preheader.split.split.us183
  %indvars.iv.us185.unr = phi i64 [ %i.ak, %.lr.ph.split.us.split.preheader.split.split.us183 ], [ %indvars.iv.next.us191.prol, %.lr.ph.split.us.split.us184.prol ]
  %25 = icmp ult i32 %23, 7
  br i1 %25, label %._crit_edge, label %.lr.ph.split.us.split.us184

.lr.ph.split.us.split.us184:                      ; preds = %.lr.ph.split.us.split.us184.prol.loopexit, %.lr.ph.split.us.split.us184
  %indvars.iv.us185 = phi i64 [ %indvars.iv.next.us191.7, %.lr.ph.split.us.split.us184 ], [ %indvars.iv.us185.unr, %.lr.ph.split.us.split.us184.prol.loopexit ] ; 9 uses
  %.reass = mul i64 %indvars.iv.us185, %factor.op.mul
  %26 = getelementptr inbounds nuw i8, ptr %.pre213, i64 %.reass
  call void @llvm.memset.p0.i64(ptr align 4 %26, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us191 = add nsw i64 %indvars.iv.us185, 1
  %.reass.1 = mul i64 %indvars.iv.next.us191, %factor.op.mul
  %27 = getelementptr inbounds nuw i8, ptr %.pre213, i64 %.reass.1
  call void @llvm.memset.p0.i64(ptr align 4 %27, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us191.1 = add nsw i64 %indvars.iv.us185, 2
  %.reass.2 = mul i64 %indvars.iv.next.us191.1, %factor.op.mul
  %28 = getelementptr inbounds nuw i8, ptr %.pre213, i64 %.reass.2
  call void @llvm.memset.p0.i64(ptr align 4 %28, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us191.2 = add nsw i64 %indvars.iv.us185, 3
  %.reass.3 = mul i64 %indvars.iv.next.us191.2, %factor.op.mul
  %29 = getelementptr inbounds nuw i8, ptr %.pre213, i64 %.reass.3
  call void @llvm.memset.p0.i64(ptr align 4 %29, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us191.3 = add nsw i64 %indvars.iv.us185, 4
  %.reass.4 = mul i64 %indvars.iv.next.us191.3, %factor.op.mul
  %30 = getelementptr inbounds nuw i8, ptr %.pre213, i64 %.reass.4
  call void @llvm.memset.p0.i64(ptr align 4 %30, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us191.4 = add nsw i64 %indvars.iv.us185, 5
  %.reass.5 = mul i64 %indvars.iv.next.us191.4, %factor.op.mul
  %31 = getelementptr inbounds nuw i8, ptr %.pre213, i64 %.reass.5
  call void @llvm.memset.p0.i64(ptr align 4 %31, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us191.5 = add nsw i64 %indvars.iv.us185, 6
  %.reass.6 = mul i64 %indvars.iv.next.us191.5, %factor.op.mul
  %32 = getelementptr inbounds nuw i8, ptr %.pre213, i64 %.reass.6
  call void @llvm.memset.p0.i64(ptr align 4 %32, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us191.6 = add nsw i64 %indvars.iv.us185, 7
  %.reass.7 = mul i64 %indvars.iv.next.us191.6, %factor.op.mul
  %33 = getelementptr inbounds nuw i8, ptr %.pre213, i64 %.reass.7
  call void @llvm.memset.p0.i64(ptr align 4 %33, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us191.7 = add nsw i64 %indvars.iv.us185, 8 ; 2 uses
  %lftr.wideiv.us192.7 = trunc i64 %indvars.iv.next.us191.7 to i32
  %exitcond.us193.not.7 = icmp eq i32 %i.al, %lftr.wideiv.us192.7
  br i1 %exitcond.us193.not.7, label %._crit_edge, label %.lr.ph.split.us.split.us184

.lr.ph.split.us.split.preheader.split.split.us194: ; preds = %.lr.ph.split.us.split.preheader.split
  %.pre = load ptr, ptr %5, align 8, !tbaa !19    ; 9 uses
  %.pre211 = load i32, ptr %i.p, align 4, !tbaa !50
  %.pre212 = load i64, ptr %i.q, align 8, !tbaa !48
  %34 = sext i32 %.pre211 to i64
  %factor.op.mul232 = mul i64 %.pre212, %34       ; 9 uses
  %35 = add i32 %i.j, 1
  %36 = sub i32 %35, %i.k
  %37 = sub i32 %i.j, %i.k
  %xtraiter261 = and i32 %36, 7                   ; 2 uses
  %lcmp.mod262.not = icmp eq i32 %xtraiter261, 0
  br i1 %lcmp.mod262.not, label %.lr.ph.split.us.split.us195.prol.loopexit, label %.lr.ph.split.us.split.us195.prol

.lr.ph.split.us.split.us195.prol:                 ; preds = %.lr.ph.split.us.split.preheader.split.split.us194, %.lr.ph.split.us.split.us195.prol
  %indvars.iv.us196.prol = phi i64 [ %indvars.iv.next.us202.prol, %.lr.ph.split.us.split.us195.prol ], [ %i.ak, %.lr.ph.split.us.split.preheader.split.split.us194 ] ; 2 uses
  %prol.iter263 = phi i32 [ %prol.iter263.next, %.lr.ph.split.us.split.us195.prol ], [ 0, %.lr.ph.split.us.split.preheader.split.split.us194 ]
  %.reass233.prol = mul i64 %indvars.iv.us196.prol, %factor.op.mul232
  %38 = getelementptr inbounds nuw i8, ptr %.pre, i64 %.reass233.prol
  call void @llvm.memset.p0.i64(ptr align 4 %38, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us202.prol = add nsw i64 %indvars.iv.us196.prol, 1 ; 2 uses
  %prol.iter263.next = add i32 %prol.iter263, 1   ; 2 uses
  %prol.iter263.cmp.not = icmp eq i32 %prol.iter263.next, %xtraiter261
  br i1 %prol.iter263.cmp.not, label %.lr.ph.split.us.split.us195.prol.loopexit, label %.lr.ph.split.us.split.us195.prol, !llvm.loop !82

.lr.ph.split.us.split.us195.prol.loopexit:        ; preds = %.lr.ph.split.us.split.us195.prol, %.lr.ph.split.us.split.preheader.split.split.us194
  %indvars.iv.us196.unr = phi i64 [ %i.ak, %.lr.ph.split.us.split.preheader.split.split.us194 ], [ %indvars.iv.next.us202.prol, %.lr.ph.split.us.split.us195.prol ]
  %39 = icmp ult i32 %37, 7
  br i1 %39, label %._crit_edge, label %.lr.ph.split.us.split.us195

.lr.ph.split.us.split.us195:                      ; preds = %.lr.ph.split.us.split.us195.prol.loopexit, %.lr.ph.split.us.split.us195
  %indvars.iv.us196 = phi i64 [ %indvars.iv.next.us202.7, %.lr.ph.split.us.split.us195 ], [ %indvars.iv.us196.unr, %.lr.ph.split.us.split.us195.prol.loopexit ] ; 9 uses
  %.reass233 = mul i64 %indvars.iv.us196, %factor.op.mul232
  %40 = getelementptr inbounds nuw i8, ptr %.pre, i64 %.reass233
  call void @llvm.memset.p0.i64(ptr align 4 %40, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us202 = add nsw i64 %indvars.iv.us196, 1
  %.reass233.1 = mul i64 %indvars.iv.next.us202, %factor.op.mul232
  %41 = getelementptr inbounds nuw i8, ptr %.pre, i64 %.reass233.1
  call void @llvm.memset.p0.i64(ptr align 4 %41, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us202.1 = add nsw i64 %indvars.iv.us196, 2
  %.reass233.2 = mul i64 %indvars.iv.next.us202.1, %factor.op.mul232
  %42 = getelementptr inbounds nuw i8, ptr %.pre, i64 %.reass233.2
  call void @llvm.memset.p0.i64(ptr align 4 %42, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us202.2 = add nsw i64 %indvars.iv.us196, 3
  %.reass233.3 = mul i64 %indvars.iv.next.us202.2, %factor.op.mul232
  %43 = getelementptr inbounds nuw i8, ptr %.pre, i64 %.reass233.3
  call void @llvm.memset.p0.i64(ptr align 4 %43, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us202.3 = add nsw i64 %indvars.iv.us196, 4
  %.reass233.4 = mul i64 %indvars.iv.next.us202.3, %factor.op.mul232
  %44 = getelementptr inbounds nuw i8, ptr %.pre, i64 %.reass233.4
  call void @llvm.memset.p0.i64(ptr align 4 %44, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us202.4 = add nsw i64 %indvars.iv.us196, 5
  %.reass233.5 = mul i64 %indvars.iv.next.us202.4, %factor.op.mul232
  %45 = getelementptr inbounds nuw i8, ptr %.pre, i64 %.reass233.5
  call void @llvm.memset.p0.i64(ptr align 4 %45, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us202.5 = add nsw i64 %indvars.iv.us196, 6
  %.reass233.6 = mul i64 %indvars.iv.next.us202.5, %factor.op.mul232
  %46 = getelementptr inbounds nuw i8, ptr %.pre, i64 %.reass233.6
  call void @llvm.memset.p0.i64(ptr align 4 %46, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us202.6 = add nsw i64 %indvars.iv.us196, 7
  %.reass233.7 = mul i64 %indvars.iv.next.us202.6, %factor.op.mul232
  %47 = getelementptr inbounds nuw i8, ptr %.pre, i64 %.reass233.7
  call void @llvm.memset.p0.i64(ptr align 4 %47, i8 0, i64 %i.ai, i1 false), !tbaa !44
  %indvars.iv.next.us202.7 = add nsw i64 %indvars.iv.us196, 8 ; 2 uses
  %lftr.wideiv.us203.7 = trunc i64 %indvars.iv.next.us202.7 to i32
  %exitcond.us204.not.7 = icmp eq i32 %i.al, %lftr.wideiv.us203.7
  br i1 %exitcond.us204.not.7, label %._crit_edge, label %.lr.ph.split.us.split.us195

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.am = zext nneg i32 %i.y to i64
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !19  ; 3 uses
  %i.ao = sext i32 %i.k to i64
  %i.ap = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.y to i64    ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.am
  %i.ar = load ptr, ptr %5, align 8, !tbaa !19
  %i.as = load i64, ptr %i.q, align 8, !tbaa !48
  %min.iters.check = icmp ult i32 %i.y, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert191 = insertelement <4 x double> poison, double %i.aa, i64 0
  %broadcast.splat192 = shufflevector <4 x double> %broadcast.splatinsert191, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.at = fdiv fast <4 x double> splat (double 1.000000e+00), %broadcast.splat192
  %i.au = fdiv fast <4 x double> splat (double 1.000000e+00), %broadcast.splat192
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.av = fdiv fast double 1.000000e+00, %i.aa
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge102.split.us150, %.lr.ph.split.us.split.us
  %indvars.iv175 = phi i64 [ %indvars.iv.next, %._crit_edge102.split.us150 ], [ %i.ao, %.lr.ph.split.us.split.us ] ; 4 uses
  br i1 %i.o, label %.noexc.us.us, label %_ZN4ncnn3Mat7channelEi.exit.us.us

_ZN4ncnn3Mat7channelEi.exit.us.us:                ; preds = %bb.c
  %i.aw = load i32, ptr %i.p, align 4, !tbaa !50
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul nsw i64 %indvars.iv175, %i.ax
  br label %.critedge.us.us

.noexc.us.us:                                     ; preds = %bb.c
  %i.az = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !86
  %i.ba = mul i64 %i.az, %indvars.iv175
  br label %.critedge.us.us

.critedge.us.us:                                  ; preds = %.noexc.us.us, %_ZN4ncnn3Mat7channelEi.exit.us.us
  %.sink187 = phi i64 [ %i.ba, %.noexc.us.us ], [ %i.ay, %_ZN4ncnn3Mat7channelEi.exit.us.us ]
  %i.bb = mul i64 %.sink187, %i.as
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bb
  %i.bd = trunc nsw i64 %indvars.iv175 to i32
  %i.be = sitofp fast i32 %i.bd to double
  %i.bf = fmul fast double %i.be, f0x401921FB54442D18 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.bf, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.thread92.us.us.us, %.critedge.us.us
  %.067101.us.us.us = phi i32 [ 0, %.critedge.us.us ], [ %i.dq, %.thread92.us.us.us ]
  %.070100.us.us.us = phi ptr [ %i.bc, %.critedge.us.us ], [ %.3.us.us.us, %.thread92.us.us.us ] ; 8 uses
  %.07399.us.us.us = phi ptr [ %i.l, %.critedge.us.us ], [ %i.dp, %.thread92.us.us.us ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us.us ] ; 3 uses
  %vec.phi = phi <4 x float> [ %i.cg, %vector.body ], [ zeroinitializer, %.preheader.us.us.us ]
  %vec.phi193 = phi <4 x float> [ %i.ch, %vector.body ], [ zeroinitializer, %.preheader.us.us.us ]
  %vec.phi194 = phi <4 x float> [ %i.cc, %vector.body ], [ zeroinitializer, %.preheader.us.us.us ]
  %vec.phi195 = phi <4 x float> [ %i.cd, %vector.body ], [ zeroinitializer, %.preheader.us.us.us ]
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %.preheader.us.us.us ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.07399.us.us.us, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <4 x float>, ptr %i.bg, align 4, !tbaa !44
  %wide.load196 = load <4 x float>, ptr %i.bh, align 4, !tbaa !44
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load197 = load <4 x float>, ptr %i.bi, align 4, !tbaa !44
  %wide.load198 = load <4 x float>, ptr %i.bj, align 4, !tbaa !44
  %i.bk = fmul fast <4 x float> %wide.load197, %wide.load ; 2 uses
  %i.bl = fmul fast <4 x float> %wide.load198, %wide.load196 ; 2 uses
  %i.bm = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.bn = uitofp nneg <4 x i32> %step.add to <4 x double>
  %i.bo = fmul fast <4 x double> %broadcast.splat, %i.bm
  %i.bp = fmul fast <4 x double> %broadcast.splat, %i.bn
  %i.bq = fmul fast <4 x double> %i.bo, %i.at
  %i.br = fmul fast <4 x double> %i.bp, %i.au
  %i.bs = fptrunc fast <4 x double> %i.bq to <4 x float>
  %i.bt = fptrunc fast <4 x double> %i.br to <4 x float>
  %i.bu = call fast { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float> %i.bs) ; 2 uses
  %i.bv = call fast { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float> %i.bt) ; 2 uses
  %i.bw = extractvalue { <4 x float>, <4 x float> } %i.bu, 0
  %i.bx = extractvalue { <4 x float>, <4 x float> } %i.bv, 0
  %i.by = extractvalue { <4 x float>, <4 x float> } %i.bu, 1
  %i.bz = extractvalue { <4 x float>, <4 x float> } %i.bv, 1
  %i.ca = fmul fast <4 x float> %i.bk, %i.by
  %i.cb = fmul fast <4 x float> %i.bl, %i.bz
  %i.cc = fadd fast <4 x float> %i.ca, %vec.phi194 ; 2 uses
  %i.cd = fadd fast <4 x float> %i.cb, %vec.phi195 ; 2 uses
  %i.ce = fmul fast <4 x float> %i.bk, %i.bw
  %i.cf = fmul fast <4 x float> %i.bl, %i.bx
  %i.cg = fsub fast <4 x float> %vec.phi, %i.ce   ; 2 uses
  %i.ch = fsub fast <4 x float> %vec.phi193, %i.cf ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.ch, %i.cg
  %i.cj = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %bin.rdx199 = fadd fast <4 x float> %i.cd, %i.cc
  %i.ck = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx199) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us, %middle.block
  %indvars.iv170.ph = phi i64 [ 0, %.preheader.us.us.us ], [ %n.vec, %middle.block ]
  %.06395.us.us.us.ph = phi float [ 0.000000e+00, %.preheader.us.us.us ], [ %i.cj, %middle.block ]
  %.06494.us.us.us.ph = phi float [ 0.000000e+00, %.preheader.us.us.us ], [ %i.ck, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %scalar.ph ], [ %indvars.iv170.ph, %scalar.ph.preheader ] ; 4 uses
  %.06395.us.us.us = phi float [ %i.cy, %scalar.ph ], [ %.06395.us.us.us.ph, %scalar.ph.preheader ]
  %.06494.us.us.us = phi float [ %i.cw, %scalar.ph ], [ %.06494.us.us.us.ph, %scalar.ph.preheader ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.07399.us.us.us, i64 %indvars.iv170
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !44
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv170
  %i.co = load float, ptr %i.cn, align 4, !tbaa !44
  %i.cp = fmul fast float %i.co, %i.cm            ; 2 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv170 to i32
  %i.cr = uitofp ninf nsz nneg i32 %i.cq to double
  %i.cs = fmul fast double %i.bf, %i.cr
  %i.ct = fmul fast double %i.cs, %i.av
  %i.cu = fptrunc fast double %i.ct to float
  %sincos.us.us.us = call fast { float, float } @llvm.sincos.f32(float %i.cu) ; 2 uses
  %sin.us.us.us = extractvalue { float, float } %sincos.us.us.us, 0
  %cos.us.us.us = extractvalue { float, float } %sincos.us.us.us, 1
  %i.cv = fmul fast float %i.cp, %cos.us.us.us
  %i.cw = fadd fast float %i.cv, %.06494.us.us.us ; 2 uses
  %i.cx = fmul fast float %i.cp, %sin.us.us.us
  %i.cy = fsub fast float %.06395.us.us.us, %i.cx ; 2 uses
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count
  br i1 %exitcond173.not, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !84

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %.lcssa190 = phi float [ %i.ck, %middle.block ], [ %i.cw, %scalar.ph ] ; 3 uses
  %.lcssa = phi float [ %i.cj, %middle.block ], [ %i.cy, %scalar.ph ] ; 3 uses
  switch i32 %i.ab, label %bb.e [
    i32 1, label %.thread.us.us.us
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge.us.us.us
  %i.cz = load float, ptr %i.aq, align 4, !tbaa !44 ; 2 uses
  %i.da = fmul fast float %i.cz, %.lcssa190
  %i.db = fmul fast float %i.cz, %.lcssa
  br label %bb.e

.thread.us.us.us:                                 ; preds = %._crit_edge.us.us.us
  %i.dc = fmul fast float %.lcssa190, %i.ae
  %i.dd = fmul fast float %.lcssa, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %.thread.us.us.us, %bb.d, %._crit_edge.us.us.us
  %.266.us.us.us = phi nsz float [ %i.da, %bb.d ], [ %.lcssa190, %._crit_edge.us.us.us ], [ %i.dc, %.thread.us.us.us ] ; 5 uses
  %.2.us.us.us = phi nsz float [ %i.db, %bb.d ], [ %.lcssa, %._crit_edge.us.us.us ], [ %i.dd, %.thread.us.us.us ] ; 5 uses
  switch i32 %i.n, label %.thread92.us.us.us [
    i32 0, label %.thread90.us.us.us
    i32 1, label %bb.g
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.de = fmul fast float %.266.us.us.us, %.266.us.us.us
  %i.df = fmul fast float %.2.us.us.us, %.2.us.us.us
  %i.dg = fadd fast float %i.df, %i.de
  store float %i.dg, ptr %.070100.us.us.us, align 4, !tbaa !44
  %i.dh = getelementptr inbounds nuw i8, ptr %.070100.us.us.us, i64 4
  br label %.thread92.us.us.us

bb.g:                                             ; preds = %bb.e
  %i.di = fmul fast float %.266.us.us.us, %.266.us.us.us
  %i.dj = fmul fast float %.2.us.us.us, %.2.us.us.us
  %i.dk = fadd fast float %i.dj, %i.di
  %i.dl = call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.dk)
  store float %i.dl, ptr %.070100.us.us.us, align 4, !tbaa !44
  %i.dm = getelementptr inbounds nuw i8, ptr %.070100.us.us.us, i64 4
  br label %.thread92.us.us.us

.thread90.us.us.us:                               ; preds = %bb.e
  store float %.266.us.us.us, ptr %.070100.us.us.us, align 4, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %.070100.us.us.us, i64 4
  store float %.2.us.us.us, ptr %i.dn, align 4, !tbaa !44
  %i.do = getelementptr inbounds nuw i8, ptr %.070100.us.us.us, i64 8
  br label %.thread92.us.us.us

.thread92.us.us.us:                               ; preds = %.thread90.us.us.us, %bb.g, %bb.f, %bb.e
  %.3.us.us.us = phi ptr [ %i.dh, %bb.f ], [ %.070100.us.us.us, %bb.e ], [ %i.do, %.thread90.us.us.us ], [ %i.dm, %bb.g ]
  %i.dp = getelementptr inbounds [4 x i8], ptr %.07399.us.us.us, i64 %i.ag
  %i.dq = add nuw nsw i32 %.067101.us.us.us, 1    ; 2 uses
  %exitcond174.not = icmp eq i32 %i.dq, %i.s
  br i1 %exitcond174.not, label %._crit_edge102.split.us150, label %.preheader.us.us.us, !llvm.loop !85

._crit_edge102.split.us150:                       ; preds = %.thread92.us.us.us
  %indvars.iv.next = add nsw i64 %indvars.iv175, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ap, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.split.us.split.us184.prol.loopexit, %.lr.ph.split.us.split.us184, %.lr.ph.split.us.split.us195.prol.loopexit, %.lr.ph.split.us.split.us195, %._crit_edge102.split.us150.us.prol.loopexit, %._crit_edge102.split.us150.us, %._crit_edge102.split.us150, %.lr.ph, %.lr.ph.split.us.split.preheader.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #7 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !53 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Spectrogram7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !49     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.h = icmp slt i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = xor i32 %i.e, -1
  %i.j = add i32 %i.g, %i.i                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.j, ptr %i.b, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !49
  %i.k = load i32, ptr %0, align 4, !tbaa !49     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !49
  %i.m = call i32 @llvm.umin.i32(i32 %i.l, i32 %i.j) ; 3 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !49
  %i.n = load i32, ptr %i.a, align 4, !tbaa !49   ; 3 uses
  %i.o = add i32 %i.m, 1                          ; 2 uses
  %i.p = icmp ult i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph75, label %._crit_edge

.lr.ph75:                                         ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 212 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.u = load i32, ptr %i.q, align 4, !tbaa !37
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph75.split.us, label %.lr.ph75.split

.lr.ph75.split.us:                                ; preds = %.lr.ph75
  %i.w = load i32, ptr %i.f, align 8, !tbaa !36
  %i.x = load ptr, ptr %4, align 8, !tbaa !19, !noalias !96 ; 5 uses
  %i.y = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !96
  %i.z = load i64, ptr %i.s, align 8, !tbaa !48, !noalias !96
  %factor.op.mul = mul i64 %i.y, %i.z             ; 2 uses
  %i.aa = load i32, ptr %5, align 4, !tbaa !49    ; 7 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.noexc39.us.preheader, label %._crit_edge

.noexc39.us.preheader:                            ; preds = %.lr.ph75.split.us
  %i.ac = add nsw i32 %i.aa, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3                ; 2 uses
  %i.af = getelementptr i8, ptr %i.x, i64 %i.ae
  %scevgep = getelementptr i8, ptr %i.af, i64 8   ; 2 uses
  %scevgep171 = getelementptr i8, ptr %i.x, i64 4 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.ae
  %scevgep172 = getelementptr i8, ptr %i.ag, i64 4 ; 2 uses
  %i.ah = zext nneg i32 %i.aa to i64              ; 2 uses
  %min.iters.check174 = icmp ult i32 %i.aa, 14
  %n.vec196 = and i64 %i.ah, 2147483644           ; 4 uses
  %i.ai = trunc nuw nsw i64 %n.vec196 to i32
  %i.aj = shl nuw nsw i64 %n.vec196, 3            ; 2 uses
  %cmp.n213 = icmp eq i64 %n.vec196, %i.ah
  br label %.noexc39.us

.noexc39.us:                                      ; preds = %.noexc39.us.preheader, %..loopexit_crit_edge.us
  %.074.us = phi i32 [ %i.cr, %..loopexit_crit_edge.us ], [ %i.n, %.noexc39.us.preheader ] ; 2 uses
  %i.ak = add i32 %.074.us, %i.e                  ; 2 uses
  %i.al = sub i32 %i.w, %i.ak
  %i.am = sext i32 %i.al to i64
  %.reass = mul i64 %factor.op.mul, %i.am         ; 4 uses
  %i.an = getelementptr i8, ptr %i.x, i64 %.reass ; 7 uses
  %i.ao = sext i32 %i.ak to i64
  %.reass77 = mul i64 %factor.op.mul, %i.ao       ; 4 uses
  %i.ap = getelementptr i8, ptr %i.x, i64 %.reass77 ; 8 uses
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.memcheck175

vector.memcheck175:                               ; preds = %.noexc39.us
  %i.aq = getelementptr i8, ptr %scevgep172, i64 %.reass77 ; 3 uses
  %i.ar = getelementptr i8, ptr %scevgep171, i64 %.reass77 ; 3 uses
  %i.as = getelementptr i8, ptr %scevgep, i64 %.reass77 ; 3 uses
  %i.at = getelementptr i8, ptr %scevgep172, i64 %.reass ; 2 uses
  %i.au = getelementptr i8, ptr %scevgep171, i64 %.reass ; 2 uses
  %i.av = getelementptr i8, ptr %scevgep, i64 %.reass ; 2 uses
  %bound0176 = icmp ult ptr %i.ap, %i.as
  %bound1177 = icmp ult ptr %i.ar, %i.aq
  %found.conflict178 = and i1 %bound0176, %bound1177
  %bound0179 = icmp ult ptr %i.ap, %i.at
  %bound1180 = icmp ult ptr %i.an, %i.aq
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx182 = or i1 %found.conflict178, %found.conflict181
  %bound0183 = icmp ult ptr %i.ap, %i.av
  %bound1184 = icmp ult ptr %i.au, %i.aq
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %i.ar, %i.at
  %bound1188 = icmp ult ptr %i.an, %i.as
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %conflict.rdx186, %found.conflict189
  %bound0191 = icmp ult ptr %i.ar, %i.av
  %bound1192 = icmp ult ptr %i.au, %i.as
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  br i1 %conflict.rdx194, label %scalar.ph173.preheader, label %vector.ph195

vector.ph195:                                     ; preds = %vector.memcheck175
  %i.aw = getelementptr i8, ptr %i.ap, i64 %i.aj
  %i.ax = getelementptr i8, ptr %i.an, i64 %i.aj
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next211, %vector.body197 ] ; 2 uses
  %i.ay = shl i64 %index198, 3                    ; 3 uses
  %i.az = or disjoint i64 %i.ay, 16               ; 2 uses
  %next.gep199 = getelementptr i8, ptr %i.ap, i64 %i.ay
  %next.gep200 = getelementptr i8, ptr %i.ap, i64 %i.az
  %next.gep201 = getelementptr i8, ptr %i.an, i64 %i.ay
  %next.gep202 = getelementptr i8, ptr %i.an, i64 %i.az
  %wide.vec203 = load <4 x float>, ptr %next.gep201, align 4, !tbaa !44 ; 2 uses
  %wide.vec206 = load <4 x float>, ptr %next.gep202, align 4, !tbaa !44 ; 2 uses
  %i.ba = fneg fast <4 x float> %wide.vec203
  %i.bb = fneg fast <4 x float> %wide.vec206
  %interleaved.vec209 = shufflevector <4 x float> %wide.vec203, <4 x float> %i.ba, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec209, ptr %next.gep199, align 4, !tbaa !44
  %interleaved.vec210 = shufflevector <4 x float> %wide.vec206, <4 x float> %i.bb, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec210, ptr %next.gep200, align 4, !tbaa !44
  %index.next211 = add nuw i64 %index198, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next211, %n.vec196
  br i1 %i.bc, label %middle.block212, label %vector.body197, !llvm.loop !89

middle.block212:                                  ; preds = %vector.body197
  br i1 %cmp.n213, label %..loopexit_crit_edge.us, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %vector.memcheck175, %.noexc39.us, %middle.block212
  %.03573.us.ph = phi i32 [ 0, %vector.memcheck175 ], [ 0, %.noexc39.us ], [ %i.ai, %middle.block212 ] ; 4 uses
  %.03672.us.ph = phi ptr [ %i.ap, %vector.memcheck175 ], [ %i.ap, %.noexc39.us ], [ %i.aw, %middle.block212 ] ; 2 uses
  %.03771.us.ph = phi ptr [ %i.an, %vector.memcheck175 ], [ %i.an, %.noexc39.us ], [ %i.ax, %middle.block212 ] ; 2 uses
  %i.bd = sub i32 %i.aa, %.03573.us.ph
  %xtraiter219 = and i32 %i.bd, 3                 ; 2 uses
  %lcmp.mod220.not = icmp eq i32 %xtraiter219, 0
  br i1 %lcmp.mod220.not, label %scalar.ph173.prol.loopexit, label %scalar.ph173.prol

scalar.ph173.prol:                                ; preds = %scalar.ph173.preheader, %scalar.ph173.prol
  %.03573.us.prol = phi i32 [ %i.bl, %scalar.ph173.prol ], [ %.03573.us.ph, %scalar.ph173.preheader ]
  %.03672.us.prol = phi ptr [ %i.bk, %scalar.ph173.prol ], [ %.03672.us.ph, %scalar.ph173.preheader ] ; 3 uses
  %.03771.us.prol = phi ptr [ %i.bj, %scalar.ph173.prol ], [ %.03771.us.ph, %scalar.ph173.preheader ] ; 3 uses
  %prol.iter221 = phi i32 [ %prol.iter221.next, %scalar.ph173.prol ], [ 0, %scalar.ph173.preheader ]
  %i.be = load float, ptr %.03771.us.prol, align 4, !tbaa !44
  store float %i.be, ptr %.03672.us.prol, align 4, !tbaa !44
  %i.bf = getelementptr inbounds nuw i8, ptr %.03771.us.prol, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !44
  %i.bh = fneg fast float %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.03672.us.prol, i64 4
  store float %i.bh, ptr %i.bi, align 4, !tbaa !44
  %i.bj = getelementptr inbounds nuw i8, ptr %.03771.us.prol, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.03672.us.prol, i64 8 ; 2 uses
  %i.bl = add nuw nsw i32 %.03573.us.prol, 1      ; 2 uses
  %prol.iter221.next = add i32 %prol.iter221, 1   ; 2 uses
  %prol.iter221.cmp.not = icmp eq i32 %prol.iter221.next, %xtraiter219
  br i1 %prol.iter221.cmp.not, label %scalar.ph173.prol.loopexit, label %scalar.ph173.prol, !llvm.loop !90

scalar.ph173.prol.loopexit:                       ; preds = %scalar.ph173.prol, %scalar.ph173.preheader
  %.03573.us.unr = phi i32 [ %.03573.us.ph, %scalar.ph173.preheader ], [ %i.bl, %scalar.ph173.prol ]
  %.03672.us.unr = phi ptr [ %.03672.us.ph, %scalar.ph173.preheader ], [ %i.bk, %scalar.ph173.prol ]
  %.03771.us.unr = phi ptr [ %.03771.us.ph, %scalar.ph173.preheader ], [ %i.bj, %scalar.ph173.prol ]
  %i.bm = sub i32 %.03573.us.ph, %i.aa
  %i.bn = icmp ugt i32 %i.bm, -4
  br i1 %i.bn, label %..loopexit_crit_edge.us, label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173
  %.03573.us = phi i32 [ %i.cq, %scalar.ph173 ], [ %.03573.us.unr, %scalar.ph173.prol.loopexit ]
  %.03672.us = phi ptr [ %i.cp, %scalar.ph173 ], [ %.03672.us.unr, %scalar.ph173.prol.loopexit ] ; 9 uses
  %.03771.us = phi ptr [ %i.co, %scalar.ph173 ], [ %.03771.us.unr, %scalar.ph173.prol.loopexit ] ; 9 uses
  %i.bo = load float, ptr %.03771.us, align 4, !tbaa !44
  store float %i.bo, ptr %.03672.us, align 4, !tbaa !44
  %i.bp = getelementptr inbounds nuw i8, ptr %.03771.us, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !44
  %i.br = fneg fast float %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %.03672.us, i64 4
  store float %i.br, ptr %i.bs, align 4, !tbaa !44
  %i.bt = getelementptr inbounds nuw i8, ptr %.03771.us, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.03672.us, i64 8
  %i.bv = load float, ptr %i.bt, align 4, !tbaa !44
  store float %i.bv, ptr %i.bu, align 4, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %.03771.us, i64 12
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !44
  %i.by = fneg fast float %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %.03672.us, i64 12
  store float %i.by, ptr %i.bz, align 4, !tbaa !44
  %i.ca = getelementptr inbounds nuw i8, ptr %.03771.us, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.03672.us, i64 16
  %i.cc = load float, ptr %i.ca, align 4, !tbaa !44
  store float %i.cc, ptr %i.cb, align 4, !tbaa !44
  %i.cd = getelementptr inbounds nuw i8, ptr %.03771.us, i64 20
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !44
  %i.cf = fneg fast float %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.03672.us, i64 20
  store float %i.cf, ptr %i.cg, align 4, !tbaa !44
  %i.ch = getelementptr inbounds nuw i8, ptr %.03771.us, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %.03672.us, i64 24
  %i.cj = load float, ptr %i.ch, align 4, !tbaa !44
  store float %i.cj, ptr %i.ci, align 4, !tbaa !44
  %i.ck = getelementptr inbounds nuw i8, ptr %.03771.us, i64 28
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !44
  %i.cm = fneg fast float %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.03672.us, i64 28
  store float %i.cm, ptr %i.cn, align 4, !tbaa !44
  %i.co = getelementptr inbounds nuw i8, ptr %.03771.us, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %.03672.us, i64 32
  %i.cq = add nuw nsw i32 %.03573.us, 4           ; 2 uses
  %exitcond79.not.3 = icmp eq i32 %i.cq, %i.aa
  br i1 %exitcond79.not.3, label %..loopexit_crit_edge.us, label %scalar.ph173, !llvm.loop !91

..loopexit_crit_edge.us:                          ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173, %middle.block212
  %i.cr = add nuw i32 %.074.us, 1                 ; 2 uses
  %i.cs = icmp ult i32 %i.cr, %i.o
  br i1 %i.cs, label %.noexc39.us, label %._crit_edge

.lr.ph75.split:                                   ; preds = %.lr.ph75, %.loopexit
  %i.ct = phi i32 [ %i.gr, %.loopexit ], [ %i.m, %.lr.ph75 ] ; 4 uses
  %i.cu = phi i32 [ %i.gs, %.loopexit ], [ 1, %.lr.ph75 ]
  %.074 = phi i32 [ %i.gt, %.loopexit ], [ %i.n, %.lr.ph75 ] ; 2 uses
  %i.cv = add i32 %.074, %i.e                     ; 4 uses
  %i.cw = icmp eq i32 %i.cu, 0
  br i1 %i.cw, label %.noexc39, label %bb.c

.noexc39:                                         ; preds = %.lr.ph75.split
  %i.cx = load i32, ptr %5, align 4, !tbaa !49    ; 7 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.noexc39
  %i.cz = load ptr, ptr %4, align 8, !tbaa !19, !noalias !96 ; 8 uses
  %i.da = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !96 ; 2 uses
  %i.db = sext i32 %i.cv to i64
  %i.dc = mul i64 %i.da, %i.db
  %i.dd = load i64, ptr %i.s, align 8, !tbaa !48, !noalias !96 ; 2 uses
  %i.de = mul i64 %i.dc, %i.dd                    ; 3 uses
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.de  ; 8 uses
  %i.dg = load i32, ptr %i.f, align 8, !tbaa !36
  %i.dh = sub i32 %i.dg, %i.cv
  %i.di = sext i32 %i.dh to i64
  %i.dj = mul i64 %i.da, %i.di
  %i.dk = mul i64 %i.dj, %i.dd                    ; 3 uses
  %i.dl = getelementptr i8, ptr %i.cz, i64 %i.dk  ; 7 uses
  %i.dm = zext nneg i32 %i.cx to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.cx, 16
  br i1 %min.iters.check, label %.lr.ph.preheader217, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dn = add nsw i32 %i.cx, -1
  %i.do = zext i32 %i.dn to i64
  %i.dp = shl nuw nsw i64 %i.do, 3                ; 2 uses
  %i.dq = add i64 %i.de, %i.dp                    ; 2 uses
  %i.dr = getelementptr i8, ptr %i.cz, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 4      ; 3 uses
  %i.dt = getelementptr i8, ptr %i.cz, i64 %i.de
  %i.du = getelementptr i8, ptr %i.dt, i64 4      ; 3 uses
  %i.dv = getelementptr i8, ptr %i.cz, i64 %i.dq
  %i.dw = getelementptr i8, ptr %i.dv, i64 8      ; 3 uses
  %i.dx = add i64 %i.dk, %i.dp                    ; 2 uses
  %i.dy = getelementptr i8, ptr %i.cz, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 4      ; 2 uses
  %i.ea = getelementptr i8, ptr %i.cz, i64 %i.dk
  %i.eb = getelementptr i8, ptr %i.ea, i64 4      ; 2 uses
  %i.ec = getelementptr i8, ptr %i.cz, i64 %i.dx
  %i.ed = getelementptr i8, ptr %i.ec, i64 8      ; 2 uses
  %bound0 = icmp ult ptr %i.df, %i.dw
  %bound1 = icmp ult ptr %i.du, %i.ds
  %found.conflict = and i1 %bound0, %bound1
  %bound0115 = icmp ult ptr %i.df, %i.dz
  %bound1116 = icmp ult ptr %i.dl, %i.ds
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx = or i1 %found.conflict, %found.conflict117
  %bound0118 = icmp ult ptr %i.df, %i.ed
  %bound1119 = icmp ult ptr %i.eb, %i.ds
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %conflict.rdx, %found.conflict120
  %bound0122 = icmp ult ptr %i.du, %i.dz
  %bound1123 = icmp ult ptr %i.dl, %i.dw
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx125 = or i1 %conflict.rdx121, %found.conflict124
  %bound0126 = icmp ult ptr %i.du, %i.ed
  %bound1127 = icmp ult ptr %i.eb, %i.dw
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx125, %found.conflict128
  br i1 %conflict.rdx129, label %.lr.ph.preheader217, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 2147483644              ; 4 uses
  %i.ee = trunc nuw nsw i64 %n.vec to i32
  %i.ef = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.eg = getelementptr i8, ptr %i.df, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.dl, i64 %i.ef
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ei = shl i64 %index, 3                       ; 3 uses
  %i.ej = or disjoint i64 %i.ei, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.df, i64 %i.ei
  %next.gep130 = getelementptr i8, ptr %i.df, i64 %i.ej
  %next.gep131 = getelementptr i8, ptr %i.dl, i64 %i.ei
  %next.gep132 = getelementptr i8, ptr %i.dl, i64 %i.ej
  %wide.vec = load <4 x float>, ptr %next.gep131, align 4, !tbaa !44 ; 2 uses
  %wide.vec134 = load <4 x float>, ptr %next.gep132, align 4, !tbaa !44 ; 2 uses
  %i.ek = fneg fast <4 x float> %wide.vec
  %i.el = fneg fast <4 x float> %wide.vec134
  %interleaved.vec = shufflevector <4 x float> %wide.vec, <4 x float> %i.ek, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !44
  %interleaved.vec137 = shufflevector <4 x float> %wide.vec134, <4 x float> %i.el, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec137, ptr %next.gep130, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dm
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader217

.lr.ph.preheader217:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03573.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ee, %middle.block ] ; 4 uses
  %.03672.ph = phi ptr [ %i.df, %vector.memcheck ], [ %i.df, %.lr.ph.preheader ], [ %i.eg, %middle.block ] ; 2 uses
  %.03771.ph = phi ptr [ %i.dl, %vector.memcheck ], [ %i.dl, %.lr.ph.preheader ], [ %i.eh, %middle.block ] ; 2 uses
  %i.en = sub i32 %i.cx, %.03573.ph
  %xtraiter = and i32 %i.en, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader217, %.lr.ph.prol
  %.03573.prol = phi i32 [ %i.ev, %.lr.ph.prol ], [ %.03573.ph, %.lr.ph.preheader217 ]
  %.03672.prol = phi ptr [ %i.eu, %.lr.ph.prol ], [ %.03672.ph, %.lr.ph.preheader217 ] ; 3 uses
  %.03771.prol = phi ptr [ %i.et, %.lr.ph.prol ], [ %.03771.ph, %.lr.ph.preheader217 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader217 ]
  %i.eo = load float, ptr %.03771.prol, align 4, !tbaa !44
  store float %i.eo, ptr %.03672.prol, align 4, !tbaa !44
  %i.ep = getelementptr inbounds nuw i8, ptr %.03771.prol, i64 4
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !44
  %i.er = fneg fast float %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %.03672.prol, i64 4
  store float %i.er, ptr %i.es, align 4, !tbaa !44
  %i.et = getelementptr inbounds nuw i8, ptr %.03771.prol, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.03672.prol, i64 8 ; 2 uses
  %i.ev = add nuw nsw i32 %.03573.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !93

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader217
  %.03573.unr = phi i32 [ %.03573.ph, %.lr.ph.preheader217 ], [ %i.ev, %.lr.ph.prol ]
  %.03672.unr = phi ptr [ %.03672.ph, %.lr.ph.preheader217 ], [ %i.eu, %.lr.ph.prol ]
  %.03771.unr = phi ptr [ %.03771.ph, %.lr.ph.preheader217 ], [ %i.et, %.lr.ph.prol ]
  %i.ew = sub i32 %.03573.ph, %i.cx
  %i.ex = icmp ugt i32 %i.ew, -4
  br i1 %i.ex, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03573 = phi i32 [ %i.ga, %.lr.ph ], [ %.03573.unr, %.lr.ph.prol.loopexit ]
  %.03672 = phi ptr [ %i.fz, %.lr.ph ], [ %.03672.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03771 = phi ptr [ %i.fy, %.lr.ph ], [ %.03771.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ey = load float, ptr %.03771, align 4, !tbaa !44
  store float %i.ey, ptr %.03672, align 4, !tbaa !44
  %i.ez = getelementptr inbounds nuw i8, ptr %.03771, i64 4
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !44
  %i.fb = fneg fast float %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %.03672, i64 4
  store float %i.fb, ptr %i.fc, align 4, !tbaa !44
  %i.fd = getelementptr inbounds nuw i8, ptr %.03771, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.03672, i64 8
  %i.ff = load float, ptr %i.fd, align 4, !tbaa !44
  store float %i.ff, ptr %i.fe, align 4, !tbaa !44
  %i.fg = getelementptr inbounds nuw i8, ptr %.03771, i64 12
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !44
  %i.fi = fneg fast float %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %.03672, i64 12
  store float %i.fi, ptr %i.fj, align 4, !tbaa !44
  %i.fk = getelementptr inbounds nuw i8, ptr %.03771, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %.03672, i64 16
  %i.fm = load float, ptr %i.fk, align 4, !tbaa !44
  store float %i.fm, ptr %i.fl, align 4, !tbaa !44
  %i.fn = getelementptr inbounds nuw i8, ptr %.03771, i64 20
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !44
  %i.fp = fneg fast float %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %.03672, i64 20
  store float %i.fp, ptr %i.fq, align 4, !tbaa !44
  %i.fr = getelementptr inbounds nuw i8, ptr %.03771, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %.03672, i64 24
  %i.ft = load float, ptr %i.fr, align 4, !tbaa !44
  store float %i.ft, ptr %i.fs, align 4, !tbaa !44
  %i.fu = getelementptr inbounds nuw i8, ptr %.03771, i64 28
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !44
  %i.fw = fneg fast float %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %.03672, i64 28
  store float %i.fw, ptr %i.fx, align 4, !tbaa !44
  %i.fy = getelementptr inbounds nuw i8, ptr %.03771, i64 32
  %i.fz = getelementptr inbounds nuw i8, ptr %.03672, i64 32
  %i.ga = add nuw nsw i32 %.03573, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ga, %i.cx
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !94

bb.c:                                             ; preds = %.lr.ph75.split
  %i.gb = load i32, ptr %i.f, align 8, !tbaa !36
  %i.gc = sub nsw i32 %i.gb, %i.cv
  %i.gd = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.ge = load i32, ptr %i.r, align 4, !tbaa !50
  %i.gf = sext i32 %i.ge to i64
  %i.gg = sext i32 %i.gc to i64
  %i.gh = load i64, ptr %i.s, align 8, !tbaa !48
  %i.gi = mul i64 %i.gh, %i.gf                    ; 2 uses
  %i.gj = mul i64 %i.gi, %i.gg
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gj
  %i.gl = sext i32 %i.cv to i64
  %i.gm = mul i64 %i.gi, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gm
  %i.go = load i32, ptr %5, align 4, !tbaa !49
  %i.gp = sext i32 %i.go to i64
  %i.gq = shl nsw i64 %i.gp, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gn, ptr align 4 %i.gk, i64 %i.gq, i1 false)
  %.pre = load i32, ptr %i.q, align 4, !tbaa !37
  %.pre81 = load i32, ptr %i.b, align 4, !tbaa !49
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.noexc39, %bb.c
  %i.gr = phi i32 [ %.pre81, %bb.c ], [ %i.ct, %.noexc39 ], [ %i.ct, %middle.block ], [ %i.ct, %.lr.ph ], [ %i.ct, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.gs = phi i32 [ %.pre, %bb.c ], [ 0, %.noexc39 ], [ 0, %middle.block ], [ 0, %.lr.ph ], [ 0, %.lr.ph.prol.loopexit ]
  %i.gt = add nuw i32 %.074, 1                    ; 2 uses
  %i.gu = add i32 %i.gr, 1
  %i.gv = icmp ult i32 %i.gt, %i.gu
  br i1 %i.gv, label %.lr.ph75.split, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %.loopexit, %..loopexit_crit_edge.us, %.lr.ph75.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.cos.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float>) #12

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTSN4ncnn9AllocatorE", !12, i64 0}
!16 = !{!"_ZTSN4ncnn3MatE", !12, i64 0, !13, i64 8, !14, i64 16, !7, i64 24, !15, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !14, i64 64}
!17 = !{!16, !13, i64 8}
!18 = !{!16, !15, i64 32}
!19 = !{!16, !12, i64 0}
!20 = !{!16, !14, i64 64}
!21 = !{!"bool", !6, i64 0}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !14, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIiSaIiEE", !27, i64 0}
!29 = !{!"p1 _ZTSN4ncnn3MatE", !12, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !32, i64 0}
!34 = !{!"_ZTSN4ncnn5LayerE", !21, i64 8, !21, i64 9, !21, i64 10, !21, i64 11, !21, i64 12, !21, i64 13, !21, i64 14, !21, i64 15, !21, i64 16, !21, i64 17, !21, i64 18, !21, i64 19, !21, i64 20, !21, i64 21, !21, i64 22, !21, i64 23, !21, i64 24, !21, i64 25, !21, i64 26, !21, i64 27, !7, i64 28, !12, i64 32, !7, i64 40, !24, i64 48, !24, i64 80, !28, i64 112, !28, i64 136, !33, i64 160, !33, i64 184}
!35 = !{!"_ZTSN4ncnn11SpectrogramE", !34, i64 0, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !16, i64 248}
!36 = !{!35, !7, i64 208}
!37 = !{!35, !7, i64 212}
!38 = !{!35, !7, i64 216}
!39 = !{!35, !7, i64 228}
!40 = !{!35, !7, i64 232}
!41 = !{!35, !7, i64 236}
!42 = !{!35, !7, i64 240}
!43 = !{!"float", !6, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !{!16, !14, i64 16}
!49 = !{!7, !7, i64 0}
!50 = !{!16, !7, i64 44}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{i64 2, i64 -1, i64 -1, i1 true}
!53 = !{!52}
!54 = !{ptr @_ZN4ncnn11SpectrogramD2Ev}
!55 = distinct !{!55, !45, !46, !47}
!56 = distinct !{!56, !45, !47, !46}
!57 = distinct !{!57, !45, !46, !47}
!58 = distinct !{!58, !45, !47, !46}
!59 = distinct !{!59, !45, !46, !47}
!60 = distinct !{!60, !45, !47, !46}
!61 = distinct !{!61, !45, !46, !47}
!62 = distinct !{!62, !45, !47, !46}
!63 = !{!35, !7, i64 220}
!64 = !{!35, !7, i64 224}
!65 = !{!12, !12, i64 0}
!66 = !{!16, !7, i64 24}
!67 = !{!16, !7, i64 56}
!68 = !{!21, !21, i64 0}
!69 = !{!15, !15, i64 0}
!70 = !{!6, !6, i64 0}
!71 = !{i64 0, i64 1, !68, i64 1, i64 1, !68, i64 2, i64 1, !68, i64 3, i64 1, !68, i64 4, i64 4, !49, i64 8, i64 8, !69, i64 16, i64 8, !69, i64 24, i64 4, !49, i64 28, i64 1, !68, i64 29, i64 1, !68, i64 30, i64 1, !68, i64 31, i64 1, !68, i64 32, i64 1, !68, i64 33, i64 1, !68, i64 34, i64 1, !68, i64 35, i64 1, !68, i64 36, i64 1, !68, i64 37, i64 1, !68, i64 38, i64 1, !68, i64 39, i64 1, !68, i64 40, i64 4, !49, i64 44, i64 1, !68, i64 45, i64 1, !68, i64 46, i64 1, !68, i64 47, i64 1, !68, i64 48, i64 1, !70, i64 49, i64 1, !68, i64 50, i64 1, !68, i64 51, i64 1, !68, i64 52, i64 1, !68, i64 53, i64 1, !68, i64 54, i64 1, !68, i64 55, i64 1, !68, i64 56, i64 1, !68, i64 57, i64 1, !68, i64 58, i64 1, !68, i64 59, i64 1, !68, i64 60, i64 1, !68, i64 61, i64 1, !68, i64 62, i64 1, !68, i64 63, i64 1, !68}
!72 = !{!"_ZTSN4ncnn6OptionE", !21, i64 0, !21, i64 1, !21, i64 2, !21, i64 3, !7, i64 4, !15, i64 8, !15, i64 16, !7, i64 24, !21, i64 28, !21, i64 29, !21, i64 30, !21, i64 31, !21, i64 32, !21, i64 33, !21, i64 34, !21, i64 35, !21, i64 36, !21, i64 37, !21, i64 38, !21, i64 39, !7, i64 40, !21, i64 44, !21, i64 45, !21, i64 46, !21, i64 47, !6, i64 48, !21, i64 49, !21, i64 50, !21, i64 51, !21, i64 52, !21, i64 53, !21, i64 54, !21, i64 55, !21, i64 56, !21, i64 57, !21, i64 58, !21, i64 59, !21, i64 60, !21, i64 61, !21, i64 62, !21, i64 63}
!73 = !{!72, !15, i64 16}
!74 = !{!72, !15, i64 8}
!75 = !{!72, !7, i64 4}
!76 = !{!34, !21, i64 8}
!77 = !{!34, !21, i64 9}
!78 = distinct !{!78, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!79 = distinct !{!79, !78, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!80 = distinct !{!80, !51}
!81 = distinct !{!81, !51}
!82 = distinct !{!82, !51}
!83 = distinct !{!83, !45, !46, !47}
!84 = distinct !{!84, !45, !47, !46}
!85 = distinct !{!85, !45}
!86 = !{!79}
!87 = distinct !{!87, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!88 = distinct !{!88, !87, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!89 = distinct !{!89, !45, !46, !47}
!90 = distinct !{!90, !51}
!91 = distinct !{!91, !45, !46}
!92 = distinct !{!92, !45, !46, !47}
!93 = distinct !{!93, !51}
!94 = distinct !{!94, !45, !46}
!95 = distinct !{!95, !97}
!96 = !{!88}
!97 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
