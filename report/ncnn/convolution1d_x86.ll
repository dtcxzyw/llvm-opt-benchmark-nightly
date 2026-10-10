Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%"class.ncnn::Mat" = type { ptr, ptr, i64, i32, ptr, i32, i32, i32, i32, i32, i64 }
%"class.ncnn::ParamDict" = type { ptr, ptr }
%"class.ncnn::ModelBinFromMatArray" = type { %"class.ncnn::ModelBin", ptr }
%"class.ncnn::ModelBin" = type { ptr }

$_ZN4ncnn17Convolution1D_x86D2Ev = comdat any

$_ZN4ncnn17Convolution1D_x86D0Ev = comdat any

$_ZN4ncnn13Convolution1DD2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN4ncnn17Convolution1D_x86E = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn17Convolution1D_x86E, ptr @_ZN4ncnn17Convolution1D_x86D2Ev, ptr @_ZN4ncnn17Convolution1D_x86D0Ev, ptr @_ZN4ncnn13Convolution1D10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn13Convolution1D10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn17Convolution1D_x8616destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn17Convolution1D_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn17Convolution1D_x867forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn17Convolution1D_x86E = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn17Convolution1D_x86E, ptr @_ZTIN4ncnn13Convolution1DE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn17Convolution1D_x86E = hidden constant [27 x i8] c"N4ncnn17Convolution1D_x86E\00", align 1
@_ZTIN4ncnn13Convolution1DE = external constant ptr
@_ZTVN4ncnn13Convolution1DE = external constant { [12 x ptr] }, align 8
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

@_ZN4ncnn17Convolution1D_x86C1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn17Convolution1D_x86C2Ev

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn17Convolution1D_x86D2Ev(ptr noundef nonnull align 8 dead_on_return(544) dereferenceable(544) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn17Convolution1D_x86E, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 504
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
  tail call void @free(ptr noundef nonnull %i.h) #11
  br label %_ZN4ncnn3MatD2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 0, ptr %i.o, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn13Convolution1DD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %0) #11
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn17Convolution1D_x86D0Ev(ptr noundef nonnull align 8 dereferenceable(544) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn17Convolution1D_x86E, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4ncnn17Convolution1D_x86D2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN4ncnn17Convolution1D_x86D2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 3 uses
  %.not3.i.i = icmp eq ptr %i.g, null
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  br i1 %.not3.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h)
          to label %_ZN4ncnn17Convolution1D_x86D2Ev.exit unwind label %bb.g, !inline_history !70

bb.e:                                             ; preds = %bb.c
  %.not.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i1.i, label %_ZN4ncnn17Convolution1D_x86D2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.h) #11, !inline_history !70
  br label %_ZN4ncnn17Convolution1D_x86D2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #18, !inline_history !70
  unreachable

_ZN4ncnn17Convolution1D_x86D2Ev.exit:             ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 0, ptr %i.o, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn13Convolution1DD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(544) %0) #11, !inline_history !70
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 544) #19
  ret void
}

declare noundef i32 @_ZN4ncnn13Convolution1D10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn13Convolution1D10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load i32, ptr %i.a, align 8, !tbaa !165
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !38, !range !39, !noundef !40
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_ZN4ncnn17Convolution1D_x8621create_pipeline_bf16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  br label %bb.ab

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = load i32, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.j = load i32, ptr %i.i, align 4, !tbaa !42   ; 51 uses
  %i.k = sdiv i32 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load i32, ptr %i.l, align 8, !tbaa !43   ; 23 uses
  %i.n = sdiv i32 %i.k, %i.m                      ; 61 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 12 uses
  %i.q = icmp sgt i32 %i.m, 3
  br i1 %i.q, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.r = icmp sgt i32 %i.n, 3                     ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = shl nsw i32 %i.j, 4
  %i.t = lshr i32 %i.n, 2
  %i.u = lshr i32 %i.n, 1
  %i.v = and i32 %i.u, 1
  %i.w = and i32 %i.n, 1
  %i.x = add nuw nsw i32 %i.w, %i.t
  %i.y = add nuw nsw i32 %i.x, %i.v
  %i.z = lshr i32 %i.m, 2
  %i.aa = lshr i32 %i.m, 1
  %i.ab = and i32 %i.aa, 1
  %i.ac = and i32 %i.m, 1
  %i.ad = add nuw nsw i32 %i.ac, %i.z
  %i.ae = add nuw nsw i32 %i.ad, %i.ab
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.s, i32 noundef %i.y, i32 noundef %i.ae, i64 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.g:                                             ; preds = %bb.e
  %i.af = icmp sgt i32 %i.n, 1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = shl nsw i32 %i.j, 3
  %i.ah = and i32 %i.n, 1
  %i.ai = add nuw nsw i32 %i.ah, 1
  %i.aj = lshr i32 %i.m, 2
  %i.ak = lshr i32 %i.m, 1
  %i.al = and i32 %i.ak, 1
  %i.am = and i32 %i.m, 1
  %i.an = add nuw nsw i32 %i.am, %i.aj
  %i.ao = add nuw nsw i32 %i.an, %i.al
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ag, i32 noundef %i.ai, i32 noundef %i.ao, i64 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.i:                                             ; preds = %bb.g
  %i.ap = shl nsw i32 %i.j, 2
  %i.aq = lshr i32 %i.m, 2
  %i.ar = lshr i32 %i.m, 1
  %i.as = and i32 %i.ar, 1
  %i.at = and i32 %i.m, 1
  %i.au = add nuw nsw i32 %i.at, %i.aq
  %i.av = add nuw nsw i32 %i.au, %i.as
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ap, i32 noundef %i.n, i32 noundef %i.av, i64 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.j:                                             ; preds = %bb.d
  %i.aw = icmp sgt i32 %i.m, 1
  %i.ax = icmp sgt i32 %i.n, 3                    ; 2 uses
  br i1 %i.aw, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = shl nsw i32 %i.j, 3
  %i.az = lshr i32 %i.n, 2
  %i.ba = lshr i32 %i.n, 1
  %i.bb = and i32 %i.ba, 1
  %i.bc = and i32 %i.n, 1
  %i.bd = add nuw nsw i32 %i.bc, %i.az
  %i.be = add nuw nsw i32 %i.bd, %i.bb
  %i.bf = and i32 %i.m, 1
  %i.bg = add nuw nsw i32 %i.bf, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ay, i32 noundef %i.be, i32 noundef %i.bg, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp sgt i32 %i.n, 1
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = shl nsw i32 %i.j, 2
  %i.bj = and i32 %i.n, 1
  %i.bk = add nuw nsw i32 %i.bj, 1
  %i.bl = and i32 %i.m, 1
  %i.bm = add nuw nsw i32 %i.bl, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.bi, i32 noundef %i.bk, i32 noundef %i.bm, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.o:                                             ; preds = %bb.m
  %i.bn = shl nsw i32 %i.j, 1
  %i.bo = and i32 %i.m, 1
  %i.bp = add nuw nsw i32 %i.bo, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.bn, i32 noundef %i.n, i32 noundef %i.bp, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.p:                                             ; preds = %bb.j
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = shl nsw i32 %i.j, 2
  %i.br = lshr i32 %i.n, 2
  %i.bs = lshr i32 %i.n, 1
  %i.bt = and i32 %i.bs, 1
  %i.bu = and i32 %i.n, 1
  %i.bv = add nuw nsw i32 %i.bu, %i.br
  %i.bw = add nuw nsw i32 %i.bv, %i.bt
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.bq, i32 noundef %i.bw, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.r:                                             ; preds = %bb.p
  %i.bx = icmp sgt i32 %i.n, 1
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = shl nsw i32 %i.j, 1
  %i.bz = and i32 %i.n, 1
  %i.ca = add nuw nsw i32 %i.bz, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.by, i32 noundef %i.ca, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.t:                                             ; preds = %bb.r
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.j, i32 noundef %i.n, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

_ZN4ncnn3MatD2Ev.exit420.lr.ph.i:                 ; preds = %bb.i, %bb.h, %bb.f
  %i.cb = load ptr, ptr %i.o, align 8, !tbaa !19  ; 4 uses
  %i.cc = mul i32 %i.n, %i.j                      ; 4 uses
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !19, !noalias !166
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !20, !noalias !166
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !44, !noalias !166
  %factor.op.mul.i = mul i64 %i.ch, %i.cf
  %i.ci = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.cj = sext i32 %i.j to i64                    ; 21 uses
  %i.ck = shl i32 %i.j, 2
  %i.cl = sext i32 %i.ck to i64                   ; 4 uses
  %i.cm = shl i32 %i.j, 1                         ; 2 uses
  %i.cn = sext i32 %i.cm to i64                   ; 5 uses
  %i.co = icmp slt i32 %i.j, 1
  %i.cp = and i32 %i.n, -4
  %i.cq = zext nneg i32 %i.m to i64
  %wide.trip.count.i = zext i32 %i.j to i64       ; 12 uses
  %i.cr = shl nuw nsw i64 %wide.trip.count.i, 4
  %i.cs = shl nuw nsw i64 %wide.trip.count.i, 2   ; 9 uses
  %i.ct = shl nuw nsw i64 %wide.trip.count.i, 5
  %i.cu = shl nuw nsw i64 %i.cj, 2                ; 5 uses
  %i.cv = add nuw nsw i64 %i.cu, %i.cs            ; 4 uses
  %i.cw = shl nsw i64 %i.cn, 2
  %i.cx = add i32 %i.n, -2
  %min.iters.check208 = icmp ult i32 %i.j, 20
  %stride.check175 = icmp slt i32 %i.cm, 0
  %n.vec210 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.cy = shl nuw nsw i64 %n.vec210, 5
  %cmp.n225 = icmp eq i64 %n.vec210, %wide.trip.count.i
  %min.iters.check = icmp ult i32 %i.j, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.cz = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.da = add nsw i64 %wide.trip.count.i, -1
  br label %_ZN4ncnn3MatD2Ev.exit420.i

.preheader483.loopexit.i:                         ; preds = %._crit_edge546.split.i
  %i.db = trunc nuw nsw i64 %indvars.iv.next734.i to i32
  br label %.preheader483.i

.preheader483.i:                                  ; preds = %.preheader483.loopexit.i, %bb.t, %bb.s, %bb.q, %bb.o, %bb.n, %bb.l
  %.0.lcssa.i = phi i32 [ %i.db, %.preheader483.loopexit.i ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.q ] ; 5 uses
  %i.dc = or disjoint i32 %.0.lcssa.i, 1          ; 2 uses
  %i.dd = icmp slt i32 %i.dc, %i.m
  br i1 %i.dd, label %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i, label %.preheader477.i

_ZN4ncnn3MatD2Ev.exit419.lr.ph.i:                 ; preds = %.preheader483.i
  %i.de = load ptr, ptr %i.o, align 8, !tbaa !19  ; 16 uses
  %i.df = mul i32 %i.n, %i.j                      ; 2 uses
  %i.dg = load ptr, ptr %i.p, align 8, !tbaa !19, !noalias !167
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !20, !noalias !167
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !44, !noalias !167
  %factor.op.mul594.i = mul i64 %i.dk, %i.di
  %i.dl = icmp sgt i32 %i.n, 3
  %i.dm = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.dn = sext i32 %i.j to i64                    ; 14 uses
  %i.do = shl i32 %i.j, 1                         ; 3 uses
  %i.dp = zext i32 %i.do to i64                   ; 5 uses
  %i.dq = mul i32 %i.j, 3
  %i.dr = zext i32 %i.dq to i64                   ; 5 uses
  %i.ds = shl i32 %i.j, 2                         ; 2 uses
  %i.dt = sext i32 %i.ds to i64                   ; 3 uses
  %i.du = sext i32 %i.do to i64                   ; 3 uses
  %i.dv = icmp slt i32 %i.j, 1
  %i.dw = and i32 %i.n, -4
  %i.dx = zext i32 %.0.lcssa.i to i64
  %i.dy = add i32 %.0.lcssa.i, 1
  %i.dz = sext i32 %i.m to i64
  %wide.trip.count747.i = zext i32 %i.j to i64    ; 18 uses
  %invariant.op.i = add nsw i64 %i.dz, -1
end_hunk_0
begin_hunk_1_@_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE:bb.a
scalar.ph486.prol.loopexit:                       ; preds = %scalar.ph486.prol, %scalar.ph486.preheader
  %.lcssa564.unr = phi ptr [ poison, %scalar.ph486.preheader ], [ %i.ud, %scalar.ph486.prol ]
  %indvars.iv780.i.us.unr = phi i64 [ %indvars.iv780.i.us.ph, %scalar.ph486.preheader ], [ %indvars.iv.next781.i.us.prol, %scalar.ph486.prol ]
  %.4615.us.i.us.unr = phi ptr [ %.4615.us.i.us.ph, %scalar.ph486.preheader ], [ %i.ud, %scalar.ph486.prol ]
  %i.ue = sub nsw i64 %indvars.iv780.i.us.ph, %wide.trip.count777.i
  %i.uf = icmp ugt i64 %i.ue, -4
  br i1 %i.uf, label %._crit_edge617.us.i.us, label %scalar.ph486

scalar.ph486:                                     ; preds = %scalar.ph486.prol.loopexit, %scalar.ph486
  %indvars.iv780.i.us = phi i64 [ %indvars.iv.next781.i.us.3, %scalar.ph486 ], [ %indvars.iv780.i.us.unr, %scalar.ph486.prol.loopexit ] ; 5 uses
  %.4615.us.i.us = phi ptr [ %i.vg, %scalar.ph486 ], [ %.4615.us.i.us.unr, %scalar.ph486.prol.loopexit ] ; 9 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us ; 2 uses
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !45
  store float %i.uh, ptr %.4615.us.i.us, align 4, !tbaa !45
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.oj
  %i.uj = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 4
  %i.uk = load float, ptr %i.ui, align 4, !tbaa !45
  store float %i.uk, ptr %i.uj, align 4, !tbaa !45
  %i.ul = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 8
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 4 ; 2 uses
  %i.uo = load float, ptr %i.un, align 4, !tbaa !45
  store float %i.uo, ptr %i.ul, align 4, !tbaa !45
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.oj
  %i.uq = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 12
  %i.ur = load float, ptr %i.up, align 4, !tbaa !45
  store float %i.ur, ptr %i.uq, align 4, !tbaa !45
  %i.us = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 16
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8 ; 2 uses
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !45
  store float %i.uv, ptr %i.us, align 4, !tbaa !45
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.oj
  %i.ux = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 20
  %i.uy = load float, ptr %i.uw, align 4, !tbaa !45
  store float %i.uy, ptr %i.ux, align 4, !tbaa !45
  %i.uz = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 24
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 12 ; 2 uses
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !45
  store float %i.vc, ptr %i.uz, align 4, !tbaa !45
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.oj
  %i.ve = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 28
  %i.vf = load float, ptr %i.vd, align 4, !tbaa !45
  store float %i.vf, ptr %i.ve, align 4, !tbaa !45
  %i.vg = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 32 ; 2 uses
  %indvars.iv.next781.i.us.3 = add nuw nsw i64 %indvars.iv780.i.us, 4 ; 2 uses
  %exitcond784.not.i.us.3 = icmp eq i64 %indvars.iv.next781.i.us.3, %wide.trip.count777.i
  br i1 %exitcond784.not.i.us.3, label %._crit_edge617.us.i.us, label %scalar.ph486, !llvm.loop !117

._crit_edge617.us.i.us:                           ; preds = %scalar.ph486.prol.loopexit, %scalar.ph486, %middle.block501
  %.lcssa102 = phi ptr [ %i.tq, %middle.block501 ], [ %.lcssa564.unr, %scalar.ph486.prol.loopexit ], [ %i.vg, %scalar.ph486 ] ; 2 uses
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %i.on ; 2 uses
  %i.vi = add nuw nsw i32 %.1342621.us.i.us, 2    ; 3 uses
  %i.vj = or disjoint i32 %i.vi, 1
  %i.vk = icmp slt i32 %i.vj, %i.n
  br i1 %i.vk, label %.preheader473.us.i.us, label %.preheader475.i.us, !llvm.loop !118

.preheader475.i.us:                               ; preds = %._crit_edge617.us.i.us, %.preheader476.i.loopexit.us
  %.1348.lcssa.i.us = phi ptr [ %i.tl, %.preheader476.i.loopexit.us ], [ %i.vh, %._crit_edge617.us.i.us ] ; 11 uses
  %.3.lcssa.i.us = phi ptr [ %.lcssa, %.preheader476.i.loopexit.us ], [ %.lcssa102, %._crit_edge617.us.i.us ]
  %.1342.lcssa.i.us = phi i32 [ %i.op, %.preheader476.i.loopexit.us ], [ %i.vi, %._crit_edge617.us.i.us ] ; 2 uses
  %i.vl = icmp sge i32 %.1342.lcssa.i.us, %i.n
  %brmerge645.i.us = or i1 %i.oo, %i.vl
  br i1 %brmerge645.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us.preheader

