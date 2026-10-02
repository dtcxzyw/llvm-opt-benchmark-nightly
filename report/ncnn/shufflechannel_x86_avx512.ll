Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/shufflechannel_x86_avx512?download=true
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.ncnn::Option" = type { i8, i8, i8, i8, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%"class.ncnn::Mat" = type { ptr, ptr, i64, i32, ptr, i32, i32, i32, i32, i32, i64 }

$_ZN4ncnn25ShuffleChannel_x86_avx512D0Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN4ncnn25ShuffleChannel_x86_avx512E = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn25ShuffleChannel_x86_avx512E, ptr @_ZN4ncnn5LayerD2Ev, ptr @_ZN4ncnn25ShuffleChannel_x86_avx512D0Ev, ptr @_ZN4ncnn14ShuffleChannel10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn25ShuffleChannel_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn25ShuffleChannel_x86_avx512E = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn25ShuffleChannel_x86_avx512E, ptr @_ZTIN4ncnn14ShuffleChannelE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn25ShuffleChannel_x86_avx512E = hidden constant [35 x i8] c"N4ncnn25ShuffleChannel_x86_avx512E\00", align 1
@_ZTIN4ncnn14ShuffleChannelE = external constant ptr
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [38 x i8] c"Elembits = %d is not implemented yet.\00", align 1

@_ZN4ncnn25ShuffleChannel_x86_avx512C1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn25ShuffleChannel_x86_avx512C2Ev

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn25ShuffleChannel_x86_avx512D0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #15
  ret void
}

declare noundef i32 @_ZN4ncnn14ShuffleChannel10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn25ShuffleChannel_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %7 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %10 = alloca %"class.ncnn::Option", align 8     ; 7 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119  ; 4 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 17 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !120
  %.tr.i = trunc i64 %i.d to i32
  %i.e = shl i32 %.tr.i, 3
  %i.f = sdiv i32 %i.e, %i.b                      ; 2 uses
  %.not = icmp eq i32 %i.f, 32
  br i1 %.not, label %bb.b, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.a, %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.g = phi i32 [ %i.f, %_ZNK4ncnn3Mat8elembitsEv.exit ], [ 0, %bb.a ]
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str, i32 noundef %i.g) #16 ; 0 uses
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !122
  %fputc = tail call i32 @fputc(i32 10, ptr %i.j) ; 0 uses
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.b:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !123
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !124
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !126  ; 8 uses
  %i.s = mul i32 %i.n, %i.l
  %i.t = mul i32 %i.s, %i.p                       ; 55 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.v = load i32, ptr %i.u, align 4, !tbaa !128
  %.not953 = icmp eq i32 %i.v, 0
  br i1 %.not953, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = mul nsw i32 %i.r, %i.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.y = load i32, ptr %i.x, align 8, !tbaa !129
  %i.z = sdiv i32 %i.w, %i.y
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !129
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi i32 [ %i.z, %bb.c ], [ %i.ab, %bb.d ] ; 14 uses
  %13 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %i.r, i64 1
  %14 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %i.ac, i64 1
  %15 = sdiv <2 x i32> %13, %14                   ; 2 uses
  %16 = shufflevector <2 x i32> %15, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %17 = extractelement <2 x i32> %15, i64 1       ; 37 uses
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp eq ptr %2, %1
  br i1 %i.ae, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !130 ; 2 uses
  %.not.i974 = icmp eq ptr %i.ag, null
  br i1 %.not.i974, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = atomicrmw add ptr %i.ag, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !130 ; 2 uses
  %.not.i1504 = icmp eq ptr %i.aj, null
  br i1 %.not.i1504, label %_ZN4ncnn3Mat7releaseEv.exit1506, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = atomicrmw add ptr %i.aj, i32 -1 acq_rel, align 4
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.k, label %_ZN4ncnn3Mat7releaseEv.exit1506

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !131 ; 3 uses
  %.not3.i1505 = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %2, align 8, !tbaa !132   ; 3 uses
  br i1 %.not3.i1505, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ao), !inline_history !28
  br label %_ZN4ncnn3Mat7releaseEv.exit1506

bb.m:                                             ; preds = %bb.k
  %.not.i1507 = icmp eq ptr %i.ao, null
  br i1 %.not.i1507, label %_ZN4ncnn3Mat7releaseEv.exit1506, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.ao) #14
  br label %_ZN4ncnn3Mat7releaseEv.exit1506

_ZN4ncnn3Mat7releaseEv.exit1506:                  ; preds = %bb.n, %bb.m, %bb.i, %bb.j, %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.au, i8 0, i64 20, i1 false)
  %i.ax = load <2 x ptr>, ptr %1, align 8, !tbaa !134
  store <2 x ptr> %i.ax, ptr %2, align 8, !tbaa !134
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !120
  store i64 %i.ay, ptr %i.as, align 8, !tbaa !120
  %i.az = load i32, ptr %i.a, align 8, !tbaa !119
  store i32 %i.az, ptr %i.at, align 8, !tbaa !119
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !131
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !131
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.be = load <4 x i32>, ptr %i.bd, align 8, !tbaa !135
  store <4 x i32> %i.be, ptr %i.au, align 8, !tbaa !135
  %i.bf = load i32, ptr %i.q, align 8, !tbaa !126
  store i32 %i.bf, ptr %i.av, align 8, !tbaa !126
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !133
  store i64 %i.bh, ptr %i.aw, align 8, !tbaa !133
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.o:                                             ; preds = %bb.e
  switch i32 %i.b, label %bb.ej [
    i32 16, label %bb.p
    i32 8, label %bb.be
    i32 4, label %bb.cv
  ]

bb.p:                                             ; preds = %bb.o
  %i.bi = icmp ne i32 %i.ac, 2                    ; 2 uses
  %i.bj = and i32 %i.r, 1
  %.not954 = icmp eq i32 %i.bj, 0
  %or.cond = select i1 %i.bi, i1 true, i1 %.not954
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !137
  tail call void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.bl)
  %i.bm = load ptr, ptr %2, align 8, !tbaa !132   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZNK4ncnn3Mat5emptyEv.exit981

_ZNK4ncnn3Mat5emptyEv.exit981:                    ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !133 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !126
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul i64 %i.bp, %i.bs
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_ZN4ncnn3MataSERKS0_.exit, label %.preheader2935

.preheader2935:                                   ; preds = %_ZNK4ncnn3Mat5emptyEv.exit981
  %i.bv = icmp sgt i32 %17, 0
  br i1 %i.bv, label %_ZN4ncnn3MatD2Ev.exit1111.lr.ph, label %_ZN4ncnn3MatD2Ev.exit1106

_ZN4ncnn3MatD2Ev.exit1111.lr.ph:                  ; preds = %.preheader2935
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.by = icmp sgt i32 %i.t, 0
  br i1 %i.by, label %_ZN4ncnn3MatD2Ev.exit1111.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1111.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit1111.lr.ph
  %i.bz = zext nneg i32 %17 to i64                ; 2 uses
  %xtraiter3337 = and i32 %i.t, 1
  %i.ca = icmp eq i32 %i.t, 1
  %unroll_iter3341 = and i32 %i.t, 2147483646
  %lcmp.mod3339.not = icmp eq i32 %xtraiter3337, 0
  %lcmp.mod3340 = trunc i32 %i.t to i1
  br label %_ZN4ncnn3MatD2Ev.exit1111

_ZN4ncnn3MatD2Ev.exit1106.loopexit:               ; preds = %._crit_edge3046
  %.pre3179 = load ptr, ptr %2, align 8, !tbaa !132, !noalias !138
  %.pre3180 = load i64, ptr %i.bo, align 8, !tbaa !133, !noalias !138
  br label %_ZN4ncnn3MatD2Ev.exit1106

_ZN4ncnn3MatD2Ev.exit1106:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1106.loopexit, %.preheader2935
  %i.cb = phi i64 [ %.pre3180, %_ZN4ncnn3MatD2Ev.exit1106.loopexit ], [ %i.bp, %.preheader2935 ]
  %i.cc = phi ptr [ %.pre3179, %_ZN4ncnn3MatD2Ev.exit1106.loopexit ], [ %i.bm, %.preheader2935 ]
  %i.cd = icmp sgt i32 %i.t, 0
  br i1 %i.cd, label %.lr.ph3052.preheader, label %_ZN4ncnn3MataSERKS0_.exit

.lr.ph3052.preheader:                             ; preds = %_ZN4ncnn3MatD2Ev.exit1106
  %i.ce = load ptr, ptr %1, align 8, !tbaa !132, !noalias !139 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !133, !noalias !139 ; 2 uses
  %i.ch = shl nsw i32 %17, 1
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = mul i64 %i.cg, %i.ci
  %i.ck = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !139 ; 2 uses
  %i.cl = mul i64 %i.cj, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 2 uses
  %i.co = mul i64 %i.cb, %i.ci
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !120, !noalias !138
  %i.cr = mul i64 %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cr ; 2 uses
  %i.ct = sext i32 %17 to i64
  %i.cu = mul i64 %i.cg, %i.ct
  %i.cv = mul i64 %i.cu, %i.ck
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cv ; 2 uses
  %xtraiter3343 = and i32 %i.t, 1
  %i.cx = icmp eq i32 %i.t, 1
  br i1 %i.cx, label %.lr.ph3052.epil.preheader, label %.lr.ph3052.preheader.new

.lr.ph3052.preheader.new:                         ; preds = %.lr.ph3052.preheader
  %unroll_iter3347 = and i32 %i.t, 2147483646
  br label %.lr.ph3052

_ZN4ncnn3MatD2Ev.exit1111:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1111.preheader, %._crit_edge3046
  %indvars.iv3152 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1111.preheader ], [ %indvars.iv.next3153, %._crit_edge3046 ] ; 4 uses
  %i.cy = load ptr, ptr %1, align 8, !tbaa !132, !noalias !140 ; 3 uses
  %i.cz = load i64, ptr %i.bw, align 8, !tbaa !133, !noalias !140 ; 3 uses
  %i.da = mul i64 %i.cz, %indvars.iv3152
  %i.db = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !140 ; 3 uses
  %i.dc = mul i64 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dc ; 2 uses
  %i.de = add nuw nsw i64 %indvars.iv3152, %i.bz  ; 2 uses
  %i.df = mul i64 %i.cz, %i.de
  %i.dg = mul i64 %i.df, %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dg ; 2 uses
  %i.di = add nuw nsw i64 %i.de, 1
  %i.dj = mul i64 %i.cz, %i.di
  %i.dk = mul i64 %i.dj, %i.db
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dk ; 2 uses
  %i.dm = shl nuw nsw i64 %indvars.iv3152, 1      ; 2 uses
  %i.dn = load ptr, ptr %2, align 8, !tbaa !132, !noalias !141 ; 2 uses
  %i.do = load i64, ptr %i.bo, align 8, !tbaa !133, !noalias !141 ; 2 uses
  %i.dp = mul i64 %i.do, %i.dm
  %i.dq = load i64, ptr %i.bx, align 8, !tbaa !120, !noalias !141 ; 2 uses
  %i.dr = mul i64 %i.dp, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dr ; 2 uses
  %i.dt = or disjoint i64 %i.dm, 1
  %i.du = mul i64 %i.do, %i.dt
  %i.dv = mul i64 %i.du, %i.dq
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dv ; 2 uses
  br i1 %i.ca, label %.epil.preheader3336, label %_ZN4ncnn3MatD2Ev.exit1111.new

._crit_edge3046.unr-lcssa:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1111.new
  br i1 %lcmp.mod3339.not, label %._crit_edge3046, label %.epil.preheader3336

.epil.preheader3336:                              ; preds = %._crit_edge3046.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit1111
  %.08363044.epil.init = phi ptr [ %i.dd, %_ZN4ncnn3MatD2Ev.exit1111 ], [ %i.ex, %._crit_edge3046.unr-lcssa ]
  %.08453043.epil.init = phi ptr [ %i.dh, %_ZN4ncnn3MatD2Ev.exit1111 ], [ %i.ey, %._crit_edge3046.unr-lcssa ]
  %.08463042.epil.init = phi ptr [ %i.dl, %_ZN4ncnn3MatD2Ev.exit1111 ], [ %i.ez, %._crit_edge3046.unr-lcssa ]
  %.08473041.epil.init = phi ptr [ %i.ds, %_ZN4ncnn3MatD2Ev.exit1111 ], [ %i.fa, %._crit_edge3046.unr-lcssa ]
  %.08483040.epil.init = phi ptr [ %i.dw, %_ZN4ncnn3MatD2Ev.exit1111 ], [ %i.fb, %._crit_edge3046.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3340)
  %i.dx = load <16 x float>, ptr %.08363044.epil.init, align 1, !tbaa !142 ; 2 uses
  %i.dy = load <8 x i64>, ptr %.08453043.epil.init, align 1, !tbaa !142
  %i.dz = load <8 x i64>, ptr %.08463042.epil.init, align 1, !tbaa !142
  %i.ea = shufflevector <8 x i64> %i.dy, <8 x i64> %i.dz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.eb = bitcast <8 x i64> %i.ea to <16 x float> ; 2 uses
  %i.ec = shufflevector <16 x float> %i.dx, <16 x float> %i.eb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ed = shufflevector <16 x float> %i.dx, <16 x float> %i.eb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x float> %i.ec, ptr %.08473041.epil.init, align 1, !tbaa !142
  store <16 x float> %i.ed, ptr %.08483040.epil.init, align 1, !tbaa !142
  br label %._crit_edge3046

._crit_edge3046:                                  ; preds = %._crit_edge3046.unr-lcssa, %.epil.preheader3336
  %indvars.iv.next3153 = add nuw nsw i64 %indvars.iv3152, 1 ; 2 uses
  %exitcond3156.not = icmp eq i64 %indvars.iv.next3153, %i.bz
  br i1 %exitcond3156.not, label %_ZN4ncnn3MatD2Ev.exit1106.loopexit, label %_ZN4ncnn3MatD2Ev.exit1111, !llvm.loop !37

_ZN4ncnn3MatD2Ev.exit1111.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit1111, %_ZN4ncnn3MatD2Ev.exit1111.new
  %.08363044 = phi ptr [ %i.ex, %_ZN4ncnn3MatD2Ev.exit1111.new ], [ %i.dd, %_ZN4ncnn3MatD2Ev.exit1111 ] ; 3 uses
  %.08453043 = phi ptr [ %i.ey, %_ZN4ncnn3MatD2Ev.exit1111.new ], [ %i.dh, %_ZN4ncnn3MatD2Ev.exit1111 ] ; 3 uses
  %.08463042 = phi ptr [ %i.ez, %_ZN4ncnn3MatD2Ev.exit1111.new ], [ %i.dl, %_ZN4ncnn3MatD2Ev.exit1111 ] ; 3 uses
  %.08473041 = phi ptr [ %i.fa, %_ZN4ncnn3MatD2Ev.exit1111.new ], [ %i.ds, %_ZN4ncnn3MatD2Ev.exit1111 ] ; 3 uses
  %.08483040 = phi ptr [ %i.fb, %_ZN4ncnn3MatD2Ev.exit1111.new ], [ %i.dw, %_ZN4ncnn3MatD2Ev.exit1111 ] ; 3 uses
  %niter3342 = phi i32 [ %niter3342.next.1, %_ZN4ncnn3MatD2Ev.exit1111.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1111 ]
  %i.ee = load <16 x float>, ptr %.08363044, align 1, !tbaa !142 ; 2 uses
  %i.ef = load <8 x i64>, ptr %.08453043, align 1, !tbaa !142
  %i.eg = load <8 x i64>, ptr %.08463042, align 1, !tbaa !142
  %i.eh = shufflevector <8 x i64> %i.ef, <8 x i64> %i.eg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.ei = bitcast <8 x i64> %i.eh to <16 x float> ; 2 uses
  %i.ej = shufflevector <16 x float> %i.ee, <16 x float> %i.ei, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ek = shufflevector <16 x float> %i.ee, <16 x float> %i.ei, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x float> %i.ej, ptr %.08473041, align 1, !tbaa !142
  store <16 x float> %i.ek, ptr %.08483040, align 1, !tbaa !142
  %i.el = getelementptr inbounds nuw i8, ptr %.08363044, i64 64
  %i.em = getelementptr inbounds nuw i8, ptr %.08453043, i64 64
  %i.en = getelementptr inbounds nuw i8, ptr %.08463042, i64 64
  %i.eo = getelementptr inbounds nuw i8, ptr %.08473041, i64 64
  %i.ep = getelementptr inbounds nuw i8, ptr %.08483040, i64 64
  %i.eq = load <16 x float>, ptr %i.el, align 1, !tbaa !142 ; 2 uses
  %i.er = load <8 x i64>, ptr %i.em, align 1, !tbaa !142
  %i.es = load <8 x i64>, ptr %i.en, align 1, !tbaa !142
  %i.et = shufflevector <8 x i64> %i.er, <8 x i64> %i.es, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.eu = bitcast <8 x i64> %i.et to <16 x float> ; 2 uses
  %i.ev = shufflevector <16 x float> %i.eq, <16 x float> %i.eu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ew = shufflevector <16 x float> %i.eq, <16 x float> %i.eu, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x float> %i.ev, ptr %i.eo, align 1, !tbaa !142
  store <16 x float> %i.ew, ptr %i.ep, align 1, !tbaa !142
  %i.ex = getelementptr inbounds nuw i8, ptr %.08363044, i64 128 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.08453043, i64 128 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.08463042, i64 128 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.08473041, i64 128 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.08483040, i64 128 ; 2 uses
  %niter3342.next.1 = add i32 %niter3342, 2       ; 2 uses
  %niter3342.ncmp.1 = icmp eq i32 %niter3342.next.1, %unroll_iter3341
  br i1 %niter3342.ncmp.1, label %._crit_edge3046.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit1111.new, !llvm.loop !38

.lr.ph3052:                                       ; preds = %.lr.ph3052, %.lr.ph3052.preheader.new
  %.08503051 = phi ptr [ %i.cw, %.lr.ph3052.preheader.new ], [ %i.fp, %.lr.ph3052 ] ; 3 uses
  %.08593050 = phi ptr [ %i.cn, %.lr.ph3052.preheader.new ], [ %i.fq, %.lr.ph3052 ] ; 3 uses
  %.08603049 = phi ptr [ %i.cs, %.lr.ph3052.preheader.new ], [ %i.fr, %.lr.ph3052 ] ; 5 uses
  %niter3348 = phi i32 [ 0, %.lr.ph3052.preheader.new ], [ %niter3348.next.1, %.lr.ph3052 ]
  %i.fc = load <8 x float>, ptr %.08503051, align 1, !tbaa !142 ; 2 uses
  %i.fd = load <8 x float>, ptr %.08593050, align 1, !tbaa !142 ; 2 uses
  %i.fe = shufflevector <8 x float> %i.fc, <8 x float> %i.fd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ff = shufflevector <8 x float> %i.fc, <8 x float> %i.fd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.fe, ptr %.08603049, align 1, !tbaa !142
  %i.fg = getelementptr inbounds nuw i8, ptr %.08603049, i64 32
  store <8 x float> %i.ff, ptr %i.fg, align 1, !tbaa !142
  %i.fh = getelementptr inbounds nuw i8, ptr %.08503051, i64 64
  %i.fi = getelementptr inbounds nuw i8, ptr %.08593050, i64 64
  %i.fj = getelementptr inbounds nuw i8, ptr %.08603049, i64 64
  %i.fk = load <8 x float>, ptr %i.fh, align 1, !tbaa !142 ; 2 uses
  %i.fl = load <8 x float>, ptr %i.fi, align 1, !tbaa !142 ; 2 uses
  %i.fm = shufflevector <8 x float> %i.fk, <8 x float> %i.fl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fn = shufflevector <8 x float> %i.fk, <8 x float> %i.fl, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.fm, ptr %i.fj, align 1, !tbaa !142
  %i.fo = getelementptr inbounds nuw i8, ptr %.08603049, i64 96
  store <8 x float> %i.fn, ptr %i.fo, align 1, !tbaa !142
  %i.fp = getelementptr inbounds nuw i8, ptr %.08503051, i64 128 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.08593050, i64 128 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.08603049, i64 128 ; 2 uses
  %niter3348.next.1 = add i32 %niter3348, 2       ; 2 uses
  %niter3348.ncmp.1 = icmp eq i32 %niter3348.next.1, %unroll_iter3347
  br i1 %niter3348.ncmp.1, label %_ZN4ncnn3MataSERKS0_.exit.loopexit3290.unr-lcssa, label %.lr.ph3052, !llvm.loop !39

