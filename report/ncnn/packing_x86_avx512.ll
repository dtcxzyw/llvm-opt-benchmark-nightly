Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/packing_x86_avx512?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_ZN4ncnn18Packing_x86_avx512D0Ev = comdat any

@_ZTVN4ncnn18Packing_x86_avx512E = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn18Packing_x86_avx512E, ptr @_ZN4ncnn5LayerD2Ev, ptr @_ZN4ncnn18Packing_x86_avx512D0Ev, ptr @_ZN4ncnn7Packing10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn18Packing_x86_avx512E = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn18Packing_x86_avx512E, ptr @_ZTIN4ncnn7PackingE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn18Packing_x86_avx512E = hidden constant [28 x i8] c"N4ncnn18Packing_x86_avx512E\00", align 1
@_ZTIN4ncnn7PackingE = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

@_ZN4ncnn18Packing_x86_avx512C1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn18Packing_x86_avx512C2Ev

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn18Packing_x86_avx512D0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) #6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #15
  ret void
}

declare noundef i32 @_ZN4ncnn7Packing10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 16 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 15 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 24 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !15   ; 14 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16   ; 4 uses
  %.tr.i = trunc i64 %i.k to i32
  %i.l = shl i32 %.tr.i, 3
  %i.m = sdiv i32 %i.l, %i.i                      ; 2 uses
  switch i32 %i.m, label %bb.d [
    i32 8, label %bb.b
    i32 16, label %bb.c
  ]

bb.b:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.n = tail call noundef i32 @_ZNK4ncnn18Packing_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit240

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.o = tail call noundef i32 @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit240

bb.d:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.q = load i32, ptr %i.p, align 4, !tbaa !32
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.f, label %bb.e

.thread:                                          ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32
  %.not264 = icmp eq i32 %i.s, 0
  br i1 %.not264, label %.thread265, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.t = tail call noundef i32 @_ZNK4ncnn7Packing7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit240

bb.f:                                             ; preds = %bb.d
  %.not227 = icmp eq i32 %i.m, 32
  br i1 %.not227, label %bb.g, label %.thread265

.thread265:                                       ; preds = %.thread, %bb.f
  %i.u = tail call noundef i32 @_ZNK4ncnn7Packing7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit240

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !33   ; 22 uses
  %i.x = icmp eq i32 %i.i, %i.w
  br i1 %i.x, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.y = icmp eq ptr %2, %1
  br i1 %i.y, label %_ZN4ncnn3MataSERKS0_.exit240, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34  ; 2 uses
  %.not.i239 = icmp eq ptr %i.aa, null
  br i1 %.not.i239, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = atomicrmw add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 2 uses
  %.not.i242 = icmp eq ptr %i.ad, null
  br i1 %.not.i242, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = atomicrmw add ptr %i.ad, i32 -1 acq_rel, align 4
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.m, label %_ZN4ncnn3Mat7releaseEv.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35 ; 3 uses
  %.not3.i = icmp eq ptr %i.ah, null
  %i.ai = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %i.ai), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.o:                                             ; preds = %bb.m
  %.not.i262 = icmp eq ptr %i.ai, null
  br i1 %.not.i262, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.ai) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.p, %bb.o, %bb.k, %bb.l, %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ao, i8 0, i64 20, i1 false)
  %i.ar = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.ar, ptr %2, align 8, !tbaa !40
  %i.as = load i64, ptr %i.j, align 8, !tbaa !16
  store i64 %i.as, ptr %i.am, align 8, !tbaa !16
  %i.at = load i32, ptr %i.h, align 8, !tbaa !15
  store i32 %i.at, ptr %i.an, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load <4 x i32>, ptr %i.ax, align 8, !tbaa !41
  store <4 x i32> %i.ay, ptr %i.ao, align 8, !tbaa !41
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !42
  store i32 %i.ba, ptr %i.ap, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !39
  store i64 %i.bc, ptr %i.aq, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit240

bb.q:                                             ; preds = %bb.g
  %i.bd = icmp eq i32 %i.i, 1                     ; 2 uses
  %i.be = icmp eq i32 %i.w, 4                     ; 3 uses
  %spec.select = and i1 %i.bd, %i.be              ; 3 uses
  %i.bf = icmp eq i32 %i.i, 4
  br i1 %i.bf, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.bd, label %.thread312, label %bb.s

bb.s:                                             ; preds = %bb.r
  switch i32 %i.i, label %.thread360 [
    i32 8, label %bb.u
    i32 16, label %bb.v
  ]

.thread312:                                       ; preds = %bb.r
  %i.bg = icmp eq i32 %i.w, 8
  %i.bh = icmp eq i32 %i.w, 16
  br label %.thread360

bb.t:                                             ; preds = %bb.q
  %i.bi = icmp eq i32 %i.w, 1
  %i.bj = icmp eq i32 %i.w, 8
  %i.bk = icmp eq i32 %i.w, 16
  br label %.thread360

bb.u:                                             ; preds = %bb.s
  %i.bl = icmp eq i32 %i.w, 1
  %i.bm = icmp eq i32 %i.w, 16
  br label %.thread360

bb.v:                                             ; preds = %bb.s
  %i.bn = icmp eq i32 %i.w, 1
  %i.bo = icmp eq i32 %i.w, 8
  br label %.thread360