.preheader.i.us.preheader:                        ; preds = %.preheader475.i.us
  %.1348.lcssa.i.us451 = ptrtoaddr ptr %.1348.lcssa.i.us to i64
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us.preheader, %._crit_edge630.i.us
  %.2343633.i.us = phi i32 [ %i.xd, %._crit_edge630.i.us ], [ %.1342.lcssa.i.us, %.preheader.i.us.preheader ]
  %.6632.i.us = phi ptr [ %.lcssa105, %._crit_edge630.i.us ], [ %.3.lcssa.i.us, %.preheader.i.us.preheader ] ; 4 uses
  %.6632.i.us452 = ptrtoaddr ptr %.6632.i.us to i64
  %i.vm = sub i64 %.1348.lcssa.i.us451, %.6632.i.us452
  %diff.check453 = icmp ugt i64 %i.vm, -32
  %or.cond = select i1 %min.iters.check455, i1 true, i1 %diff.check453
  br i1 %or.cond, label %scalar.ph454.preheader, label %vector.ph456

vector.ph456:                                     ; preds = %.preheader.i.us
  %i.vn = getelementptr i8, ptr %.6632.i.us, i64 %i.qe ; 2 uses
  br label %vector.body458

vector.body458:                                   ; preds = %vector.body458, %vector.ph456
  %index459 = phi i64 [ 0, %vector.ph456 ], [ %index.next463, %vector.body458 ] ; 3 uses
  %i.vo = shl i64 %index459, 2
  %next.gep460 = getelementptr i8, ptr %.6632.i.us, i64 %i.vo ; 2 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %index459 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %wide.load461 = load <4 x float>, ptr %i.vp, align 4, !tbaa !45
  %wide.load462 = load <4 x float>, ptr %i.vq, align 4, !tbaa !45
  %i.vr = getelementptr i8, ptr %next.gep460, i64 16
  store <4 x float> %wide.load461, ptr %next.gep460, align 4, !tbaa !45
  store <4 x float> %wide.load462, ptr %i.vr, align 4, !tbaa !45
  %index.next463 = add nuw i64 %index459, 8       ; 2 uses
  %i.vs = icmp eq i64 %index.next463, %n.vec457
  br i1 %i.vs, label %middle.block464, label %vector.body458, !llvm.loop !119

middle.block464:                                  ; preds = %vector.body458
  br i1 %cmp.n465, label %._crit_edge630.i.us, label %scalar.ph454.preheader

scalar.ph454.preheader:                           ; preds = %.preheader.i.us, %middle.block464
  %indvars.iv785.i.us.ph = phi i64 [ 0, %.preheader.i.us ], [ %n.vec457, %middle.block464 ] ; 3 uses
  %.7628.i.us.ph = phi ptr [ %.6632.i.us, %.preheader.i.us ], [ %i.vn, %middle.block464 ] ; 2 uses
  br i1 %lcmp.mod610.not, label %scalar.ph454.prol.loopexit, label %scalar.ph454.prol

scalar.ph454.prol:                                ; preds = %scalar.ph454.preheader, %scalar.ph454.prol
  %indvars.iv785.i.us.prol = phi i64 [ %indvars.iv.next786.i.us.prol, %scalar.ph454.prol ], [ %indvars.iv785.i.us.ph, %scalar.ph454.preheader ] ; 2 uses
  %.7628.i.us.prol = phi ptr [ %i.vv, %scalar.ph454.prol ], [ %.7628.i.us.ph, %scalar.ph454.preheader ] ; 2 uses
  %prol.iter611 = phi i64 [ %prol.iter611.next, %scalar.ph454.prol ], [ 0, %scalar.ph454.preheader ]
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us.prol
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !45
  store float %i.vu, ptr %.7628.i.us.prol, align 4, !tbaa !45
  %i.vv = getelementptr inbounds nuw i8, ptr %.7628.i.us.prol, i64 4 ; 3 uses
  %indvars.iv.next786.i.us.prol = add nuw nsw i64 %indvars.iv785.i.us.prol, 1 ; 2 uses
  %prol.iter611.next = add i64 %prol.iter611, 1   ; 2 uses
  %prol.iter611.cmp.not = icmp eq i64 %prol.iter611.next, %xtraiter609
  br i1 %prol.iter611.cmp.not, label %scalar.ph454.prol.loopexit, label %scalar.ph454.prol, !llvm.loop !120

scalar.ph454.prol.loopexit:                       ; preds = %scalar.ph454.prol, %scalar.ph454.preheader
  %.lcssa567.unr = phi ptr [ poison, %scalar.ph454.preheader ], [ %i.vv, %scalar.ph454.prol ]
  %indvars.iv785.i.us.unr = phi i64 [ %indvars.iv785.i.us.ph, %scalar.ph454.preheader ], [ %indvars.iv.next786.i.us.prol, %scalar.ph454.prol ]
  %.7628.i.us.unr = phi ptr [ %.7628.i.us.ph, %scalar.ph454.preheader ], [ %i.vv, %scalar.ph454.prol ]
  %i.vw = sub nsw i64 %indvars.iv785.i.us.ph, %wide.trip.count777.i
  %i.vx = icmp ugt i64 %i.vw, -8
  br i1 %i.vx, label %._crit_edge630.i.us, label %scalar.ph454

scalar.ph454:                                     ; preds = %scalar.ph454.prol.loopexit, %scalar.ph454
  %indvars.iv785.i.us = phi i64 [ %indvars.iv.next786.i.us.7, %scalar.ph454 ], [ %indvars.iv785.i.us.unr, %scalar.ph454.prol.loopexit ] ; 9 uses
  %.7628.i.us = phi ptr [ %i.xc, %scalar.ph454 ], [ %.7628.i.us.unr, %scalar.ph454.prol.loopexit ] ; 9 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !45
  store float %i.vz, ptr %.7628.i.us, align 4, !tbaa !45
  %i.wa = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 4
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !45
  store float %i.wd, ptr %i.wa, align 4, !tbaa !45
  %i.we = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 8
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !45
  store float %i.wh, ptr %i.we, align 4, !tbaa !45
  %i.wi = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 12
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 12
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !45
  store float %i.wl, ptr %i.wi, align 4, !tbaa !45
  %i.wm = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 16
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !45
  store float %i.wp, ptr %i.wm, align 4, !tbaa !45
  %i.wq = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 20
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 20
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !45
  store float %i.wt, ptr %i.wq, align 4, !tbaa !45
  %i.wu = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 24
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !45
  store float %i.wx, ptr %i.wu, align 4, !tbaa !45
  %i.wy = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 28
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 28
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !45
  store float %i.xb, ptr %i.wy, align 4, !tbaa !45
  %i.xc = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 32 ; 2 uses
  %indvars.iv.next786.i.us.7 = add nuw nsw i64 %indvars.iv785.i.us, 8 ; 2 uses
  %exitcond789.not.i.us.7 = icmp eq i64 %indvars.iv.next786.i.us.7, %wide.trip.count777.i
  br i1 %exitcond789.not.i.us.7, label %._crit_edge630.i.us, label %scalar.ph454, !llvm.loop !121

._crit_edge630.i.us:                              ; preds = %scalar.ph454.prol.loopexit, %scalar.ph454, %middle.block464
  %.lcssa105 = phi ptr [ %i.vn, %middle.block464 ], [ %.lcssa567.unr, %scalar.ph454.prol.loopexit ], [ %i.xc, %scalar.ph454 ]
  %i.xd = add nuw nsw i32 %.2343633.i.us, 1       ; 2 uses
  %exitcond790.not.i.us = icmp eq i32 %i.xd, %i.n
  br i1 %exitcond790.not.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us, !llvm.loop !122

._crit_edge634.split.i.us:                        ; preds = %._crit_edge630.i.us, %.preheader475.i.us
  %indvars.iv.next792.i.us = add nuw nsw i64 %indvars.iv791.i.us, 1 ; 2 uses
  %exitcond795.not.i.us = icmp eq i64 %indvars.iv.next792.i.us, %wide.trip.count794.i
  %indvar.next471 = add i32 %indvar470, 1
  br i1 %exitcond795.not.i.us, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.us, !llvm.loop !123

.preheader476.i.loopexit.us:                      ; preds = %._crit_edge601.us.i.us
  br i1 %i.os, label %.preheader473.us.i.us.preheader, label %.preheader475.i.us