bb.r:                                             ; preds = %bb.p
  %i.fs = icmp sgt i32 %i.ac, 4
  br i1 %i.fs, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ft = srem i32 %i.r, %i.ac
  %.not955 = icmp eq i32 %i.ft, 0
  br i1 %.not955, label %bb.az, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !146
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !147
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 0, ptr %i.fz, align 8, !tbaa !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fy, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.gc, align 8, !tbaa !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gb, i8 0, i64 28, i1 false)
  %i.gd = invoke noundef i32 @_ZNK4ncnn14ShuffleChannel7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.v unwind label %bb.x       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %.not956 = icmp eq i32 %i.gd, 0
  br i1 %.not956, label %bb.ae, label %bb.af

bb.w:                                             ; preds = %bb.t
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.x:                                             ; preds = %bb.ae, %bb.u
  %i.gf = landingpad { ptr, i32 }
          cleanup
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !130 ; 2 uses
  %.not.i1176 = icmp eq ptr %i.gg, null
  br i1 %.not.i1176, label %_ZN4ncnn3MatD2Ev.exit1103, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gh = atomicrmw add ptr %i.gg, i32 -1 acq_rel, align 4
  %i.gi = icmp eq i32 %i.gh, 1
  br i1 %i.gi, label %bb.z, label %_ZN4ncnn3MatD2Ev.exit1103

bb.z:                                             ; preds = %bb.y
  %i.gj = load ptr, ptr %i.gb, align 8, !tbaa !131 ; 3 uses
  %.not3.i1177 = icmp eq ptr %i.gj, null
  %i.gk = load ptr, ptr %6, align 8, !tbaa !132   ; 3 uses
  br i1 %.not3.i1177, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !27
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  invoke void %i.gn(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef %i.gk)
          to label %_ZN4ncnn3MatD2Ev.exit1103 unwind label %bb.ad, !inline_history !28

bb.ab:                                            ; preds = %bb.z
  %.not.i1670 = icmp eq ptr %i.gk, null
  br i1 %.not.i1670, label %_ZN4ncnn3MatD2Ev.exit1103, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef nonnull %i.gk) #14
  br label %_ZN4ncnn3MatD2Ev.exit1103

bb.ad:                                            ; preds = %bb.aa
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit1103:                        ; preds = %bb.y, %bb.x, %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.as

bb.ae:                                            ; preds = %bb.v
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.af unwind label %bb.x

bb.af:                                            ; preds = %bb.ae, %bb.v
  %i.gq = load ptr, ptr %i.ga, align 8, !tbaa !130 ; 2 uses
  %.not.i1180 = icmp eq ptr %i.gq, null
  br i1 %.not.i1180, label %_ZN4ncnn3MatD2Ev.exit1102, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gr = atomicrmw add ptr %i.gq, i32 -1 acq_rel, align 4
  %i.gs = icmp eq i32 %i.gr, 1
  br i1 %i.gs, label %bb.ah, label %_ZN4ncnn3MatD2Ev.exit1102

bb.ah:                                            ; preds = %bb.ag
  %i.gt = load ptr, ptr %i.gb, align 8, !tbaa !131 ; 3 uses
  %.not3.i1181 = icmp eq ptr %i.gt, null
  %i.gu = load ptr, ptr %6, align 8, !tbaa !132   ; 3 uses
  br i1 %.not3.i1181, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !27
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  invoke void %i.gx(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef %i.gu)
          to label %_ZN4ncnn3MatD2Ev.exit1102 unwind label %bb.al, !inline_history !28

bb.aj:                                            ; preds = %bb.ah
  %.not.i1668 = icmp eq ptr %i.gu, null
  br i1 %.not.i1668, label %_ZN4ncnn3MatD2Ev.exit1102, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.gu) #14
  br label %_ZN4ncnn3MatD2Ev.exit1102

bb.al:                                            ; preds = %bb.ai
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit1102:                        ; preds = %bb.ag, %bb.af, %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.ha = load ptr, ptr %i.fx, align 8, !tbaa !130 ; 2 uses
  %.not.i1184 = icmp eq ptr %i.ha, null
  br i1 %.not.i1184, label %_ZN4ncnn3MatD2Ev.exit1101, label %bb.am

bb.am:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1102
  %i.hb = atomicrmw add ptr %i.ha, i32 -1 acq_rel, align 4
  %i.hc = icmp eq i32 %i.hb, 1
  br i1 %i.hc, label %bb.an, label %_ZN4ncnn3MatD2Ev.exit1101

bb.an:                                            ; preds = %bb.am
  %i.hd = load ptr, ptr %i.fy, align 8, !tbaa !131 ; 3 uses
  %.not3.i1185 = icmp eq ptr %i.hd, null
  %i.he = load ptr, ptr %5, align 8, !tbaa !132   ; 3 uses
  br i1 %.not3.i1185, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !27
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8
  invoke void %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, ptr noundef %i.he)
          to label %_ZN4ncnn3MatD2Ev.exit1101 unwind label %bb.ar, !inline_history !28

bb.ap:                                            ; preds = %bb.an
  %.not.i1666 = icmp eq ptr %i.he, null
  br i1 %.not.i1666, label %_ZN4ncnn3MatD2Ev.exit1101, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.he) #14
  br label %_ZN4ncnn3MatD2Ev.exit1101

bb.ar:                                            ; preds = %bb.ao
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit1101:                        ; preds = %bb.am, %_ZN4ncnn3MatD2Ev.exit1102, %bb.ao, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.as:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1103, %bb.w
  %.pn = phi { ptr, i32 } [ %i.gf, %_ZN4ncnn3MatD2Ev.exit1103 ], [ %i.ge, %bb.w ]
  %i.hk = load ptr, ptr %i.fx, align 8, !tbaa !130 ; 2 uses
  %.not.i1188 = icmp eq ptr %i.hk, null
  br i1 %.not.i1188, label %_ZN4ncnn3MatD2Ev.exit1100, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hl = atomicrmw add ptr %i.hk, i32 -1 acq_rel, align 4
  %i.hm = icmp eq i32 %i.hl, 1
  br i1 %i.hm, label %bb.au, label %_ZN4ncnn3MatD2Ev.exit1100

bb.au:                                            ; preds = %bb.at
  %i.hn = load ptr, ptr %i.fy, align 8, !tbaa !131 ; 3 uses
  %.not3.i1189 = icmp eq ptr %i.hn, null
  %i.ho = load ptr, ptr %5, align 8, !tbaa !132   ; 3 uses
  br i1 %.not3.i1189, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !27
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  invoke void %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef %i.ho)
          to label %_ZN4ncnn3MatD2Ev.exit1100 unwind label %bb.ay, !inline_history !28

bb.aw:                                            ; preds = %bb.au
  %.not.i1664 = icmp eq ptr %i.ho, null
  br i1 %.not.i1664, label %_ZN4ncnn3MatD2Ev.exit1100, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.ho) #14
  br label %_ZN4ncnn3MatD2Ev.exit1100

bb.ay:                                            ; preds = %bb.av
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  call void @__clang_call_terminate(ptr %i.ht) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit1100:                        ; preds = %bb.at, %bb.as, %bb.av, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.ek

bb.az:                                            ; preds = %bb.s
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !137
  tail call void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.hv)
  %i.hw = load ptr, ptr %2, align 8, !tbaa !132   ; 4 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZNK4ncnn3Mat5emptyEv.exit980

_ZNK4ncnn3Mat5emptyEv.exit980:                    ; preds = %bb.az
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !133 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !126
  %i.ic = sext i32 %i.ib to i64
  %i.id = mul i64 %i.hz, %i.ic
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit980
  br i1 %i.bi, label %bb.bb, label %.preheader2932

.preheader2932:                                   ; preds = %bb.ba
  %i.if = icmp sgt i32 %17, 0
  br i1 %i.if, label %_ZN4ncnn3MatD2Ev.exit1099.lr.ph, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1099.lr.ph:                  ; preds = %.preheader2932
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ii = icmp sgt i32 %i.t, 0
  br i1 %i.ii, label %_ZN4ncnn3MatD2Ev.exit1099.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1099.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit1099.lr.ph
  %i.ij = zext nneg i32 %17 to i64                ; 2 uses
  %xtraiter3350 = and i32 %i.t, 1
  %i.ik = icmp eq i32 %i.t, 1
  %unroll_iter3354 = and i32 %i.t, 2147483646
  %lcmp.mod3352.not = icmp eq i32 %xtraiter3350, 0
  %lcmp.mod3353 = trunc i32 %i.t to i1
  br label %_ZN4ncnn3MatD2Ev.exit1099

_ZN4ncnn3MatD2Ev.exit1099:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1099.preheader, %._crit_edge3059
  %indvars.iv3159 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1099.preheader ], [ %indvars.iv.next3160, %._crit_edge3059 ] ; 4 uses
  %i.il = load ptr, ptr %1, align 8, !tbaa !132, !noalias !148 ; 2 uses
  %i.im = load i64, ptr %i.ig, align 8, !tbaa !133, !noalias !148 ; 2 uses
  %i.in = mul i64 %i.im, %indvars.iv3159
  %i.io = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !148 ; 2 uses
  %i.ip = mul i64 %i.in, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ip ; 2 uses
  %i.ir = add nuw nsw i64 %indvars.iv3159, %i.ij
  %i.is = mul i64 %i.im, %i.ir
  %i.it = mul i64 %i.is, %i.io
  %i.iu = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.it ; 2 uses
  %i.iv = shl nuw nsw i64 %indvars.iv3159, 1      ; 2 uses
  %i.iw = load ptr, ptr %2, align 8, !tbaa !132, !noalias !149 ; 2 uses
  %i.ix = load i64, ptr %i.hy, align 8, !tbaa !133, !noalias !149 ; 2 uses
  %i.iy = mul i64 %i.ix, %i.iv
  %i.iz = load i64, ptr %i.ih, align 8, !tbaa !120, !noalias !149 ; 2 uses
  %i.ja = mul i64 %i.iy, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.ja ; 2 uses
  %i.jc = or disjoint i64 %i.iv, 1
  %i.jd = mul i64 %i.ix, %i.jc
  %i.je = mul i64 %i.jd, %i.iz
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.je ; 2 uses
  br i1 %i.ik, label %.epil.preheader3349, label %_ZN4ncnn3MatD2Ev.exit1099.new

._crit_edge3059.unr-lcssa:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1099.new
  br i1 %lcmp.mod3352.not, label %._crit_edge3059, label %.epil.preheader3349

.epil.preheader3349:                              ; preds = %._crit_edge3059.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit1099
  %.08693057.epil.init = phi ptr [ %i.iq, %_ZN4ncnn3MatD2Ev.exit1099 ], [ %i.jw, %._crit_edge3059.unr-lcssa ]
  %.08703056.epil.init = phi ptr [ %i.iu, %_ZN4ncnn3MatD2Ev.exit1099 ], [ %i.jx, %._crit_edge3059.unr-lcssa ]
  %.08753055.epil.init = phi ptr [ %i.jb, %_ZN4ncnn3MatD2Ev.exit1099 ], [ %i.jy, %._crit_edge3059.unr-lcssa ]
  %.08763054.epil.init = phi ptr [ %i.jf, %_ZN4ncnn3MatD2Ev.exit1099 ], [ %i.jz, %._crit_edge3059.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3353)
  %i.jg = load <16 x float>, ptr %.08693057.epil.init, align 1, !tbaa !142 ; 2 uses
  %i.jh = load <16 x float>, ptr %.08703056.epil.init, align 1, !tbaa !142 ; 2 uses
  %i.ji = shufflevector <16 x float> %i.jg, <16 x float> %i.jh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jj = shufflevector <16 x float> %i.jg, <16 x float> %i.jh, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x float> %i.ji, ptr %.08753055.epil.init, align 1, !tbaa !142
  store <16 x float> %i.jj, ptr %.08763054.epil.init, align 1, !tbaa !142
  br label %._crit_edge3059

._crit_edge3059:                                  ; preds = %._crit_edge3059.unr-lcssa, %.epil.preheader3349
  %indvars.iv.next3160 = add nuw nsw i64 %indvars.iv3159, 1 ; 2 uses
  %exitcond3163.not = icmp eq i64 %indvars.iv.next3160, %i.ij
  br i1 %exitcond3163.not, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZN4ncnn3MatD2Ev.exit1099, !llvm.loop !44

_ZN4ncnn3MatD2Ev.exit1099.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit1099, %_ZN4ncnn3MatD2Ev.exit1099.new
  %.08693057 = phi ptr [ %i.jw, %_ZN4ncnn3MatD2Ev.exit1099.new ], [ %i.iq, %_ZN4ncnn3MatD2Ev.exit1099 ] ; 3 uses
  %.08703056 = phi ptr [ %i.jx, %_ZN4ncnn3MatD2Ev.exit1099.new ], [ %i.iu, %_ZN4ncnn3MatD2Ev.exit1099 ] ; 3 uses
  %.08753055 = phi ptr [ %i.jy, %_ZN4ncnn3MatD2Ev.exit1099.new ], [ %i.jb, %_ZN4ncnn3MatD2Ev.exit1099 ] ; 3 uses
  %.08763054 = phi ptr [ %i.jz, %_ZN4ncnn3MatD2Ev.exit1099.new ], [ %i.jf, %_ZN4ncnn3MatD2Ev.exit1099 ] ; 3 uses
  %niter3355 = phi i32 [ %niter3355.next.1, %_ZN4ncnn3MatD2Ev.exit1099.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1099 ]
  %i.jk = load <16 x float>, ptr %.08693057, align 1, !tbaa !142 ; 2 uses
  %i.jl = load <16 x float>, ptr %.08703056, align 1, !tbaa !142 ; 2 uses
  %i.jm = shufflevector <16 x float> %i.jk, <16 x float> %i.jl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jn = shufflevector <16 x float> %i.jk, <16 x float> %i.jl, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x float> %i.jm, ptr %.08753055, align 1, !tbaa !142
  store <16 x float> %i.jn, ptr %.08763054, align 1, !tbaa !142
  %i.jo = getelementptr inbounds nuw i8, ptr %.08693057, i64 64
  %i.jp = getelementptr inbounds nuw i8, ptr %.08703056, i64 64
  %i.jq = getelementptr inbounds nuw i8, ptr %.08753055, i64 64
  %i.jr = getelementptr inbounds nuw i8, ptr %.08763054, i64 64
  %i.js = load <16 x float>, ptr %i.jo, align 1, !tbaa !142 ; 2 uses
  %i.jt = load <16 x float>, ptr %i.jp, align 1, !tbaa !142 ; 2 uses
  %i.ju = shufflevector <16 x float> %i.js, <16 x float> %i.jt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jv = shufflevector <16 x float> %i.js, <16 x float> %i.jt, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x float> %i.ju, ptr %i.jq, align 1, !tbaa !142
  store <16 x float> %i.jv, ptr %i.jr, align 1, !tbaa !142
  %i.jw = getelementptr inbounds nuw i8, ptr %.08693057, i64 128 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.08703056, i64 128 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.08753055, i64 128 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.08763054, i64 128 ; 2 uses
  %niter3355.next.1 = add i32 %niter3355, 2       ; 2 uses
  %niter3355.ncmp.1 = icmp eq i32 %niter3355.next.1, %unroll_iter3354
  br i1 %niter3355.ncmp.1, label %._crit_edge3059.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit1099.new, !llvm.loop !45

bb.bb:                                            ; preds = %bb.ba
  switch i32 %i.ac, label %bb.ej [
    i32 3, label %.preheader
    i32 4, label %.preheader2930
  ]

.preheader2930:                                   ; preds = %bb.bb
  %i.ka = icmp sgt i32 %17, 0
  br i1 %i.ka, label %_ZN4ncnn3MatD2Ev.exit1089.lr.ph, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1089.lr.ph:                  ; preds = %.preheader2930
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kd = icmp sgt i32 %i.t, 0
  br i1 %i.kd, label %_ZN4ncnn3MatD2Ev.exit1089.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1089.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit1089.lr.ph
  %18 = mul nuw nsw <4 x i32> %16, <i32 0, i32 1, i32 2, i32 3>
  %19 = zext <4 x i32> %18 to <4 x i64>
  %i.ke = zext nneg i32 %17 to i64
  br label %_ZN4ncnn3MatD2Ev.exit1089

.preheader:                                       ; preds = %bb.bb
  %i.kf = icmp sgt i32 %17, 0
  br i1 %i.kf, label %_ZN4ncnn3MatD2Ev.exit1095.lr.ph, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1095.lr.ph:                  ; preds = %.preheader
  %i.kg = load ptr, ptr %1, align 8, !tbaa !132, !noalias !150 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !133, !noalias !150
  %i.kj = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !150
  %factor.op.mul = mul i64 %i.ki, %i.kj           ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !120, !noalias !151
  %factor.op.mul3087 = mul i64 %i.hz, %i.kl       ; 3 uses
  %i.km = icmp sgt i32 %i.t, 0
  br i1 %i.km, label %_ZN4ncnn3MatD2Ev.exit1095.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1095.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit1095.lr.ph
  %i.kn = shl nuw nsw i32 %17, 1
  %i.ko = zext nneg i32 %17 to i64                ; 2 uses
  %i.kp = zext nneg i32 %i.kn to i64
  br label %_ZN4ncnn3MatD2Ev.exit1095

_ZN4ncnn3MatD2Ev.exit1095:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1095.preheader, %._crit_edge3081
  %indvars.iv3171 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1095.preheader ], [ %indvars.iv.next3172, %._crit_edge3081 ] ; 5 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv3171
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.reass
  %i.kr = add nuw nsw i64 %indvars.iv3171, %i.ko
  %.reass3084 = mul i64 %factor.op.mul, %i.kr
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.reass3084
  %i.kt = add nuw nsw i64 %indvars.iv3171, %i.kp
  %.reass3086 = mul i64 %factor.op.mul, %i.kt
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.reass3086
  %i.kv = mul nuw nsw i64 %indvars.iv3171, 3      ; 3 uses
  %.reass3088 = mul i64 %factor.op.mul3087, %i.kv
  %i.kw = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.reass3088
  %i.kx = add nuw nsw i64 %i.kv, 1
  %.reass3090 = mul i64 %factor.op.mul3087, %i.kx
  %i.ky = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.reass3090
  %i.kz = add nuw nsw i64 %i.kv, 2
  %.reass3092 = mul i64 %factor.op.mul3087, %i.kz
  %i.la = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.reass3092
  br label %bb.bc