.thread360:                                       ; preds = %bb.s, %bb.t, %.thread312, %bb.u, %bb.v
  %i.bp = phi i1 [ %i.bm, %bb.u ], [ false, %bb.v ], [ false, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bq = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ false, %.thread312 ], [ %i.bk, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.br = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ %i.bh, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bs = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ false, %.thread312 ], [ %i.bj, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bt = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ %i.bg, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bu = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ false, %.thread312 ], [ %i.bi, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bv = phi i1 [ %i.bl, %bb.u ], [ false, %bb.v ], [ false, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bw = phi i1 [ %i.be, %bb.u ], [ false, %bb.v ], [ false, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bx = phi i1 [ false, %bb.u ], [ %i.bn, %bb.v ], [ false, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.by = phi i1 [ false, %bb.u ], [ %i.be, %bb.v ], [ false, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bz = phi i1 [ false, %bb.u ], [ %i.bo, %bb.v ], [ false, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %or.cond = or i1 %spec.select, %i.bu
  %or.cond3 = or i1 %i.bt, %or.cond
  %or.cond5 = or i1 %i.bv, %or.cond3
  %or.cond7 = or i1 %i.bs, %or.cond5
  %or.cond9 = or i1 %i.bw, %or.cond7
  %or.cond11 = or i1 %i.br, %or.cond9
  %or.cond13 = or i1 %i.bx, %or.cond11
  %or.cond15 = or i1 %i.bq, %or.cond13
  %or.cond17 = or i1 %i.by, %or.cond15
  %or.cond19 = or i1 %i.bp, %or.cond17
  %or.cond21 = or i1 %i.bz, %or.cond19
  br i1 %or.cond21, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread360
  %i.ca = tail call noundef i32 @_ZNK4ncnn7Packing7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit240

bb.x:                                             ; preds = %.thread360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !43 ; 6 uses
  store i32 %i.cc, ptr %i.a, align 4, !tbaa !41
end_hunk_0
begin_hunk_1_@_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.not.i258 = icmp eq ptr %i.ed, null
  br i1 %.not.i258, label %_ZN4ncnn3Mat7releaseEv.exit248, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @free(ptr noundef nonnull %i.ed) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit248

_ZN4ncnn3Mat7releaseEv.exit248:                   ; preds = %bb.ar, %bb.aq, %bb.am, %bb.an, %bb.ap
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.el, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ej, i8 0, i64 20, i1 false)
  %i.em = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.em, ptr %2, align 8, !tbaa !40
  %i.en = load i64, ptr %i.j, align 8, !tbaa !16
  store i64 %i.en, ptr %i.eh, align 8, !tbaa !16
  %i.eo = load i32, ptr %i.h, align 8, !tbaa !15
  store i32 %i.eo, ptr %i.ei, align 8, !tbaa !15
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !35
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !35
  %i.es = load <4 x i32>, ptr %i.cj, align 8, !tbaa !41
  store <4 x i32> %i.es, ptr %i.ej, align 8, !tbaa !41
  %i.et = load i32, ptr %i.ch, align 8, !tbaa !42
  store i32 %i.et, ptr %i.ek, align 8, !tbaa !42
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !39
  store i64 %i.ev, ptr %i.el, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit238

bb.as:                                            ; preds = %bb.x
  %i.ew = add i32 %i.ck, -3
  %or.cond23 = icmp ult i32 %i.ew, 2
  br i1 %or.cond23, label %bb.at, label %_ZN4ncnn3MataSERKS0_.exit238

bb.at:                                            ; preds = %bb.as
  %i.ex = mul nsw i32 %i.ci, %i.i
  %i.ey = srem i32 %i.ex, %i.w
  %.not231 = icmp eq i32 %i.ey, 0
  br i1 %.not231, label %bb.cj, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ez = icmp eq ptr %2, %1
  br i1 %i.ez, label %_ZN4ncnn3MataSERKS0_.exit238, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !34 ; 2 uses
  %.not.i233 = icmp eq ptr %i.fb, null
  br i1 %.not.i233, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fc = atomicrmw add ptr %i.fb, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !34 ; 2 uses
  %.not.i249 = icmp eq ptr %i.fe, null
  br i1 %.not.i249, label %_ZN4ncnn3Mat7releaseEv.exit251, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ff = atomicrmw add ptr %i.fe, i32 -1 acq_rel, align 4
  %i.fg = icmp eq i32 %i.ff, 1
  br i1 %i.fg, label %bb.az, label %_ZN4ncnn3Mat7releaseEv.exit251

bb.az:                                            ; preds = %bb.ay
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !35 ; 3 uses
  %.not3.i250 = icmp eq ptr %i.fi, null
  %i.fj = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i250, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !38
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  tail call void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef %i.fj), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit251

bb.bb:                                            ; preds = %bb.az
  %.not.i256 = icmp eq ptr %i.fj, null
  br i1 %.not.i256, label %_ZN4ncnn3Mat7releaseEv.exit251, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @free(ptr noundef nonnull %i.fj) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit251

_ZN4ncnn3Mat7releaseEv.exit251:                   ; preds = %bb.bc, %bb.bb, %bb.ax, %bb.ay, %bb.ba
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.fr, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fp, i8 0, i64 20, i1 false)
  %i.fs = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.fs, ptr %2, align 8, !tbaa !40
  %i.ft = load i64, ptr %i.j, align 8, !tbaa !16
  store i64 %i.ft, ptr %i.fn, align 8, !tbaa !16
  %i.fu = load i32, ptr %i.h, align 8, !tbaa !15
  store i32 %i.fu, ptr %i.fo, align 8, !tbaa !15
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !35
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !35
  %i.fy = load <4 x i32>, ptr %i.cj, align 8, !tbaa !41
  store <4 x i32> %i.fy, ptr %i.fp, align 8, !tbaa !41
  %i.fz = load i32, ptr %i.ch, align 8, !tbaa !42
  store i32 %i.fz, ptr %i.fq, align 8, !tbaa !42
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !39
  store i64 %i.gb, ptr %i.fr, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit238

.thread363.thread:                                ; preds = %bb.y
  br i1 %i.cn, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.bd

bb.bd:                                            ; preds = %.thread363.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !34 ; 2 uses
  %.not.i232 = icmp eq ptr %i.gd, null
  br i1 %.not.i232, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ge = atomicrmw add ptr %i.gd, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !34 ; 2 uses
  %.not.i252 = icmp eq ptr %i.gg, null
  br i1 %.not.i252, label %_ZN4ncnn3Mat7releaseEv.exit254, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gh = atomicrmw add ptr %i.gg, i32 -1 acq_rel, align 4
  %i.gi = icmp eq i32 %i.gh, 1
  br i1 %i.gi, label %bb.bh, label %_ZN4ncnn3Mat7releaseEv.exit254

bb.bh:                                            ; preds = %bb.bg
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !35 ; 3 uses
  %.not3.i253 = icmp eq ptr %i.gk, null
  %i.gl = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i253, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !38
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  tail call void %i.go(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef %i.gl), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit254

bb.bj:                                            ; preds = %bb.bh
  %.not.i255 = icmp eq ptr %i.gl, null
  br i1 %.not.i255, label %_ZN4ncnn3Mat7releaseEv.exit254, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @free(ptr noundef nonnull %i.gl) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit254

_ZN4ncnn3Mat7releaseEv.exit254:                   ; preds = %bb.bk, %bb.bj, %bb.bf, %bb.bg, %bb.bi
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.gs, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.gp, i8 0, i64 20, i1 false)
  %i.gt = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.gt, ptr %2, align 8, !tbaa !40
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !35
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !35
  %i.gx = load i32, ptr %i.cj, align 8, !tbaa !46
  store i32 %i.gx, ptr %i.gp, align 8, !tbaa !46
  %i.gy = load <2 x i32>, ptr %i.cd, align 8, !tbaa !41
  store <2 x i32> %i.gy, ptr %i.gq, align 8, !tbaa !41
  %i.gz = load i32, ptr %i.ch, align 8, !tbaa !42
  store i32 %i.gz, ptr %i.gr, align 8, !tbaa !42
  %.pre = load i32, ptr %i.a, align 4, !tbaa !41
  %.pre393 = load i32, ptr %i.v, align 8, !tbaa !33
  %.pre395 = mul nsw i32 %.pre, %i.i
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %.thread363.thread, %_ZN4ncnn3Mat7releaseEv.exit254
  %.pre-phi = phi i32 [ %.pre395, %_ZN4ncnn3Mat7releaseEv.exit254 ], [ %i.cl, %.thread363.thread ]
  %i.ha = phi i32 [ %.pre393, %_ZN4ncnn3Mat7releaseEv.exit254 ], [ %i.w, %.thread363.thread ] ; 3 uses
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hb = load i64, ptr %.in, align 8, !tbaa !39
  %i.hc = sdiv i32 %.pre-phi, %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !43
  %i.he = sext i32 %i.i to i64                    ; 2 uses
  %i.hf = mul i64 %i.hb, %i.he
  %4 = sext i32 %i.ha to i64                      ; 2 uses
  %5 = udiv i64 %i.hf, %4
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %5, ptr %6, align 8, !tbaa !39
  %7 = udiv i64 %i.k, %i.he
  %i.hg = mul i64 %7, %4
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !16
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.ha, ptr %i.hi, align 8, !tbaa !15
  br label %_ZN4ncnn3MataSERKS0_.exit238

.thread363.thread392:                             ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 %i.ds, ptr %i.d, align 4, !tbaa !41
  %i.hj = sext i32 %i.i to i64
  %i.hk = udiv i64 %i.k, %i.hj
  %i.hl = sext i32 %i.w to i64
  %i.hm = mul i64 %i.hk, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !48
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.cc, i32 noundef %i.ds, i64 noundef %i.hm, i32 noundef %i.w, ptr noundef %i.ho)
  %i.hp = load ptr, ptr %2, align 8, !tbaa !36
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %_ZNK4ncnn3Mat5emptyEv.exit241.thread, label %_ZNK4ncnn3Mat5emptyEv.exit241

_ZNK4ncnn3Mat5emptyEv.exit241:                    ; preds = %.thread363.thread392
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !39
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !42
  %i.hv = sext i32 %i.hu to i64
  %i.hw = mul i64 %i.hs, %i.hv
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %_ZNK4ncnn3Mat5emptyEv.exit241.thread, label %bb.bl

bb.bl:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit241
  br i1 %spec.select, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !49
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.hz)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  br i1 %i.bu, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ib)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  br i1 %i.bt, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.id)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.bv, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.if)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  br i1 %i.bs, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ih)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  br i1 %i.bw, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ij)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  br i1 %i.br, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.il)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %i.bx, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.in)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.7, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  br i1 %i.bq, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.io = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ip)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.8, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  br i1 %i.by, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ir)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  br i1 %i.bp, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.it)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.10, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  br i1 %i.bz, label %bb.ci, label %_ZNK4ncnn3Mat5emptyEv.exit241.thread