.preheader473.us.i.us.preheader:                  ; preds = %.preheader476.i.loopexit.us
  %i.xe = mul i64 %i.oz, %indvar472               ; 3 uses
  %gep646 = getelementptr i8, ptr %invariant.gep645, i64 %i.xe
  %scevgep474 = getelementptr i8, ptr %gep646, i64 %i.qm
  %gep652 = getelementptr i8, ptr %invariant.gep651, i64 %i.xe
  %scevgep475 = getelementptr i8, ptr %gep652, i64 %i.qm
  %gep = getelementptr i8, ptr %invariant.gep656, i64 %i.xe
  %scevgep476 = getelementptr i8, ptr %gep, i64 %i.qm
  br label %.preheader473.us.i.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split:              ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %i.xf = icmp sgt i32 %i.n, 1
  %2 = and i32 %i.n, -2
  %i.xg = shl nuw nsw i64 %wide.trip.count777.i, 3
  %scevgep414 = getelementptr i8, ptr %i.oc, i64 %i.xg
  %i.xh = mul i64 %i.og, %i.oe
  %i.xi = shl nuw nsw i64 %i.oj, 2                ; 2 uses
  %scevgep418 = getelementptr i8, ptr %i.oa, i64 %i.xi
  %i.xj = mul i32 %.1.lcssa.i, %i.j
  %i.xk = mul i32 %i.xj, %i.n
  %i.xl = mul i32 %i.j, %i.n
  %i.xm = shl nuw nsw i64 %wide.trip.count777.i, 2 ; 2 uses
  %i.xn = getelementptr i8, ptr %i.oa, i64 %i.xi
  %scevgep420 = getelementptr i8, ptr %i.xn, i64 %i.xm
  %scevgep422 = getelementptr i8, ptr %i.oa, i64 %i.xm
  %min.iters.check432 = icmp ult i32 %i.j, 6
  %n.vec434 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.xo = shl nuw nsw i64 %n.vec434, 3
  %cmp.n447 = icmp eq i64 %n.vec434, %wide.trip.count777.i
  %xtraiter597 = and i64 %wide.trip.count777.i, 3 ; 2 uses
  %lcmp.mod598.not = icmp eq i64 %xtraiter597, 0
  %min.iters.check400 = icmp ult i32 %i.j, 8
  %n.vec402 = and i64 %wide.trip.count777.i, 2147483640 ; 4 uses
  %i.xp = shl nuw nsw i64 %n.vec402, 2
  %cmp.n410 = icmp eq i64 %n.vec402, %wide.trip.count777.i
  %xtraiter600 = and i64 %wide.trip.count777.i, 7 ; 2 uses
  %lcmp.mod601.not = icmp eq i64 %xtraiter600, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit419.i:                       ; preds = %._crit_edge591.split.i, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge591.split.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %indvars.iv764.i = phi i64 [ %indvars.iv.next765.i, %._crit_edge591.split.i ], [ %i.dx, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %indvars.iv762.i = phi i32 [ %indvars.iv.next763.i, %._crit_edge591.split.i ], [ %i.dy, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %i.xq = mul i32 %i.em, %indvar                  ; 2 uses
  %i.xr = add i32 %i.ek, %i.xq
  %i.xs = sext i32 %i.xr to i64
  %i.xt = shl nsw i64 %i.xs, 2                    ; 7 uses
  %scevgep309 = getelementptr i8, ptr %scevgep308, i64 %i.xt
  %scevgep311 = getelementptr i8, ptr %scevgep310, i64 %i.xt
  %scevgep313 = getelementptr i8, ptr %scevgep312, i64 %i.xt
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %i.xt
  %scevgep317 = getelementptr i8, ptr %scevgep316, i64 %i.xt
  %scevgep319 = getelementptr i8, ptr %scevgep318, i64 %i.xt
  %scevgep321 = getelementptr i8, ptr %scevgep320, i64 %i.xt
  %i.xu = add i32 %i.fc, %i.xq
  %i.xv = sext i32 %i.xu to i64
  %i.xw = shl nsw i64 %i.xv, 2                    ; 7 uses
  %scevgep323 = getelementptr i8, ptr %scevgep322, i64 %i.xw
  %scevgep325 = getelementptr i8, ptr %scevgep324, i64 %i.xw
  %scevgep327 = getelementptr i8, ptr %scevgep326, i64 %i.xw
  %scevgep329 = getelementptr i8, ptr %scevgep328, i64 %i.xw
  %scevgep331 = getelementptr i8, ptr %scevgep330, i64 %i.xw
  %scevgep333 = getelementptr i8, ptr %scevgep332, i64 %i.xw
  %scevgep335 = getelementptr i8, ptr %scevgep334, i64 %i.xw
  %i.xx = trunc i64 %indvars.iv764.i to i32       ; 3 uses
  %i.xy = mul i32 %i.df, %i.xx
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr [4 x i8], ptr %i.de, i64 %i.xz ; 3 uses
  %i.yb = mul i32 %indvars.iv762.i, %i.df
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr [4 x i8], ptr %i.de, i64 %i.yc ; 3 uses
  %i.ye = lshr i32 %i.xx, 2
  %i.yf = lshr i32 %i.xx, 1
  %i.yg = and i32 %i.yf, 1
  %i.yh = add nuw nsw i32 %i.yg, %i.ye
  %i.yi = zext nneg i32 %i.yh to i64
  %.reass595.i = mul i64 %factor.op.mul594.i, %i.yi
  %i.yj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.reass595.i ; 2 uses
  br i1 %i.dl, label %.preheader480.lr.ph.i, label %.preheader482.i

.preheader480.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit419.i
  br i1 %i.dm, label %.preheader480.us.i.preheader, label %._crit_edge591.split.i

.preheader480.us.i.preheader:                     ; preds = %.preheader480.lr.ph.i
  %i.yk = insertelement <8 x ptr> poison, ptr %scevgep315, i64 0
  %i.yl = insertelement <8 x ptr> %i.yk, ptr %scevgep311, i64 1
  %i.ym = insertelement <8 x ptr> %i.yl, ptr %scevgep319, i64 2
  %i.yn = insertelement <8 x ptr> %i.ym, ptr %scevgep321, i64 3
  %i.yo = insertelement <8 x ptr> %i.yn, ptr %scevgep325, i64 4
  %i.yp = insertelement <8 x ptr> %i.yo, ptr %scevgep329, i64 5
  %i.yq = insertelement <8 x ptr> %i.yp, ptr %scevgep333, i64 6
  %i.yr = insertelement <8 x ptr> %i.yq, ptr %scevgep335, i64 7
  %i.ys = insertelement <8 x ptr> poison, ptr %scevgep313, i64 0
  %i.yt = insertelement <8 x ptr> %i.ys, ptr %scevgep309, i64 1
  %i.yu = insertelement <8 x ptr> %i.yt, ptr %scevgep317, i64 2
  %i.yv = insertelement <8 x ptr> %i.yu, ptr %i.yd, i64 3
  %i.yw = insertelement <8 x ptr> %i.yv, ptr %scevgep323, i64 4
  %i.yx = insertelement <8 x ptr> %i.yw, ptr %scevgep327, i64 5
  %i.yy = insertelement <8 x ptr> %i.yx, ptr %scevgep331, i64 6
  %i.yz = insertelement <8 x ptr> %i.yy, ptr %i.ya, i64 7
  br label %.preheader480.us.i

.preheader480.us.i:                               ; preds = %.preheader480.us.i.preheader, %._crit_edge551.us.i
  %.0363556.us.i = phi i32 [ %i.aba, %._crit_edge551.us.i ], [ 0, %.preheader480.us.i.preheader ]
  %.0366555.us.i = phi ptr [ %.lcssa108, %._crit_edge551.us.i ], [ %i.yj, %.preheader480.us.i.preheader ] ; 6 uses
  %.0373554.us.i = phi ptr [ %i.aaz, %._crit_edge551.us.i ], [ %i.yd, %.preheader480.us.i.preheader ] ; 3 uses
  %.0375553.us.i = phi ptr [ %i.aay, %._crit_edge551.us.i ], [ %i.ya, %.preheader480.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check376, label %scalar.ph375.preheader, label %vector.memcheck306

vector.memcheck306:                               ; preds = %.preheader480.us.i
  %scevgep307 = getelementptr i8, ptr %.0366555.us.i, i64 %i.eh
  %i.za = insertelement <8 x ptr> poison, ptr %.0366555.us.i, i64 0
  %i.zb = shufflevector <8 x ptr> %i.za, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.zc = icmp ult <8 x ptr> %i.zb, %i.yr
  %i.zd = insertelement <8 x ptr> poison, ptr %scevgep307, i64 0
  %i.ze = shufflevector <8 x ptr> %i.zd, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.zf = icmp ult <8 x ptr> %i.yz, %i.ze
  %i.zg = and <8 x i1> %i.zc, %i.zf
  %i.zh = bitcast <8 x i1> %i.zg to i8
  %i.zi = icmp ne i8 %i.zh, 0
  %op.rdx559 = or i1 %i.zi, %stride.check343
  br i1 %op.rdx559, label %scalar.ph375.preheader, label %vector.ph377

vector.ph377:                                     ; preds = %vector.memcheck306
  %i.zj = getelementptr i8, ptr %.0366555.us.i, i64 %i.fd ; 2 uses
  br label %vector.body379

vector.body379:                                   ; preds = %vector.body379, %vector.ph377
  %index380 = phi i64 [ 0, %vector.ph377 ], [ %index.next391, %vector.body379 ] ; 4 uses
  %i.zk = shl i64 %index380, 5
  %next.gep381 = getelementptr i8, ptr %.0366555.us.i, i64 %i.zk
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %index380 ; 4 uses
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %index380 ; 4 uses
  %wide.load382 = load <4 x float>, ptr %i.zl, align 4, !tbaa !45, !alias.scope !195
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.dn
  %wide.load383 = load <4 x float>, ptr %i.zn, align 4, !tbaa !45, !alias.scope !196
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.dp
  %wide.load384 = load <4 x float>, ptr %i.zo, align 4, !tbaa !45, !alias.scope !197
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.dr
  %wide.load385 = load <4 x float>, ptr %i.zp, align 4, !tbaa !45, !alias.scope !198
  %wide.load386 = load <4 x float>, ptr %i.zm, align 4, !tbaa !45, !alias.scope !199
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %i.dn
  %wide.load387 = load <4 x float>, ptr %i.zq, align 4, !tbaa !45, !alias.scope !200
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %i.dp
  %wide.load388 = load <4 x float>, ptr %i.zr, align 4, !tbaa !45, !alias.scope !201
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %i.dr
  %wide.load389 = load <4 x float>, ptr %i.zs, align 4, !tbaa !45, !alias.scope !202
  %i.zt = shufflevector <4 x float> %wide.load382, <4 x float> %wide.load383, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zu = shufflevector <4 x float> %wide.load384, <4 x float> %wide.load385, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zv = shufflevector <4 x float> %wide.load386, <4 x float> %wide.load387, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zw = shufflevector <4 x float> %wide.load388, <4 x float> %wide.load389, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zx = shufflevector <8 x float> %i.zt, <8 x float> %i.zu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zy = shufflevector <8 x float> %i.zv, <8 x float> %i.zw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec390 = shufflevector <16 x float> %i.zx, <16 x float> %i.zy, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec390, ptr %next.gep381, align 4, !tbaa !45, !alias.scope !203, !noalias !204
  %index.next391 = add nuw i64 %index380, 4       ; 2 uses
  %i.zz = icmp eq i64 %index.next391, %n.vec378
  br i1 %i.zz, label %middle.block392, label %vector.body379, !llvm.loop !134

middle.block392:                                  ; preds = %vector.body379
  br i1 %cmp.n393, label %._crit_edge551.us.i, label %scalar.ph375.preheader

scalar.ph375.preheader:                           ; preds = %vector.memcheck306, %.preheader480.us.i, %middle.block392
  %indvars.iv744.i.ph = phi i64 [ 0, %vector.memcheck306 ], [ 0, %.preheader480.us.i ], [ %n.vec378, %middle.block392 ]
  %.1367549.us.i.ph = phi ptr [ %.0366555.us.i, %vector.memcheck306 ], [ %.0366555.us.i, %.preheader480.us.i ], [ %i.zj, %middle.block392 ]
  br label %scalar.ph375

scalar.ph375:                                     ; preds = %scalar.ph375.preheader, %scalar.ph375
  %indvars.iv744.i = phi i64 [ %indvars.iv.next745.i, %scalar.ph375 ], [ %indvars.iv744.i.ph, %scalar.ph375.preheader ] ; 3 uses
  %.1367549.us.i = phi ptr [ %i.aax, %scalar.ph375 ], [ %.1367549.us.i.ph, %scalar.ph375.preheader ] ; 9 uses
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.aac = load float, ptr %i.aaa, align 4, !tbaa !45
  store float %i.aac, ptr %.1367549.us.i, align 4, !tbaa !45
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.dn
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !45
  %i.aaf = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 4
  store float %i.aae, ptr %i.aaf, align 4, !tbaa !45
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.dp
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !45
  %i.aai = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 8
  store float %i.aah, ptr %i.aai, align 4, !tbaa !45
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.dr
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !45
  %i.aal = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 12
  store float %i.aak, ptr %i.aal, align 4, !tbaa !45
  %i.aam = load float, ptr %i.aab, align 4, !tbaa !45
  %i.aan = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 16
  store float %i.aam, ptr %i.aan, align 4, !tbaa !45
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %i.dn
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !45
  %i.aaq = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 20
  store float %i.aap, ptr %i.aaq, align 4, !tbaa !45
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %i.dp
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !45
  %i.aat = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 24
  store float %i.aas, ptr %i.aat, align 4, !tbaa !45
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %i.dr
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !45
  %i.aaw = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 28
  store float %i.aav, ptr %i.aaw, align 4, !tbaa !45
  %i.aax = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 32 ; 2 uses
  %indvars.iv.next745.i = add nuw nsw i64 %indvars.iv744.i, 1 ; 2 uses
  %exitcond748.not.i = icmp eq i64 %indvars.iv.next745.i, %wide.trip.count747.i
  br i1 %exitcond748.not.i, label %._crit_edge551.us.i, label %scalar.ph375, !llvm.loop !135

._crit_edge551.us.i:                              ; preds = %scalar.ph375, %middle.block392
  %.lcssa108 = phi ptr [ %i.zj, %middle.block392 ], [ %i.aax, %scalar.ph375 ] ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %i.dt ; 2 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %i.dt ; 2 uses
  %i.aba = add nuw nsw i32 %.0363556.us.i, 4      ; 2 uses
  %i.abb = or disjoint i32 %i.aba, 3
  %i.abc = icmp slt i32 %i.abb, %i.n
end_hunk_1
begin_hunk_2_@_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE:bb.a
  %i.ads = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 28
  store float %i.adr, ptr %i.ads, align 4, !tbaa !45
  %i.adt = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 32 ; 2 uses
  %indvars.iv.next752.i.1 = add nuw nsw i64 %indvars.iv751.i, 2 ; 2 uses
  %exitcond755.not.i.1 = icmp eq i64 %indvars.iv.next752.i.1, %wide.trip.count747.i
  br i1 %exitcond755.not.i.1, label %._crit_edge571.us.i, label %scalar.ph289, !llvm.loop !144

._crit_edge571.us.i:                              ; preds = %scalar.ph289.prol.loopexit, %scalar.ph289, %middle.block302
  %.lcssa111 = phi ptr [ %i.aca, %middle.block302 ], [ %.lcssa575.unr, %scalar.ph289.prol.loopexit ], [ %i.adt, %scalar.ph289 ] ; 2 uses
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %i.du ; 2 uses
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %i.du ; 2 uses
  %i.adw = add nuw nsw i32 %.1364576.us.i, 2      ; 3 uses
  %i.adx = or disjoint i32 %i.adw, 1
  %i.ady = icmp slt i32 %i.adx, %i.n
  br i1 %i.ady, label %.preheader479.us.i, label %.preheader481.i, !llvm.loop !145

.preheader481.i:                                  ; preds = %._crit_edge571.us.i, %.preheader482.i
  %.1376.lcssa.i = phi ptr [ %.0375.lcssa.i, %.preheader482.i ], [ %i.adu, %._crit_edge571.us.i ] ; 8 uses
  %.1374.lcssa.i = phi ptr [ %.0373.lcssa.i, %.preheader482.i ], [ %i.adv, %._crit_edge571.us.i ] ; 8 uses
  %.2368.lcssa.i = phi ptr [ %.0366.lcssa.i, %.preheader482.i ], [ %.lcssa111, %._crit_edge571.us.i ]
  %.1364.lcssa.i = phi i32 [ %.0363.lcssa.i, %.preheader482.i ], [ %i.adw, %._crit_edge571.us.i ] ; 2 uses
  %i.adz = icmp sge i32 %.1364.lcssa.i, %i.n
  %brmerge642.i = or i1 %i.dv, %i.adz
  br i1 %brmerge642.i, label %._crit_edge591.split.i, label %.preheader478.i.preheader

.preheader478.i.preheader:                        ; preds = %.preheader481.i
  %scevgep230 = getelementptr i8, ptr %.1374.lcssa.i, i64 %i.eb
  %scevgep231 = getelementptr i8, ptr %.1376.lcssa.i, i64 %i.eb
  br label %.preheader478.i

.preheader478.i:                                  ; preds = %.preheader478.i.preheader, %._crit_edge587.i
  %.2365590.i = phi i32 [ %i.aeq, %._crit_edge587.i ], [ %.1364.lcssa.i, %.preheader478.i.preheader ]
  %.5371589.i = phi ptr [ %.lcssa115, %._crit_edge587.i ], [ %.2368.lcssa.i, %.preheader478.i.preheader ] ; 8 uses
  br i1 %min.iters.check240, label %scalar.ph239.preheader, label %vector.memcheck228

vector.memcheck228:                               ; preds = %.preheader478.i
  %scevgep229 = getelementptr i8, ptr %.5371589.i, i64 %i.ea ; 2 uses
  %bound0232 = icmp ult ptr %.5371589.i, %scevgep230
  %bound1233 = icmp ult ptr %.1374.lcssa.i, %scevgep229
  %found.conflict234 = and i1 %bound0232, %bound1233
  %bound0235 = icmp ult ptr %.5371589.i, %scevgep231
  %bound1236 = icmp ult ptr %.1376.lcssa.i, %scevgep229
  %found.conflict237 = and i1 %bound0235, %bound1236
  %conflict.rdx238 = or i1 %found.conflict234, %found.conflict237
  br i1 %conflict.rdx238, label %scalar.ph239.preheader, label %vector.ph241

vector.ph241:                                     ; preds = %vector.memcheck228
  %i.aea = getelementptr i8, ptr %.5371589.i, i64 %i.fg ; 2 uses
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph241
  %index244 = phi i64 [ 0, %vector.ph241 ], [ %index.next253, %vector.body243 ] ; 4 uses
  %i.aeb = shl i64 %index244, 3                   ; 2 uses
  %next.gep245 = getelementptr i8, ptr %.5371589.i, i64 %i.aeb
  %i.aec = getelementptr i8, ptr %.5371589.i, i64 %i.aeb
  %next.gep246 = getelementptr i8, ptr %i.aec, i64 16
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %index244 ; 2 uses
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %index244 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aed, i64 8
  %wide.load247 = load <2 x float>, ptr %i.aed, align 4, !tbaa !45, !alias.scope !211
  %wide.load248 = load <2 x float>, ptr %i.aef, align 4, !tbaa !45, !alias.scope !211
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %wide.load249 = load <2 x float>, ptr %i.aee, align 4, !tbaa !45, !alias.scope !212
  %wide.load250 = load <2 x float>, ptr %i.aeg, align 4, !tbaa !45, !alias.scope !212
  %interleaved.vec251 = shufflevector <2 x float> %wide.load247, <2 x float> %wide.load249, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec251, ptr %next.gep245, align 4, !tbaa !45, !alias.scope !213, !noalias !214
  %interleaved.vec252 = shufflevector <2 x float> %wide.load248, <2 x float> %wide.load250, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec252, ptr %next.gep246, align 4, !tbaa !45, !alias.scope !213, !noalias !214
  %index.next253 = add nuw i64 %index244, 4       ; 2 uses
  %i.aeh = icmp eq i64 %index.next253, %n.vec242
  br i1 %i.aeh, label %middle.block254, label %vector.body243, !llvm.loop !150

middle.block254:                                  ; preds = %vector.body243
  br i1 %cmp.n255, label %._crit_edge587.i, label %scalar.ph239.preheader

scalar.ph239.preheader:                           ; preds = %vector.memcheck228, %.preheader478.i, %middle.block254
  %indvars.iv756.i.ph = phi i64 [ 0, %vector.memcheck228 ], [ 0, %.preheader478.i ], [ %n.vec242, %middle.block254 ] ; 3 uses
  %.6372585.i.ph = phi ptr [ %.5371589.i, %vector.memcheck228 ], [ %.5371589.i, %.preheader478.i ], [ %i.aea, %middle.block254 ] ; 2 uses
  br i1 %lcmp.mod596.not, label %scalar.ph239.prol.loopexit, label %scalar.ph239.prol

scalar.ph239.prol:                                ; preds = %scalar.ph239.preheader, %scalar.ph239.prol
  %indvars.iv756.i.prol = phi i64 [ %indvars.iv.next757.i.prol, %scalar.ph239.prol ], [ %indvars.iv756.i.ph, %scalar.ph239.preheader ] ; 3 uses
  %.6372585.i.prol = phi ptr [ %i.aen, %scalar.ph239.prol ], [ %.6372585.i.ph, %scalar.ph239.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph239.prol ], [ 0, %scalar.ph239.preheader ]
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv756.i.prol
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv756.i.prol
  %i.aek = load float, ptr %i.aei, align 4, !tbaa !45
  store float %i.aek, ptr %.6372585.i.prol, align 4, !tbaa !45
  %i.ael = load float, ptr %i.aej, align 4, !tbaa !45
  %i.aem = getelementptr inbounds nuw i8, ptr %.6372585.i.prol, i64 4
  store float %i.ael, ptr %i.aem, align 4, !tbaa !45
  %i.aen = getelementptr inbounds nuw i8, ptr %.6372585.i.prol, i64 8 ; 3 uses
  %indvars.iv.next757.i.prol = add nuw nsw i64 %indvars.iv756.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter595
  br i1 %prol.iter.cmp.not, label %scalar.ph239.prol.loopexit, label %scalar.ph239.prol, !llvm.loop !151

scalar.ph239.prol.loopexit:                       ; preds = %scalar.ph239.prol, %scalar.ph239.preheader
  %.lcssa579.unr = phi ptr [ poison, %scalar.ph239.preheader ], [ %i.aen, %scalar.ph239.prol ]
  %indvars.iv756.i.unr = phi i64 [ %indvars.iv756.i.ph, %scalar.ph239.preheader ], [ %indvars.iv.next757.i.prol, %scalar.ph239.prol ]
  %.6372585.i.unr = phi ptr [ %.6372585.i.ph, %scalar.ph239.preheader ], [ %i.aen, %scalar.ph239.prol ]
  %i.aeo = sub nsw i64 %indvars.iv756.i.ph, %wide.trip.count747.i
  %i.aep = icmp ugt i64 %i.aeo, -4
  br i1 %i.aep, label %._crit_edge587.i, label %scalar.ph239

._crit_edge587.i:                                 ; preds = %scalar.ph239.prol.loopexit, %scalar.ph239, %middle.block254
  %.lcssa115 = phi ptr [ %i.aea, %middle.block254 ], [ %.lcssa579.unr, %scalar.ph239.prol.loopexit ], [ %i.afo, %scalar.ph239 ]
  %i.aeq = add nuw nsw i32 %.2365590.i, 1         ; 2 uses
  %exitcond761.not.i = icmp eq i32 %i.aeq, %i.n
  br i1 %exitcond761.not.i, label %._crit_edge591.split.i, label %.preheader478.i, !llvm.loop !152

scalar.ph239:                                     ; preds = %scalar.ph239.prol.loopexit, %scalar.ph239
  %indvars.iv756.i = phi i64 [ %indvars.iv.next757.i.3, %scalar.ph239 ], [ %indvars.iv756.i.unr, %scalar.ph239.prol.loopexit ] ; 6 uses
  %.6372585.i = phi ptr [ %i.afo, %scalar.ph239 ], [ %.6372585.i.unr, %scalar.ph239.prol.loopexit ] ; 9 uses
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv756.i
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv756.i
  %i.aet = load float, ptr %i.aer, align 4, !tbaa !45
  store float %i.aet, ptr %.6372585.i, align 4, !tbaa !45
  %i.aeu = load float, ptr %i.aes, align 4, !tbaa !45
  %i.aev = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 4
  store float %i.aeu, ptr %i.aev, align 4, !tbaa !45
  %i.aew = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 8
  %indvars.iv.next757.i = add nuw nsw i64 %indvars.iv756.i, 1 ; 2 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv.next757.i
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv.next757.i
  %i.aez = load float, ptr %i.aex, align 4, !tbaa !45
  store float %i.aez, ptr %i.aew, align 4, !tbaa !45
  %i.afa = load float, ptr %i.aey, align 4, !tbaa !45
  %i.afb = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 12
  store float %i.afa, ptr %i.afb, align 4, !tbaa !45
  %i.afc = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 16
  %indvars.iv.next757.i.1 = add nuw nsw i64 %indvars.iv756.i, 2 ; 2 uses
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv.next757.i.1
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv.next757.i.1
  %i.aff = load float, ptr %i.afd, align 4, !tbaa !45
  store float %i.aff, ptr %i.afc, align 4, !tbaa !45
  %i.afg = load float, ptr %i.afe, align 4, !tbaa !45
  %i.afh = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 20
  store float %i.afg, ptr %i.afh, align 4, !tbaa !45
  %i.afi = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 24
  %indvars.iv.next757.i.2 = add nuw nsw i64 %indvars.iv756.i, 3 ; 2 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv.next757.i.2
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv.next757.i.2
  %i.afl = load float, ptr %i.afj, align 4, !tbaa !45
  store float %i.afl, ptr %i.afi, align 4, !tbaa !45
  %i.afm = load float, ptr %i.afk, align 4, !tbaa !45
  %i.afn = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 28
  store float %i.afm, ptr %i.afn, align 4, !tbaa !45
  %i.afo = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 32 ; 2 uses
  %indvars.iv.next757.i.3 = add nuw nsw i64 %indvars.iv756.i, 4 ; 2 uses
  %exitcond760.not.i.3 = icmp eq i64 %indvars.iv.next757.i.3, %wide.trip.count747.i
  br i1 %exitcond760.not.i.3, label %._crit_edge587.i, label %scalar.ph239, !llvm.loop !153

._crit_edge591.split.i:                           ; preds = %._crit_edge587.i, %.preheader481.i, %.preheader479.lr.ph.i, %.preheader480.lr.ph.i
  %indvars.iv.next765.i = add nuw nsw i64 %indvars.iv764.i, 2 ; 3 uses
  %i.afp = icmp slt i64 %indvars.iv.next765.i, %invariant.op.i
  %indvars.iv.next763.i = add i32 %indvars.iv762.i, 2
  %indvar.next = add i32 %indvar, 1
  br i1 %i.afp, label %_ZN4ncnn3MatD2Ev.exit419.i, label %.preheader477.loopexit.i, !llvm.loop !154

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge634.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split
  %indvar415 = phi i32 [ %indvar.next416, %._crit_edge634.split.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split ] ; 4 uses
  %indvars.iv791.i = phi i64 [ %indvars.iv.next792.i, %._crit_edge634.split.i ], [ %i.oq, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split ] ; 2 uses
  %i.afq = add i32 %.1.lcssa.i, %indvar415        ; 2 uses
  %i.afr = lshr i32 %i.afq, 2
  %i.afs = sub i32 %.1.lcssa.i, %indvar415
  %i.aft = and i32 %i.afs, 1
  %i.afu = add nuw nsw i32 %i.afr, %i.aft
  %i.afv = lshr i32 %i.afq, 1
  %.lobit = and i32 %i.afv, 1
  %i.afw = add nuw i32 %i.afu, %.lobit
  %i.afx = zext nneg i32 %i.afw to i64
  %i.afy = mul i64 %i.xh, %i.afx
  %scevgep417 = getelementptr i8, ptr %scevgep414, i64 %i.afy ; 2 uses
  %i.afz = mul i32 %i.xl, %indvar415
  %i.aga = add i32 %i.xk, %i.afz
  %i.agb = sext i32 %i.aga to i64
  %i.agc = shl nsw i64 %i.agb, 2                  ; 3 uses
  %scevgep419 = getelementptr i8, ptr %scevgep418, i64 %i.agc
  %scevgep421 = getelementptr i8, ptr %scevgep420, i64 %i.agc
  %scevgep423 = getelementptr i8, ptr %scevgep422, i64 %i.agc
  %i.agd = trunc i64 %indvars.iv791.i to i32      ; 4 uses
  %i.age = mul i32 %i.ob, %i.agd
  %i.agf = sext i32 %i.age to i64
  %i.agg = getelementptr [4 x i8], ptr %i.oa, i64 %i.agf ; 9 uses
  %i.agh = lshr i32 %i.agd, 2
  %i.agi = lshr i32 %i.agd, 1
  %i.agj = and i32 %i.agi, 1
  %i.agk = and i32 %i.agd, 1
  %i.agl = add nuw nsw i32 %i.agk, %i.agh
  %i.agm = add nuw i32 %i.agl, %i.agj
  %i.agn = zext i32 %i.agm to i64
  %.reass638.i = mul i64 %factor.op.mul637.i, %i.agn
  %i.ago = getelementptr i8, ptr %i.oc, i64 %.reass638.i ; 8 uses
  br i1 %i.xf, label %.preheader473.lr.ph.i, label %.preheader475.i

.preheader473.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.oi, label %.preheader473.us.i.preheader, label %._crit_edge634.split.i

.preheader473.us.i.preheader:                     ; preds = %.preheader473.lr.ph.i
  br i1 %min.iters.check432, label %.preheader473.us.i.preheader568, label %vector.memcheck413

vector.memcheck413:                               ; preds = %.preheader473.us.i.preheader
  %bound0424 = icmp ult ptr %i.ago, %scevgep421
  %bound1425 = icmp ult ptr %scevgep419, %scevgep417
  %found.conflict426 = and i1 %bound0424, %bound1425
  %bound0427 = icmp ult ptr %i.ago, %scevgep423
  %bound1428 = icmp ult ptr %i.agg, %scevgep417
  %found.conflict429 = and i1 %bound0427, %bound1428
  %conflict.rdx430 = or i1 %found.conflict426, %found.conflict429
  br i1 %conflict.rdx430, label %.preheader473.us.i.preheader568, label %vector.ph433

vector.ph433:                                     ; preds = %vector.memcheck413
  %i.agp = getelementptr i8, ptr %i.ago, i64 %i.xo ; 2 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph433
  %index436 = phi i64 [ 0, %vector.ph433 ], [ %index.next445, %vector.body435 ] ; 3 uses
  %i.agq = shl i64 %index436, 3                   ; 2 uses
  %next.gep437 = getelementptr i8, ptr %i.ago, i64 %i.agq
  %i.agr = getelementptr i8, ptr %i.ago, i64 %i.agq
  %next.gep438 = getelementptr i8, ptr %i.agr, i64 16
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %index436 ; 3 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 8
  %wide.load439 = load <2 x float>, ptr %i.ags, align 4, !tbaa !45, !alias.scope !215
  %wide.load440 = load <2 x float>, ptr %i.agt, align 4, !tbaa !45, !alias.scope !215
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %i.oj ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  %wide.load441 = load <2 x float>, ptr %i.agu, align 4, !tbaa !45, !alias.scope !216
  %wide.load442 = load <2 x float>, ptr %i.agv, align 4, !tbaa !45, !alias.scope !216
  %interleaved.vec443 = shufflevector <2 x float> %wide.load439, <2 x float> %wide.load441, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec443, ptr %next.gep437, align 4, !tbaa !45, !alias.scope !217, !noalias !218
  %interleaved.vec444 = shufflevector <2 x float> %wide.load440, <2 x float> %wide.load442, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec444, ptr %next.gep438, align 4, !tbaa !45, !alias.scope !217, !noalias !218
  %index.next445 = add nuw i64 %index436, 4       ; 2 uses
  %i.agw = icmp eq i64 %index.next445, %n.vec434
  br i1 %i.agw, label %middle.block446, label %vector.body435, !llvm.loop !159

middle.block446:                                  ; preds = %vector.body435
  br i1 %cmp.n447, label %.preheader475.i.loopexit, label %.preheader473.us.i.preheader568

.preheader473.us.i.preheader568:                  ; preds = %vector.memcheck413, %.preheader473.us.i.preheader, %middle.block446
  %indvars.iv780.i.ph = phi i64 [ 0, %vector.memcheck413 ], [ 0, %.preheader473.us.i.preheader ], [ %n.vec434, %middle.block446 ] ; 3 uses
  %.4615.us.i.ph = phi ptr [ %i.ago, %vector.memcheck413 ], [ %i.ago, %.preheader473.us.i.preheader ], [ %i.agp, %middle.block446 ] ; 2 uses
  br i1 %lcmp.mod598.not, label %.preheader473.us.i.prol.loopexit, label %.preheader473.us.i.prol

.preheader473.us.i.prol:                          ; preds = %.preheader473.us.i.preheader568, %.preheader473.us.i.prol
  %indvars.iv780.i.prol = phi i64 [ %indvars.iv.next781.i.prol, %.preheader473.us.i.prol ], [ %indvars.iv780.i.ph, %.preheader473.us.i.preheader568 ] ; 2 uses
  %.4615.us.i.prol = phi ptr [ %i.ahc, %.preheader473.us.i.prol ], [ %.4615.us.i.ph, %.preheader473.us.i.preheader568 ] ; 3 uses
  %prol.iter599 = phi i64 [ %prol.iter599.next, %.preheader473.us.i.prol ], [ 0, %.preheader473.us.i.preheader568 ]
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %indvars.iv780.i.prol ; 2 uses
  %i.agy = load float, ptr %i.agx, align 4, !tbaa !45
  store float %i.agy, ptr %.4615.us.i.prol, align 4, !tbaa !45
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.oj
  %i.aha = getelementptr inbounds nuw i8, ptr %.4615.us.i.prol, i64 4
  %i.ahb = load float, ptr %i.agz, align 4, !tbaa !45
  store float %i.ahb, ptr %i.aha, align 4, !tbaa !45
  %i.ahc = getelementptr inbounds nuw i8, ptr %.4615.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next781.i.prol = add nuw nsw i64 %indvars.iv780.i.prol, 1 ; 2 uses
  %prol.iter599.next = add i64 %prol.iter599, 1   ; 2 uses
  %prol.iter599.cmp.not = icmp eq i64 %prol.iter599.next, %xtraiter597
  br i1 %prol.iter599.cmp.not, label %.preheader473.us.i.prol.loopexit, label %.preheader473.us.i.prol, !llvm.loop !160

.preheader473.us.i.prol.loopexit:                 ; preds = %.preheader473.us.i.prol, %.preheader473.us.i.preheader568
  %.lcssa570.unr.a = phi ptr [ poison, %.preheader473.us.i.preheader568 ], [ %i.ahc, %.preheader473.us.i.prol ]
  %indvars.iv780.i.unr = phi i64 [ %indvars.iv780.i.ph, %.preheader473.us.i.preheader568 ], [ %indvars.iv.next781.i.prol, %.preheader473.us.i.prol ]
  %.4615.us.i.unr = phi ptr [ %.4615.us.i.ph, %.preheader473.us.i.preheader568 ], [ %i.ahc, %.preheader473.us.i.prol ]
  %i.ahd = sub nsw i64 %indvars.iv780.i.ph, %wide.trip.count777.i
  %i.ahe = icmp ugt i64 %i.ahd, -4
  br i1 %i.ahe, label %.preheader475.i.loopexit, label %.preheader473.us.i

.preheader473.us.i:                               ; preds = %.preheader473.us.i.prol.loopexit, %.preheader473.us.i
  %indvars.iv780.i = phi i64 [ %indvars.iv.next781.i.3, %.preheader473.us.i ], [ %indvars.iv780.i.unr, %.preheader473.us.i.prol.loopexit ] ; 5 uses
  %.4615.us.i = phi ptr [ %i.aif, %.preheader473.us.i ], [ %.4615.us.i.unr, %.preheader473.us.i.prol.loopexit ] ; 9 uses
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %indvars.iv780.i ; 2 uses
  %i.ahg = load float, ptr %i.ahf, align 4, !tbaa !45
  store float %i.ahg, ptr %.4615.us.i, align 4, !tbaa !45
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.oj
  %i.ahi = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 4
  %i.ahj = load float, ptr %i.ahh, align 4, !tbaa !45
  store float %i.ahj, ptr %i.ahi, align 4, !tbaa !45
  %i.ahk = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 8
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %indvars.iv780.i
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 4 ; 2 uses
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !45
  store float %i.ahn, ptr %i.ahk, align 4, !tbaa !45
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %i.oj
  %i.ahp = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 12
  %i.ahq = load float, ptr %i.aho, align 4, !tbaa !45
  store float %i.ahq, ptr %i.ahp, align 4, !tbaa !45
  %i.ahr = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 16
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %indvars.iv780.i
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8 ; 2 uses
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !45
  store float %i.ahu, ptr %i.ahr, align 4, !tbaa !45
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.oj
  %i.ahw = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 20
  %i.ahx = load float, ptr %i.ahv, align 4, !tbaa !45
  store float %i.ahx, ptr %i.ahw, align 4, !tbaa !45
  %i.ahy = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 24
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %indvars.iv780.i
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 12 ; 2 uses
  %i.aib = load float, ptr %i.aia, align 4, !tbaa !45
  store float %i.aib, ptr %i.ahy, align 4, !tbaa !45
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %i.oj
  %i.aid = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 28
  %i.aie = load float, ptr %i.aic, align 4, !tbaa !45
  store float %i.aie, ptr %i.aid, align 4, !tbaa !45
  %i.aif = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 32 ; 2 uses
  %indvars.iv.next781.i.3 = add nuw nsw i64 %indvars.iv780.i, 4 ; 2 uses
  %exitcond784.not.i.3 = icmp eq i64 %indvars.iv.next781.i.3, %wide.trip.count777.i
  br i1 %exitcond784.not.i.3, label %.preheader475.i.loopexit, label %.preheader473.us.i, !llvm.loop !161

.preheader475.i.loopexit:                         ; preds = %.preheader473.us.i.prol.loopexit, %.preheader473.us.i, %middle.block446
  %.lcssa106 = phi ptr [ %i.agp, %middle.block446 ], [ %.lcssa570.unr.a, %.preheader473.us.i.prol.loopexit ], [ %i.aif, %.preheader473.us.i ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %i.on
  br label %.preheader475.i

.preheader475.i:                                  ; preds = %.preheader475.i.loopexit, %_ZN4ncnn3MatD2Ev.exit.i
  %.1348.lcssa.i = phi ptr [ %i.agg, %_ZN4ncnn3MatD2Ev.exit.i ], [ %3, %.preheader475.i.loopexit ] ; 11 uses
  %.3.lcssa.i = phi ptr [ %i.ago, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa106, %.preheader475.i.loopexit ]
  %.1342.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %2, %.preheader475.i.loopexit ] ; 2 uses
  %i.aig = icmp sge i32 %.1342.lcssa.i, %i.n
  %brmerge645.i = or i1 %i.oo, %i.aig
  br i1 %brmerge645.i, label %._crit_edge634.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader475.i
  %.1348.lcssa.i397 = ptrtoaddr ptr %.1348.lcssa.i to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge630.i
  %.2343633.i = phi i32 [ %i.ait, %._crit_edge630.i ], [ %.1342.lcssa.i, %.preheader.i.preheader ]
  %.6632.i = phi ptr [ %.lcssa107, %._crit_edge630.i ], [ %.3.lcssa.i, %.preheader.i.preheader ] ; 4 uses
  %.6632.i398 = ptrtoaddr ptr %.6632.i to i64
  %i.aih = sub i64 %.1348.lcssa.i397, %.6632.i398
  %diff.check = icmp ugt i64 %i.aih, -32
  %or.cond557 = select i1 %min.iters.check400, i1 true, i1 %diff.check
  br i1 %or.cond557, label %scalar.ph399.preheader, label %vector.ph401

vector.ph401:                                     ; preds = %.preheader.i
  %i.aii = getelementptr i8, ptr %.6632.i, i64 %i.xp ; 2 uses
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next408, %vector.body403 ] ; 3 uses
  %i.aij = shl i64 %index404, 2
  %next.gep405 = getelementptr i8, ptr %.6632.i, i64 %i.aij ; 2 uses
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %index404 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 16
  %wide.load406 = load <4 x float>, ptr %i.aik, align 4, !tbaa !45
  %wide.load407 = load <4 x float>, ptr %i.ail, align 4, !tbaa !45
  %i.aim = getelementptr i8, ptr %next.gep405, i64 16
  store <4 x float> %wide.load406, ptr %next.gep405, align 4, !tbaa !45
  store <4 x float> %wide.load407, ptr %i.aim, align 4, !tbaa !45
  %index.next408 = add nuw i64 %index404, 8       ; 2 uses
  %i.ain = icmp eq i64 %index.next408, %n.vec402
  br i1 %i.ain, label %middle.block409, label %vector.body403, !llvm.loop !162

middle.block409:                                  ; preds = %vector.body403
  br i1 %cmp.n410, label %._crit_edge630.i, label %scalar.ph399.preheader

scalar.ph399.preheader:                           ; preds = %.preheader.i, %middle.block409
  %indvars.iv785.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec402, %middle.block409 ] ; 3 uses
  %.7628.i.ph = phi ptr [ %.6632.i, %.preheader.i ], [ %i.aii, %middle.block409 ] ; 2 uses
  br i1 %lcmp.mod601.not, label %scalar.ph399.prol.loopexit, label %scalar.ph399.prol

scalar.ph399.prol:                                ; preds = %scalar.ph399.preheader, %scalar.ph399.prol
  %indvars.iv785.i.prol = phi i64 [ %indvars.iv.next786.i.prol, %scalar.ph399.prol ], [ %indvars.iv785.i.ph, %scalar.ph399.preheader ] ; 2 uses
  %.7628.i.prol = phi ptr [ %i.aiq, %scalar.ph399.prol ], [ %.7628.i.ph, %scalar.ph399.preheader ] ; 2 uses
  %prol.iter602 = phi i64 [ %prol.iter602.next, %scalar.ph399.prol ], [ 0, %scalar.ph399.preheader ]
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i.prol
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !45
  store float %i.aip, ptr %.7628.i.prol, align 4, !tbaa !45
  %i.aiq = getelementptr inbounds nuw i8, ptr %.7628.i.prol, i64 4 ; 3 uses
  %indvars.iv.next786.i.prol = add nuw nsw i64 %indvars.iv785.i.prol, 1 ; 2 uses
  %prol.iter602.next = add i64 %prol.iter602, 1   ; 2 uses
  %prol.iter602.cmp.not = icmp eq i64 %prol.iter602.next, %xtraiter600
  br i1 %prol.iter602.cmp.not, label %scalar.ph399.prol.loopexit, label %scalar.ph399.prol, !llvm.loop !163

scalar.ph399.prol.loopexit:                       ; preds = %scalar.ph399.prol, %scalar.ph399.preheader
  %.lcssa571.unr = phi ptr [ poison, %scalar.ph399.preheader ], [ %i.aiq, %scalar.ph399.prol ]
  %indvars.iv785.i.unr = phi i64 [ %indvars.iv785.i.ph, %scalar.ph399.preheader ], [ %indvars.iv.next786.i.prol, %scalar.ph399.prol ]
  %.7628.i.unr = phi ptr [ %.7628.i.ph, %scalar.ph399.preheader ], [ %i.aiq, %scalar.ph399.prol ]
  %i.air = sub nsw i64 %indvars.iv785.i.ph, %wide.trip.count777.i
  %i.ais = icmp ugt i64 %i.air, -8
  br i1 %i.ais, label %._crit_edge630.i, label %scalar.ph399

._crit_edge630.i:                                 ; preds = %scalar.ph399.prol.loopexit, %scalar.ph399, %middle.block409
  %.lcssa107 = phi ptr [ %i.aii, %middle.block409 ], [ %.lcssa571.unr, %scalar.ph399.prol.loopexit ], [ %i.ajy, %scalar.ph399 ]
  %i.ait = add nuw nsw i32 %.2343633.i, 1         ; 2 uses
  %exitcond790.not.i = icmp eq i32 %i.ait, %i.n
  br i1 %exitcond790.not.i, label %._crit_edge634.split.i, label %.preheader.i, !llvm.loop !122

scalar.ph399:                                     ; preds = %scalar.ph399.prol.loopexit, %scalar.ph399
  %indvars.iv785.i = phi i64 [ %indvars.iv.next786.i.7, %scalar.ph399 ], [ %indvars.iv785.i.unr, %scalar.ph399.prol.loopexit ] ; 9 uses
  %.7628.i = phi ptr [ %i.ajy, %scalar.ph399 ], [ %.7628.i.unr, %scalar.ph399.prol.loopexit ] ; 9 uses
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !45
  store float %i.aiv, ptr %.7628.i, align 4, !tbaa !45
  %i.aiw = getelementptr inbounds nuw i8, ptr %.7628.i, i64 4
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 4
  %i.aiz = load float, ptr %i.aiy, align 4, !tbaa !45
  store float %i.aiz, ptr %i.aiw, align 4, !tbaa !45
  %i.aja = getelementptr inbounds nuw i8, ptr %.7628.i, i64 8
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8
  %i.ajd = load float, ptr %i.ajc, align 4, !tbaa !45
  store float %i.ajd, ptr %i.aja, align 4, !tbaa !45
  %i.aje = getelementptr inbounds nuw i8, ptr %.7628.i, i64 12
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 12
  %i.ajh = load float, ptr %i.ajg, align 4, !tbaa !45
  store float %i.ajh, ptr %i.aje, align 4, !tbaa !45
  %i.aji = getelementptr inbounds nuw i8, ptr %.7628.i, i64 16
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 16
  %i.ajl = load float, ptr %i.ajk, align 4, !tbaa !45
  store float %i.ajl, ptr %i.aji, align 4, !tbaa !45
  %i.ajm = getelementptr inbounds nuw i8, ptr %.7628.i, i64 20
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 20
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !45
  store float %i.ajp, ptr %i.ajm, align 4, !tbaa !45
  %i.ajq = getelementptr inbounds nuw i8, ptr %.7628.i, i64 24
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 24
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !45
  store float %i.ajt, ptr %i.ajq, align 4, !tbaa !45
  %i.aju = getelementptr inbounds nuw i8, ptr %.7628.i, i64 28
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 28
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !45
  store float %i.ajx, ptr %i.aju, align 4, !tbaa !45
  %i.ajy = getelementptr inbounds nuw i8, ptr %.7628.i, i64 32 ; 2 uses
  %indvars.iv.next786.i.7 = add nuw nsw i64 %indvars.iv785.i, 8 ; 2 uses
  %exitcond789.not.i.7 = icmp eq i64 %indvars.iv.next786.i.7, %wide.trip.count777.i
  br i1 %exitcond789.not.i.7, label %._crit_edge630.i, label %scalar.ph399, !llvm.loop !164

._crit_edge634.split.i:                           ; preds = %._crit_edge630.i, %.preheader475.i, %.preheader473.lr.ph.i
  %indvars.iv.next792.i = add nuw nsw i64 %indvars.iv791.i, 1 ; 2 uses
  %exitcond795.not.i = icmp eq i64 %indvars.iv.next792.i, %wide.trip.count794.i
  %indvar.next416 = add i32 %indvar415, 1
  br i1 %exitcond795.not.i, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit, label %_ZN4ncnn3MatD2Ev.exit.i, !llvm.loop !123

_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit: ; preds = %._crit_edge634.split.i, %._crit_edge634.split.i.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us, %.preheader477.i
  %i.ajz = load i8, ptr %1, align 8, !tbaa !50, !range !39, !noundef !40
  %i.aka = trunc nuw i8 %i.ajz to i1
  br i1 %i.aka, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !17 ; 2 uses
  %.not.i = icmp eq ptr %i.akc, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.akd = atomicrmw add ptr %i.akc, i32 -1 acq_rel, align 4
  %i.ake = icmp eq i32 %i.akd, 1
  br i1 %i.ake, label %bb.x, label %_ZN4ncnn3Mat7releaseEv.exit

bb.x:                                             ; preds = %bb.w
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !18 ; 3 uses
  %.not3.i = icmp eq ptr %i.akg, null
  %i.akh = load ptr, ptr %i.o, align 8, !tbaa !19 ; 3 uses
  br i1 %.not3.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aki = load ptr, ptr %i.akg, align 8, !tbaa !11
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 24
  %i.akk = load ptr, ptr %i.akj, align 8
  tail call void %i.akk(ptr noundef nonnull align 8 dereferenceable(8) %i.akg, ptr noundef %i.akh), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.z:                                             ; preds = %bb.x
  %.not.i5 = icmp eq ptr %i.akh, null
  br i1 %.not.i5, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @free(ptr noundef nonnull %i.akh) #11
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.aa, %bb.z, %bb.v, %bb.w, %bb.y
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.akm = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 0, ptr %i.akm, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.o, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.akl, i8 0, i64 20, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit, %_ZN4ncnn3Mat7releaseEv.exit, %bb.a, %bb.c
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN4ncnn17Convolution1D_x8616destroy_pipelineERKNS_6OptionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn17Convolution1D_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 16        ; 20 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 20 uses
  %7 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %8 = alloca %"class.ncnn::ParamDict", align 8   ; 18 uses
  %9 = alloca [2 x %"class.ncnn::Mat"], align 16  ; 41 uses
  %10 = alloca %"class.ncnn::ModelBinFromMatArray", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !220    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %2, align 8, !tbaa !220
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.e = load i32, ptr %i.d, align 4, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53
  %i.j = mul nsw i32 %i.i, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
end_hunk_2
begin_hunk_3_@_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn17Convolution1D_x86C2Ev(ptr noundef nonnull align 8 dereferenceable(544) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn13Convolution1DC2Ev(ptr noundef nonnull align 8 dereferenceable(472) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn17Convolution1D_x86E, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 0, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  store i8 1, ptr %i.d, align 1, !tbaa !253
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.e, align 4, !tbaa !254
  ret void
}

declare void @_ZN4ncnn13Convolution1DC2Ev(ptr noundef nonnull align 8 dereferenceable(472)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn13Convolution1DD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn13Convolution1DE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit2

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 3 uses
  %.not3.i = icmp eq ptr %i.g, null
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h)
          to label %_ZN4ncnn3MatD2Ev.exit2 unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14 = icmp eq ptr %i.h, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.h) #11
  br label %_ZN4ncnn3MatD2Ev.exit2

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit2:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 0, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %.not.i3 = icmp eq ptr %i.r, null
  br i1 %.not.i3, label %_ZN4ncnn3MatD2Ev.exit1, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2
  %i.s = atomicrmw add ptr %i.r, i32 -1 acq_rel, align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit1

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18   ; 3 uses
  %.not3.i4 = icmp eq ptr %i.v, null
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !19   ; 3 uses
  br i1 %.not3.i4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.w)
          to label %_ZN4ncnn3MatD2Ev.exit1 unwind label %bb.m, !inline_history !0