._crit_edge3081:                                  ; preds = %.rtcont
  %indvars.iv.next3172 = add nuw nsw i64 %indvars.iv3171, 1 ; 2 uses
  %exitcond3175.not = icmp eq i64 %indvars.iv.next3172, %i.ko
  br i1 %exitcond3175.not, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZN4ncnn3MatD2Ev.exit1095, !llvm.loop !50

bb.bc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1095, %.rtcont
  %.08793079 = phi ptr [ %i.kq, %_ZN4ncnn3MatD2Ev.exit1095 ], [ %.rtmerge, %.rtcont ] ; 30 uses
  %.08803078 = phi ptr [ %i.ks, %_ZN4ncnn3MatD2Ev.exit1095 ], [ %.rtmerge3281, %.rtcont ] ; 32 uses
  %.08883077 = phi ptr [ %i.ku, %_ZN4ncnn3MatD2Ev.exit1095 ], [ %.rtmerge3282, %.rtcont ] ; 31 uses
  %.08893076 = phi ptr [ %i.kw, %_ZN4ncnn3MatD2Ev.exit1095 ], [ %.rtmerge3283, %.rtcont ] ; 19 uses
  %.08903075 = phi ptr [ %i.ky, %_ZN4ncnn3MatD2Ev.exit1095 ], [ %.rtmerge3284, %.rtcont ] ; 33 uses
  %.08913074 = phi ptr [ %i.la, %_ZN4ncnn3MatD2Ev.exit1095 ], [ %.rtmerge3285, %.rtcont ] ; 33 uses
  %.08923073 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1095 ], [ %.rtmerge3286, %.rtcont ]
  %.087930793270 = ptrtoaddr ptr %.08793079 to i64 ; 2 uses
  %i.lb = add i64 %.087930793270, 64
  %.088930763271 = ptrtoaddr ptr %.08893076 to i64 ; 4 uses
  %i.lc = add i64 %.088930763271, 64              ; 3 uses
  %.088030783272 = ptrtoaddr ptr %.08803078 to i64 ; 2 uses
  %i.ld = add i64 %.088030783272, 64
  %.088830773273 = ptrtoaddr ptr %.08883077 to i64 ; 2 uses
  %i.le = add i64 %.088830773273, 64
  %rt.bound0 = icmp ugt i64 %i.ld, %.088930763271
  %rt.bound1 = icmp ugt i64 %i.lc, %.088030783272
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound03274 = icmp ugt i64 %i.le, %.088930763271
  %rt.bound13275 = icmp ugt i64 %i.lc, %.088830773273
  %rt.conflict3276 = and i1 %rt.bound03274, %rt.bound13275
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict3276
  %rt.bound03277 = icmp ugt i64 %i.lb, %.088930763271
  %rt.bound13278 = icmp ugt i64 %i.lc, %.087930793270
  %rt.conflict3279 = and i1 %rt.bound03277, %rt.bound13278
  %rt.conflict.all3280 = or i1 %rt.conflict.all, %rt.conflict3279
  %rt.guard = freeze i1 %rt.conflict.all3280
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !152

_ZN4ncnn3MatD2Ev.exit1089:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1089.preheader, %._crit_edge3071
  %indvars.iv3165 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1089.preheader ], [ %indvars.iv.next3166, %._crit_edge3071 ] ; 3 uses
  %i.lf = load ptr, ptr %1, align 8, !tbaa !132, !noalias !153 ; 4 uses
  %i.lg = load i64, ptr %i.kb, align 8, !tbaa !133, !noalias !153
  %20 = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !153
  %21 = insertelement <4 x i64> poison, i64 %indvars.iv3165, i64 0
  %22 = shufflevector <4 x i64> %21, <4 x i64> poison, <4 x i32> zeroinitializer
  %23 = add nuw nsw <4 x i64> %22, %19
  %24 = insertelement <4 x i64> poison, i64 %i.lg, i64 0
  %25 = insertelement <4 x i64> poison, i64 %20, i64 0
  %26 = mul <4 x i64> %25, %24
  %27 = shufflevector <4 x i64> %26, <4 x i64> poison, <4 x i32> zeroinitializer
  %28 = mul <4 x i64> %27, %23                    ; 4 uses
  %29 = extractelement <4 x i64> %28, i64 0
  %30 = getelementptr inbounds nuw i8, ptr %i.lf, i64 %29
  %31 = extractelement <4 x i64> %28, i64 1
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 %31
  %32 = extractelement <4 x i64> %28, i64 2
  %33 = getelementptr inbounds nuw i8, ptr %i.lf, i64 %32
  %34 = extractelement <4 x i64> %28, i64 3
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 %34
  %i.lj = shl nuw nsw i64 %indvars.iv3165, 2      ; 4 uses
  %i.lk = load ptr, ptr %2, align 8, !tbaa !132, !noalias !154 ; 4 uses
  %i.ll = load i64, ptr %i.hy, align 8, !tbaa !133, !noalias !154 ; 4 uses
  %i.lm = mul i64 %i.ll, %i.lj
  %i.ln = load i64, ptr %i.kc, align 8, !tbaa !120, !noalias !154 ; 4 uses
  %i.lo = mul i64 %i.lm, %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lo
  %i.lq = or disjoint i64 %i.lj, 1
  %i.lr = mul i64 %i.ll, %i.lq
  %i.ls = mul i64 %i.lr, %i.ln
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ls
  %i.lu = or disjoint i64 %i.lj, 2
  %i.lv = mul i64 %i.ll, %i.lu
  %i.lw = mul i64 %i.lv, %i.ln
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lw
  %i.ly = or disjoint i64 %i.lj, 3
  %i.lz = mul i64 %i.ll, %i.ly
  %i.ma = mul i64 %i.lz, %i.ln
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ma
  br label %bb.bd

._crit_edge3071:                                  ; preds = %bb.bd
  %indvars.iv.next3166 = add nuw nsw i64 %indvars.iv3165, 1 ; 2 uses
  %exitcond3169.not = icmp eq i64 %indvars.iv.next3166, %i.ke
  br i1 %exitcond3169.not, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZN4ncnn3MatD2Ev.exit1089, !llvm.loop !55

bb.bd:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1089, %bb.bd
  %.08943069 = phi ptr [ %30, %_ZN4ncnn3MatD2Ev.exit1089 ], [ %i.mo, %bb.bd ] ; 2 uses
  %.08953068 = phi ptr [ %i.lh, %_ZN4ncnn3MatD2Ev.exit1089 ], [ %i.mp, %bb.bd ] ; 2 uses
  %.08963067 = phi ptr [ %33, %_ZN4ncnn3MatD2Ev.exit1089 ], [ %i.mq, %bb.bd ] ; 2 uses
  %.08973066 = phi ptr [ %i.li, %_ZN4ncnn3MatD2Ev.exit1089 ], [ %i.mr, %bb.bd ] ; 2 uses
  %.08983065 = phi ptr [ %i.lp, %_ZN4ncnn3MatD2Ev.exit1089 ], [ %i.ms, %bb.bd ] ; 2 uses
  %.08993064 = phi ptr [ %i.lt, %_ZN4ncnn3MatD2Ev.exit1089 ], [ %i.mt, %bb.bd ] ; 2 uses
  %.09003063 = phi ptr [ %i.lx, %_ZN4ncnn3MatD2Ev.exit1089 ], [ %i.mu, %bb.bd ] ; 2 uses
  %.09013062 = phi ptr [ %i.mb, %_ZN4ncnn3MatD2Ev.exit1089 ], [ %i.mv, %bb.bd ] ; 2 uses
  %.09023061 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1089 ], [ %i.mw, %bb.bd ]
  %i.mc = load <16 x float>, ptr %.08943069, align 1, !tbaa !142 ; 2 uses
  %i.md = load <16 x float>, ptr %.08953068, align 1, !tbaa !142 ; 2 uses
  %i.me = load <16 x float>, ptr %.08963067, align 1, !tbaa !142 ; 2 uses
  %i.mf = load <16 x float>, ptr %.08973066, align 1, !tbaa !142 ; 2 uses
  %i.mg = shufflevector <16 x float> %i.mc, <16 x float> %i.me, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.mh = shufflevector <16 x float> %i.mc, <16 x float> %i.me, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.mi = shufflevector <16 x float> %i.md, <16 x float> %i.mf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.mj = shufflevector <16 x float> %i.md, <16 x float> %i.mf, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.mk = shufflevector <16 x float> %i.mg, <16 x float> %i.mi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ml = shufflevector <16 x float> %i.mg, <16 x float> %i.mi, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.mm = shufflevector <16 x float> %i.mh, <16 x float> %i.mj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.mn = shufflevector <16 x float> %i.mh, <16 x float> %i.mj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x float> %i.mk, ptr %.08983065, align 1, !tbaa !142
  store <16 x float> %i.ml, ptr %.08993064, align 1, !tbaa !142
  store <16 x float> %i.mm, ptr %.09003063, align 1, !tbaa !142
  store <16 x float> %i.mn, ptr %.09013062, align 1, !tbaa !142
  %i.mo = getelementptr inbounds nuw i8, ptr %.08943069, i64 64
  %i.mp = getelementptr inbounds nuw i8, ptr %.08953068, i64 64
  %i.mq = getelementptr inbounds nuw i8, ptr %.08963067, i64 64
  %i.mr = getelementptr inbounds nuw i8, ptr %.08973066, i64 64
  %i.ms = getelementptr inbounds nuw i8, ptr %.08983065, i64 64
  %i.mt = getelementptr inbounds nuw i8, ptr %.08993064, i64 64
  %i.mu = getelementptr inbounds nuw i8, ptr %.09003063, i64 64
  %i.mv = getelementptr inbounds nuw i8, ptr %.09013062, i64 64
  %i.mw = add nuw nsw i32 %.09023061, 1           ; 2 uses
  %exitcond3164.not = icmp eq i32 %i.mw, %i.t
  br i1 %exitcond3164.not, label %._crit_edge3071, label %bb.bd, !llvm.loop !56

bb.be:                                            ; preds = %bb.o
  %i.mx = icmp ne i32 %i.ac, 2                    ; 2 uses
  %i.my = and i32 %i.r, 1
  %.not958 = icmp eq i32 %i.my, 0
  %or.cond971 = select i1 %i.mx, i1 true, i1 %.not958
  br i1 %or.cond971, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !137
  tail call void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.na)
  %i.nb = load ptr, ptr %2, align 8, !tbaa !132   ; 2 uses
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZNK4ncnn3Mat5emptyEv.exit979

_ZNK4ncnn3Mat5emptyEv.exit979:                    ; preds = %bb.bf
  %i.nd = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !133 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !126
  %i.nh = sext i32 %i.ng to i64
  %i.ni = mul i64 %i.ne, %i.nh
  %i.nj = icmp eq i64 %i.ni, 0
  br i1 %i.nj, label %_ZN4ncnn3MataSERKS0_.exit, label %.preheader2943

.preheader2943:                                   ; preds = %_ZNK4ncnn3Mat5emptyEv.exit979
  %i.nk = icmp sgt i32 %17, 0
  br i1 %i.nk, label %_ZN4ncnn3MatD2Ev.exit1081.lr.ph, label %_ZN4ncnn3MatD2Ev.exit1076

_ZN4ncnn3MatD2Ev.exit1081.lr.ph:                  ; preds = %.preheader2943
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nn = icmp sgt i32 %i.t, 0
  br i1 %i.nn, label %_ZN4ncnn3MatD2Ev.exit1081.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1081.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit1081.lr.ph
  %i.no = zext nneg i32 %17 to i64                ; 2 uses
  %xtraiter3317 = and i32 %i.t, 1
  %i.np = icmp eq i32 %i.t, 1
  %unroll_iter3321 = and i32 %i.t, 2147483646
  %lcmp.mod3319.not = icmp eq i32 %xtraiter3317, 0
  %lcmp.mod3320 = trunc i32 %i.t to i1
  br label %_ZN4ncnn3MatD2Ev.exit1081

_ZN4ncnn3MatD2Ev.exit1076.loopexit:               ; preds = %._crit_edge3002
  %.pre3177 = load ptr, ptr %2, align 8, !tbaa !132, !noalias !155
  %.pre3178 = load i64, ptr %i.nd, align 8, !tbaa !133, !noalias !155
  br label %_ZN4ncnn3MatD2Ev.exit1076

_ZN4ncnn3MatD2Ev.exit1076:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1076.loopexit, %.preheader2943
  %i.nq = phi i64 [ %.pre3178, %_ZN4ncnn3MatD2Ev.exit1076.loopexit ], [ %i.ne, %.preheader2943 ]
  %i.nr = phi ptr [ %.pre3177, %_ZN4ncnn3MatD2Ev.exit1076.loopexit ], [ %i.nb, %.preheader2943 ]
  %i.ns = icmp sgt i32 %i.t, 0
  br i1 %i.ns, label %.lr.ph3008.preheader, label %_ZN4ncnn3MataSERKS0_.exit

.lr.ph3008.preheader:                             ; preds = %_ZN4ncnn3MatD2Ev.exit1076
  %i.nt = load ptr, ptr %1, align 8, !tbaa !132, !noalias !156 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !133, !noalias !156 ; 2 uses
  %i.nw = shl nsw i32 %17, 1
  %i.nx = sext i32 %i.nw to i64                   ; 2 uses
  %i.ny = mul i64 %i.nv, %i.nx
  %i.nz = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !156 ; 2 uses
  %i.oa = mul i64 %i.ny, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16 ; 2 uses
  %i.od = mul i64 %i.nq, %i.nx
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !120, !noalias !155
  %i.og = mul i64 %i.od, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.og ; 2 uses
  %i.oi = sext i32 %17 to i64
  %i.oj = mul i64 %i.nv, %i.oi
  %i.ok = mul i64 %i.oj, %i.nz
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.ok ; 2 uses
  %xtraiter3323 = and i32 %i.t, 1
  %i.om = icmp eq i32 %i.t, 1
  br i1 %i.om, label %.lr.ph3008.epil.preheader, label %.lr.ph3008.preheader.new

.lr.ph3008.preheader.new:                         ; preds = %.lr.ph3008.preheader
  %unroll_iter3327 = and i32 %i.t, 2147483646
  br label %.lr.ph3008

_ZN4ncnn3MatD2Ev.exit1081:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1081.preheader, %._crit_edge3002
  %indvars.iv3127 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1081.preheader ], [ %indvars.iv.next3128, %._crit_edge3002 ] ; 4 uses
  %i.on = load ptr, ptr %1, align 8, !tbaa !132, !noalias !157 ; 3 uses
  %i.oo = load i64, ptr %i.nl, align 8, !tbaa !133, !noalias !157 ; 3 uses
  %i.op = mul i64 %i.oo, %indvars.iv3127
  %i.oq = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !157 ; 3 uses
  %i.or = mul i64 %i.op, %i.oq
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.or ; 2 uses
  %i.ot = add nuw nsw i64 %indvars.iv3127, %i.no  ; 2 uses
  %i.ou = mul i64 %i.oo, %i.ot
  %i.ov = mul i64 %i.ou, %i.oq
  %i.ow = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.ov
  %i.ox = add nuw nsw i64 %i.ot, 1
  %i.oy = mul i64 %i.oo, %i.ox
  %i.oz = mul i64 %i.oy, %i.oq
  %i.pa = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.oz ; 2 uses
  %i.pb = shl nuw nsw i64 %indvars.iv3127, 1      ; 2 uses
  %i.pc = load ptr, ptr %2, align 8, !tbaa !132, !noalias !158 ; 2 uses
  %i.pd = load i64, ptr %i.nd, align 8, !tbaa !133, !noalias !158 ; 2 uses
  %i.pe = mul i64 %i.pd, %i.pb
  %i.pf = load i64, ptr %i.nm, align 8, !tbaa !120, !noalias !158 ; 2 uses
  %i.pg = mul i64 %i.pe, %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pg ; 2 uses
  %i.pi = or disjoint i64 %i.pb, 1
  %i.pj = mul i64 %i.pd, %i.pi
  %i.pk = mul i64 %i.pj, %i.pf
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pk ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ow, i64 16 ; 2 uses
  br i1 %i.np, label %.epil.preheader3316, label %_ZN4ncnn3MatD2Ev.exit1081.new

._crit_edge3002.unr-lcssa:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1081.new
  br i1 %lcmp.mod3319.not, label %._crit_edge3002, label %.epil.preheader3316

.epil.preheader3316:                              ; preds = %._crit_edge3002.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit1081
  %.09143000.epil.init = phi ptr [ %i.os, %_ZN4ncnn3MatD2Ev.exit1081 ], [ %i.qk, %._crit_edge3002.unr-lcssa ]
  %.09152999.epil.init = phi ptr [ %i.pm, %_ZN4ncnn3MatD2Ev.exit1081 ], [ %i.ql, %._crit_edge3002.unr-lcssa ]
  %.09162998.epil.init = phi ptr [ %i.pa, %_ZN4ncnn3MatD2Ev.exit1081 ], [ %i.qm, %._crit_edge3002.unr-lcssa ]
  %.09172997.epil.init = phi ptr [ %i.ph, %_ZN4ncnn3MatD2Ev.exit1081 ], [ %i.qn, %._crit_edge3002.unr-lcssa ]
  %.09182996.epil.init = phi ptr [ %i.pl, %_ZN4ncnn3MatD2Ev.exit1081 ], [ %i.qo, %._crit_edge3002.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3320)
  %i.pn = load <8 x float>, ptr %.09143000.epil.init, align 1, !tbaa !142 ; 2 uses
  %i.po = load <4 x float>, ptr %.09152999.epil.init, align 1, !tbaa !142
  %i.pp = load <4 x float>, ptr %.09162998.epil.init, align 1, !tbaa !142
  %i.pq = shufflevector <4 x float> %i.po, <4 x float> %i.pp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.pr = shufflevector <8 x float> %i.pn, <8 x float> %i.pq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ps = shufflevector <8 x float> %i.pn, <8 x float> %i.pq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.pr, ptr %.09172997.epil.init, align 1, !tbaa !142
  store <8 x float> %i.ps, ptr %.09182996.epil.init, align 1, !tbaa !142
  br label %._crit_edge3002

._crit_edge3002:                                  ; preds = %._crit_edge3002.unr-lcssa, %.epil.preheader3316
  %indvars.iv.next3128 = add nuw nsw i64 %indvars.iv3127, 1 ; 2 uses
  %exitcond3131.not = icmp eq i64 %indvars.iv.next3128, %i.no
  br i1 %exitcond3131.not, label %_ZN4ncnn3MatD2Ev.exit1076.loopexit, label %_ZN4ncnn3MatD2Ev.exit1081, !llvm.loop !65