bb.ci:                                            ; preds = %bb.ch
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.iv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.11, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %_ZNK4ncnn3Mat5emptyEv.exit241.thread

_ZNK4ncnn3Mat5emptyEv.exit241.thread:             ; preds = %.thread363.thread392, %bb.ch, %bb.ci, %_ZNK4ncnn3Mat5emptyEv.exit241
  %.0 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit241 ], [ 0, %bb.ci ], [ 0, %bb.ch ], [ -100, %.thread363.thread392 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %_ZN4ncnn3MataSERKS0_.exit238

bb.cj:                                            ; preds = %bb.at
  %i.iw = icmp eq i32 %i.ck, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.ix = mul nsw i32 %i.ce, %i.cc
  %i.iy = mul nsw i32 %i.ix, %i.cg
  store i32 %i.iy, ptr %i.e, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.iz = mul nsw i32 %i.ci, %i.i
  %i.ja = sdiv i32 %i.iz, %i.w                    ; 3 uses
  store i32 %i.ja, ptr %i.f, align 4, !tbaa !41
  %i.jb = sext i32 %i.i to i64
  %i.jc = udiv i64 %i.k, %i.jb
  %i.jd = sext i32 %i.w to i64
  %i.je = mul i64 %i.jc, %i.jd                    ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !48 ; 2 uses
  br i1 %i.iw, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.cc, i32 noundef %i.ce, i32 noundef %i.ja, i64 noundef %i.je, i32 noundef %i.w, ptr noundef %i.jg)
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.cc, i32 noundef %i.ce, i32 noundef %i.cg, i32 noundef %i.ja, i64 noundef %i.je, i32 noundef %i.w, ptr noundef %i.jg)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.jh = load ptr, ptr %2, align 8, !tbaa !36
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.cm
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !39
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !42
  %i.jn = sext i32 %i.jm to i64
  %i.jo = mul i64 %i.jk, %i.jn
  %i.jp = icmp eq i64 %i.jo, 0
  br i1 %i.jp, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.cn