bb.k:                                             ; preds = %bb.i
  %.not.i12 = icmp eq ptr %i.w, null
  br i1 %.not.i12, label %_ZN4ncnn3MatD2Ev.exit1, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.w) #11
  br label %_ZN4ncnn3MatD2Ev.exit1

bb.m:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit1:                           ; preds = %bb.h, %_ZN4ncnn3MatD2Ev.exit2, %bb.j, %bb.k, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 0, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ag, null
  br i1 %.not.i7, label %_ZN4ncnn3MatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit1
  %i.ah = atomicrmw add ptr %i.ag, i32 -1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.o, label %_ZN4ncnn3MatD2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !18 ; 3 uses
  %.not3.i8 = icmp eq ptr %i.ak, null
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !19 ; 3 uses
  br i1 %.not3.i8, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %i.al)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.s, !inline_history !0

bb.q:                                             ; preds = %bb.o
  %.not.i11 = icmp eq ptr %i.al, null
  br i1 %.not.i11, label %_ZN4ncnn3MatD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.al) #11
  br label %_ZN4ncnn3MatD2Ev.exit

bb.s:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.n, %_ZN4ncnn3MatD2Ev.exit1, %bb.p, %bb.q, %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 0, ptr %i.as, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ar, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #11
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn17Convolution1D_x8621create_pipeline_bf16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.d = load i32, ptr %i.c, align 4, !tbaa !42   ; 43 uses
  %i.e = sdiv i32 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43   ; 23 uses
  %i.h = sdiv i32 %i.e, %i.g                      ; 47 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 12 uses
  %i.k = icmp sgt i32 %i.g, 3
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %i.h, 3                     ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = shl nsw i32 %i.d, 4
  %i.n = lshr i32 %i.h, 2
  %i.o = lshr i32 %i.h, 1
  %i.p = and i32 %i.o, 1
  %i.q = and i32 %i.h, 1
  %i.r = add nuw nsw i32 %i.q, %i.n
  %i.s = add nuw nsw i32 %i.r, %i.p
  %i.t = lshr i32 %i.g, 2
  %i.u = lshr i32 %i.g, 1
  %i.v = and i32 %i.u, 1
  %i.w = and i32 %i.g, 1
  %i.x = add nuw nsw i32 %i.w, %i.t
  %i.y = add nuw nsw i32 %i.x, %i.v
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.m, i32 noundef %i.s, i32 noundef %i.y, i64 noundef 2, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %i.z = icmp sgt i32 %i.h, 1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = shl nsw i32 %i.d, 3
  %i.ab = and i32 %i.h, 1
  %i.ac = add nuw nsw i32 %i.ab, 1
  %i.ad = lshr i32 %i.g, 2
  %i.ae = lshr i32 %i.g, 1
  %i.af = and i32 %i.ae, 1
  %i.ag = and i32 %i.g, 1
  %i.ah = add nuw nsw i32 %i.ag, %i.ad
  %i.ai = add nuw nsw i32 %i.ah, %i.af
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.aa, i32 noundef %i.ac, i32 noundef %i.ai, i64 noundef 2, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %i.aj = shl nsw i32 %i.d, 2
  %i.ak = lshr i32 %i.g, 2
  %i.al = lshr i32 %i.g, 1
  %i.am = and i32 %i.al, 1
  %i.an = and i32 %i.g, 1
  %i.ao = add nuw nsw i32 %i.an, %i.ak
  %i.ap = add nuw nsw i32 %i.ao, %i.am
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.aj, i32 noundef %i.h, i32 noundef %i.ap, i64 noundef 2, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.g:                                             ; preds = %bb.a
  %i.aq = icmp sgt i32 %i.g, 1
  %i.ar = icmp sgt i32 %i.h, 3                    ; 2 uses
  br i1 %i.aq, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = shl nsw i32 %i.d, 3
  %i.at = lshr i32 %i.h, 2
  %i.au = lshr i32 %i.h, 1
  %i.av = and i32 %i.au, 1
  %i.aw = and i32 %i.h, 1
  %i.ax = add nuw nsw i32 %i.aw, %i.at
  %i.ay = add nuw nsw i32 %i.ax, %i.av
  %i.az = and i32 %i.g, 1
  %i.ba = add nuw nsw i32 %i.az, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.as, i32 noundef %i.ay, i32 noundef %i.ba, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