_ZN4ncnn3MatD2Ev.exit1081.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit1081, %_ZN4ncnn3MatD2Ev.exit1081.new
  %.09143000 = phi ptr [ %i.qk, %_ZN4ncnn3MatD2Ev.exit1081.new ], [ %i.os, %_ZN4ncnn3MatD2Ev.exit1081 ] ; 3 uses
  %.09152999 = phi ptr [ %i.ql, %_ZN4ncnn3MatD2Ev.exit1081.new ], [ %i.pm, %_ZN4ncnn3MatD2Ev.exit1081 ] ; 3 uses
  %.09162998 = phi ptr [ %i.qm, %_ZN4ncnn3MatD2Ev.exit1081.new ], [ %i.pa, %_ZN4ncnn3MatD2Ev.exit1081 ] ; 3 uses
  %.09172997 = phi ptr [ %i.qn, %_ZN4ncnn3MatD2Ev.exit1081.new ], [ %i.ph, %_ZN4ncnn3MatD2Ev.exit1081 ] ; 3 uses
  %.09182996 = phi ptr [ %i.qo, %_ZN4ncnn3MatD2Ev.exit1081.new ], [ %i.pl, %_ZN4ncnn3MatD2Ev.exit1081 ] ; 3 uses
  %niter3322 = phi i32 [ %niter3322.next.1, %_ZN4ncnn3MatD2Ev.exit1081.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1081 ]
  %i.pt = load <8 x float>, ptr %.09143000, align 1, !tbaa !142 ; 2 uses
  %i.pu = load <4 x float>, ptr %.09152999, align 1, !tbaa !142
  %i.pv = load <4 x float>, ptr %.09162998, align 1, !tbaa !142
  %i.pw = shufflevector <4 x float> %i.pu, <4 x float> %i.pv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.px = shufflevector <8 x float> %i.pt, <8 x float> %i.pw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.py = shufflevector <8 x float> %i.pt, <8 x float> %i.pw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.px, ptr %.09172997, align 1, !tbaa !142
  store <8 x float> %i.py, ptr %.09182996, align 1, !tbaa !142
  %i.pz = getelementptr inbounds nuw i8, ptr %.09143000, i64 32
  %i.qa = getelementptr inbounds nuw i8, ptr %.09152999, i64 32
  %i.qb = getelementptr inbounds nuw i8, ptr %.09162998, i64 32
  %i.qc = getelementptr inbounds nuw i8, ptr %.09172997, i64 32
  %i.qd = getelementptr inbounds nuw i8, ptr %.09182996, i64 32
  %i.qe = load <8 x float>, ptr %i.pz, align 1, !tbaa !142 ; 2 uses
  %i.qf = load <4 x float>, ptr %i.qa, align 1, !tbaa !142
  %i.qg = load <4 x float>, ptr %i.qb, align 1, !tbaa !142
  %i.qh = shufflevector <4 x float> %i.qf, <4 x float> %i.qg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.qi = shufflevector <8 x float> %i.qe, <8 x float> %i.qh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qj = shufflevector <8 x float> %i.qe, <8 x float> %i.qh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.qi, ptr %i.qc, align 1, !tbaa !142
  store <8 x float> %i.qj, ptr %i.qd, align 1, !tbaa !142
  %i.qk = getelementptr inbounds nuw i8, ptr %.09143000, i64 64 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.09152999, i64 64 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.09162998, i64 64 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.09172997, i64 64 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.09182996, i64 64 ; 2 uses
  %niter3322.next.1 = add i32 %niter3322, 2       ; 2 uses
  %niter3322.ncmp.1 = icmp eq i32 %niter3322.next.1, %unroll_iter3321
  br i1 %niter3322.ncmp.1, label %._crit_edge3002.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit1081.new, !llvm.loop !66

.lr.ph3008:                                       ; preds = %.lr.ph3008, %.lr.ph3008.preheader.new
  %.09203007 = phi ptr [ %i.ol, %.lr.ph3008.preheader.new ], [ %i.rc, %.lr.ph3008 ] ; 3 uses
  %.09213006 = phi ptr [ %i.oc, %.lr.ph3008.preheader.new ], [ %i.rd, %.lr.ph3008 ] ; 3 uses
  %.09223005 = phi ptr [ %i.oh, %.lr.ph3008.preheader.new ], [ %i.re, %.lr.ph3008 ] ; 5 uses
  %niter3328 = phi i32 [ 0, %.lr.ph3008.preheader.new ], [ %niter3328.next.1, %.lr.ph3008 ]
  %i.qp = load <4 x float>, ptr %.09203007, align 1, !tbaa !142 ; 2 uses
  %i.qq = load <4 x float>, ptr %.09213006, align 1, !tbaa !142 ; 2 uses
  %i.qr = shufflevector <4 x float> %i.qp, <4 x float> %i.qq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.qs = shufflevector <4 x float> %i.qp, <4 x float> %i.qq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.qr, ptr %.09223005, align 1, !tbaa !142
  %i.qt = getelementptr inbounds nuw i8, ptr %.09223005, i64 16
  store <4 x float> %i.qs, ptr %i.qt, align 1, !tbaa !142
  %i.qu = getelementptr inbounds nuw i8, ptr %.09203007, i64 32
  %i.qv = getelementptr inbounds nuw i8, ptr %.09213006, i64 32
  %i.qw = getelementptr inbounds nuw i8, ptr %.09223005, i64 32
  %i.qx = load <4 x float>, ptr %i.qu, align 1, !tbaa !142 ; 2 uses
  %i.qy = load <4 x float>, ptr %i.qv, align 1, !tbaa !142 ; 2 uses
  %i.qz = shufflevector <4 x float> %i.qx, <4 x float> %i.qy, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ra = shufflevector <4 x float> %i.qx, <4 x float> %i.qy, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.qz, ptr %i.qw, align 1, !tbaa !142
  %i.rb = getelementptr inbounds nuw i8, ptr %.09223005, i64 48
  store <4 x float> %i.ra, ptr %i.rb, align 1, !tbaa !142
  %i.rc = getelementptr inbounds nuw i8, ptr %.09203007, i64 64 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.09213006, i64 64 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.09223005, i64 64 ; 2 uses
  %niter3328.next.1 = add i32 %niter3328, 2       ; 2 uses
  %niter3328.ncmp.1 = icmp eq i32 %niter3328.next.1, %unroll_iter3327
  br i1 %niter3328.ncmp.1, label %_ZN4ncnn3MataSERKS0_.exit.loopexit3294.unr-lcssa, label %.lr.ph3008, !llvm.loop !67

bb.bg:                                            ; preds = %bb.be
  %i.rf = icmp sgt i32 %i.ac, 4
  br i1 %i.rf, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.rg = srem i32 %i.r, %i.ac
  %.not959 = icmp eq i32 %i.rg, 0
  br i1 %.not959, label %bb.cq, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !146
  %i.rh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !147
  %i.rj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ri, ptr %i.rj, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.rk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.rn = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  store i64 0, ptr %i.rn, align 8, !tbaa !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.rl, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ro = load ptr, ptr %8, align 8, !tbaa !132
  %i.rp = icmp eq ptr %i.ro, null
  br i1 %i.rp, label %_ZNK4ncnn3Mat5emptyEv.exit978.thread, label %_ZNK4ncnn3Mat5emptyEv.exit978

_ZNK4ncnn3Mat5emptyEv.exit978:                    ; preds = %bb.bj
  %i.rq = load i64, ptr %i.rn, align 8, !tbaa !133
  %i.rr = load i32, ptr %i.rm, align 8, !tbaa !126
  %i.rs = sext i32 %i.rr to i64
  %i.rt = mul i64 %i.rq, %i.rs
  %i.ru = icmp eq i64 %i.rt, 0
  br i1 %i.ru, label %_ZNK4ncnn3Mat5emptyEv.exit978.thread, label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bl:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit978
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.rw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i64 0, ptr %i.ry, align 8, !tbaa !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.rx, i8 0, i64 28, i1 false)
  %i.rz = invoke noundef i32 @_ZNK4ncnn14ShuffleChannel7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.bm unwind label %bb.bn     ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %.not965 = icmp eq i32 %i.rz, 0
  br i1 %.not965, label %bb.bu, label %bb.bw

bb.bn:                                            ; preds = %bb.bu, %bb.bl
  %i.sa = landingpad { ptr, i32 }
          cleanup
  %i.sb = load ptr, ptr %i.rw, align 8, !tbaa !130 ; 2 uses
  %.not.i1296 = icmp eq ptr %i.sb, null
  br i1 %.not.i1296, label %_ZN4ncnn3MatD2Ev.exit1073, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
end_hunk_0
begin_hunk_1_@_ZNK4ncnn25ShuffleChannel_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 24
  %i.si = load ptr, ptr %i.sh, align 8
  invoke void %i.si(ptr noundef nonnull align 8 dereferenceable(8) %i.se, ptr noundef %i.sf)
          to label %_ZN4ncnn3MatD2Ev.exit1073 unwind label %bb.bt, !inline_history !28

bb.br:                                            ; preds = %bb.bp
  %.not.i1610 = icmp eq ptr %i.sf, null
  br i1 %.not.i1610, label %_ZN4ncnn3MatD2Ev.exit1073, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @free(ptr noundef nonnull %i.sf) #14
  br label %_ZN4ncnn3MatD2Ev.exit1073

bb.bt:                                            ; preds = %bb.bq
  %i.sj = landingpad { ptr, i32 }
          catch ptr null
  %i.sk = extractvalue { ptr, i32 } %i.sj, 0
  call void @__clang_call_terminate(ptr %i.sk) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit1073:                        ; preds = %bb.bo, %bb.bn, %bb.bq, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.cj

bb.bu:                                            ; preds = %bb.bm
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.bv unwind label %bb.bn

bb.bv:                                            ; preds = %bb.bu
  %i.sl = load ptr, ptr %2, align 8, !tbaa !132
  %i.sm = icmp eq ptr %i.sl, null
  br i1 %i.sm, label %_ZNK4ncnn3Mat5emptyEv.exit977.thread, label %_ZNK4ncnn3Mat5emptyEv.exit977

_ZNK4ncnn3Mat5emptyEv.exit977:                    ; preds = %bb.bv
  %i.sn = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !133
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !126
  %i.sr = sext i32 %i.sq to i64
  %i.ss = mul i64 %i.so, %i.sr
  %.fr = freeze i64 %i.ss
  %i.st = icmp eq i64 %.fr, 0
  br i1 %i.st, label %_ZNK4ncnn3Mat5emptyEv.exit977.thread, label %bb.bw

_ZNK4ncnn3Mat5emptyEv.exit977.thread:             ; preds = %bb.bv, %_ZNK4ncnn3Mat5emptyEv.exit977
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit977.thread, %_ZNK4ncnn3Mat5emptyEv.exit977, %bb.bm
  %.2 = phi i32 [ %i.rz, %bb.bm ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit977.thread ], [ 0, %_ZNK4ncnn3Mat5emptyEv.exit977 ]
  %i.su = load ptr, ptr %i.rw, align 8, !tbaa !130 ; 2 uses
  %.not.i1300 = icmp eq ptr %i.su, null
  br i1 %.not.i1300, label %_ZN4ncnn3MatD2Ev.exit1072, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.sv = atomicrmw add ptr %i.su, i32 -1 acq_rel, align 4
  %i.sw = icmp eq i32 %i.sv, 1
  br i1 %i.sw, label %bb.by, label %_ZN4ncnn3MatD2Ev.exit1072

bb.by:                                            ; preds = %bb.bx
  %i.sx = load ptr, ptr %i.rx, align 8, !tbaa !131 ; 3 uses
  %.not3.i1301 = icmp eq ptr %i.sx, null
  %i.sy = load ptr, ptr %9, align 8, !tbaa !132   ; 3 uses
  br i1 %.not3.i1301, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.sz = load ptr, ptr %i.sx, align 8, !tbaa !27
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  %i.tb = load ptr, ptr %i.ta, align 8
  invoke void %i.tb(ptr noundef nonnull align 8 dereferenceable(8) %i.sx, ptr noundef %i.sy)
          to label %_ZN4ncnn3MatD2Ev.exit1072 unwind label %bb.cc, !inline_history !28

bb.ca:                                            ; preds = %bb.by
  %.not.i1608 = icmp eq ptr %i.sy, null
  br i1 %.not.i1608, label %_ZN4ncnn3MatD2Ev.exit1072, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @free(ptr noundef nonnull %i.sy) #14
  br label %_ZN4ncnn3MatD2Ev.exit1072

bb.cc:                                            ; preds = %bb.bz
  %i.tc = landingpad { ptr, i32 }
          catch ptr null
  %i.td = extractvalue { ptr, i32 } %i.tc, 0
  call void @__clang_call_terminate(ptr %i.td) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit1072:                        ; preds = %bb.bx, %bb.bw, %bb.bz, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %_ZNK4ncnn3Mat5emptyEv.exit978.thread

_ZNK4ncnn3Mat5emptyEv.exit978.thread:             ; preds = %bb.bj, %_ZNK4ncnn3Mat5emptyEv.exit978, %_ZN4ncnn3MatD2Ev.exit1072
  %.3 = phi i32 [ %.2, %_ZN4ncnn3MatD2Ev.exit1072 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit978 ], [ -100, %bb.bj ]
  %i.te = load ptr, ptr %i.rk, align 8, !tbaa !130 ; 2 uses
  %.not.i1304 = icmp eq ptr %i.te, null
  br i1 %.not.i1304, label %_ZN4ncnn3MatD2Ev.exit1071, label %bb.cd

bb.cd:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit978.thread
  %i.tf = atomicrmw add ptr %i.te, i32 -1 acq_rel, align 4
  %i.tg = icmp eq i32 %i.tf, 1
  br i1 %i.tg, label %bb.ce, label %_ZN4ncnn3MatD2Ev.exit1071

bb.ce:                                            ; preds = %bb.cd
  %i.th = load ptr, ptr %i.rl, align 8, !tbaa !131 ; 3 uses
  %.not3.i1305 = icmp eq ptr %i.th, null
  %i.ti = load ptr, ptr %8, align 8, !tbaa !132   ; 3 uses
  br i1 %.not3.i1305, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.tj = load ptr, ptr %i.th, align 8, !tbaa !27
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 24
  %i.tl = load ptr, ptr %i.tk, align 8
  invoke void %i.tl(ptr noundef nonnull align 8 dereferenceable(8) %i.th, ptr noundef %i.ti)
          to label %_ZN4ncnn3MatD2Ev.exit1071 unwind label %bb.ci, !inline_history !28

bb.cg:                                            ; preds = %bb.ce
  %.not.i1606 = icmp eq ptr %i.ti, null
  br i1 %.not.i1606, label %_ZN4ncnn3MatD2Ev.exit1071, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @free(ptr noundef nonnull %i.ti) #14
  br label %_ZN4ncnn3MatD2Ev.exit1071

bb.ci:                                            ; preds = %bb.cf
  %i.tm = landingpad { ptr, i32 }
          catch ptr null
  %i.tn = extractvalue { ptr, i32 } %i.tm, 0
  call void @__clang_call_terminate(ptr %i.tn) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit1071:                        ; preds = %bb.cd, %_ZNK4ncnn3Mat5emptyEv.exit978.thread, %bb.cf, %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.cj:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1073, %bb.bk
  %.pn966 = phi { ptr, i32 } [ %i.sa, %_ZN4ncnn3MatD2Ev.exit1073 ], [ %i.rv, %bb.bk ]
  %i.to = load ptr, ptr %i.rk, align 8, !tbaa !130 ; 2 uses
  %.not.i1308 = icmp eq ptr %i.to, null
  br i1 %.not.i1308, label %_ZN4ncnn3MatD2Ev.exit1070, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.tp = atomicrmw add ptr %i.to, i32 -1 acq_rel, align 4
  %i.tq = icmp eq i32 %i.tp, 1
  br i1 %i.tq, label %bb.cl, label %_ZN4ncnn3MatD2Ev.exit1070

bb.cl:                                            ; preds = %bb.ck
  %i.tr = load ptr, ptr %i.rl, align 8, !tbaa !131 ; 3 uses
  %.not3.i1309 = icmp eq ptr %i.tr, null
  %i.ts = load ptr, ptr %8, align 8, !tbaa !132   ; 3 uses
  br i1 %.not3.i1309, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.tt = load ptr, ptr %i.tr, align 8, !tbaa !27
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8
  invoke void %i.tv(ptr noundef nonnull align 8 dereferenceable(8) %i.tr, ptr noundef %i.ts)
          to label %_ZN4ncnn3MatD2Ev.exit1070 unwind label %bb.cp, !inline_history !28

bb.cn:                                            ; preds = %bb.cl
  %.not.i1604 = icmp eq ptr %i.ts, null
  br i1 %.not.i1604, label %_ZN4ncnn3MatD2Ev.exit1070, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @free(ptr noundef nonnull %i.ts) #14
  br label %_ZN4ncnn3MatD2Ev.exit1070

bb.cp:                                            ; preds = %bb.cm
  %i.tw = landingpad { ptr, i32 }
          catch ptr null
  %i.tx = extractvalue { ptr, i32 } %i.tw, 0
  call void @__clang_call_terminate(ptr %i.tx) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit1070:                        ; preds = %bb.ck, %bb.cj, %bb.cm, %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.ek

bb.cq:                                            ; preds = %bb.bh
  %i.ty = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !137
  tail call void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.tz)
  %i.ua = load ptr, ptr %2, align 8, !tbaa !132
  %i.ub = icmp eq ptr %i.ua, null
  br i1 %i.ub, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZNK4ncnn3Mat5emptyEv.exit976

_ZNK4ncnn3Mat5emptyEv.exit976:                    ; preds = %bb.cq
  %i.uc = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !133
  %i.ue = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !126
  %i.ug = sext i32 %i.uf to i64
  %i.uh = mul i64 %i.ud, %i.ug
  %i.ui = icmp eq i64 %i.uh, 0
  br i1 %i.ui, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.cr

bb.cr:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit976
  br i1 %i.mx, label %bb.cs, label %.preheader2940

.preheader2940:                                   ; preds = %bb.cr
  %i.uj = icmp sgt i32 %17, 0
  br i1 %i.uj, label %_ZN4ncnn3MatD2Ev.exit1069.lr.ph, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1069.lr.ph:                  ; preds = %.preheader2940
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ul = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.um = icmp sgt i32 %i.t, 0
  br i1 %i.um, label %_ZN4ncnn3MatD2Ev.exit1069.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1069.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit1069.lr.ph
  %i.un = zext nneg i32 %17 to i64                ; 2 uses
  %xtraiter3330 = and i32 %i.t, 1
  %i.uo = icmp eq i32 %i.t, 1
  %unroll_iter3334 = and i32 %i.t, 2147483646
  %lcmp.mod3332.not = icmp eq i32 %xtraiter3330, 0
  %lcmp.mod3333 = trunc i32 %i.t to i1
  br label %_ZN4ncnn3MatD2Ev.exit1069