bb.cn:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  br i1 %spec.select, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
end_hunk_1
begin_hunk_2_@_ZNK4ncnn18Packing_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE:bb.a
bb.ai:                                            ; preds = %bb.ah
  tail call void @free(ptr noundef nonnull %i.dd) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit112

_ZN4ncnn3Mat7releaseEv.exit112:                   ; preds = %bb.ai, %bb.ah, %bb.ad, %bb.ae, %bb.ag
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.dl, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dj, i8 0, i64 20, i1 false)
  %i.dm = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.dm, ptr %2, align 8, !tbaa !40
  %i.dn = load i64, ptr %i.k, align 8, !tbaa !16
  store i64 %i.dn, ptr %i.dh, align 8, !tbaa !16
  %i.do = load i32, ptr %i.m, align 8, !tbaa !15
  store i32 %i.do, ptr %i.di, align 8, !tbaa !15
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !35
  %i.ds = load <4 x i32>, ptr %i.bj, align 8, !tbaa !41
  store <4 x i32> %i.ds, ptr %i.dj, align 8, !tbaa !41
  %i.dt = load i32, ptr %i.bh, align 8, !tbaa !42
  store i32 %i.dt, ptr %i.dk, align 8, !tbaa !42
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !39
  store i64 %i.dv, ptr %i.dl, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit102

bb.aj:                                            ; preds = %bb.o
  %i.dw = add i32 %i.bk, -3
  %or.cond3 = icmp ult i32 %i.dw, 2
  br i1 %or.cond3, label %bb.ak, label %_ZN4ncnn3MataSERKS0_.exit102

bb.ak:                                            ; preds = %bb.aj
  %i.dx = mul nsw i32 %i.bi, %i.n
  %i.dy = srem i32 %i.dx, %i.p
  %.not96 = icmp eq i32 %i.dy, 0
  br i1 %.not96, label %bb.bg, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = icmp eq ptr %2, %1
  br i1 %i.dz, label %_ZN4ncnn3MataSERKS0_.exit102, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !34 ; 2 uses
  %.not.i97 = icmp eq ptr %i.eb, null
  br i1 %.not.i97, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = atomicrmw add ptr %i.eb, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !34 ; 2 uses
  %.not.i113 = icmp eq ptr %i.ee, null
  br i1 %.not.i113, label %_ZN4ncnn3Mat7releaseEv.exit115, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ef = atomicrmw add ptr %i.ee, i32 -1 acq_rel, align 4
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.aq, label %_ZN4ncnn3Mat7releaseEv.exit115

bb.aq:                                            ; preds = %bb.ap
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !35 ; 3 uses
  %.not3.i114 = icmp eq ptr %i.ei, null
  %i.ej = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i114, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !38
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  tail call void %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef %i.ej), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit115

bb.as:                                            ; preds = %bb.aq
  %.not.i120 = icmp eq ptr %i.ej, null
  br i1 %.not.i120, label %_ZN4ncnn3Mat7releaseEv.exit115, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @free(ptr noundef nonnull %i.ej) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit115

_ZN4ncnn3Mat7releaseEv.exit115:                   ; preds = %bb.at, %bb.as, %bb.ao, %bb.ap, %bb.ar
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.er, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ep, i8 0, i64 20, i1 false)
  %i.es = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.es, ptr %2, align 8, !tbaa !40
  %i.et = load i64, ptr %i.k, align 8, !tbaa !16
  store i64 %i.et, ptr %i.en, align 8, !tbaa !16
  %i.eu = load i32, ptr %i.m, align 8, !tbaa !15
  store i32 %i.eu, ptr %i.eo, align 8, !tbaa !15
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !35
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !35
  %i.ey = load <4 x i32>, ptr %i.bj, align 8, !tbaa !41
  store <4 x i32> %i.ey, ptr %i.ep, align 8, !tbaa !41
  %i.ez = load i32, ptr %i.bh, align 8, !tbaa !42
  store i32 %i.ez, ptr %i.eq, align 8, !tbaa !42
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !39
  store i64 %i.fb, ptr %i.er, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit102

.thread.thread:                                   ; preds = %bb.p
  br i1 %i.bn, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.au

bb.au:                                            ; preds = %.thread.thread
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !34 ; 2 uses
  %.not.i = icmp eq ptr %i.fd, null
  br i1 %.not.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fe = atomicrmw add ptr %i.fd, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !34 ; 2 uses
  %.not.i116 = icmp eq ptr %i.fg, null
  br i1 %.not.i116, label %_ZN4ncnn3Mat7releaseEv.exit118, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fh = atomicrmw add ptr %i.fg, i32 -1 acq_rel, align 4
  %i.fi = icmp eq i32 %i.fh, 1
  br i1 %i.fi, label %bb.ay, label %_ZN4ncnn3Mat7releaseEv.exit118

bb.ay:                                            ; preds = %bb.ax
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !35 ; 3 uses
  %.not3.i117 = icmp eq ptr %i.fk, null
  %i.fl = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i117, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !38
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  tail call void %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef %i.fl), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit118

bb.ba:                                            ; preds = %bb.ay
  %.not.i119 = icmp eq ptr %i.fl, null
  br i1 %.not.i119, label %_ZN4ncnn3Mat7releaseEv.exit118, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @free(ptr noundef nonnull %i.fl) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit118