bb.j:                                             ; preds = %bb.h
  %i.bb = icmp sgt i32 %i.h, 1
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = shl nsw i32 %i.d, 2
  %i.bd = and i32 %i.h, 1
  %i.be = add nuw nsw i32 %i.bd, 1
  %i.bf = and i32 %i.g, 1
  %i.bg = add nuw nsw i32 %i.bf, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.bc, i32 noundef %i.be, i32 noundef %i.bg, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

bb.l:                                             ; preds = %bb.j
  %i.bh = shl nsw i32 %i.d, 1
  %i.bi = and i32 %i.g, 1
  %i.bj = add nuw nsw i32 %i.bi, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.bh, i32 noundef %i.h, i32 noundef %i.bj, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

bb.m:                                             ; preds = %bb.g
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = shl nsw i32 %i.d, 2
  %i.bl = lshr i32 %i.h, 2
  %i.bm = lshr i32 %i.h, 1
  %i.bn = and i32 %i.bm, 1
  %i.bo = and i32 %i.h, 1
  %i.bp = add nuw nsw i32 %i.bo, %i.bl
  %i.bq = add nuw nsw i32 %i.bp, %i.bn
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.bk, i32 noundef %i.bq, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

bb.o:                                             ; preds = %bb.m
  %i.br = icmp sgt i32 %i.h, 1
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = shl nsw i32 %i.d, 1
  %i.bt = and i32 %i.h, 1
  %i.bu = add nuw nsw i32 %i.bt, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.bs, i32 noundef %i.bu, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.d, i32 noundef %i.h, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