_ZN4ncnn3MatD2Ev.exit1069:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1069.preheader, %._crit_edge3015
  %indvars.iv3134 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1069.preheader ], [ %indvars.iv.next3135, %._crit_edge3015 ] ; 4 uses
  %i.up = load ptr, ptr %1, align 8, !tbaa !132, !noalias !159 ; 2 uses
  %i.uq = load i64, ptr %i.uk, align 8, !tbaa !133, !noalias !159 ; 2 uses
  %i.ur = mul i64 %i.uq, %indvars.iv3134
  %i.us = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !159 ; 2 uses
  %i.ut = mul i64 %i.ur, %i.us
  %i.uu = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.ut ; 2 uses
  %i.uv = add nuw nsw i64 %indvars.iv3134, %i.un
  %i.uw = mul i64 %i.uq, %i.uv
  %i.ux = mul i64 %i.uw, %i.us
  %i.uy = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.ux ; 2 uses
  %i.uz = shl nuw nsw i64 %indvars.iv3134, 1      ; 2 uses
  %i.va = load ptr, ptr %2, align 8, !tbaa !132, !noalias !160 ; 2 uses
  %i.vb = load i64, ptr %i.uc, align 8, !tbaa !133, !noalias !160 ; 2 uses
  %i.vc = mul i64 %i.vb, %i.uz
  %i.vd = load i64, ptr %i.ul, align 8, !tbaa !120, !noalias !160 ; 2 uses
  %i.ve = mul i64 %i.vc, %i.vd
  %i.vf = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.ve ; 2 uses
  %i.vg = or disjoint i64 %i.uz, 1
  %i.vh = mul i64 %i.vb, %i.vg
  %i.vi = mul i64 %i.vh, %i.vd
  %i.vj = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.vi ; 2 uses
  br i1 %i.uo, label %.epil.preheader3329, label %_ZN4ncnn3MatD2Ev.exit1069.new

._crit_edge3015.unr-lcssa:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1069.new
  br i1 %lcmp.mod3332.not, label %._crit_edge3015, label %.epil.preheader3329

.epil.preheader3329:                              ; preds = %._crit_edge3015.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit1069
  %.09253013.epil.init = phi ptr [ %i.uu, %_ZN4ncnn3MatD2Ev.exit1069 ], [ %i.wa, %._crit_edge3015.unr-lcssa ]
  %.09263012.epil.init = phi ptr [ %i.uy, %_ZN4ncnn3MatD2Ev.exit1069 ], [ %i.wb, %._crit_edge3015.unr-lcssa ]
  %.09273011.epil.init = phi ptr [ %i.vf, %_ZN4ncnn3MatD2Ev.exit1069 ], [ %i.wc, %._crit_edge3015.unr-lcssa ]
  %.09283010.epil.init = phi ptr [ %i.vj, %_ZN4ncnn3MatD2Ev.exit1069 ], [ %i.wd, %._crit_edge3015.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3333)
  %i.vk = load <8 x float>, ptr %.09253013.epil.init, align 1, !tbaa !142 ; 2 uses
  %i.vl = load <8 x float>, ptr %.09263012.epil.init, align 1, !tbaa !142 ; 2 uses
  %i.vm = shufflevector <8 x float> %i.vk, <8 x float> %i.vl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vn = shufflevector <8 x float> %i.vk, <8 x float> %i.vl, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.vm, ptr %.09273011.epil.init, align 1, !tbaa !142
  store <8 x float> %i.vn, ptr %.09283010.epil.init, align 1, !tbaa !142
  br label %._crit_edge3015

._crit_edge3015:                                  ; preds = %._crit_edge3015.unr-lcssa, %.epil.preheader3329
  %indvars.iv.next3135 = add nuw nsw i64 %indvars.iv3134, 1 ; 2 uses
  %exitcond3138.not = icmp eq i64 %indvars.iv.next3135, %i.un
  br i1 %exitcond3138.not, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZN4ncnn3MatD2Ev.exit1069, !llvm.loop !72

_ZN4ncnn3MatD2Ev.exit1069.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit1069, %_ZN4ncnn3MatD2Ev.exit1069.new
  %.09253013 = phi ptr [ %i.wa, %_ZN4ncnn3MatD2Ev.exit1069.new ], [ %i.uu, %_ZN4ncnn3MatD2Ev.exit1069 ] ; 3 uses
  %.09263012 = phi ptr [ %i.wb, %_ZN4ncnn3MatD2Ev.exit1069.new ], [ %i.uy, %_ZN4ncnn3MatD2Ev.exit1069 ] ; 3 uses
  %.09273011 = phi ptr [ %i.wc, %_ZN4ncnn3MatD2Ev.exit1069.new ], [ %i.vf, %_ZN4ncnn3MatD2Ev.exit1069 ] ; 3 uses
  %.09283010 = phi ptr [ %i.wd, %_ZN4ncnn3MatD2Ev.exit1069.new ], [ %i.vj, %_ZN4ncnn3MatD2Ev.exit1069 ] ; 3 uses
  %niter3335 = phi i32 [ %niter3335.next.1, %_ZN4ncnn3MatD2Ev.exit1069.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1069 ]
  %i.vo = load <8 x float>, ptr %.09253013, align 1, !tbaa !142 ; 2 uses
  %i.vp = load <8 x float>, ptr %.09263012, align 1, !tbaa !142 ; 2 uses
  %i.vq = shufflevector <8 x float> %i.vo, <8 x float> %i.vp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vr = shufflevector <8 x float> %i.vo, <8 x float> %i.vp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.vq, ptr %.09273011, align 1, !tbaa !142
  store <8 x float> %i.vr, ptr %.09283010, align 1, !tbaa !142
  %i.vs = getelementptr inbounds nuw i8, ptr %.09253013, i64 32
  %i.vt = getelementptr inbounds nuw i8, ptr %.09263012, i64 32
  %i.vu = getelementptr inbounds nuw i8, ptr %.09273011, i64 32
  %i.vv = getelementptr inbounds nuw i8, ptr %.09283010, i64 32
  %i.vw = load <8 x float>, ptr %i.vs, align 1, !tbaa !142 ; 2 uses
  %i.vx = load <8 x float>, ptr %i.vt, align 1, !tbaa !142 ; 2 uses
  %i.vy = shufflevector <8 x float> %i.vw, <8 x float> %i.vx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vz = shufflevector <8 x float> %i.vw, <8 x float> %i.vx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.vy, ptr %i.vu, align 1, !tbaa !142
  store <8 x float> %i.vz, ptr %i.vv, align 1, !tbaa !142
  %i.wa = getelementptr inbounds nuw i8, ptr %.09253013, i64 64 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.09263012, i64 64 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.09273011, i64 64 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.09283010, i64 64 ; 2 uses
  %niter3335.next.1 = add i32 %niter3335, 2       ; 2 uses
  %niter3335.ncmp.1 = icmp eq i32 %niter3335.next.1, %unroll_iter3334
  br i1 %niter3335.ncmp.1, label %._crit_edge3015.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit1069.new, !llvm.loop !73

bb.cs:                                            ; preds = %bb.cr
  switch i32 %i.ac, label %bb.ej [
    i32 3, label %.preheader2936
    i32 4, label %.preheader2938
  ]

.preheader2938:                                   ; preds = %bb.cs
  %i.we = icmp sgt i32 %17, 0
  br i1 %i.we, label %_ZN4ncnn3MatD2Ev.exit1059.lr.ph, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1059.lr.ph:                  ; preds = %.preheader2938
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.wg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.wh = icmp sgt i32 %i.t, 0
  br i1 %i.wh, label %_ZN4ncnn3MatD2Ev.exit1059.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1059.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit1059.lr.ph
  %i.wi = mul nuw nsw i32 %17, 3
  %i.wj = shl nuw nsw i32 %17, 1
  %i.wk = zext nneg i32 %17 to i64                ; 2 uses
  %i.wl = zext nneg i32 %i.wj to i64
  %i.wm = zext nneg i32 %i.wi to i64
  br label %_ZN4ncnn3MatD2Ev.exit1059

.preheader2936:                                   ; preds = %bb.cs
  %i.wn = icmp sgt i32 %17, 0
  br i1 %i.wn, label %_ZN4ncnn3MatD2Ev.exit1065.lr.ph, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1065.lr.ph:                  ; preds = %.preheader2936
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.wp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.wq = icmp sgt i32 %i.t, 0
  br i1 %i.wq, label %_ZN4ncnn3MatD2Ev.exit1065.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1065.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit1065.lr.ph
  %i.wr = shl nuw nsw i32 %17, 1
  %i.ws = zext nneg i32 %17 to i64                ; 2 uses
  %i.wt = zext nneg i32 %i.wr to i64
  br label %_ZN4ncnn3MatD2Ev.exit1065

_ZN4ncnn3MatD2Ev.exit1065:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1065.preheader, %._crit_edge3037
  %indvars.iv3146 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1065.preheader ], [ %indvars.iv.next3147, %._crit_edge3037 ] ; 5 uses
  %i.wu = load ptr, ptr %1, align 8, !tbaa !132, !noalias !161 ; 3 uses
  %i.wv = load i64, ptr %i.wo, align 8, !tbaa !133, !noalias !161 ; 3 uses
  %i.ww = mul i64 %i.wv, %indvars.iv3146
  %i.wx = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !161 ; 3 uses
  %i.wy = mul i64 %i.ww, %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.wy
  %i.xa = add nuw nsw i64 %indvars.iv3146, %i.ws
  %i.xb = mul i64 %i.wv, %i.xa
  %i.xc = mul i64 %i.xb, %i.wx
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.xc
  %i.xe = add nuw nsw i64 %indvars.iv3146, %i.wt
  %i.xf = mul i64 %i.wv, %i.xe
  %i.xg = mul i64 %i.xf, %i.wx
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.xg
  %i.xi = mul nuw nsw i64 %indvars.iv3146, 3      ; 3 uses
  %i.xj = load ptr, ptr %2, align 8, !tbaa !132, !noalias !162 ; 3 uses
  %i.xk = load i64, ptr %i.uc, align 8, !tbaa !133, !noalias !162 ; 3 uses
  %i.xl = mul i64 %i.xk, %i.xi
  %i.xm = load i64, ptr %i.wp, align 8, !tbaa !120, !noalias !162 ; 3 uses
  %i.xn = mul i64 %i.xl, %i.xm
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xj, i64 %i.xn
  %i.xp = add nuw nsw i64 %i.xi, 1
  %i.xq = mul i64 %i.xk, %i.xp
  %i.xr = mul i64 %i.xq, %i.xm
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xj, i64 %i.xr
  %i.xt = add nuw nsw i64 %i.xi, 2
  %i.xu = mul i64 %i.xk, %i.xt
  %i.xv = mul i64 %i.xu, %i.xm
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xj, i64 %i.xv
  br label %bb.ct

._crit_edge3037:                                  ; preds = %bb.ct
  %indvars.iv.next3147 = add nuw nsw i64 %indvars.iv3146, 1 ; 2 uses
  %exitcond3150.not = icmp eq i64 %indvars.iv.next3147, %i.ws
  br i1 %exitcond3150.not, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZN4ncnn3MatD2Ev.exit1065, !llvm.loop !78

bb.ct:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1065, %bb.ct
  %.09293035 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1065 ], [ %i.yr, %bb.ct ]
  %.09303034 = phi ptr [ %i.xw, %_ZN4ncnn3MatD2Ev.exit1065 ], [ %i.yq, %bb.ct ] ; 2 uses
  %.09313033 = phi ptr [ %i.xs, %_ZN4ncnn3MatD2Ev.exit1065 ], [ %i.yp, %bb.ct ] ; 2 uses
  %.09323032 = phi ptr [ %i.xo, %_ZN4ncnn3MatD2Ev.exit1065 ], [ %i.yo, %bb.ct ] ; 2 uses
  %.09333031 = phi ptr [ %i.xh, %_ZN4ncnn3MatD2Ev.exit1065 ], [ %i.yn, %bb.ct ] ; 2 uses
  %.09343030 = phi ptr [ %i.xd, %_ZN4ncnn3MatD2Ev.exit1065 ], [ %i.ym, %bb.ct ] ; 2 uses
  %.09353029 = phi ptr [ %i.wz, %_ZN4ncnn3MatD2Ev.exit1065 ], [ %i.yl, %bb.ct ] ; 2 uses
  %i.xx = load <8 x float>, ptr %.09353029, align 1, !tbaa !142 ; 3 uses
  %i.xy = load <8 x float>, ptr %.09343030, align 1, !tbaa !142 ; 4 uses
  %i.xz = load <8 x float>, ptr %.09333031, align 1, !tbaa !142 ; 3 uses
  %i.ya = shufflevector <8 x float> %i.xx, <8 x float> %i.xy, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.yb = shufflevector <8 x float> %i.xx, <8 x float> %i.xy, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.yc = shufflevector <8 x float> %i.xy, <8 x float> %i.xz, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.yd = shufflevector <8 x float> %i.xy, <8 x float> %i.xz, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ye = shufflevector <8 x float> %i.xz, <8 x float> %i.xx, <8 x i32> <i32 2, i32 11, i32 0, i32 9, i32 6, i32 15, i32 4, i32 13> ; 2 uses
  %i.yf = shufflevector <8 x float> %i.yc, <8 x float> %i.yb, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.yg = shufflevector <8 x float> %i.ya, <8 x float> %i.ye, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.yh = shufflevector <8 x float> %i.ye, <8 x float> %i.yd, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.yi = shufflevector <8 x float> %i.yg, <8 x float> %i.yf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.yj = shufflevector <8 x float> %i.yh, <8 x float> %i.yg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.yk = shufflevector <8 x float> %i.yf, <8 x float> %i.yh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.yi, ptr %.09323032, align 1, !tbaa !142
  store <8 x float> %i.yj, ptr %.09313033, align 1, !tbaa !142
  store <8 x float> %i.yk, ptr %.09303034, align 1, !tbaa !142
  %i.yl = getelementptr inbounds nuw i8, ptr %.09353029, i64 32
  %i.ym = getelementptr inbounds nuw i8, ptr %.09343030, i64 32
  %i.yn = getelementptr inbounds nuw i8, ptr %.09333031, i64 32
  %i.yo = getelementptr inbounds nuw i8, ptr %.09323032, i64 32
  %i.yp = getelementptr inbounds nuw i8, ptr %.09313033, i64 32
  %i.yq = getelementptr inbounds nuw i8, ptr %.09303034, i64 32
  %i.yr = add nuw nsw i32 %.09293035, 1           ; 2 uses
  %exitcond3145.not = icmp eq i32 %i.yr, %i.t
  br i1 %exitcond3145.not, label %._crit_edge3037, label %bb.ct, !llvm.loop !79

_ZN4ncnn3MatD2Ev.exit1059:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1059.preheader, %._crit_edge3027
  %indvars.iv3140 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1059.preheader ], [ %indvars.iv.next3141, %._crit_edge3027 ] ; 6 uses
  %i.ys = load ptr, ptr %1, align 8, !tbaa !132, !noalias !163 ; 4 uses
  %i.yt = load i64, ptr %i.wf, align 8, !tbaa !133, !noalias !163 ; 4 uses
  %i.yu = mul i64 %i.yt, %indvars.iv3140
  %i.yv = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !163 ; 4 uses
  %i.yw = mul i64 %i.yu, %i.yv
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.yw
  %i.yy = add nuw nsw i64 %indvars.iv3140, %i.wk
  %i.yz = mul i64 %i.yt, %i.yy
  %i.za = mul i64 %i.yz, %i.yv
  %i.zb = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.za
  %i.zc = add nuw nsw i64 %indvars.iv3140, %i.wl
  %i.zd = mul i64 %i.yt, %i.zc
  %i.ze = mul i64 %i.zd, %i.yv
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.ze
  %i.zg = add nuw nsw i64 %indvars.iv3140, %i.wm
  %i.zh = mul i64 %i.yt, %i.zg
  %i.zi = mul i64 %i.zh, %i.yv
  %i.zj = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.zi
  %i.zk = shl nuw nsw i64 %indvars.iv3140, 2      ; 4 uses
  %i.zl = load ptr, ptr %2, align 8, !tbaa !132, !noalias !164 ; 4 uses
  %i.zm = load i64, ptr %i.uc, align 8, !tbaa !133, !noalias !164 ; 4 uses
  %i.zn = mul i64 %i.zm, %i.zk
  %i.zo = load i64, ptr %i.wg, align 8, !tbaa !120, !noalias !164 ; 4 uses
  %i.zp = mul i64 %i.zn, %i.zo
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zl, i64 %i.zp
  %i.zr = or disjoint i64 %i.zk, 1
  %i.zs = mul i64 %i.zm, %i.zr
  %i.zt = mul i64 %i.zs, %i.zo
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zl, i64 %i.zt
  %i.zv = or disjoint i64 %i.zk, 2
  %i.zw = mul i64 %i.zm, %i.zv
  %i.zx = mul i64 %i.zw, %i.zo
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zl, i64 %i.zx
  %i.zz = or disjoint i64 %i.zk, 3
  %i.aaa = mul i64 %i.zm, %i.zz
  %i.aab = mul i64 %i.aaa, %i.zo
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zl, i64 %i.aab
  br label %bb.cu

._crit_edge3027:                                  ; preds = %bb.cu
  %indvars.iv.next3141 = add nuw nsw i64 %indvars.iv3140, 1 ; 2 uses
  %exitcond3144.not = icmp eq i64 %indvars.iv.next3141, %i.wk
  br i1 %exitcond3144.not, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZN4ncnn3MatD2Ev.exit1059, !llvm.loop !84

bb.cu:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1059, %bb.cu
  %.09043025 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1059 ], [ %i.aax, %bb.cu ]
  %.09053024 = phi ptr [ %i.aac, %_ZN4ncnn3MatD2Ev.exit1059 ], [ %i.aaw, %bb.cu ] ; 2 uses
  %.09063023 = phi ptr [ %i.zy, %_ZN4ncnn3MatD2Ev.exit1059 ], [ %i.aav, %bb.cu ] ; 2 uses
  %.09073022 = phi ptr [ %i.zu, %_ZN4ncnn3MatD2Ev.exit1059 ], [ %i.aau, %bb.cu ] ; 2 uses
  %.09083021 = phi ptr [ %i.zq, %_ZN4ncnn3MatD2Ev.exit1059 ], [ %i.aat, %bb.cu ] ; 2 uses
  %.09093020 = phi ptr [ %i.zj, %_ZN4ncnn3MatD2Ev.exit1059 ], [ %i.aas, %bb.cu ] ; 2 uses
  %.09103019 = phi ptr [ %i.zf, %_ZN4ncnn3MatD2Ev.exit1059 ], [ %i.aar, %bb.cu ] ; 2 uses
  %.09113018 = phi ptr [ %i.zb, %_ZN4ncnn3MatD2Ev.exit1059 ], [ %i.aaq, %bb.cu ] ; 2 uses
  %.09123017 = phi ptr [ %i.yx, %_ZN4ncnn3MatD2Ev.exit1059 ], [ %i.aap, %bb.cu ] ; 2 uses
  %i.aad = load <8 x float>, ptr %.09123017, align 1, !tbaa !142 ; 2 uses
  %i.aae = load <8 x float>, ptr %.09113018, align 1, !tbaa !142 ; 2 uses
  %i.aaf = load <8 x float>, ptr %.09103019, align 1, !tbaa !142 ; 2 uses
  %i.aag = load <8 x float>, ptr %.09093020, align 1, !tbaa !142 ; 2 uses
  %i.aah = shufflevector <8 x float> %i.aad, <8 x float> %i.aaf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aai = shufflevector <8 x float> %i.aad, <8 x float> %i.aaf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aaj = shufflevector <8 x float> %i.aae, <8 x float> %i.aag, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aak = shufflevector <8 x float> %i.aae, <8 x float> %i.aag, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aal = shufflevector <8 x float> %i.aah, <8 x float> %i.aaj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aam = shufflevector <8 x float> %i.aai, <8 x float> %i.aak, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aan = shufflevector <8 x float> %i.aah, <8 x float> %i.aaj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aao = shufflevector <8 x float> %i.aai, <8 x float> %i.aak, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.aal, ptr %.09083021, align 1, !tbaa !142
  store <8 x float> %i.aam, ptr %.09073022, align 1, !tbaa !142
  store <8 x float> %i.aan, ptr %.09063023, align 1, !tbaa !142
  store <8 x float> %i.aao, ptr %.09053024, align 1, !tbaa !142
  %i.aap = getelementptr inbounds nuw i8, ptr %.09123017, i64 32
  %i.aaq = getelementptr inbounds nuw i8, ptr %.09113018, i64 32
  %i.aar = getelementptr inbounds nuw i8, ptr %.09103019, i64 32
  %i.aas = getelementptr inbounds nuw i8, ptr %.09093020, i64 32
  %i.aat = getelementptr inbounds nuw i8, ptr %.09083021, i64 32
  %i.aau = getelementptr inbounds nuw i8, ptr %.09073022, i64 32
  %i.aav = getelementptr inbounds nuw i8, ptr %.09063023, i64 32
  %i.aaw = getelementptr inbounds nuw i8, ptr %.09053024, i64 32
  %i.aax = add nuw nsw i32 %.09043025, 1          ; 2 uses
  %exitcond3139.not = icmp eq i32 %i.aax, %i.t
  br i1 %exitcond3139.not, label %._crit_edge3027, label %bb.cu, !llvm.loop !85