_ZN4ncnn3Mat7releaseEv.exit118:                   ; preds = %bb.bb, %bb.ba, %bb.aw, %bb.ax, %bb.az
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.fs, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fp, i8 0, i64 20, i1 false)
  %i.ft = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.ft, ptr %2, align 8, !tbaa !40
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !35
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !35
  %i.fx = load i32, ptr %i.bj, align 8, !tbaa !46
  store i32 %i.fx, ptr %i.fp, align 8, !tbaa !46
  %i.fy = load <2 x i32>, ptr %i.bd, align 8, !tbaa !41
  store <2 x i32> %i.fy, ptr %i.fq, align 8, !tbaa !41
  %i.fz = load i32, ptr %i.bh, align 8, !tbaa !42
  store i32 %i.fz, ptr %i.fr, align 8, !tbaa !42
  %.pre = load i32, ptr %i.a, align 4, !tbaa !41
  %.pre131 = load i32, ptr %i.o, align 8, !tbaa !33
  %.pre133 = mul nsw i32 %.pre, %i.n
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %.thread.thread, %_ZN4ncnn3Mat7releaseEv.exit118
  %.pre-phi = phi i32 [ %.pre133, %_ZN4ncnn3Mat7releaseEv.exit118 ], [ %i.bl, %.thread.thread ]
  %i.ga = phi i32 [ %.pre131, %_ZN4ncnn3Mat7releaseEv.exit118 ], [ %i.p, %.thread.thread ] ; 3 uses
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gb = load i64, ptr %.in, align 8, !tbaa !39
  %i.gc = sdiv i32 %.pre-phi, %i.ga
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !43
  %i.ge = zext nneg i32 %i.n to i64               ; 2 uses
  %i.gf = mul i64 %i.gb, %i.ge
  %i.gg = sext i32 %i.ga to i64                   ; 2 uses
  %4 = udiv i64 %i.gf, %i.gg
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %4, ptr %5, align 8, !tbaa !39
  %6 = udiv i64 %i.l, %i.ge
  %i.gh = mul i64 %6, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !16
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.ga, ptr %i.gj, align 8, !tbaa !15
  br label %_ZN4ncnn3MataSERKS0_.exit102

.thread.thread129:                                ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 %i.cs, ptr %i.d, align 4, !tbaa !41
  %i.gk = zext nneg i32 %i.n to i64
  %i.gl = udiv i64 %i.l, %i.gk
  %i.gm = zext nneg i32 %i.p to i64
  %i.gn = mul i64 %i.gl, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !48
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bc, i32 noundef %i.cs, i64 noundef %i.gn, i32 noundef %i.p, ptr noundef %i.gp)
  %i.gq = load ptr, ptr %2, align 8, !tbaa !36
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %_ZNK4ncnn3Mat5emptyEv.exit105.thread, label %_ZNK4ncnn3Mat5emptyEv.exit105

_ZNK4ncnn3Mat5emptyEv.exit105:                    ; preds = %.thread.thread129
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !39
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !42
  %i.gw = sext i32 %i.gv to i64
  %i.gx = mul i64 %i.gt, %i.gw
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %_ZNK4ncnn3Mat5emptyEv.exit105.thread, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit105
  br i1 %spec.select, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !49
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ha)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  br i1 %spec.select130, label %bb.bf, label %_ZNK4ncnn3Mat5emptyEv.exit105.thread

bb.bf:                                            ; preds = %bb.be
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.hc)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.47, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %_ZNK4ncnn3Mat5emptyEv.exit105.thread

_ZNK4ncnn3Mat5emptyEv.exit105.thread:             ; preds = %.thread.thread129, %bb.be, %bb.bf, %_ZNK4ncnn3Mat5emptyEv.exit105
  %.0 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit105 ], [ 0, %bb.bf ], [ 0, %bb.be ], [ -100, %.thread.thread129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %_ZN4ncnn3MataSERKS0_.exit102

bb.bg:                                            ; preds = %bb.ak
  %i.hd = icmp eq i32 %i.bk, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.he = mul nsw i32 %i.be, %i.bc
  %i.hf = mul nsw i32 %i.he, %i.bg
  store i32 %i.hf, ptr %i.e, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.hg = mul nsw i32 %i.bi, %i.n
  %i.hh = sdiv i32 %i.hg, %i.p                    ; 3 uses
  store i32 %i.hh, ptr %i.f, align 4, !tbaa !41
  %i.hi = zext nneg i32 %i.n to i64
  %i.hj = udiv i64 %i.l, %i.hi
  %i.hk = zext nneg i32 %i.p to i64
  %i.hl = mul i64 %i.hj, %i.hk                    ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !48 ; 2 uses
  br i1 %i.hd, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bc, i32 noundef %i.be, i32 noundef %i.hh, i64 noundef %i.hl, i32 noundef %i.p, ptr noundef %i.hn)
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bc, i32 noundef %i.be, i32 noundef %i.bg, i32 noundef %i.hh, i64 noundef %i.hl, i32 noundef %i.p, ptr noundef %i.hn)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ho = load ptr, ptr %2, align 8, !tbaa !36
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.bj
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !39
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !42
  %i.hu = sext i32 %i.ht to i64
  %i.hv = mul i64 %i.hr, %i.hu
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  br i1 %spec.select, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !49
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.hy)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.48, ptr nonnull %i.f, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.e)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %spec.select130, label %bb.bn, label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.bn:                                            ; preds = %bb.bm
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ia)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.49, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.e)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.bj, %bb.bm, %bb.bn, %_ZNK4ncnn3Mat5emptyEv.exit
  %.1 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %bb.bn ], [ 0, %bb.bm ], [ -100, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %_ZN4ncnn3MataSERKS0_.exit102

_ZN4ncnn3MataSERKS0_.exit102:                     ; preds = %bb.aj, %_ZN4ncnn3Mat7releaseEv.exit115, %bb.al, %_ZN4ncnn3Mat7releaseEv.exit112, %bb.aa, %_ZN4ncnn3Mat7releaseEv.exit109, %bb.q, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %_ZNK4ncnn3Mat5emptyEv.exit105.thread, %_ZN4ncnn3MataSERKS0_.exit
  %.2 = phi i32 [ 0, %_ZN4ncnn3MataSERKS0_.exit ], [ %.0, %_ZNK4ncnn3Mat5emptyEv.exit105.thread ], [ %.1, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit112 ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit115 ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit109 ], [ 0, %bb.q ], [ 0, %bb.aa ], [ 0, %bb.al ], [ 0, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN4ncnn3MataSERKS0_.exit104

_ZN4ncnn3MataSERKS0_.exit104:                     ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %bb.d, %_ZN4ncnn3MataSERKS0_.exit102, %bb.n, %bb.b
  %.5 = phi i32 [ %i.j, %bb.b ], [ %i.ba, %bb.n ], [ %.2, %_ZN4ncnn3MataSERKS0_.exit102 ], [ 0, %bb.d ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit ]
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 16 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 15 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 24 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZNK4ncnn7Packing7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit224

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !15   ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !33   ; 22 uses
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq ptr %2, %1
  br i1 %i.r, label %_ZN4ncnn3MataSERKS0_.exit224, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34   ; 2 uses
  %.not.i223 = icmp eq ptr %i.t, null
  br i1 %.not.i223, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = atomicrmw add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34   ; 2 uses
  %.not.i226 = icmp eq ptr %i.w, null
  br i1 %.not.i226, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.i, label %_ZN4ncnn3Mat7releaseEv.exit

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35  ; 3 uses
  %.not3.i = icmp eq ptr %i.aa, null
  %i.ab = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ab), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.k:                                             ; preds = %bb.i
  %.not.i246 = icmp eq ptr %i.ab, null
  br i1 %.not.i246, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.ab) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.l, %bb.k, %bb.g, %bb.h, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ah, i8 0, i64 20, i1 false)
  %i.ak = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.ak, ptr %2, align 8, !tbaa !40
  %i.al = load i64, ptr %i.k, align 8, !tbaa !16
  store i64 %i.al, ptr %i.af, align 8, !tbaa !16
  %i.am = load i32, ptr %i.m, align 8, !tbaa !15
  store i32 %i.am, ptr %i.ag, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load <4 x i32>, ptr %i.aq, align 8, !tbaa !41
  store <4 x i32> %i.ar, ptr %i.ah, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !42
  store i32 %i.at, ptr %i.ai, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.av = load i64, ptr %i.au, align 8, !tbaa !39
  store i64 %i.av, ptr %i.aj, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit224