_ZN4ncnn3MatD2Ev.exit420.lr.ph.i:                 ; preds = %bb.f, %bb.e, %bb.c
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !19  ; 4 uses
  %i.bw = mul i32 %i.h, %i.d                      ; 4 uses
  %i.bx = load ptr, ptr %i.j, align 8, !tbaa !19, !noalias !289
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !20, !noalias !289
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !44, !noalias !289
  %factor.op.mul.i = mul i64 %i.cb, %i.bz
  %i.cc = icmp sgt i32 %i.d, 0                    ; 2 uses
  %i.cd = sext i32 %i.d to i64                    ; 16 uses
  %i.ce = shl i32 %i.d, 2
  %i.cf = sext i32 %i.ce to i64                   ; 4 uses
  %i.cg = shl i32 %i.d, 1
  %i.ch = sext i32 %i.cg to i64                   ; 4 uses
  %i.ci = icmp slt i32 %i.d, 1
  %i.cj = and i32 %i.h, -4
  %i.ck = zext nneg i32 %i.g to i64
  %wide.trip.count.i = zext i32 %i.d to i64       ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cl = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod215 = trunc i32 %i.d to i1
  br label %_ZN4ncnn3MatD2Ev.exit420.i

.preheader483.loopexit.i:                         ; preds = %._crit_edge546.split.i
  %i.cm = trunc nuw nsw i64 %indvars.iv.next734.i to i32
  br label %.preheader483.i

.preheader483.i:                                  ; preds = %.preheader483.loopexit.i, %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  %.0.lcssa.i = phi i32 [ %i.cm, %.preheader483.loopexit.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.n ] ; 4 uses
  %i.cn = or disjoint i32 %.0.lcssa.i, 1
  %i.co = icmp slt i32 %i.cn, %i.g
  br i1 %i.co, label %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i, label %.preheader477.i

_ZN4ncnn3MatD2Ev.exit419.lr.ph.i:                 ; preds = %.preheader483.i
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !19  ; 2 uses
  %i.cq = mul i32 %i.h, %i.d                      ; 2 uses
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !19, !noalias !290
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !20, !noalias !290
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !44, !noalias !290
  %factor.op.mul594.i = mul i64 %i.cv, %i.ct
  %i.cw = icmp sgt i32 %i.h, 3
  %i.cx = icmp sgt i32 %i.d, 0                    ; 2 uses
  %i.cy = sext i32 %i.d to i64                    ; 8 uses
  %i.cz = shl i32 %i.d, 1                         ; 2 uses
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = mul nuw nsw i32 %i.d, 3
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dd = shl i32 %i.d, 2
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = sext i32 %i.cz to i64                   ; 2 uses
  %i.dg = icmp slt i32 %i.d, 1
  %i.dh = and i32 %i.h, -4
  %i.di = zext nneg i32 %.0.lcssa.i to i64
  %i.dj = add i32 %.0.lcssa.i, 1
  %i.dk = sext i32 %i.g to i64
  %wide.trip.count747.i = zext i32 %i.d to i64    ; 6 uses
  %invariant.op.i = add nsw i64 %i.dk, -1
  %xtraiter217 = and i64 %wide.trip.count747.i, 1
  %i.dl = icmp eq i32 %i.d, 1
  %unroll_iter221 = and i64 %wide.trip.count747.i, 2147483646
  %lcmp.mod218.not = icmp eq i64 %xtraiter217, 0
  %lcmp.mod220 = trunc i32 %i.d to i1
  %min.iters.check = icmp ult i32 %i.d, 4
  %n.vec = and i64 %wide.trip.count747.i, 2147483644 ; 4 uses
  %i.dm = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count747.i
  br label %_ZN4ncnn3MatD2Ev.exit419.i

_ZN4ncnn3MatD2Ev.exit420.i:                       ; preds = %._crit_edge546.split.i, %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i
  %indvars.iv733.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i ], [ %indvars.iv.next734.i, %._crit_edge546.split.i ] ; 3 uses
  %i.dn = trunc i64 %indvars.iv733.i to i32       ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnn17Convolution1D_x8621create_pipeline_bf16sERKNS_6OptionE:bb.a
  store i16 %i.of, ptr %i.oa, align 2, !tbaa !66
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.mi ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 10
  %i.oi = load i32, ptr %i.og, align 4, !tbaa !45
  %i.oj = lshr i32 %i.oi, 16
  %i.ok = trunc nuw i32 %i.oj to i16
  store i16 %i.ok, ptr %i.oh, align 2, !tbaa !66
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.mi ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 12
  %i.on = load i32, ptr %i.ol, align 4, !tbaa !45
  %i.oo = lshr i32 %i.on, 16
  %i.op = trunc nuw i32 %i.oo to i16
  store i16 %i.op, ptr %i.om, align 2, !tbaa !66
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.mi
  %i.or = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 14
  %i.os = load i32, ptr %i.oq, align 4, !tbaa !45
  %i.ot = lshr i32 %i.os, 16
  %i.ou = trunc nuw i32 %i.ot to i16
  store i16 %i.ou, ptr %i.or, align 2, !tbaa !66
  %i.ov = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 16 ; 3 uses
  %indvars.iv.next775.i.us.1 = add nuw nsw i64 %indvars.iv774.i.us, 2 ; 2 uses
  %niter229.next.1 = add i64 %niter229, 2         ; 2 uses
  %niter229.ncmp.1 = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %._crit_edge601.us.i.us.unr-lcssa, label %.preheader474.us.i.us.new, !llvm.loop !268

._crit_edge601.us.i.us.unr-lcssa:                 ; preds = %.preheader474.us.i.us.new
  br i1 %lcmp.mod225.not, label %._crit_edge601.us.i.us, label %.epil.preheader223

.epil.preheader223:                               ; preds = %._crit_edge601.us.i.us.unr-lcssa, %.preheader474.us.i.us
  %indvars.iv774.i.us.epil.init = phi i64 [ 0, %.preheader474.us.i.us ], [ %indvars.iv.next775.i.us.1, %._crit_edge601.us.i.us.unr-lcssa ]
  %.1345599.us.i.us.epil.init = phi ptr [ %.0344604.us.i.us, %.preheader474.us.i.us ], [ %i.ov, %._crit_edge601.us.i.us.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod227)
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %indvars.iv774.i.us.epil.init ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !45
  %i.oy = lshr i32 %i.ox, 16
  %i.oz = trunc nuw i32 %i.oy to i16
  store i16 %i.oz, ptr %.1345599.us.i.us.epil.init, align 2, !tbaa !66
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.mi ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.epil.init, i64 2
  %i.pc = load i32, ptr %i.pa, align 4, !tbaa !45
  %i.pd = lshr i32 %i.pc, 16
  %i.pe = trunc nuw i32 %i.pd to i16
  store i16 %i.pe, ptr %i.pb, align 2, !tbaa !66
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %i.mi ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.epil.init, i64 4
  %i.ph = load i32, ptr %i.pf, align 4, !tbaa !45
  %i.pi = lshr i32 %i.ph, 16
  %i.pj = trunc nuw i32 %i.pi to i16
  store i16 %i.pj, ptr %i.pg, align 2, !tbaa !66
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.mi
  %i.pl = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.epil.init, i64 6
  %i.pm = load i32, ptr %i.pk, align 4, !tbaa !45
  %i.pn = lshr i32 %i.pm, 16
  %i.po = trunc nuw i32 %i.pn to i16
  store i16 %i.po, ptr %i.pl, align 2, !tbaa !66
  %i.pp = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.epil.init, i64 8
  br label %._crit_edge601.us.i.us

._crit_edge601.us.i.us:                           ; preds = %._crit_edge601.us.i.us.unr-lcssa, %.epil.preheader223
  %.lcssa = phi ptr [ %i.ov, %._crit_edge601.us.i.us.unr-lcssa ], [ %i.pp, %.epil.preheader223 ] ; 3 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %i.mk ; 3 uses
  %i.pr = add nuw nsw i32 %.0341605.us.i.us, 4    ; 2 uses
  %i.ps = or disjoint i32 %i.pr, 3
  %i.pt = icmp slt i32 %i.ps, %i.h
  br i1 %i.pt, label %.preheader474.us.i.us, label %.preheader476.i.loopexit.us, !llvm.loop !269

.preheader473.us.i.us:                            ; preds = %.preheader476.i.loopexit.us, %._crit_edge617.us.i.us
  %.1342621.us.i.us = phi i32 [ %i.qm, %._crit_edge617.us.i.us ], [ %i.mo, %.preheader476.i.loopexit.us ]
  %.3620.us.i.us = phi ptr [ %.lcssa99, %._crit_edge617.us.i.us ], [ %.lcssa, %.preheader476.i.loopexit.us ] ; 3 uses
  %.1348619.us.i.us = phi ptr [ %i.ql, %._crit_edge617.us.i.us ], [ %i.pq, %.preheader476.i.loopexit.us ] ; 3 uses
  br i1 %min.iters.check171, label %scalar.ph170.preheader, label %vector.ph172

vector.ph172:                                     ; preds = %.preheader473.us.i.us
  %i.pu = getelementptr i8, ptr %.3620.us.i.us, i64 %i.mt ; 2 uses
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body174 ] ; 3 uses
  %i.pv = shl i64 %index175, 2
  %next.gep176 = getelementptr i8, ptr %.3620.us.i.us, i64 %i.pv
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %index175 ; 2 uses
  %wide.load177 = load <4 x i32>, ptr %i.pw, align 4, !tbaa !45
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.mi
  %wide.load178 = load <4 x i32>, ptr %i.px, align 4, !tbaa !45
  %i.py = shufflevector <4 x i32> %wide.load177, <4 x i32> %wide.load178, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.pz = lshr <8 x i32> %i.py, splat (i32 16)
  %interleaved.vec179 = trunc nuw <8 x i32> %i.pz to <8 x i16>
  store <8 x i16> %interleaved.vec179, ptr %next.gep176, align 2, !tbaa !66
  %index.next180 = add nuw i64 %index175, 4       ; 2 uses
  %i.qa = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.qa, label %middle.block181, label %vector.body174, !llvm.loop !270

middle.block181:                                  ; preds = %vector.body174
  br i1 %cmp.n182, label %._crit_edge617.us.i.us, label %scalar.ph170.preheader

scalar.ph170.preheader:                           ; preds = %.preheader473.us.i.us, %middle.block181
  %indvars.iv780.i.us.ph = phi i64 [ 0, %.preheader473.us.i.us ], [ %n.vec173, %middle.block181 ]
  %.4615.us.i.us.ph = phi ptr [ %.3620.us.i.us, %.preheader473.us.i.us ], [ %i.pu, %middle.block181 ]
  br label %scalar.ph170

scalar.ph170:                                     ; preds = %scalar.ph170.preheader, %scalar.ph170
  %indvars.iv780.i.us = phi i64 [ %indvars.iv.next781.i.us, %scalar.ph170 ], [ %indvars.iv780.i.us.ph, %scalar.ph170.preheader ] ; 2 uses
  %.4615.us.i.us = phi ptr [ %i.qk, %scalar.ph170 ], [ %.4615.us.i.us.ph, %scalar.ph170.preheader ] ; 3 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !45
  %i.qd = lshr i32 %i.qc, 16
  %i.qe = trunc nuw i32 %i.qd to i16
  store i16 %i.qe, ptr %.4615.us.i.us, align 2, !tbaa !66
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.mi
  %i.qg = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 2
  %i.qh = load i32, ptr %i.qf, align 4, !tbaa !45
  %i.qi = lshr i32 %i.qh, 16
  %i.qj = trunc nuw i32 %i.qi to i16
  store i16 %i.qj, ptr %i.qg, align 2, !tbaa !66
  %i.qk = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 4 ; 2 uses
  %indvars.iv.next781.i.us = add nuw nsw i64 %indvars.iv780.i.us, 1 ; 2 uses
  %exitcond784.not.i.us = icmp eq i64 %indvars.iv.next781.i.us, %wide.trip.count777.i
  br i1 %exitcond784.not.i.us, label %._crit_edge617.us.i.us, label %scalar.ph170, !llvm.loop !271

._crit_edge617.us.i.us:                           ; preds = %scalar.ph170, %middle.block181
  %.lcssa99 = phi ptr [ %i.pu, %middle.block181 ], [ %i.qk, %scalar.ph170 ] ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %i.mm ; 2 uses
  %i.qm = add nuw nsw i32 %.1342621.us.i.us, 2    ; 3 uses
  %i.qn = or disjoint i32 %i.qm, 1
  %i.qo = icmp slt i32 %i.qn, %i.h
  br i1 %i.qo, label %.preheader473.us.i.us, label %.preheader475.i.us, !llvm.loop !272

.preheader475.i.us:                               ; preds = %._crit_edge617.us.i.us, %.preheader476.i.loopexit.us
  %.1348.lcssa.i.us = phi ptr [ %i.pq, %.preheader476.i.loopexit.us ], [ %i.ql, %._crit_edge617.us.i.us ] ; 2 uses
  %.3.lcssa.i.us = phi ptr [ %.lcssa, %.preheader476.i.loopexit.us ], [ %.lcssa99, %._crit_edge617.us.i.us ]
  %.1342.lcssa.i.us = phi i32 [ %i.mo, %.preheader476.i.loopexit.us ], [ %i.qm, %._crit_edge617.us.i.us ] ; 2 uses
  %i.qp = icmp sge i32 %.1342.lcssa.i.us, %i.h
  %brmerge645.i.us = or i1 %i.mn, %i.qp
  br i1 %brmerge645.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader475.i.us, %._crit_edge630.i.us
  %.2343633.i.us = phi i32 [ %i.rf, %._crit_edge630.i.us ], [ %.1342.lcssa.i.us, %.preheader475.i.us ]
  %.6632.i.us = phi ptr [ %.lcssa102, %._crit_edge630.i.us ], [ %.3.lcssa.i.us, %.preheader475.i.us ] ; 3 uses
  br i1 %min.iters.check157, label %scalar.ph156.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %.preheader.i.us
  %i.qq = getelementptr i8, ptr %.6632.i.us, i64 %i.mu ; 2 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next165, %vector.body160 ] ; 3 uses
  %i.qr = shl i64 %index161, 1
  %next.gep162 = getelementptr i8, ptr %.6632.i.us, i64 %i.qr ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %index161 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %wide.load163 = load <4 x i32>, ptr %i.qs, align 4, !tbaa !45
  %wide.load164 = load <4 x i32>, ptr %i.qt, align 4, !tbaa !45
  %i.qu = lshr <4 x i32> %wide.load163, splat (i32 16)
  %i.qv = lshr <4 x i32> %wide.load164, splat (i32 16)
  %i.qw = trunc nuw <4 x i32> %i.qu to <4 x i16>
  %i.qx = trunc nuw <4 x i32> %i.qv to <4 x i16>
  %i.qy = getelementptr i8, ptr %next.gep162, i64 8
  store <4 x i16> %i.qw, ptr %next.gep162, align 2, !tbaa !66
  store <4 x i16> %i.qx, ptr %i.qy, align 2, !tbaa !66
  %index.next165 = add nuw i64 %index161, 8       ; 2 uses
  %i.qz = icmp eq i64 %index.next165, %n.vec159
  br i1 %i.qz, label %middle.block166, label %vector.body160, !llvm.loop !273

middle.block166:                                  ; preds = %vector.body160
  br i1 %cmp.n167, label %._crit_edge630.i.us, label %scalar.ph156.preheader

scalar.ph156.preheader:                           ; preds = %.preheader.i.us, %middle.block166
  %indvars.iv785.i.us.ph = phi i64 [ 0, %.preheader.i.us ], [ %n.vec159, %middle.block166 ]
  %.7628.i.us.ph = phi ptr [ %.6632.i.us, %.preheader.i.us ], [ %i.qq, %middle.block166 ]
  br label %scalar.ph156

scalar.ph156:                                     ; preds = %scalar.ph156.preheader, %scalar.ph156
  %indvars.iv785.i.us = phi i64 [ %indvars.iv.next786.i.us, %scalar.ph156 ], [ %indvars.iv785.i.us.ph, %scalar.ph156.preheader ] ; 2 uses
  %.7628.i.us = phi ptr [ %i.re, %scalar.ph156 ], [ %.7628.i.us.ph, %scalar.ph156.preheader ] ; 2 uses
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !45
  %i.rc = lshr i32 %i.rb, 16
  %i.rd = trunc nuw i32 %i.rc to i16
  store i16 %i.rd, ptr %.7628.i.us, align 2, !tbaa !66
  %i.re = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 2 ; 2 uses
  %indvars.iv.next786.i.us = add nuw nsw i64 %indvars.iv785.i.us, 1 ; 2 uses
  %exitcond789.not.i.us = icmp eq i64 %indvars.iv.next786.i.us, %wide.trip.count777.i
  br i1 %exitcond789.not.i.us, label %._crit_edge630.i.us, label %scalar.ph156, !llvm.loop !274