bb.cv:                                            ; preds = %bb.o
  %i.aay = icmp ne i32 %i.ac, 2                   ; 2 uses
  %i.aaz = and i32 %i.r, 1
  %.not960 = icmp eq i32 %i.aaz, 0
  %or.cond973 = select i1 %i.aay, i1 true, i1 %.not960
  br i1 %or.cond973, label %35, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.aba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !137
  tail call void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.abb)
  %i.abc = load ptr, ptr %2, align 8, !tbaa !132  ; 3 uses
  %i.abd = icmp eq ptr %i.abc, null
  br i1 %i.abd, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZNK4ncnn3Mat5emptyEv.exit975

_ZNK4ncnn3Mat5emptyEv.exit975:                    ; preds = %bb.cw
  %i.abe = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.abf = load i64, ptr %i.abe, align 8, !tbaa !133 ; 3 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.abh = load i32, ptr %i.abg, align 8, !tbaa !126
  %i.abi = sext i32 %i.abh to i64
  %i.abj = mul i64 %i.abf, %i.abi
  %i.abk = icmp eq i64 %i.abj, 0
  br i1 %i.abk, label %_ZN4ncnn3MataSERKS0_.exit, label %.preheader2950

.preheader2950:                                   ; preds = %_ZNK4ncnn3Mat5emptyEv.exit975
  %i.abl = icmp sgt i32 %17, 0
  br i1 %i.abl, label %_ZN4ncnn3MatD2Ev.exit1051.lr.ph, label %_ZN4ncnn3MatD2Ev.exit1046

_ZN4ncnn3MatD2Ev.exit1051.lr.ph:                  ; preds = %.preheader2950
  %i.abm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.abn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.abo = icmp sgt i32 %i.t, 0
  br i1 %i.abo, label %_ZN4ncnn3MatD2Ev.exit1051.preheader, label %_ZN4ncnn3MatD2Ev.exit1046

_ZN4ncnn3MatD2Ev.exit1051.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit1051.lr.ph
  %i.abp = zext nneg i32 %17 to i64               ; 2 uses
  %xtraiter = and i32 %i.t, 1
  %i.abq = icmp eq i32 %i.t, 1
  %unroll_iter = and i32 %i.t, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod3300 = trunc i32 %i.t to i1
  br label %_ZN4ncnn3MatD2Ev.exit1051

_ZN4ncnn3MatD2Ev.exit1046.loopexit:               ; preds = %._crit_edge
  %.pre = load ptr, ptr %2, align 8, !tbaa !132, !noalias !165
  %.pre3176 = load i64, ptr %i.abe, align 8, !tbaa !133, !noalias !165
  br label %_ZN4ncnn3MatD2Ev.exit1046

_ZN4ncnn3MatD2Ev.exit1046:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1046.loopexit, %_ZN4ncnn3MatD2Ev.exit1051.lr.ph, %.preheader2950
  %i.abr = phi i64 [ %.pre3176, %_ZN4ncnn3MatD2Ev.exit1046.loopexit ], [ %i.abf, %_ZN4ncnn3MatD2Ev.exit1051.lr.ph ], [ %i.abf, %.preheader2950 ]
  %i.abs = phi ptr [ %.pre, %_ZN4ncnn3MatD2Ev.exit1046.loopexit ], [ %i.abc, %_ZN4ncnn3MatD2Ev.exit1051.lr.ph ], [ %i.abc, %.preheader2950 ]
  %i.abt = load ptr, ptr %1, align 8, !tbaa !132, !noalias !166 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.abv = load i64, ptr %i.abu, align 8, !tbaa !133, !noalias !166 ; 2 uses
  %i.abw = sext i32 %17 to i64
  %i.abx = mul i64 %i.abv, %i.abw
  %i.aby = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !166 ; 2 uses
  %i.abz = mul i64 %i.abx, %i.aby
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.abz ; 3 uses
  %i.acb = shl nsw i32 %17, 1
  %i.acc = sext i32 %i.acb to i64                 ; 2 uses
  %i.acd = mul i64 %i.abv, %i.acc
  %i.ace = mul i64 %i.acd, %i.aby
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.ace
  %i.acg = mul i64 %i.abr, %i.acc
  %i.ach = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !120, !noalias !165
  %i.acj = mul i64 %i.acg, %i.aci
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.acj ; 3 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acf, i64 8 ; 3 uses
  %i.acm = icmp sgt i32 %i.t, 1
  br i1 %i.acm, label %.lr.ph.preheader, label %._crit_edge2962

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit1046
  %i.acn = add nsw i32 %i.t, -2
  %i.aco = add nsw i32 %i.t, -1                   ; 2 uses
  %xtraiter3301 = and i32 %i.aco, 3               ; 3 uses
  %i.acp = icmp ult i32 %i.acn, 3
  br i1 %i.acp, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter3307 = and i32 %i.aco, -4
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit1051:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1051.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1051.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.acq = load ptr, ptr %1, align 8, !tbaa !132, !noalias !167 ; 3 uses
  %i.acr = load i64, ptr %i.abm, align 8, !tbaa !133, !noalias !167 ; 3 uses
  %i.acs = mul i64 %i.acr, %indvars.iv
  %i.act = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !167 ; 3 uses
  %i.acu = mul i64 %i.acs, %i.act
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acq, i64 %i.acu ; 2 uses
  %i.acw = add nuw nsw i64 %indvars.iv, %i.abp    ; 2 uses
  %i.acx = mul i64 %i.acr, %i.acw
  %i.acy = mul i64 %i.acx, %i.act
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acq, i64 %i.acy ; 2 uses
  %i.ada = add nuw nsw i64 %i.acw, 1
  %i.adb = mul i64 %i.acr, %i.ada
  %i.adc = mul i64 %i.adb, %i.act
  %i.add = getelementptr inbounds nuw i8, ptr %i.acq, i64 %i.adc ; 2 uses
  %i.ade = shl nuw nsw i64 %indvars.iv, 1         ; 2 uses
  %i.adf = load ptr, ptr %2, align 8, !tbaa !132, !noalias !168 ; 2 uses
  %i.adg = load i64, ptr %i.abe, align 8, !tbaa !133, !noalias !168 ; 2 uses
  %i.adh = mul i64 %i.adg, %i.ade
  %i.adi = load i64, ptr %i.abn, align 8, !tbaa !120, !noalias !168 ; 2 uses
  %i.adj = mul i64 %i.adh, %i.adi
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.adj ; 2 uses
  %i.adl = or disjoint i64 %i.ade, 1
  %i.adm = mul i64 %i.adg, %i.adl
  %i.adn = mul i64 %i.adm, %i.adi
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.adn ; 2 uses
  br i1 %i.abq, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit1051.new

._crit_edge.unr-lcssa:                            ; preds = %_ZN4ncnn3MatD2Ev.exit1051.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit1051
  %.08822955.epil.init = phi ptr [ %i.ado, %_ZN4ncnn3MatD2Ev.exit1051 ], [ %i.aen, %._crit_edge.unr-lcssa ]
  %.08832954.epil.init = phi ptr [ %i.adk, %_ZN4ncnn3MatD2Ev.exit1051 ], [ %i.aem, %._crit_edge.unr-lcssa ]
  %.08842953.epil.init = phi ptr [ %i.add, %_ZN4ncnn3MatD2Ev.exit1051 ], [ %i.ael, %._crit_edge.unr-lcssa ]
  %.08852952.epil.init = phi ptr [ %i.acz, %_ZN4ncnn3MatD2Ev.exit1051 ], [ %i.aek, %._crit_edge.unr-lcssa ]
  %.08862951.epil.init = phi ptr [ %i.acv, %_ZN4ncnn3MatD2Ev.exit1051 ], [ %i.aej, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3300)
  %i.adp = load <4 x float>, ptr %.08862951.epil.init, align 1, !tbaa !142 ; 2 uses
  %i.adq = load <4 x float>, ptr %.08852952.epil.init, align 1, !tbaa !142
  %i.adr = load <4 x float>, ptr %.08842953.epil.init, align 1, !tbaa !142
  %i.ads = shufflevector <4 x float> %i.adp, <4 x float> %i.adq, <4 x i32> <i32 0, i32 6, i32 1, i32 7>
  %i.adt = shufflevector <4 x float> %i.adp, <4 x float> %i.adr, <4 x i32> <i32 2, i32 4, i32 3, i32 5>
  store <4 x float> %i.ads, ptr %.08832954.epil.init, align 1, !tbaa !142
  store <4 x float> %i.adt, ptr %.08822955.epil.init, align 1, !tbaa !142
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond3106.not = icmp eq i64 %indvars.iv.next, %i.abp
  br i1 %exitcond3106.not, label %_ZN4ncnn3MatD2Ev.exit1046.loopexit, label %_ZN4ncnn3MatD2Ev.exit1051, !llvm.loop !94

_ZN4ncnn3MatD2Ev.exit1051.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit1051, %_ZN4ncnn3MatD2Ev.exit1051.new
  %.08822955 = phi ptr [ %i.aen, %_ZN4ncnn3MatD2Ev.exit1051.new ], [ %i.ado, %_ZN4ncnn3MatD2Ev.exit1051 ] ; 3 uses
  %.08832954 = phi ptr [ %i.aem, %_ZN4ncnn3MatD2Ev.exit1051.new ], [ %i.adk, %_ZN4ncnn3MatD2Ev.exit1051 ] ; 3 uses
  %.08842953 = phi ptr [ %i.ael, %_ZN4ncnn3MatD2Ev.exit1051.new ], [ %i.add, %_ZN4ncnn3MatD2Ev.exit1051 ] ; 3 uses
  %.08852952 = phi ptr [ %i.aek, %_ZN4ncnn3MatD2Ev.exit1051.new ], [ %i.acz, %_ZN4ncnn3MatD2Ev.exit1051 ] ; 3 uses
  %.08862951 = phi ptr [ %i.aej, %_ZN4ncnn3MatD2Ev.exit1051.new ], [ %i.acv, %_ZN4ncnn3MatD2Ev.exit1051 ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %_ZN4ncnn3MatD2Ev.exit1051.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1051 ]
  %i.adu = load <4 x float>, ptr %.08862951, align 1, !tbaa !142 ; 2 uses
  %i.adv = load <4 x float>, ptr %.08852952, align 1, !tbaa !142
  %i.adw = load <4 x float>, ptr %.08842953, align 1, !tbaa !142
  %i.adx = shufflevector <4 x float> %i.adu, <4 x float> %i.adv, <4 x i32> <i32 0, i32 6, i32 1, i32 7>
  %i.ady = shufflevector <4 x float> %i.adu, <4 x float> %i.adw, <4 x i32> <i32 2, i32 4, i32 3, i32 5>
  store <4 x float> %i.adx, ptr %.08832954, align 1, !tbaa !142
  store <4 x float> %i.ady, ptr %.08822955, align 1, !tbaa !142
  %i.adz = getelementptr inbounds nuw i8, ptr %.08862951, i64 16
  %i.aea = getelementptr inbounds nuw i8, ptr %.08852952, i64 16
  %i.aeb = getelementptr inbounds nuw i8, ptr %.08842953, i64 16
  %i.aec = getelementptr inbounds nuw i8, ptr %.08832954, i64 16
  %i.aed = getelementptr inbounds nuw i8, ptr %.08822955, i64 16
  %i.aee = load <4 x float>, ptr %i.adz, align 1, !tbaa !142 ; 2 uses
  %i.aef = load <4 x float>, ptr %i.aea, align 1, !tbaa !142
  %i.aeg = load <4 x float>, ptr %i.aeb, align 1, !tbaa !142
  %i.aeh = shufflevector <4 x float> %i.aee, <4 x float> %i.aef, <4 x i32> <i32 0, i32 6, i32 1, i32 7>
  %i.aei = shufflevector <4 x float> %i.aee, <4 x float> %i.aeg, <4 x i32> <i32 2, i32 4, i32 3, i32 5>
  store <4 x float> %i.aeh, ptr %i.aec, align 1, !tbaa !142
  store <4 x float> %i.aei, ptr %i.aed, align 1, !tbaa !142
  %i.aej = getelementptr inbounds nuw i8, ptr %.08862951, i64 32 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.08852952, i64 32 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %.08842953, i64 32 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.08832954, i64 32 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %.08822955, i64 32 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit1051.new, !llvm.loop !95