bb.m:                                             ; preds = %bb.c
  %i.aw = icmp eq i32 %i.n, 1                     ; 2 uses
  %i.ax = icmp eq i32 %i.p, 4                     ; 3 uses
  %spec.select = and i1 %i.aw, %i.ax              ; 3 uses
  %i.ay = icmp eq i32 %i.n, 4
  br i1 %i.ay, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.aw, label %.thread292, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i32 %i.n, label %.thread340 [
    i32 8, label %bb.q
    i32 16, label %bb.r
  ]

.thread292:                                       ; preds = %bb.n
  %i.az = icmp eq i32 %i.p, 8
  %i.ba = icmp eq i32 %i.p, 16
  br label %.thread340

bb.p:                                             ; preds = %bb.m
  %i.bb = icmp eq i32 %i.p, 1
  %i.bc = icmp eq i32 %i.p, 8
  %i.bd = icmp eq i32 %i.p, 16
  br label %.thread340

bb.q:                                             ; preds = %bb.o
  %i.be = icmp eq i32 %i.p, 1
  %i.bf = icmp eq i32 %i.p, 16
  br label %.thread340

bb.r:                                             ; preds = %bb.o
  %i.bg = icmp eq i32 %i.p, 1
  %i.bh = icmp eq i32 %i.p, 8
  br label %.thread340