._crit_edge630.i.us:                              ; preds = %scalar.ph156, %middle.block166
  %.lcssa102 = phi ptr [ %i.qq, %middle.block166 ], [ %i.re, %scalar.ph156 ]
  %i.rf = add nuw nsw i32 %.2343633.i.us, 1       ; 2 uses
  %exitcond790.not.i.us = icmp eq i32 %i.rf, %i.h
  br i1 %exitcond790.not.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us, !llvm.loop !275

._crit_edge634.split.i.us:                        ; preds = %._crit_edge630.i.us, %.preheader475.i.us
  %indvars.iv.next792.i.us = add nuw nsw i64 %indvars.iv791.i.us, 1 ; 2 uses
  %exitcond795.not.i.us = icmp eq i64 %indvars.iv.next792.i.us, %wide.trip.count794.i
  br i1 %exitcond795.not.i.us, label %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.us, !llvm.loop !276

.preheader476.i.loopexit.us:                      ; preds = %._crit_edge601.us.i.us
  br i1 %i.mr, label %.preheader473.us.i.us, label %.preheader475.i.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split:              ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %i.rg = icmp sgt i32 %i.h, 1
  %2 = and i32 %i.h, -2
  %min.iters.check142 = icmp ult i32 %i.d, 4
  %n.vec144 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.rh = shl nuw nsw i64 %n.vec144, 2
  %cmp.n153 = icmp eq i64 %n.vec144, %wide.trip.count777.i
  %min.iters.check128 = icmp ult i32 %i.d, 8
  %n.vec130 = and i64 %wide.trip.count777.i, 2147483640 ; 4 uses
  %i.ri = shl nuw nsw i64 %n.vec130, 1
  %cmp.n138 = icmp eq i64 %n.vec130, %wide.trip.count777.i
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit419.i:                       ; preds = %._crit_edge591.split.i, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i
  %indvars.iv764.i = phi i64 [ %i.di, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ], [ %indvars.iv.next765.i, %._crit_edge591.split.i ] ; 2 uses
  %indvars.iv762.i = phi i32 [ %i.dj, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ], [ %indvars.iv.next763.i, %._crit_edge591.split.i ] ; 2 uses
  %i.rj = trunc nuw i64 %indvars.iv764.i to i32   ; 3 uses
  %i.rk = mul i32 %i.cq, %i.rj
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.rl ; 2 uses
  %i.rn = mul i32 %indvars.iv762.i, %i.cq
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.ro ; 2 uses
  %i.rq = lshr i32 %i.rj, 2
  %i.rr = lshr i32 %i.rj, 1
  %i.rs = and i32 %i.rr, 1
  %i.rt = add nuw nsw i32 %i.rs, %i.rq
  %i.ru = zext nneg i32 %i.rt to i64
  %.reass595.i = mul i64 %factor.op.mul594.i, %i.ru
  %i.rv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.reass595.i ; 2 uses
  br i1 %i.cw, label %.preheader480.lr.ph.i, label %.preheader482.i

.preheader480.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit419.i
  br i1 %i.cx, label %.preheader480.us.i, label %._crit_edge591.split.i

.preheader480.us.i:                               ; preds = %.preheader480.lr.ph.i, %._crit_edge551.us.i
  %.0363556.us.i = phi i32 [ %i.tm, %._crit_edge551.us.i ], [ 0, %.preheader480.lr.ph.i ]
  %.0366555.us.i = phi ptr [ %i.tj, %._crit_edge551.us.i ], [ %i.rv, %.preheader480.lr.ph.i ]
  %.0373554.us.i = phi ptr [ %i.tl, %._crit_edge551.us.i ], [ %i.rp, %.preheader480.lr.ph.i ] ; 2 uses
  %.0375553.us.i = phi ptr [ %i.tk, %._crit_edge551.us.i ], [ %i.rm, %.preheader480.lr.ph.i ] ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader480.us.i
  %indvars.iv744.i = phi i64 [ 0, %.preheader480.us.i ], [ %indvars.iv.next745.i, %bb.t ] ; 3 uses
  %.1367549.us.i = phi ptr [ %.0366555.us.i, %.preheader480.us.i ], [ %i.tj, %bb.t ] ; 9 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.ry = load i32, ptr %i.rw, align 4, !tbaa !45
  %i.rz = lshr i32 %i.ry, 16
  %i.sa = trunc nuw i32 %i.rz to i16
  store i16 %i.sa, ptr %.1367549.us.i, align 2, !tbaa !66
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.cy
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !45
  %i.sd = lshr i32 %i.sc, 16
  %i.se = trunc nuw i32 %i.sd to i16
  %i.sf = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 2
  store i16 %i.se, ptr %i.sf, align 2, !tbaa !66
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.da
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !45
  %i.si = lshr i32 %i.sh, 16
  %i.sj = trunc nuw i32 %i.si to i16
  %i.sk = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 4
  store i16 %i.sj, ptr %i.sk, align 2, !tbaa !66
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.dc
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !45
  %i.sn = lshr i32 %i.sm, 16
  %i.so = trunc nuw i32 %i.sn to i16
  %i.sp = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 6
  store i16 %i.so, ptr %i.sp, align 2, !tbaa !66
  %i.sq = load i32, ptr %i.rx, align 4, !tbaa !45
  %i.sr = lshr i32 %i.sq, 16
  %i.ss = trunc nuw i32 %i.sr to i16
  %i.st = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 8
  store i16 %i.ss, ptr %i.st, align 2, !tbaa !66
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.cy
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !45
  %i.sw = lshr i32 %i.sv, 16
  %i.sx = trunc nuw i32 %i.sw to i16
  %i.sy = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 10
  store i16 %i.sx, ptr %i.sy, align 2, !tbaa !66
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.da
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !45
  %i.tb = lshr i32 %i.ta, 16
  %i.tc = trunc nuw i32 %i.tb to i16
  %i.td = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 12
  store i16 %i.tc, ptr %i.td, align 2, !tbaa !66
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.dc
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !45
  %i.tg = lshr i32 %i.tf, 16
  %i.th = trunc nuw i32 %i.tg to i16
  %i.ti = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 14
  store i16 %i.th, ptr %i.ti, align 2, !tbaa !66
  %i.tj = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 16 ; 3 uses
  %indvars.iv.next745.i = add nuw nsw i64 %indvars.iv744.i, 1 ; 2 uses
  %exitcond748.not.i = icmp eq i64 %indvars.iv.next745.i, %wide.trip.count747.i
  br i1 %exitcond748.not.i, label %._crit_edge551.us.i, label %bb.t, !llvm.loop !277

._crit_edge551.us.i:                              ; preds = %bb.t
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %i.de ; 2 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %i.de ; 2 uses
  %i.tm = add nuw nsw i32 %.0363556.us.i, 4       ; 2 uses
  %i.tn = or disjoint i32 %i.tm, 3
  %i.to = icmp slt i32 %i.tn, %i.h
  br i1 %i.to, label %.preheader480.us.i, label %.preheader482.i, !llvm.loop !278

.preheader482.i:                                  ; preds = %._crit_edge551.us.i, %_ZN4ncnn3MatD2Ev.exit419.i
  %.0375.lcssa.i = phi ptr [ %i.rm, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.tk, %._crit_edge551.us.i ] ; 2 uses
  %.0373.lcssa.i = phi ptr [ %i.rp, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.tl, %._crit_edge551.us.i ] ; 2 uses
  %.0366.lcssa.i = phi ptr [ %i.rv, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.tj, %._crit_edge551.us.i ] ; 2 uses
  %.0363.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.dh, %._crit_edge551.us.i ] ; 3 uses
  %i.tp = or disjoint i32 %.0363.lcssa.i, 1
  %i.tq = icmp slt i32 %i.tp, %i.h
  br i1 %i.tq, label %.preheader479.lr.ph.i, label %.preheader481.i

.preheader479.lr.ph.i:                            ; preds = %.preheader482.i
  br i1 %i.cx, label %.preheader479.us.i, label %._crit_edge591.split.i

.preheader479.us.i:                               ; preds = %.preheader479.lr.ph.i, %._crit_edge571.us.i
  %.1364576.us.i = phi i32 [ %i.wb, %._crit_edge571.us.i ], [ %.0363.lcssa.i, %.preheader479.lr.ph.i ]
  %.2368575.us.i = phi ptr [ %.lcssa197, %._crit_edge571.us.i ], [ %.0366.lcssa.i, %.preheader479.lr.ph.i ] ; 2 uses
  %.1374574.us.i = phi ptr [ %i.wa, %._crit_edge571.us.i ], [ %.0373.lcssa.i, %.preheader479.lr.ph.i ] ; 4 uses
  %.1376573.us.i = phi ptr [ %i.vz, %._crit_edge571.us.i ], [ %.0375.lcssa.i, %.preheader479.lr.ph.i ] ; 4 uses
  br i1 %i.dl, label %.epil.preheader216, label %.preheader479.us.i.new

.preheader479.us.i.new:                           ; preds = %.preheader479.us.i, %.preheader479.us.i.new
  %indvars.iv751.i = phi i64 [ %indvars.iv.next752.i.1, %.preheader479.us.i.new ], [ 0, %.preheader479.us.i ] ; 4 uses
  %.3369569.us.i = phi ptr [ %i.ve, %.preheader479.us.i.new ], [ %.2368575.us.i, %.preheader479.us.i ] ; 9 uses
  %niter222 = phi i64 [ %niter222.next.1, %.preheader479.us.i.new ], [ 0, %.preheader479.us.i ]
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv751.i ; 2 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv751.i ; 2 uses
  %i.tt = load i32, ptr %i.tr, align 4, !tbaa !45
  %i.tu = lshr i32 %i.tt, 16
  %i.tv = trunc nuw i32 %i.tu to i16
  store i16 %i.tv, ptr %.3369569.us.i, align 2, !tbaa !66
  %i.tw = load i32, ptr %i.ts, align 4, !tbaa !45
  %i.tx = lshr i32 %i.tw, 16
  %i.ty = trunc nuw i32 %i.tx to i16
  %i.tz = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 2
  store i16 %i.ty, ptr %i.tz, align 2, !tbaa !66
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.cy
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %i.cy
  %i.uc = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 4
  %i.ud = load i32, ptr %i.ua, align 4, !tbaa !45
  %i.ue = lshr i32 %i.ud, 16
  %i.uf = trunc nuw i32 %i.ue to i16
  store i16 %i.uf, ptr %i.uc, align 2, !tbaa !66
  %i.ug = load i32, ptr %i.ub, align 4, !tbaa !45
  %i.uh = lshr i32 %i.ug, 16
  %i.ui = trunc nuw i32 %i.uh to i16
  %i.uj = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 6
  store i16 %i.ui, ptr %i.uj, align 2, !tbaa !66
  %i.uk = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 8
  %indvars.iv.next752.i = or disjoint i64 %indvars.iv751.i, 1 ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv.next752.i ; 2 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv.next752.i ; 2 uses
  %i.un = load i32, ptr %i.ul, align 4, !tbaa !45
  %i.uo = lshr i32 %i.un, 16
  %i.up = trunc nuw i32 %i.uo to i16
  store i16 %i.up, ptr %i.uk, align 2, !tbaa !66
  %i.uq = load i32, ptr %i.um, align 4, !tbaa !45
  %i.ur = lshr i32 %i.uq, 16
  %i.us = trunc nuw i32 %i.ur to i16
  %i.ut = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 10
  store i16 %i.us, ptr %i.ut, align 2, !tbaa !66
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.cy
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %i.cy
  %i.uw = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 12
  %i.ux = load i32, ptr %i.uu, align 4, !tbaa !45
  %i.uy = lshr i32 %i.ux, 16
  %i.uz = trunc nuw i32 %i.uy to i16
  store i16 %i.uz, ptr %i.uw, align 2, !tbaa !66
  %i.va = load i32, ptr %i.uv, align 4, !tbaa !45
  %i.vb = lshr i32 %i.va, 16
  %i.vc = trunc nuw i32 %i.vb to i16
  %i.vd = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 14
  store i16 %i.vc, ptr %i.vd, align 2, !tbaa !66
  %i.ve = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 16 ; 3 uses
  %indvars.iv.next752.i.1 = add nuw nsw i64 %indvars.iv751.i, 2 ; 2 uses
  %niter222.next.1 = add i64 %niter222, 2         ; 2 uses
  %niter222.ncmp.1 = icmp eq i64 %niter222.next.1, %unroll_iter221
  br i1 %niter222.ncmp.1, label %._crit_edge571.us.i.unr-lcssa, label %.preheader479.us.i.new, !llvm.loop !279

._crit_edge571.us.i.unr-lcssa:                    ; preds = %.preheader479.us.i.new
  br i1 %lcmp.mod218.not, label %._crit_edge571.us.i, label %.epil.preheader216

.epil.preheader216:                               ; preds = %._crit_edge571.us.i.unr-lcssa, %.preheader479.us.i
  %indvars.iv751.i.epil.init = phi i64 [ 0, %.preheader479.us.i ], [ %indvars.iv.next752.i.1, %._crit_edge571.us.i.unr-lcssa ] ; 2 uses
  %.3369569.us.i.epil.init = phi ptr [ %.2368575.us.i, %.preheader479.us.i ], [ %i.ve, %._crit_edge571.us.i.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod220)
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv751.i.epil.init ; 2 uses
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv751.i.epil.init ; 2 uses
  %i.vh = load i32, ptr %i.vf, align 4, !tbaa !45
  %i.vi = lshr i32 %i.vh, 16
  %i.vj = trunc nuw i32 %i.vi to i16
  store i16 %i.vj, ptr %.3369569.us.i.epil.init, align 2, !tbaa !66
  %i.vk = load i32, ptr %i.vg, align 4, !tbaa !45
  %i.vl = lshr i32 %i.vk, 16
  %i.vm = trunc nuw i32 %i.vl to i16
  %i.vn = getelementptr inbounds nuw i8, ptr %.3369569.us.i.epil.init, i64 2
  store i16 %i.vm, ptr %i.vn, align 2, !tbaa !66
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %i.cy
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.cy
  %i.vq = getelementptr inbounds nuw i8, ptr %.3369569.us.i.epil.init, i64 4
  %i.vr = load i32, ptr %i.vo, align 4, !tbaa !45
  %i.vs = lshr i32 %i.vr, 16
  %i.vt = trunc nuw i32 %i.vs to i16
  store i16 %i.vt, ptr %i.vq, align 2, !tbaa !66
  %i.vu = load i32, ptr %i.vp, align 4, !tbaa !45
  %i.vv = lshr i32 %i.vu, 16
  %i.vw = trunc nuw i32 %i.vv to i16
  %i.vx = getelementptr inbounds nuw i8, ptr %.3369569.us.i.epil.init, i64 6
  store i16 %i.vw, ptr %i.vx, align 2, !tbaa !66
  %i.vy = getelementptr inbounds nuw i8, ptr %.3369569.us.i.epil.init, i64 8
  br label %._crit_edge571.us.i

._crit_edge571.us.i:                              ; preds = %._crit_edge571.us.i.unr-lcssa, %.epil.preheader216
  %.lcssa197 = phi ptr [ %i.ve, %._crit_edge571.us.i.unr-lcssa ], [ %i.vy, %.epil.preheader216 ] ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %i.df ; 2 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %i.df ; 2 uses
  %i.wb = add nuw nsw i32 %.1364576.us.i, 2       ; 3 uses
  %i.wc = or disjoint i32 %i.wb, 1
  %i.wd = icmp slt i32 %i.wc, %i.h
  br i1 %i.wd, label %.preheader479.us.i, label %.preheader481.i, !llvm.loop !280

.preheader481.i:                                  ; preds = %._crit_edge571.us.i, %.preheader482.i
  %.1376.lcssa.i = phi ptr [ %.0375.lcssa.i, %.preheader482.i ], [ %i.vz, %._crit_edge571.us.i ] ; 2 uses
  %.1374.lcssa.i = phi ptr [ %.0373.lcssa.i, %.preheader482.i ], [ %i.wa, %._crit_edge571.us.i ] ; 2 uses
  %.2368.lcssa.i = phi ptr [ %.0366.lcssa.i, %.preheader482.i ], [ %.lcssa197, %._crit_edge571.us.i ]
  %.1364.lcssa.i = phi i32 [ %.0363.lcssa.i, %.preheader482.i ], [ %i.wb, %._crit_edge571.us.i ] ; 2 uses
  %i.we = icmp sge i32 %.1364.lcssa.i, %i.h
  %brmerge642.i = or i1 %i.dg, %i.we
  br i1 %brmerge642.i, label %._crit_edge591.split.i, label %.preheader478.i