._crit_edge2962.loopexit.unr-lcssa:               ; preds = %.lr.ph
  %lcmp.mod3302.not = icmp eq i32 %xtraiter3301, 0
  br i1 %lcmp.mod3302.not, label %._crit_edge2962, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge2962.loopexit.unr-lcssa, %.lr.ph.preheader
  %.08722960.epil.init = phi ptr [ %i.ack, %.lr.ph.preheader ], [ %i.aga, %._crit_edge2962.loopexit.unr-lcssa ]
  %.08732959.epil.init = phi ptr [ %i.acl, %.lr.ph.preheader ], [ %i.afz, %._crit_edge2962.loopexit.unr-lcssa ]
  %.08742958.epil.init = phi ptr [ %i.aca, %.lr.ph.preheader ], [ %i.afy, %._crit_edge2962.loopexit.unr-lcssa ]
  %lcmp.mod3306 = icmp ne i32 %xtraiter3301, 0
  tail call void @llvm.assume(i1 %lcmp.mod3306)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.08722960.epil = phi ptr [ %i.aet, %.lr.ph.epil ], [ %.08722960.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.08732959.epil = phi ptr [ %i.aes, %.lr.ph.epil ], [ %.08732959.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.08742958.epil = phi ptr [ %i.aer, %.lr.ph.epil ], [ %.08742958.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.aeo = load <4 x float>, ptr %.08742958.epil, align 1, !tbaa !142
  %i.aep = load <4 x float>, ptr %.08732959.epil, align 1, !tbaa !142
  %i.aeq = shufflevector <4 x float> %i.aeo, <4 x float> %i.aep, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.aeq, ptr %.08722960.epil, align 1, !tbaa !142
  %i.aer = getelementptr inbounds nuw i8, ptr %.08742958.epil, i64 16 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %.08732959.epil, i64 16 ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %.08722960.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter3301
  br i1 %epil.iter.cmp.not, label %._crit_edge2962, label %.lr.ph.epil, !llvm.loop !96

._crit_edge2962:                                  ; preds = %._crit_edge2962.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN4ncnn3MatD2Ev.exit1046
  %.0874.lcssa = phi ptr [ %i.aca, %_ZN4ncnn3MatD2Ev.exit1046 ], [ %i.afy, %._crit_edge2962.loopexit.unr-lcssa ], [ %i.aer, %.lr.ph.epil ] ; 2 uses
  %.0873.lcssa = phi ptr [ %i.acl, %_ZN4ncnn3MatD2Ev.exit1046 ], [ %i.afz, %._crit_edge2962.loopexit.unr-lcssa ], [ %i.aes, %.lr.ph.epil ] ; 2 uses
  %.0872.lcssa = phi ptr [ %i.ack, %_ZN4ncnn3MatD2Ev.exit1046 ], [ %i.aga, %._crit_edge2962.loopexit.unr-lcssa ], [ %i.aet, %.lr.ph.epil ] ; 4 uses
  %i.aeu = load float, ptr %.0874.lcssa, align 4, !tbaa !171
  store float %i.aeu, ptr %.0872.lcssa, align 4, !tbaa !171
  %i.aev = load float, ptr %.0873.lcssa, align 4, !tbaa !171
  %i.aew = getelementptr inbounds nuw i8, ptr %.0872.lcssa, i64 4
  store float %i.aev, ptr %i.aew, align 4, !tbaa !171
  %i.aex = getelementptr inbounds nuw i8, ptr %.0874.lcssa, i64 4
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !171
  %i.aez = getelementptr inbounds nuw i8, ptr %.0872.lcssa, i64 8
  store float %i.aey, ptr %i.aez, align 4, !tbaa !171
  %i.afa = getelementptr inbounds nuw i8, ptr %.0873.lcssa, i64 4
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !171
  %i.afc = getelementptr inbounds nuw i8, ptr %.0872.lcssa, i64 12
  store float %i.afb, ptr %i.afc, align 4, !tbaa !171
  br label %_ZN4ncnn3MataSERKS0_.exit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.08722960 = phi ptr [ %i.ack, %.lr.ph.preheader.new ], [ %i.aga, %.lr.ph ] ; 5 uses
  %.08732959 = phi ptr [ %i.acl, %.lr.ph.preheader.new ], [ %i.afz, %.lr.ph ] ; 5 uses
  %.08742958 = phi ptr [ %i.aca, %.lr.ph.preheader.new ], [ %i.afy, %.lr.ph ] ; 5 uses
  %niter3308 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter3308.next.3, %.lr.ph ]
  %i.afd = load <4 x float>, ptr %.08742958, align 1, !tbaa !142
  %i.afe = load <4 x float>, ptr %.08732959, align 1, !tbaa !142
  %i.aff = shufflevector <4 x float> %i.afd, <4 x float> %i.afe, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.aff, ptr %.08722960, align 1, !tbaa !142
  %i.afg = getelementptr inbounds nuw i8, ptr %.08742958, i64 16
  %i.afh = getelementptr inbounds nuw i8, ptr %.08732959, i64 16
  %i.afi = getelementptr inbounds nuw i8, ptr %.08722960, i64 16
  %i.afj = load <4 x float>, ptr %i.afg, align 1, !tbaa !142
  %i.afk = load <4 x float>, ptr %i.afh, align 1, !tbaa !142
  %i.afl = shufflevector <4 x float> %i.afj, <4 x float> %i.afk, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.afl, ptr %i.afi, align 1, !tbaa !142
  %i.afm = getelementptr inbounds nuw i8, ptr %.08742958, i64 32
  %i.afn = getelementptr inbounds nuw i8, ptr %.08732959, i64 32
  %i.afo = getelementptr inbounds nuw i8, ptr %.08722960, i64 32
  %i.afp = load <4 x float>, ptr %i.afm, align 1, !tbaa !142
  %i.afq = load <4 x float>, ptr %i.afn, align 1, !tbaa !142
  %i.afr = shufflevector <4 x float> %i.afp, <4 x float> %i.afq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.afr, ptr %i.afo, align 1, !tbaa !142
  %i.afs = getelementptr inbounds nuw i8, ptr %.08742958, i64 48
  %i.aft = getelementptr inbounds nuw i8, ptr %.08732959, i64 48
  %i.afu = getelementptr inbounds nuw i8, ptr %.08722960, i64 48
  %i.afv = load <4 x float>, ptr %i.afs, align 1, !tbaa !142
  %i.afw = load <4 x float>, ptr %i.aft, align 1, !tbaa !142
  %i.afx = shufflevector <4 x float> %i.afv, <4 x float> %i.afw, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.afx, ptr %i.afu, align 1, !tbaa !142
  %i.afy = getelementptr inbounds nuw i8, ptr %.08742958, i64 64 ; 3 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %.08732959, i64 64 ; 3 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %.08722960, i64 64 ; 3 uses
  %niter3308.next.3 = add i32 %niter3308, 4       ; 2 uses
  %niter3308.ncmp.3 = icmp eq i32 %niter3308.next.3, %unroll_iter3307
  br i1 %niter3308.ncmp.3, label %._crit_edge2962.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !97

35:                                               ; preds = %bb.cv
  %36 = icmp sgt i32 %i.ac, 4
  br i1 %36, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %35
  %37 = srem i32 %i.r, %i.ac
  %.not961 = icmp eq i32 %37, 0
  br i1 %.not961, label %bb.ee, label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !146
  %i.agb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !147
  %i.agd = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.agc, ptr %i.agd, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.age = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i64 0, ptr %i.agg, align 8, !tbaa !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.agf, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.cz unwind label %bb.db

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.agh = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.agj, align 8, !tbaa !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.agi, i8 0, i64 28, i1 false)
  %i.agk = invoke noundef i32 @_ZNK4ncnn14ShuffleChannel7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.da unwind label %bb.dc     ; 2 uses

bb.da:                                            ; preds = %bb.cz
  %.not962 = icmp eq i32 %i.agk, 0
  br i1 %.not962, label %bb.dj, label %bb.dk

bb.db:                                            ; preds = %bb.cy
  %i.agl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dc:                                            ; preds = %bb.dj, %bb.cz
  %i.agm = landingpad { ptr, i32 }
          cleanup
  %i.agn = load ptr, ptr %i.agh, align 8, !tbaa !130 ; 2 uses
  %.not.i1416 = icmp eq ptr %i.agn, null
  br i1 %.not.i1416, label %_ZN4ncnn3MatD2Ev.exit1043, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ago = atomicrmw add ptr %i.agn, i32 -1 acq_rel, align 4
  %i.agp = icmp eq i32 %i.ago, 1
  br i1 %i.agp, label %bb.de, label %_ZN4ncnn3MatD2Ev.exit1043

bb.de:                                            ; preds = %bb.dd
  %i.agq = load ptr, ptr %i.agi, align 8, !tbaa !131 ; 3 uses
  %.not3.i1417 = icmp eq ptr %i.agq, null
  %i.agr = load ptr, ptr %12, align 8, !tbaa !132 ; 3 uses
  br i1 %.not3.i1417, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ags = load ptr, ptr %i.agq, align 8, !tbaa !27
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 24
  %i.agu = load ptr, ptr %i.agt, align 8
  invoke void %i.agu(ptr noundef nonnull align 8 dereferenceable(8) %i.agq, ptr noundef %i.agr)
          to label %_ZN4ncnn3MatD2Ev.exit1043 unwind label %bb.di, !inline_history !28

bb.dg:                                            ; preds = %bb.de
  %.not.i1550 = icmp eq ptr %i.agr, null
  br i1 %.not.i1550, label %_ZN4ncnn3MatD2Ev.exit1043, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @free(ptr noundef nonnull %i.agr) #14
  br label %_ZN4ncnn3MatD2Ev.exit1043

bb.di:                                            ; preds = %bb.df
  %i.agv = landingpad { ptr, i32 }
          catch ptr null
  %i.agw = extractvalue { ptr, i32 } %i.agv, 0
  call void @__clang_call_terminate(ptr %i.agw) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit1043:                        ; preds = %bb.dd, %bb.dc, %bb.df, %bb.dg, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.dx

bb.dj:                                            ; preds = %bb.da
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.dk unwind label %bb.dc

bb.dk:                                            ; preds = %bb.dj, %bb.da
  %i.agx = load ptr, ptr %i.agh, align 8, !tbaa !130 ; 2 uses
  %.not.i1420 = icmp eq ptr %i.agx, null
  br i1 %.not.i1420, label %_ZN4ncnn3MatD2Ev.exit1042, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.agy = atomicrmw add ptr %i.agx, i32 -1 acq_rel, align 4
  %i.agz = icmp eq i32 %i.agy, 1
  br i1 %i.agz, label %bb.dm, label %_ZN4ncnn3MatD2Ev.exit1042

bb.dm:                                            ; preds = %bb.dl
  %i.aha = load ptr, ptr %i.agi, align 8, !tbaa !131 ; 3 uses
  %.not3.i1421 = icmp eq ptr %i.aha, null
  %i.ahb = load ptr, ptr %12, align 8, !tbaa !132 ; 3 uses
  br i1 %.not3.i1421, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ahc = load ptr, ptr %i.aha, align 8, !tbaa !27
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 24
  %i.ahe = load ptr, ptr %i.ahd, align 8
  invoke void %i.ahe(ptr noundef nonnull align 8 dereferenceable(8) %i.aha, ptr noundef %i.ahb)
          to label %_ZN4ncnn3MatD2Ev.exit1042 unwind label %bb.dq, !inline_history !28

bb.do:                                            ; preds = %bb.dm
  %.not.i1548 = icmp eq ptr %i.ahb, null
  br i1 %.not.i1548, label %_ZN4ncnn3MatD2Ev.exit1042, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @free(ptr noundef nonnull %i.ahb) #14
  br label %_ZN4ncnn3MatD2Ev.exit1042

bb.dq:                                            ; preds = %bb.dn
  %i.ahf = landingpad { ptr, i32 }
          catch ptr null
  %i.ahg = extractvalue { ptr, i32 } %i.ahf, 0
  call void @__clang_call_terminate(ptr %i.ahg) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit1042:                        ; preds = %bb.dl, %bb.dk, %bb.dn, %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.ahh = load ptr, ptr %i.age, align 8, !tbaa !130 ; 2 uses
  %.not.i1424 = icmp eq ptr %i.ahh, null
  br i1 %.not.i1424, label %_ZN4ncnn3MatD2Ev.exit1041, label %bb.dr

bb.dr:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1042
  %i.ahi = atomicrmw add ptr %i.ahh, i32 -1 acq_rel, align 4
  %i.ahj = icmp eq i32 %i.ahi, 1
  br i1 %i.ahj, label %bb.ds, label %_ZN4ncnn3MatD2Ev.exit1041

bb.ds:                                            ; preds = %bb.dr
  %i.ahk = load ptr, ptr %i.agf, align 8, !tbaa !131 ; 3 uses
  %.not3.i1425 = icmp eq ptr %i.ahk, null
  %i.ahl = load ptr, ptr %11, align 8, !tbaa !132 ; 3 uses
  br i1 %.not3.i1425, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ahm = load ptr, ptr %i.ahk, align 8, !tbaa !27
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 24
  %i.aho = load ptr, ptr %i.ahn, align 8
  invoke void %i.aho(ptr noundef nonnull align 8 dereferenceable(8) %i.ahk, ptr noundef %i.ahl)
          to label %_ZN4ncnn3MatD2Ev.exit1041 unwind label %bb.dw, !inline_history !28

bb.du:                                            ; preds = %bb.ds
  %.not.i1546 = icmp eq ptr %i.ahl, null
  br i1 %.not.i1546, label %_ZN4ncnn3MatD2Ev.exit1041, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @free(ptr noundef nonnull %i.ahl) #14
  br label %_ZN4ncnn3MatD2Ev.exit1041

bb.dw:                                            ; preds = %bb.dt
  %i.ahp = landingpad { ptr, i32 }
          catch ptr null
  %i.ahq = extractvalue { ptr, i32 } %i.ahp, 0
  call void @__clang_call_terminate(ptr %i.ahq) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit1041:                        ; preds = %bb.dr, %_ZN4ncnn3MatD2Ev.exit1042, %bb.dt, %bb.du, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.dx:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1043, %bb.db
  %.pn963 = phi { ptr, i32 } [ %i.agm, %_ZN4ncnn3MatD2Ev.exit1043 ], [ %i.agl, %bb.db ]
  %i.ahr = load ptr, ptr %i.age, align 8, !tbaa !130 ; 2 uses
  %.not.i1428 = icmp eq ptr %i.ahr, null
  br i1 %.not.i1428, label %_ZN4ncnn3MatD2Ev.exit1040, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ahs = atomicrmw add ptr %i.ahr, i32 -1 acq_rel, align 4
  %i.aht = icmp eq i32 %i.ahs, 1
  br i1 %i.aht, label %bb.dz, label %_ZN4ncnn3MatD2Ev.exit1040

bb.dz:                                            ; preds = %bb.dy
  %i.ahu = load ptr, ptr %i.agf, align 8, !tbaa !131 ; 3 uses
  %.not3.i1429 = icmp eq ptr %i.ahu, null
  %i.ahv = load ptr, ptr %11, align 8, !tbaa !132 ; 3 uses
  br i1 %.not3.i1429, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ahw = load ptr, ptr %i.ahu, align 8, !tbaa !27
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 24
  %i.ahy = load ptr, ptr %i.ahx, align 8
  invoke void %i.ahy(ptr noundef nonnull align 8 dereferenceable(8) %i.ahu, ptr noundef %i.ahv)
          to label %_ZN4ncnn3MatD2Ev.exit1040 unwind label %bb.ed, !inline_history !28

bb.eb:                                            ; preds = %bb.dz
  %.not.i1544 = icmp eq ptr %i.ahv, null
  br i1 %.not.i1544, label %_ZN4ncnn3MatD2Ev.exit1040, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @free(ptr noundef nonnull %i.ahv) #14
  br label %_ZN4ncnn3MatD2Ev.exit1040

bb.ed:                                            ; preds = %bb.ea
  %i.ahz = landingpad { ptr, i32 }
          catch ptr null
  %i.aia = extractvalue { ptr, i32 } %i.ahz, 0
  call void @__clang_call_terminate(ptr %i.aia) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit1040:                        ; preds = %bb.dy, %bb.dx, %bb.ea, %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.ek

bb.ee:                                            ; preds = %bb.cx
  %i.aib = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !137
  tail call void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.aic)
  %i.aid = load ptr, ptr %2, align 8, !tbaa !132
  %i.aie = icmp eq ptr %i.aid, null
  br i1 %i.aie, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.ee
  %i.aif = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.aig = load i64, ptr %i.aif, align 8, !tbaa !133
  %i.aih = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aii = load i32, ptr %i.aih, align 8, !tbaa !126
  %i.aij = sext i32 %i.aii to i64
  %i.aik = mul i64 %i.aig, %i.aij
  %i.ail = icmp eq i64 %i.aik, 0
  br i1 %i.ail, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.ef

bb.ef:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  br i1 %i.aay, label %bb.eg, label %.preheader2948

.preheader2948:                                   ; preds = %bb.ef
  %i.aim = icmp sgt i32 %17, 0
  br i1 %i.aim, label %_ZN4ncnn3MatD2Ev.exit1039.lr.ph, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1039.lr.ph:                  ; preds = %.preheader2948
  %i.ain = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aio = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aip = icmp sgt i32 %i.t, 0
  br i1 %i.aip, label %_ZN4ncnn3MatD2Ev.exit1039.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1039.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit1039.lr.ph
  %i.aiq = zext nneg i32 %17 to i64               ; 2 uses
  %xtraiter3310 = and i32 %i.t, 1
  %i.air = icmp eq i32 %i.t, 1
  %unroll_iter3314 = and i32 %i.t, 2147483646
  %lcmp.mod3312.not = icmp eq i32 %xtraiter3310, 0
  %lcmp.mod3313 = trunc i32 %i.t to i1
  br label %_ZN4ncnn3MatD2Ev.exit1039

_ZN4ncnn3MatD2Ev.exit1039:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1039.preheader, %._crit_edge2971
  %indvars.iv3109 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1039.preheader ], [ %indvars.iv.next3110, %._crit_edge2971 ] ; 4 uses
  %i.ais = load ptr, ptr %1, align 8, !tbaa !132, !noalias !172 ; 2 uses
  %i.ait = load i64, ptr %i.ain, align 8, !tbaa !133, !noalias !172 ; 2 uses
  %i.aiu = mul i64 %i.ait, %indvars.iv3109
  %i.aiv = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !172 ; 2 uses
  %i.aiw = mul i64 %i.aiu, %i.aiv
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.aiw ; 2 uses
  %i.aiy = add nuw nsw i64 %indvars.iv3109, %i.aiq
  %i.aiz = mul i64 %i.ait, %i.aiy
  %i.aja = mul i64 %i.aiz, %i.aiv
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.aja ; 2 uses
  %i.ajc = shl nuw nsw i64 %indvars.iv3109, 1     ; 2 uses
  %i.ajd = load ptr, ptr %2, align 8, !tbaa !132, !noalias !173 ; 2 uses
  %i.aje = load i64, ptr %i.aif, align 8, !tbaa !133, !noalias !173 ; 2 uses
  %i.ajf = mul i64 %i.aje, %i.ajc
  %i.ajg = load i64, ptr %i.aio, align 8, !tbaa !120, !noalias !173 ; 2 uses
  %i.ajh = mul i64 %i.ajf, %i.ajg
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajd, i64 %i.ajh ; 2 uses
  %i.ajj = or disjoint i64 %i.ajc, 1
  %i.ajk = mul i64 %i.aje, %i.ajj
  %i.ajl = mul i64 %i.ajk, %i.ajg
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajd, i64 %i.ajl ; 2 uses
  br i1 %i.air, label %.epil.preheader3309, label %_ZN4ncnn3MatD2Ev.exit1039.new

._crit_edge2971.unr-lcssa:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1039.new
  br i1 %lcmp.mod3312.not, label %._crit_edge2971, label %.epil.preheader3309

.epil.preheader3309:                              ; preds = %._crit_edge2971.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit1039
  %.08632968.epil.init = phi ptr [ %i.ajm, %_ZN4ncnn3MatD2Ev.exit1039 ], [ %i.akg, %._crit_edge2971.unr-lcssa ]
  %.08642967.epil.init = phi ptr [ %i.aji, %_ZN4ncnn3MatD2Ev.exit1039 ], [ %i.akf, %._crit_edge2971.unr-lcssa ]
  %.08652966.epil.init = phi ptr [ %i.ajb, %_ZN4ncnn3MatD2Ev.exit1039 ], [ %i.ake, %._crit_edge2971.unr-lcssa ]
  %.08662965.epil.init = phi ptr [ %i.aix, %_ZN4ncnn3MatD2Ev.exit1039 ], [ %i.akd, %._crit_edge2971.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3313)
  %i.ajn = load <4 x float>, ptr %.08662965.epil.init, align 1, !tbaa !142 ; 2 uses
  %i.ajo = load <4 x float>, ptr %.08652966.epil.init, align 1, !tbaa !142 ; 2 uses
  %i.ajp = shufflevector <4 x float> %i.ajn, <4 x float> %i.ajo, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ajq = shufflevector <4 x float> %i.ajn, <4 x float> %i.ajo, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.ajp, ptr %.08642967.epil.init, align 1, !tbaa !142
  store <4 x float> %i.ajq, ptr %.08632968.epil.init, align 1, !tbaa !142
  br label %._crit_edge2971

._crit_edge2971:                                  ; preds = %._crit_edge2971.unr-lcssa, %.epil.preheader3309
  %indvars.iv.next3110 = add nuw nsw i64 %indvars.iv3109, 1 ; 2 uses
  %exitcond3113.not = icmp eq i64 %indvars.iv.next3110, %i.aiq
  br i1 %exitcond3113.not, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZN4ncnn3MatD2Ev.exit1039, !llvm.loop !102

_ZN4ncnn3MatD2Ev.exit1039.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit1039, %_ZN4ncnn3MatD2Ev.exit1039.new
  %.08632968 = phi ptr [ %i.akg, %_ZN4ncnn3MatD2Ev.exit1039.new ], [ %i.ajm, %_ZN4ncnn3MatD2Ev.exit1039 ] ; 3 uses
  %.08642967 = phi ptr [ %i.akf, %_ZN4ncnn3MatD2Ev.exit1039.new ], [ %i.aji, %_ZN4ncnn3MatD2Ev.exit1039 ] ; 3 uses
  %.08652966 = phi ptr [ %i.ake, %_ZN4ncnn3MatD2Ev.exit1039.new ], [ %i.ajb, %_ZN4ncnn3MatD2Ev.exit1039 ] ; 3 uses
  %.08662965 = phi ptr [ %i.akd, %_ZN4ncnn3MatD2Ev.exit1039.new ], [ %i.aix, %_ZN4ncnn3MatD2Ev.exit1039 ] ; 3 uses
  %niter3315 = phi i32 [ %niter3315.next.1, %_ZN4ncnn3MatD2Ev.exit1039.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit1039 ]
  %i.ajr = load <4 x float>, ptr %.08662965, align 1, !tbaa !142 ; 2 uses
  %i.ajs = load <4 x float>, ptr %.08652966, align 1, !tbaa !142 ; 2 uses
  %i.ajt = shufflevector <4 x float> %i.ajr, <4 x float> %i.ajs, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aju = shufflevector <4 x float> %i.ajr, <4 x float> %i.ajs, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.ajt, ptr %.08642967, align 1, !tbaa !142
  store <4 x float> %i.aju, ptr %.08632968, align 1, !tbaa !142
  %i.ajv = getelementptr inbounds nuw i8, ptr %.08662965, i64 16
  %i.ajw = getelementptr inbounds nuw i8, ptr %.08652966, i64 16
  %i.ajx = getelementptr inbounds nuw i8, ptr %.08642967, i64 16
  %i.ajy = getelementptr inbounds nuw i8, ptr %.08632968, i64 16
  %i.ajz = load <4 x float>, ptr %i.ajv, align 1, !tbaa !142 ; 2 uses
  %i.aka = load <4 x float>, ptr %i.ajw, align 1, !tbaa !142 ; 2 uses
  %i.akb = shufflevector <4 x float> %i.ajz, <4 x float> %i.aka, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.akc = shufflevector <4 x float> %i.ajz, <4 x float> %i.aka, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.akb, ptr %i.ajx, align 1, !tbaa !142
  store <4 x float> %i.akc, ptr %i.ajy, align 1, !tbaa !142
  %i.akd = getelementptr inbounds nuw i8, ptr %.08662965, i64 32 ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %.08652966, i64 32 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %.08642967, i64 32 ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %.08632968, i64 32 ; 2 uses
  %niter3315.next.1 = add i32 %niter3315, 2       ; 2 uses
  %niter3315.ncmp.1 = icmp eq i32 %niter3315.next.1, %unroll_iter3314
  br i1 %niter3315.ncmp.1, label %._crit_edge2971.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit1039.new, !llvm.loop !103