.thread340:                                       ; preds = %bb.o, %bb.p, %.thread292, %bb.q, %bb.r
  %i.bi = phi i1 [ %i.bf, %bb.q ], [ false, %bb.r ], [ false, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bj = phi i1 [ false, %bb.q ], [ false, %bb.r ], [ false, %.thread292 ], [ %i.bd, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bk = phi i1 [ false, %bb.q ], [ false, %bb.r ], [ %i.ba, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bl = phi i1 [ false, %bb.q ], [ false, %bb.r ], [ false, %.thread292 ], [ %i.bc, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bm = phi i1 [ false, %bb.q ], [ false, %bb.r ], [ %i.az, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bn = phi i1 [ false, %bb.q ], [ false, %bb.r ], [ false, %.thread292 ], [ %i.bb, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bo = phi i1 [ %i.be, %bb.q ], [ false, %bb.r ], [ false, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bp = phi i1 [ %i.ax, %bb.q ], [ false, %bb.r ], [ false, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bq = phi i1 [ false, %bb.q ], [ %i.bg, %bb.r ], [ false, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.br = phi i1 [ false, %bb.q ], [ %i.ax, %bb.r ], [ false, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bs = phi i1 [ false, %bb.q ], [ %i.bh, %bb.r ], [ false, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %or.cond = or i1 %spec.select, %i.bn
  %or.cond3 = or i1 %i.bm, %or.cond
  %or.cond5 = or i1 %i.bo, %or.cond3
  %or.cond7 = or i1 %i.bl, %or.cond5
  %or.cond9 = or i1 %i.bp, %or.cond7
  %or.cond11 = or i1 %i.bk, %or.cond9
  %or.cond13 = or i1 %i.bq, %or.cond11
  %or.cond15 = or i1 %i.bj, %or.cond13
  %or.cond17 = or i1 %i.br, %or.cond15
  %or.cond19 = or i1 %i.bi, %or.cond17
  %or.cond21 = or i1 %i.bs, %or.cond19
  br i1 %or.cond21, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread340
  %i.bt = tail call noundef i32 @_ZNK4ncnn7Packing7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit224

bb.t:                                             ; preds = %.thread340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !43 ; 6 uses
  store i32 %i.bv, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !44 ; 5 uses
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !42 ; 3 uses
  store i32 %i.cb, ptr %i.c, align 4, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !46 ; 3 uses
  switch i32 %i.cd, label %bb.ao [
    i32 1, label %bb.u
    i32 2, label %bb.ae
  ]

bb.u:                                             ; preds = %bb.t
  %i.ce = mul nsw i32 %i.bv, %i.n                 ; 2 uses
  %i.cf = srem i32 %i.ce, %i.p
  %.not214 = icmp eq i32 %i.cf, 0
  %i.cg = icmp eq ptr %2, %1                      ; 2 uses
  br i1 %.not214, label %.thread343.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.cg, label %_ZN4ncnn3MataSERKS0_.exit222, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !34 ; 2 uses
  %.not.i221 = icmp eq ptr %i.ci, null
  br i1 %.not.i221, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = atomicrmw add ptr %i.ci, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !34 ; 2 uses
  %.not.i227 = icmp eq ptr %i.cl, null
  br i1 %.not.i227, label %_ZN4ncnn3Mat7releaseEv.exit229, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cm = atomicrmw add ptr %i.cl, i32 -1 acq_rel, align 4
  %i.cn = icmp eq i32 %i.cm, 1
  br i1 %i.cn, label %bb.aa, label %_ZN4ncnn3Mat7releaseEv.exit229
end_hunk_2
begin_hunk_3_@_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.not.i242 = icmp eq ptr %i.dw, null
  br i1 %.not.i242, label %_ZN4ncnn3Mat7releaseEv.exit232, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @free(ptr noundef nonnull %i.dw) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit232

_ZN4ncnn3Mat7releaseEv.exit232:                   ; preds = %bb.an, %bb.am, %bb.ai, %bb.aj, %bb.al
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.ee, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ec, i8 0, i64 20, i1 false)
  %i.ef = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.ef, ptr %2, align 8, !tbaa !40
  %i.eg = load i64, ptr %i.k, align 8, !tbaa !16
  store i64 %i.eg, ptr %i.ea, align 8, !tbaa !16
  %i.eh = load i32, ptr %i.m, align 8, !tbaa !15
  store i32 %i.eh, ptr %i.eb, align 8, !tbaa !15
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !35
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !35
  %i.el = load <4 x i32>, ptr %i.cc, align 8, !tbaa !41
  store <4 x i32> %i.el, ptr %i.ec, align 8, !tbaa !41
  %i.em = load i32, ptr %i.ca, align 8, !tbaa !42
  store i32 %i.em, ptr %i.ed, align 8, !tbaa !42
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !39
  store i64 %i.eo, ptr %i.ee, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit222

bb.ao:                                            ; preds = %bb.t
  %i.ep = add i32 %i.cd, -3
  %or.cond23 = icmp ult i32 %i.ep, 2
  br i1 %or.cond23, label %bb.ap, label %_ZN4ncnn3MataSERKS0_.exit222

bb.ap:                                            ; preds = %bb.ao
  %i.eq = mul nsw i32 %i.cb, %i.n
  %i.er = srem i32 %i.eq, %i.p
  %.not216 = icmp eq i32 %i.er, 0
  br i1 %.not216, label %bb.cf, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.es = icmp eq ptr %2, %1
  br i1 %i.es, label %_ZN4ncnn3MataSERKS0_.exit222, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !34 ; 2 uses
  %.not.i217 = icmp eq ptr %i.eu, null
  br i1 %.not.i217, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ev = atomicrmw add ptr %i.eu, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !34 ; 2 uses
  %.not.i233 = icmp eq ptr %i.ex, null
  br i1 %.not.i233, label %_ZN4ncnn3Mat7releaseEv.exit235, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ey = atomicrmw add ptr %i.ex, i32 -1 acq_rel, align 4
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %bb.av, label %_ZN4ncnn3Mat7releaseEv.exit235

bb.av:                                            ; preds = %bb.au
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !35 ; 3 uses
  %.not3.i234 = icmp eq ptr %i.fb, null
  %i.fc = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i234, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !38
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  tail call void %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef %i.fc), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit235

bb.ax:                                            ; preds = %bb.av
  %.not.i240 = icmp eq ptr %i.fc, null
  br i1 %.not.i240, label %_ZN4ncnn3Mat7releaseEv.exit235, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @free(ptr noundef nonnull %i.fc) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit235

_ZN4ncnn3Mat7releaseEv.exit235:                   ; preds = %bb.ay, %bb.ax, %bb.at, %bb.au, %bb.aw
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.fk, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fi, i8 0, i64 20, i1 false)
  %i.fl = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.fl, ptr %2, align 8, !tbaa !40
  %i.fm = load i64, ptr %i.k, align 8, !tbaa !16
  store i64 %i.fm, ptr %i.fg, align 8, !tbaa !16
  %i.fn = load i32, ptr %i.m, align 8, !tbaa !15
  store i32 %i.fn, ptr %i.fh, align 8, !tbaa !15
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !35
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !35
  %i.fr = load <4 x i32>, ptr %i.cc, align 8, !tbaa !41
  store <4 x i32> %i.fr, ptr %i.fi, align 8, !tbaa !41
  %i.fs = load i32, ptr %i.ca, align 8, !tbaa !42
  store i32 %i.fs, ptr %i.fj, align 8, !tbaa !42
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !39
  store i64 %i.fu, ptr %i.fk, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit222

.thread343.thread:                                ; preds = %bb.u
  br i1 %i.cg, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.az

bb.az:                                            ; preds = %.thread343.thread
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !34 ; 2 uses
  %.not.i = icmp eq ptr %i.fw, null
  br i1 %.not.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fx = atomicrmw add ptr %i.fw, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !34 ; 2 uses
  %.not.i236 = icmp eq ptr %i.fz, null
  br i1 %.not.i236, label %_ZN4ncnn3Mat7releaseEv.exit238, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ga = atomicrmw add ptr %i.fz, i32 -1 acq_rel, align 4
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %bb.bd, label %_ZN4ncnn3Mat7releaseEv.exit238

bb.bd:                                            ; preds = %bb.bc
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !35 ; 3 uses
  %.not3.i237 = icmp eq ptr %i.gd, null
  %i.ge = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i237, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !38
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  tail call void %i.gh(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef %i.ge), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit238

bb.bf:                                            ; preds = %bb.bd
  %.not.i239 = icmp eq ptr %i.ge, null
  br i1 %.not.i239, label %_ZN4ncnn3Mat7releaseEv.exit238, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @free(ptr noundef nonnull %i.ge) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit238

_ZN4ncnn3Mat7releaseEv.exit238:                   ; preds = %bb.bg, %bb.bf, %bb.bb, %bb.bc, %bb.be
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.gl, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.gi, i8 0, i64 20, i1 false)
  %i.gm = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.gm, ptr %2, align 8, !tbaa !40
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !35
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !35
  %i.gq = load i32, ptr %i.cc, align 8, !tbaa !46
  store i32 %i.gq, ptr %i.gi, align 8, !tbaa !46
  %i.gr = load <2 x i32>, ptr %i.bw, align 8, !tbaa !41
  store <2 x i32> %i.gr, ptr %i.gj, align 8, !tbaa !41
  %i.gs = load i32, ptr %i.ca, align 8, !tbaa !42
  store i32 %i.gs, ptr %i.gk, align 8, !tbaa !42
  %.pre = load i32, ptr %i.a, align 4, !tbaa !41
  %.pre373 = load i32, ptr %i.o, align 8, !tbaa !33
  %.pre375 = mul nsw i32 %.pre, %i.n
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %.thread343.thread, %_ZN4ncnn3Mat7releaseEv.exit238
  %.pre-phi = phi i32 [ %.pre375, %_ZN4ncnn3Mat7releaseEv.exit238 ], [ %i.ce, %.thread343.thread ]
  %i.gt = phi i32 [ %.pre373, %_ZN4ncnn3Mat7releaseEv.exit238 ], [ %i.p, %.thread343.thread ] ; 3 uses
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gu = load i64, ptr %.in, align 8, !tbaa !39
  %i.gv = sdiv i32 %.pre-phi, %i.gt
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !43
  %i.gx = sext i32 %i.n to i64                    ; 2 uses
  %i.gy = mul i64 %i.gu, %i.gx
  %4 = sext i32 %i.gt to i64                      ; 2 uses
  %5 = udiv i64 %i.gy, %4
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %5, ptr %6, align 8, !tbaa !39
  %7 = udiv i64 %i.l, %i.gx
  %i.gz = mul i64 %7, %4
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !16
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.gt, ptr %i.hb, align 8, !tbaa !15
  br label %_ZN4ncnn3MataSERKS0_.exit222

.thread343.thread372:                             ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 %i.dl, ptr %i.d, align 4, !tbaa !41
  %i.hc = sext i32 %i.n to i64
  %i.hd = udiv i64 %i.l, %i.hc
  %i.he = sext i32 %i.p to i64
  %i.hf = mul i64 %i.hd, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !48
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bv, i32 noundef %i.dl, i64 noundef %i.hf, i32 noundef %i.p, ptr noundef %i.hh)
  %i.hi = load ptr, ptr %2, align 8, !tbaa !36
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZNK4ncnn3Mat5emptyEv.exit225.thread, label %_ZNK4ncnn3Mat5emptyEv.exit225

_ZNK4ncnn3Mat5emptyEv.exit225:                    ; preds = %.thread343.thread372
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !39
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !42
  %i.ho = sext i32 %i.hn to i64
  %i.hp = mul i64 %i.hl, %i.ho
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %_ZNK4ncnn3Mat5emptyEv.exit225.thread, label %bb.bh

bb.bh:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit225
  br i1 %spec.select, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !49
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.hs)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  br i1 %i.bn, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.hu)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.24, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  br i1 %i.bm, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.hw)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.25, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  br i1 %i.bo, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.hy)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.26, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  br i1 %i.bl, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ia)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.27, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.bp, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ic)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.28, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  br i1 %i.bk, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ie)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.29, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  br i1 %i.bq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ig)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.30, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  br i1 %i.bj, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ii)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.31, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %i.br, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ik)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.32, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  br i1 %i.bi, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.im = load i32, ptr %i.il, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.im)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.33, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  br i1 %i.bs, label %bb.ce, label %_ZNK4ncnn3Mat5emptyEv.exit225.thread