.preheader478.i:                                  ; preds = %.preheader481.i, %._crit_edge587.i
  %.2365590.i = phi i32 [ %i.wm, %._crit_edge587.i ], [ %.1364.lcssa.i, %.preheader481.i ]
  %.5371589.i = phi ptr [ %.lcssa112, %._crit_edge587.i ], [ %.2368.lcssa.i, %.preheader481.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader478.i
  %i.wf = getelementptr i8, ptr %.5371589.i, i64 %i.dm ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.wg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.5371589.i, i64 %i.wg
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %index
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %index
  %wide.load = load <4 x i32>, ptr %i.wh, align 4, !tbaa !45
  %wide.load125 = load <4 x i32>, ptr %i.wi, align 4, !tbaa !45
  %i.wj = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load125, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.wk = lshr <8 x i32> %i.wj, splat (i32 16)
  %interleaved.vec = trunc nuw <8 x i32> %i.wk to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.wl = icmp eq i64 %index.next, %n.vec
  br i1 %i.wl, label %middle.block, label %vector.body, !llvm.loop !281

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge587.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader478.i, %middle.block
  %indvars.iv756.i.ph = phi i64 [ 0, %.preheader478.i ], [ %n.vec, %middle.block ]
  %.6372585.i.ph = phi ptr [ %.5371589.i, %.preheader478.i ], [ %i.wf, %middle.block ]
  br label %scalar.ph

._crit_edge587.i:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa112 = phi ptr [ %i.wf, %middle.block ], [ %i.ww, %scalar.ph ]
  %i.wm = add nuw nsw i32 %.2365590.i, 1          ; 2 uses
  %exitcond761.not.i = icmp eq i32 %i.wm, %i.h
  br i1 %exitcond761.not.i, label %._crit_edge591.split.i, label %.preheader478.i, !llvm.loop !282

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv756.i = phi i64 [ %indvars.iv.next757.i, %scalar.ph ], [ %indvars.iv756.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.6372585.i = phi ptr [ %i.ww, %scalar.ph ], [ %.6372585.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv756.i
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv756.i
  %i.wp = load i32, ptr %i.wn, align 4, !tbaa !45
  %i.wq = lshr i32 %i.wp, 16
  %i.wr = trunc nuw i32 %i.wq to i16
  store i16 %i.wr, ptr %.6372585.i, align 2, !tbaa !66
  %i.ws = load i32, ptr %i.wo, align 4, !tbaa !45
  %i.wt = lshr i32 %i.ws, 16
  %i.wu = trunc nuw i32 %i.wt to i16
  %i.wv = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 2
  store i16 %i.wu, ptr %i.wv, align 2, !tbaa !66
  %i.ww = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 4 ; 2 uses
  %indvars.iv.next757.i = add nuw nsw i64 %indvars.iv756.i, 1 ; 2 uses
  %exitcond760.not.i = icmp eq i64 %indvars.iv.next757.i, %wide.trip.count747.i
  br i1 %exitcond760.not.i, label %._crit_edge587.i, label %scalar.ph, !llvm.loop !283

._crit_edge591.split.i:                           ; preds = %._crit_edge587.i, %.preheader481.i, %.preheader479.lr.ph.i, %.preheader480.lr.ph.i
  %indvars.iv.next765.i = add nuw nsw i64 %indvars.iv764.i, 2 ; 3 uses
  %i.wx = icmp slt i64 %indvars.iv.next765.i, %invariant.op.i
  %indvars.iv.next763.i = add i32 %indvars.iv762.i, 2
  br i1 %i.wx, label %_ZN4ncnn3MatD2Ev.exit419.i, label %.preheader477.loopexit.i, !llvm.loop !284

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge634.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split
  %indvars.iv791.i = phi i64 [ %i.mp, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split ], [ %indvars.iv.next792.i, %._crit_edge634.split.i ] ; 2 uses
  %i.wy = trunc nuw nsw i64 %indvars.iv791.i to i32 ; 4 uses
  %i.wz = mul i32 %i.ma, %i.wy
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %i.xa ; 4 uses
  %i.xc = lshr i32 %i.wy, 2
  %i.xd = lshr i32 %i.wy, 1
  %i.xe = and i32 %i.xd, 1
  %i.xf = and i32 %i.wy, 1
  %i.xg = add nuw nsw i32 %i.xf, %i.xc
  %i.xh = add nuw nsw i32 %i.xg, %i.xe
  %i.xi = zext nneg i32 %i.xh to i64
  %.reass638.i = mul i64 %factor.op.mul637.i, %i.xi
  %i.xj = getelementptr inbounds nuw i8, ptr %i.mb, i64 %.reass638.i ; 4 uses
  br i1 %i.rg, label %.preheader473.lr.ph.i, label %.preheader475.i

.preheader473.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.mh, label %.preheader473.us.i.preheader, label %._crit_edge634.split.i

.preheader473.us.i.preheader:                     ; preds = %.preheader473.lr.ph.i
  br i1 %min.iters.check142, label %.preheader473.us.i.preheader190, label %vector.ph143

vector.ph143:                                     ; preds = %.preheader473.us.i.preheader
  %i.xk = getelementptr i8, ptr %i.xj, i64 %i.rh  ; 2 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next151, %vector.body145 ] ; 3 uses
  %i.xl = shl i64 %index146, 2
  %next.gep147 = getelementptr i8, ptr %i.xj, i64 %i.xl
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %index146 ; 2 uses
  %wide.load148 = load <4 x i32>, ptr %i.xm, align 4, !tbaa !45
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %i.mi
  %wide.load149 = load <4 x i32>, ptr %i.xn, align 4, !tbaa !45
  %i.xo = shufflevector <4 x i32> %wide.load148, <4 x i32> %wide.load149, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.xp = lshr <8 x i32> %i.xo, splat (i32 16)
  %interleaved.vec150 = trunc nuw <8 x i32> %i.xp to <8 x i16>
  store <8 x i16> %interleaved.vec150, ptr %next.gep147, align 2, !tbaa !66
  %index.next151 = add nuw i64 %index146, 4       ; 2 uses
  %i.xq = icmp eq i64 %index.next151, %n.vec144
  br i1 %i.xq, label %middle.block152, label %vector.body145, !llvm.loop !285

middle.block152:                                  ; preds = %vector.body145
  br i1 %cmp.n153, label %.preheader475.i.loopexit, label %.preheader473.us.i.preheader190

.preheader473.us.i.preheader190:                  ; preds = %.preheader473.us.i.preheader, %middle.block152
  %indvars.iv780.i.ph = phi i64 [ 0, %.preheader473.us.i.preheader ], [ %n.vec144, %middle.block152 ]
  %.4615.us.i.ph = phi ptr [ %i.xj, %.preheader473.us.i.preheader ], [ %i.xk, %middle.block152 ]
  br label %.preheader473.us.i

.preheader473.us.i:                               ; preds = %.preheader473.us.i.preheader190, %.preheader473.us.i
  %indvars.iv780.i = phi i64 [ %indvars.iv.next781.i, %.preheader473.us.i ], [ %indvars.iv780.i.ph, %.preheader473.us.i.preheader190 ] ; 2 uses
  %.4615.us.i = phi ptr [ %i.ya, %.preheader473.us.i ], [ %.4615.us.i.ph, %.preheader473.us.i.preheader190 ] ; 3 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %indvars.iv780.i ; 2 uses
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !45
  %i.xt = lshr i32 %i.xs, 16
  %i.xu = trunc nuw i32 %i.xt to i16
  store i16 %i.xu, ptr %.4615.us.i, align 2, !tbaa !66
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.xr, i64 %i.mi
  %i.xw = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 2
  %i.xx = load i32, ptr %i.xv, align 4, !tbaa !45
  %i.xy = lshr i32 %i.xx, 16
  %i.xz = trunc nuw i32 %i.xy to i16
  store i16 %i.xz, ptr %i.xw, align 2, !tbaa !66
  %i.ya = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 4 ; 2 uses
  %indvars.iv.next781.i = add nuw nsw i64 %indvars.iv780.i, 1 ; 2 uses
  %exitcond784.not.i = icmp eq i64 %indvars.iv.next781.i, %wide.trip.count777.i
  br i1 %exitcond784.not.i, label %.preheader475.i.loopexit, label %.preheader473.us.i, !llvm.loop !286

.preheader475.i.loopexit:                         ; preds = %.preheader473.us.i, %middle.block152
  %.lcssa103 = phi ptr [ %i.xk, %middle.block152 ], [ %i.ya, %.preheader473.us.i ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %i.mm
  br label %.preheader475.i

.preheader475.i:                                  ; preds = %.preheader475.i.loopexit, %_ZN4ncnn3MatD2Ev.exit.i
  %.1348.lcssa.i = phi ptr [ %i.xb, %_ZN4ncnn3MatD2Ev.exit.i ], [ %3, %.preheader475.i.loopexit ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %i.xj, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa103, %.preheader475.i.loopexit ]
  %.1342.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %2, %.preheader475.i.loopexit ] ; 2 uses
  %i.yb = icmp sge i32 %.1342.lcssa.i, %i.h
  %brmerge645.i = or i1 %i.mn, %i.yb
  br i1 %brmerge645.i, label %._crit_edge634.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader475.i, %._crit_edge630.i
  %.2343633.i = phi i32 [ %i.ym, %._crit_edge630.i ], [ %.1342.lcssa.i, %.preheader475.i ]
  %.6632.i = phi ptr [ %.lcssa104, %._crit_edge630.i ], [ %.3.lcssa.i, %.preheader475.i ] ; 3 uses
  br i1 %min.iters.check128, label %scalar.ph127.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %.preheader.i
  %i.yc = getelementptr i8, ptr %.6632.i, i64 %i.ri ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next136, %vector.body131 ] ; 3 uses
  %i.yd = shl i64 %index132, 1
  %next.gep133 = getelementptr i8, ptr %.6632.i, i64 %i.yd ; 2 uses
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %index132 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %wide.load134 = load <4 x i32>, ptr %i.ye, align 4, !tbaa !45
  %wide.load135 = load <4 x i32>, ptr %i.yf, align 4, !tbaa !45
  %i.yg = lshr <4 x i32> %wide.load134, splat (i32 16)
  %i.yh = lshr <4 x i32> %wide.load135, splat (i32 16)
  %i.yi = trunc nuw <4 x i32> %i.yg to <4 x i16>
  %i.yj = trunc nuw <4 x i32> %i.yh to <4 x i16>
  %i.yk = getelementptr i8, ptr %next.gep133, i64 8
  store <4 x i16> %i.yi, ptr %next.gep133, align 2, !tbaa !66
  store <4 x i16> %i.yj, ptr %i.yk, align 2, !tbaa !66
  %index.next136 = add nuw i64 %index132, 8       ; 2 uses
  %i.yl = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.yl, label %middle.block137, label %vector.body131, !llvm.loop !287

middle.block137:                                  ; preds = %vector.body131
  br i1 %cmp.n138, label %._crit_edge630.i, label %scalar.ph127.preheader

scalar.ph127.preheader:                           ; preds = %.preheader.i, %middle.block137
  %indvars.iv785.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec130, %middle.block137 ]
  %.7628.i.ph = phi ptr [ %.6632.i, %.preheader.i ], [ %i.yc, %middle.block137 ]
  br label %scalar.ph127

._crit_edge630.i:                                 ; preds = %scalar.ph127, %middle.block137
  %.lcssa104 = phi ptr [ %i.yc, %middle.block137 ], [ %i.yr, %scalar.ph127 ]
  %i.ym = add nuw nsw i32 %.2343633.i, 1          ; 2 uses
  %exitcond790.not.i = icmp eq i32 %i.ym, %i.h
  br i1 %exitcond790.not.i, label %._crit_edge634.split.i, label %.preheader.i, !llvm.loop !275

scalar.ph127:                                     ; preds = %scalar.ph127.preheader, %scalar.ph127
  %indvars.iv785.i = phi i64 [ %indvars.iv.next786.i, %scalar.ph127 ], [ %indvars.iv785.i.ph, %scalar.ph127.preheader ] ; 2 uses
  %.7628.i = phi ptr [ %i.yr, %scalar.ph127 ], [ %.7628.i.ph, %scalar.ph127.preheader ] ; 2 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !45
  %i.yp = lshr i32 %i.yo, 16
  %i.yq = trunc nuw i32 %i.yp to i16
  store i16 %i.yq, ptr %.7628.i, align 2, !tbaa !66
  %i.yr = getelementptr inbounds nuw i8, ptr %.7628.i, i64 2 ; 2 uses
  %indvars.iv.next786.i = add nuw nsw i64 %indvars.iv785.i, 1 ; 2 uses
  %exitcond789.not.i = icmp eq i64 %indvars.iv.next786.i, %wide.trip.count777.i
  br i1 %exitcond789.not.i, label %._crit_edge630.i, label %scalar.ph127, !llvm.loop !288

._crit_edge634.split.i:                           ; preds = %._crit_edge630.i, %.preheader475.i, %.preheader473.lr.ph.i
  %indvars.iv.next792.i = add nuw nsw i64 %indvars.iv791.i, 1 ; 2 uses
  %exitcond795.not.i = icmp eq i64 %indvars.iv.next792.i, %wide.trip.count794.i
  br i1 %exitcond795.not.i, label %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit, label %_ZN4ncnn3MatD2Ev.exit.i, !llvm.loop !276

_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit: ; preds = %._crit_edge634.split.i, %._crit_edge634.split.i.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us, %.preheader477.i
  %i.ys = load i8, ptr %1, align 8, !tbaa !50, !range !39, !noundef !40
  %i.yt = trunc nuw i8 %i.ys to i1
  br i1 %i.yt, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !17 ; 2 uses
  %.not.i = icmp eq ptr %i.yv, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.yw = atomicrmw add ptr %i.yv, i32 -1 acq_rel, align 4
  %i.yx = icmp eq i32 %i.yw, 1
  br i1 %i.yx, label %bb.w, label %_ZN4ncnn3Mat7releaseEv.exit

bb.w:                                             ; preds = %bb.v
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !18 ; 3 uses
  %.not3.i = icmp eq ptr %i.yz, null
  %i.za = load ptr, ptr %i.i, align 8, !tbaa !19  ; 3 uses
  br i1 %.not3.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.zb = load ptr, ptr %i.yz, align 8, !tbaa !11
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 24
  %i.zd = load ptr, ptr %i.zc, align 8
  tail call void %i.zd(ptr noundef nonnull align 8 dereferenceable(8) %i.yz, ptr noundef %i.za), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.y:                                             ; preds = %bb.w
  %.not.i2 = icmp eq ptr %i.za, null
  br i1 %.not.i2, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %i.za) #11
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.z, %bb.y, %bb.u, %bb.v, %bb.x
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 0, ptr %i.zf, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.i, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ze, i8 0, i64 20, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn17Convolution1D_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !42
  %i.n = add nsw i32 %i.m, -1
  %i.o = mul nsw i32 %i.n, %i.k
  %.neg = xor i32 %i.o, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.s, i8 0, i64 28, i1 false)
  invoke void @_ZNK4ncnn13Convolution1D12make_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %4, align 8, !tbaa !19
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK4ncnn3Mat5emptyEv.exit32.thread, label %_ZNK4ncnn3Mat5emptyEv.exit32

_ZNK4ncnn3Mat5emptyEv.exit32:                     ; preds = %bb.b
  %i.z = load i64, ptr %i.w, align 8, !tbaa !20
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !52
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul i64 %i.z, %i.ab
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNK4ncnn3Mat5emptyEv.exit32.thread, label %._crit_edge

bb.c:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

._crit_edge:                                      ; preds = %_ZNK4ncnn3Mat5emptyEv.exit32
  %i.af = load i32, ptr %i.t, align 4, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !58, !range !39, !noundef !40
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %i.al = and i32 %i.ak, 3
  %i.am = icmp eq i32 %i.al, 0
  %i.an = and i1 %i.am, %i.ai
  %.0 = select i1 %i.an, i32 4, i32 1             ; 3 uses
  %i.ao = shl nuw nsw i32 %.0, 1
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = add i32 %i.af, %.neg
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !56
  %i.at = sdiv i32 %i.aq, %i.as
  %i.au = add nsw i32 %i.at, 1
  %i.av = sdiv i32 %i.ak, %.0
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !59
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.au, i32 noundef %i.av, i64 noundef %i.ap, i32 noundef %.0, ptr noundef %i.ax)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %._crit_edge
end_hunk_4