bb.eg:                                            ; preds = %bb.ef
  switch i32 %i.ac, label %bb.ej [
    i32 3, label %.preheader2944
    i32 4, label %.preheader2946
  ]

.preheader2946:                                   ; preds = %bb.eg
  %i.akh = icmp sgt i32 %17, 0
  br i1 %i.akh, label %_ZN4ncnn3MatD2Ev.exit1029.lr.ph, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1029.lr.ph:                  ; preds = %.preheader2946
  %i.aki = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.akj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.akk = icmp sgt i32 %i.t, 0
  br i1 %i.akk, label %_ZN4ncnn3MatD2Ev.exit1029.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1029.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit1029.lr.ph
  %i.akl = mul nuw nsw i32 %17, 3
  %i.akm = shl nuw nsw i32 %17, 1
  %i.akn = zext nneg i32 %17 to i64               ; 2 uses
  %i.ako = zext nneg i32 %i.akm to i64
  %i.akp = zext nneg i32 %i.akl to i64
  br label %_ZN4ncnn3MatD2Ev.exit1029

.preheader2944:                                   ; preds = %bb.eg
  %i.akq = icmp sgt i32 %17, 0
  br i1 %i.akq, label %_ZN4ncnn3MatD2Ev.exit1035.lr.ph, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1035.lr.ph:                  ; preds = %.preheader2944
  %i.akr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aks = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.akt = icmp sgt i32 %i.t, 0
  br i1 %i.akt, label %_ZN4ncnn3MatD2Ev.exit1035.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit1035.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit1035.lr.ph
  %i.aku = shl nuw nsw i32 %17, 1
  %i.akv = zext nneg i32 %17 to i64               ; 2 uses
  %i.akw = zext nneg i32 %i.aku to i64
  br label %_ZN4ncnn3MatD2Ev.exit1035

_ZN4ncnn3MatD2Ev.exit1035:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1035.preheader, %._crit_edge2993
  %indvars.iv3121 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1035.preheader ], [ %indvars.iv.next3122, %._crit_edge2993 ] ; 5 uses
  %i.akx = load ptr, ptr %1, align 8, !tbaa !132, !noalias !174 ; 3 uses
  %i.aky = load i64, ptr %i.akr, align 8, !tbaa !133, !noalias !174 ; 3 uses
  %i.akz = mul i64 %i.aky, %indvars.iv3121
  %i.ala = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !174 ; 3 uses
  %i.alb = mul i64 %i.akz, %i.ala
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akx, i64 %i.alb
  %i.ald = add nuw nsw i64 %indvars.iv3121, %i.akv
  %i.ale = mul i64 %i.aky, %i.ald
  %i.alf = mul i64 %i.ale, %i.ala
  %i.alg = getelementptr inbounds nuw i8, ptr %i.akx, i64 %i.alf
  %i.alh = add nuw nsw i64 %indvars.iv3121, %i.akw
  %i.ali = mul i64 %i.aky, %i.alh
  %i.alj = mul i64 %i.ali, %i.ala
  %i.alk = getelementptr inbounds nuw i8, ptr %i.akx, i64 %i.alj
  %i.all = mul nuw nsw i64 %indvars.iv3121, 3     ; 3 uses
  %i.alm = load ptr, ptr %2, align 8, !tbaa !132, !noalias !175 ; 3 uses
  %i.aln = load i64, ptr %i.aif, align 8, !tbaa !133, !noalias !175 ; 3 uses
  %i.alo = mul i64 %i.aln, %i.all
  %i.alp = load i64, ptr %i.aks, align 8, !tbaa !120, !noalias !175 ; 3 uses
  %i.alq = mul i64 %i.alo, %i.alp
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alm, i64 %i.alq
  %i.als = add nuw nsw i64 %i.all, 1
  %i.alt = mul i64 %i.aln, %i.als
  %i.alu = mul i64 %i.alt, %i.alp
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alm, i64 %i.alu
  %i.alw = add nuw nsw i64 %i.all, 2
  %i.alx = mul i64 %i.aln, %i.alw
  %i.aly = mul i64 %i.alx, %i.alp
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alm, i64 %i.aly
  br label %bb.eh

._crit_edge2993:                                  ; preds = %bb.eh
  %indvars.iv.next3122 = add nuw nsw i64 %indvars.iv3121, 1 ; 2 uses
  %exitcond3125.not = icmp eq i64 %indvars.iv.next3122, %i.akv
  br i1 %exitcond3125.not, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZN4ncnn3MatD2Ev.exit1035, !llvm.loop !108

bb.eh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1035, %bb.eh
  %.08512991 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1035 ], [ %i.amr, %bb.eh ]
  %.08522990 = phi ptr [ %i.alz, %_ZN4ncnn3MatD2Ev.exit1035 ], [ %i.amq, %bb.eh ] ; 2 uses
  %.08532989 = phi ptr [ %i.alv, %_ZN4ncnn3MatD2Ev.exit1035 ], [ %i.amp, %bb.eh ] ; 2 uses
  %.08542988 = phi ptr [ %i.alr, %_ZN4ncnn3MatD2Ev.exit1035 ], [ %i.amo, %bb.eh ] ; 2 uses
  %.08552987 = phi ptr [ %i.alk, %_ZN4ncnn3MatD2Ev.exit1035 ], [ %i.amn, %bb.eh ] ; 2 uses
  %.08562986 = phi ptr [ %i.alg, %_ZN4ncnn3MatD2Ev.exit1035 ], [ %i.amm, %bb.eh ] ; 2 uses
  %.08572985 = phi ptr [ %i.alc, %_ZN4ncnn3MatD2Ev.exit1035 ], [ %i.aml, %bb.eh ] ; 2 uses
  %i.ama = load <4 x float>, ptr %.08572985, align 1, !tbaa !142 ; 3 uses
  %i.amb = load <4 x float>, ptr %.08562986, align 1, !tbaa !142 ; 4 uses
  %i.amc = load <4 x float>, ptr %.08552987, align 1, !tbaa !142 ; 3 uses
  %i.amd = shufflevector <4 x float> %i.ama, <4 x float> %i.amb, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ame = shufflevector <4 x float> %i.ama, <4 x float> %i.amb, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.amf = shufflevector <4 x float> %i.amb, <4 x float> %i.amc, <4 x i32> <i32 poison, i32 poison, i32 1, i32 5>
  %i.amg = shufflevector <4 x float> %i.amb, <4 x float> %i.amc, <4 x i32> <i32 poison, i32 poison, i32 3, i32 7>
  %i.amh = shufflevector <4 x float> %i.ama, <4 x float> %i.amc, <4 x i32> <i32 1, i32 3, i32 4, i32 6> ; 2 uses
  %i.ami = shufflevector <4 x float> %i.amd, <4 x float> %i.amh, <4 x i32> <i32 0, i32 1, i32 6, i32 4>
  %i.amj = shufflevector <4 x float> %i.amf, <4 x float> %i.ame, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.amk = shufflevector <4 x float> %i.amh, <4 x float> %i.amg, <4 x i32> <i32 3, i32 1, i32 6, i32 7>
  store <4 x float> %i.ami, ptr %.08542988, align 1, !tbaa !142
  store <4 x float> %i.amj, ptr %.08532989, align 1, !tbaa !142
  store <4 x float> %i.amk, ptr %.08522990, align 1, !tbaa !142
  %i.aml = getelementptr inbounds nuw i8, ptr %.08572985, i64 16
  %i.amm = getelementptr inbounds nuw i8, ptr %.08562986, i64 16
  %i.amn = getelementptr inbounds nuw i8, ptr %.08552987, i64 16
  %i.amo = getelementptr inbounds nuw i8, ptr %.08542988, i64 16
  %i.amp = getelementptr inbounds nuw i8, ptr %.08532989, i64 16
  %i.amq = getelementptr inbounds nuw i8, ptr %.08522990, i64 16
  %i.amr = add nuw nsw i32 %.08512991, 1          ; 2 uses
  %exitcond3120.not = icmp eq i32 %i.amr, %i.t
  br i1 %exitcond3120.not, label %._crit_edge2993, label %bb.eh, !llvm.loop !109

_ZN4ncnn3MatD2Ev.exit1029:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1029.preheader, %._crit_edge2983
  %indvars.iv3115 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1029.preheader ], [ %indvars.iv.next3116, %._crit_edge2983 ] ; 6 uses
  %i.ams = load ptr, ptr %1, align 8, !tbaa !132, !noalias !176 ; 4 uses
  %i.amt = load i64, ptr %i.aki, align 8, !tbaa !133, !noalias !176 ; 4 uses
  %i.amu = mul i64 %i.amt, %indvars.iv3115
  %i.amv = load i64, ptr %i.c, align 8, !tbaa !120, !noalias !176 ; 4 uses
  %i.amw = mul i64 %i.amu, %i.amv
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.amw
  %i.amy = add nuw nsw i64 %indvars.iv3115, %i.akn
  %i.amz = mul i64 %i.amt, %i.amy
  %i.ana = mul i64 %i.amz, %i.amv
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.ana
  %i.anc = add nuw nsw i64 %indvars.iv3115, %i.ako
  %i.and = mul i64 %i.amt, %i.anc
  %i.ane = mul i64 %i.and, %i.amv
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.ane
  %i.ang = add nuw nsw i64 %indvars.iv3115, %i.akp
  %i.anh = mul i64 %i.amt, %i.ang
  %i.ani = mul i64 %i.anh, %i.amv
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.ani
  %i.ank = shl nuw nsw i64 %indvars.iv3115, 2     ; 4 uses
  %i.anl = load ptr, ptr %2, align 8, !tbaa !132, !noalias !177 ; 4 uses
  %i.anm = load i64, ptr %i.aif, align 8, !tbaa !133, !noalias !177 ; 4 uses
  %i.ann = mul i64 %i.anm, %i.ank
  %i.ano = load i64, ptr %i.akj, align 8, !tbaa !120, !noalias !177 ; 4 uses
  %i.anp = mul i64 %i.ann, %i.ano
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anl, i64 %i.anp
  %i.anr = or disjoint i64 %i.ank, 1
  %i.ans = mul i64 %i.anm, %i.anr
  %i.ant = mul i64 %i.ans, %i.ano
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anl, i64 %i.ant
  %i.anv = or disjoint i64 %i.ank, 2
  %i.anw = mul i64 %i.anm, %i.anv
  %i.anx = mul i64 %i.anw, %i.ano
  %i.any = getelementptr inbounds nuw i8, ptr %i.anl, i64 %i.anx
  %i.anz = or disjoint i64 %i.ank, 3
  %i.aoa = mul i64 %i.anm, %i.anz
  %i.aob = mul i64 %i.aoa, %i.ano
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anl, i64 %i.aob
  br label %bb.ei

._crit_edge2983:                                  ; preds = %bb.ei
  %indvars.iv.next3116 = add nuw nsw i64 %indvars.iv3115, 1 ; 2 uses
  %exitcond3119.not = icmp eq i64 %indvars.iv.next3116, %i.akn
  br i1 %exitcond3119.not, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZN4ncnn3MatD2Ev.exit1029, !llvm.loop !114

bb.ei:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1029, %bb.ei
  %.08252981 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1029 ], [ %i.aox, %bb.ei ]
  %.08262980 = phi ptr [ %i.aoc, %_ZN4ncnn3MatD2Ev.exit1029 ], [ %i.aow, %bb.ei ] ; 2 uses
  %.08272979 = phi ptr [ %i.any, %_ZN4ncnn3MatD2Ev.exit1029 ], [ %i.aov, %bb.ei ] ; 2 uses
  %.08282978 = phi ptr [ %i.anu, %_ZN4ncnn3MatD2Ev.exit1029 ], [ %i.aou, %bb.ei ] ; 2 uses
  %.08292977 = phi ptr [ %i.anq, %_ZN4ncnn3MatD2Ev.exit1029 ], [ %i.aot, %bb.ei ] ; 2 uses
  %.08302976 = phi ptr [ %i.anj, %_ZN4ncnn3MatD2Ev.exit1029 ], [ %i.aos, %bb.ei ] ; 2 uses
  %.08312975 = phi ptr [ %i.anf, %_ZN4ncnn3MatD2Ev.exit1029 ], [ %i.aor, %bb.ei ] ; 2 uses
  %.08322974 = phi ptr [ %i.anb, %_ZN4ncnn3MatD2Ev.exit1029 ], [ %i.aoq, %bb.ei ] ; 2 uses
  %.08332973 = phi ptr [ %i.amx, %_ZN4ncnn3MatD2Ev.exit1029 ], [ %i.aop, %bb.ei ] ; 2 uses
  %i.aod = load <4 x float>, ptr %.08332973, align 1, !tbaa !142 ; 2 uses
  %i.aoe = load <4 x float>, ptr %.08322974, align 1, !tbaa !142 ; 2 uses
  %i.aof = load <4 x float>, ptr %.08312975, align 1, !tbaa !142 ; 2 uses
  %i.aog = load <4 x float>, ptr %.08302976, align 1, !tbaa !142 ; 2 uses
  %i.aoh = shufflevector <4 x float> %i.aod, <4 x float> %i.aof, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aoi = shufflevector <4 x float> %i.aod, <4 x float> %i.aof, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aoj = shufflevector <4 x float> %i.aoe, <4 x float> %i.aog, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aok = shufflevector <4 x float> %i.aoe, <4 x float> %i.aog, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aol = shufflevector <4 x float> %i.aoh, <4 x float> %i.aoj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aom = shufflevector <4 x float> %i.aoh, <4 x float> %i.aoj, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.aon = shufflevector <4 x float> %i.aoi, <4 x float> %i.aok, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aoo = shufflevector <4 x float> %i.aoi, <4 x float> %i.aok, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.aol, ptr %.08292977, align 1, !tbaa !142
  store <4 x float> %i.aom, ptr %.08282978, align 1, !tbaa !142
  store <4 x float> %i.aon, ptr %.08272979, align 1, !tbaa !142
  store <4 x float> %i.aoo, ptr %.08262980, align 1, !tbaa !142
  %i.aop = getelementptr inbounds nuw i8, ptr %.08332973, i64 16
  %i.aoq = getelementptr inbounds nuw i8, ptr %.08322974, i64 16
  %i.aor = getelementptr inbounds nuw i8, ptr %.08312975, i64 16
  %i.aos = getelementptr inbounds nuw i8, ptr %.08302976, i64 16
  %i.aot = getelementptr inbounds nuw i8, ptr %.08292977, i64 16
  %i.aou = getelementptr inbounds nuw i8, ptr %.08282978, i64 16
  %i.aov = getelementptr inbounds nuw i8, ptr %.08272979, i64 16
  %i.aow = getelementptr inbounds nuw i8, ptr %.08262980, i64 16
  %i.aox = add nuw nsw i32 %.08252981, 1          ; 2 uses
  %exitcond3114.not = icmp eq i32 %i.aox, %i.t
  br i1 %exitcond3114.not, label %._crit_edge2983, label %bb.ei, !llvm.loop !115

bb.ej:                                            ; preds = %bb.cs, %bb.bb, %bb.eg, %bb.o
  %i.aoy = tail call noundef i32 @_ZNK4ncnn14ShuffleChannel7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.ek:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1040, %_ZN4ncnn3MatD2Ev.exit1070, %_ZN4ncnn3MatD2Ev.exit1100
  %.pn966.pn = phi { ptr, i32 } [ %.pn966, %_ZN4ncnn3MatD2Ev.exit1070 ], [ %.pn963, %_ZN4ncnn3MatD2Ev.exit1040 ], [ %.pn, %_ZN4ncnn3MatD2Ev.exit1100 ]
  resume { ptr, i32 } %.pn966.pn

_ZN4ncnn3MataSERKS0_.exit.loopexit3290.unr-lcssa: ; preds = %.lr.ph3052
  %lcmp.mod3345.not = icmp eq i32 %xtraiter3343, 0
  br i1 %lcmp.mod3345.not, label %_ZN4ncnn3MataSERKS0_.exit, label %.lr.ph3052.epil.preheader

.lr.ph3052.epil.preheader:                        ; preds = %_ZN4ncnn3MataSERKS0_.exit.loopexit3290.unr-lcssa, %.lr.ph3052.preheader
  %.08503051.epil.init = phi ptr [ %i.cw, %.lr.ph3052.preheader ], [ %i.fp, %_ZN4ncnn3MataSERKS0_.exit.loopexit3290.unr-lcssa ]
  %.08593050.epil.init = phi ptr [ %i.cn, %.lr.ph3052.preheader ], [ %i.fq, %_ZN4ncnn3MataSERKS0_.exit.loopexit3290.unr-lcssa ]
  %.08603049.epil.init = phi ptr [ %i.cs, %.lr.ph3052.preheader ], [ %i.fr, %_ZN4ncnn3MataSERKS0_.exit.loopexit3290.unr-lcssa ] ; 2 uses
  %lcmp.mod3346 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod3346)
  %i.aoz = load <8 x float>, ptr %.08503051.epil.init, align 1, !tbaa !142 ; 2 uses
  %i.apa = load <8 x float>, ptr %.08593050.epil.init, align 1, !tbaa !142 ; 2 uses
  %i.apb = shufflevector <8 x float> %i.aoz, <8 x float> %i.apa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.apc = shufflevector <8 x float> %i.aoz, <8 x float> %i.apa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.apb, ptr %.08603049.epil.init, align 1, !tbaa !142
  %i.apd = getelementptr inbounds nuw i8, ptr %.08603049.epil.init, i64 32
  store <8 x float> %i.apc, ptr %i.apd, align 1, !tbaa !142
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit.loopexit3294.unr-lcssa: ; preds = %.lr.ph3008
  %lcmp.mod3325.not = icmp eq i32 %xtraiter3323, 0
  br i1 %lcmp.mod3325.not, label %_ZN4ncnn3MataSERKS0_.exit, label %.lr.ph3008.epil.preheader

.lr.ph3008.epil.preheader:                        ; preds = %_ZN4ncnn3MataSERKS0_.exit.loopexit3294.unr-lcssa, %.lr.ph3008.preheader
  %.09203007.epil.init = phi ptr [ %i.ol, %.lr.ph3008.preheader ], [ %i.rc, %_ZN4ncnn3MataSERKS0_.exit.loopexit3294.unr-lcssa ]
  %.09213006.epil.init = phi ptr [ %i.oc, %.lr.ph3008.preheader ], [ %i.rd, %_ZN4ncnn3MataSERKS0_.exit.loopexit3294.unr-lcssa ]
  %.09223005.epil.init = phi ptr [ %i.oh, %.lr.ph3008.preheader ], [ %i.re, %_ZN4ncnn3MataSERKS0_.exit.loopexit3294.unr-lcssa ] ; 2 uses
  %lcmp.mod3326 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod3326)
  %i.ape = load <4 x float>, ptr %.09203007.epil.init, align 1, !tbaa !142 ; 2 uses
  %i.apf = load <4 x float>, ptr %.09213006.epil.init, align 1, !tbaa !142 ; 2 uses
  %i.apg = shufflevector <4 x float> %i.ape, <4 x float> %i.apf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aph = shufflevector <4 x float> %i.ape, <4 x float> %i.apf, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.apg, ptr %.09223005.epil.init, align 1, !tbaa !142
  %i.api = getelementptr inbounds nuw i8, ptr %.09223005.epil.init, i64 16
end_hunk_1