bb.ce:                                            ; preds = %bb.cd
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !49
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.io)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.34, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %_ZNK4ncnn3Mat5emptyEv.exit225.thread

_ZNK4ncnn3Mat5emptyEv.exit225.thread:             ; preds = %.thread343.thread372, %bb.cd, %bb.ce, %_ZNK4ncnn3Mat5emptyEv.exit225
  %.0 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit225 ], [ 0, %bb.ce ], [ 0, %bb.cd ], [ -100, %.thread343.thread372 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %_ZN4ncnn3MataSERKS0_.exit222

bb.cf:                                            ; preds = %bb.ap
  %i.ip = icmp eq i32 %i.cd, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.iq = mul nsw i32 %i.bx, %i.bv
  %i.ir = mul nsw i32 %i.iq, %i.bz
  store i32 %i.ir, ptr %i.e, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.is = mul nsw i32 %i.cb, %i.n
  %i.it = sdiv i32 %i.is, %i.p                    ; 3 uses
  store i32 %i.it, ptr %i.f, align 4, !tbaa !41
  %i.iu = sext i32 %i.n to i64
  %i.iv = udiv i64 %i.l, %i.iu
  %i.iw = sext i32 %i.p to i64
  %i.ix = mul i64 %i.iv, %i.iw                    ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !48 ; 2 uses
  br i1 %i.ip, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bv, i32 noundef %i.bx, i32 noundef %i.it, i64 noundef %i.ix, i32 noundef %i.p, ptr noundef %i.iz)
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bv, i32 noundef %i.bx, i32 noundef %i.bz, i32 noundef %i.it, i64 noundef %i.ix, i32 noundef %i.p, ptr noundef %i.iz)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ja = load ptr, ptr %2, align 8, !tbaa !36
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.ci
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !39
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !42
  %i.jg = sext i32 %i.jf to i64
  %i.jh = mul i64 %i.jd, %i.jg
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.cj

bb.cj:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  br i1 %spec.select, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
end_hunk_3
