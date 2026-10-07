Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/flatten_x86_fma?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_ZN4ncnn15Flatten_x86_fmaD0Ev = comdat any

@_ZTVN4ncnn15Flatten_x86_fmaE = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn15Flatten_x86_fmaE, ptr @_ZN4ncnn5LayerD2Ev, ptr @_ZN4ncnn15Flatten_x86_fmaD0Ev, ptr @_ZN4ncnn5Layer10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn15Flatten_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn15Flatten_x86_fmaE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn15Flatten_x86_fmaE, ptr @_ZTIN4ncnn7FlattenE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn15Flatten_x86_fmaE = hidden constant [25 x i8] c"N4ncnn15Flatten_x86_fmaE\00", align 1
@_ZTIN4ncnn7FlattenE = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

@_ZN4ncnn15Flatten_x86_fmaC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn15Flatten_x86_fmaC2Ev

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn15Flatten_x86_fmaD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #14
  ret void
}

declare noundef i32 @_ZN4ncnn5Layer10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn15Flatten_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !15   ; 8 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16
  %.tr.i = trunc i64 %i.i to i32
  %i.j = shl i32 %.tr.i, 3
  %i.k = sdiv i32 %i.j, %i.g
  switch i32 %i.k, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread [
    i32 8, label %bb.b
    i32 16, label %bb.c
  ]

bb.b:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.l = tail call noundef i32 @_ZNK4ncnn15Flatten_x86_fma12forward_int8ERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit86

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.m = tail call noundef i32 @_ZNK4ncnn15Flatten_x86_fma19forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit86

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.a, %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !17   ; 3 uses
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.d, label %bb.m

bb.d:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.q = icmp eq ptr %2, %1
  br i1 %i.q, label %_ZN4ncnn3MataSERKS0_.exit86, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18   ; 2 uses
  %.not.i85 = icmp eq ptr %i.s, null
  br i1 %.not.i85, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = atomicrmw add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18   ; 2 uses
  %.not.i87 = icmp eq ptr %i.v, null
  br i1 %.not.i87, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = atomicrmw add ptr %i.v, i32 -1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.i, label %_ZN4ncnn3Mat7releaseEv.exit

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19   ; 3 uses
  %.not3.i = icmp eq ptr %i.z, null
  %i.aa = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.aa), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.k:                                             ; preds = %bb.i
  %.not.i92 = icmp eq ptr %i.aa, null
  br i1 %.not.i92, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.aa) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.l, %bb.k, %bb.g, %bb.h, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ag, i8 0, i64 20, i1 false)
  %i.aj = load <2 x ptr>, ptr %1, align 8, !tbaa !24
  store <2 x ptr> %i.aj, ptr %2, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16
  store i64 %i.al, ptr %i.ae, align 8, !tbaa !16
  %i.am = load i32, ptr %i.f, align 8, !tbaa !15
  store i32 %i.am, ptr %i.af, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !19
  %i.aq = load <4 x i32>, ptr %i.n, align 8, !tbaa !25
  store <4 x i32> %i.aq, ptr %i.ag, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !26
  store i32 %i.as, ptr %i.ah, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load i64, ptr %i.at, align 8, !tbaa !23
  store i64 %i.au, ptr %i.ai, align 8, !tbaa !23
  br label %_ZN4ncnn3MataSERKS0_.exit86

bb.m:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !27 ; 2 uses
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !28 ; 2 uses
  store i32 %i.ay, ptr %i.b, align 4, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !26 ; 2 uses
  store i32 %i.bc, ptr %i.c, align 4, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.bf = mul nsw i32 %i.ay, %i.aw
  %i.bg = mul nsw i32 %i.bf, %i.ba                ; 2 uses
  store i32 %i.bg, ptr %i.d, align 4, !tbaa !25
  %i.bh = mul i32 %i.bg, %i.g
  %i.bi = mul i32 %i.bh, %i.bc                    ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !32, !range !33, !noundef !34
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bm = and i32 %i.bi, 7
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.thread95, label %bb.o

.thread95:                                        ; preds = %bb.n
  %i.bo = sext i32 %i.g to i64
  %i.bp = udiv i64 %i.be, %i.bo
  %i.bq = shl i64 %i.bp, 3
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = and i32 %i.bi, 3
  %.not = icmp eq i32 %i.br, 0                    ; 3 uses
  %4 = select i1 %.not, i64 4, i64 1
  %i.bs = sext i32 %i.g to i64
  %i.bt = udiv i64 %i.be, %i.bs
  %i.bu = select i1 %.not, i64 2, i64 0
  %i.bv = shl i64 %i.bt, %i.bu
  br i1 %.not, label %bb.p, label %.thread

.thread:                                          ; preds = %bb.m, %bb.o
  %i.bw = tail call noundef i32 @_ZNK4ncnn7Flatten7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.p:                                             ; preds = %.thread95, %bb.o
  %i.bx = phi i64 [ %i.bq, %.thread95 ], [ %i.bv, %bb.o ] ; 2 uses
  %i.by = phi i64 [ 8, %.thread95 ], [ %4, %bb.o ]
  %.097 = phi i32 [ 8, %.thread95 ], [ 4, %bb.o ] ; 4 uses
  %i.bz = icmp eq i32 %i.o, 2                     ; 2 uses
  %i.ca = icmp eq i32 %i.g, 1                     ; 2 uses
  %or.cond = and i1 %i.ca, %i.bz
  br i1 %or.cond, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.cb = icmp eq ptr %2, %1
  br i1 %i.cb, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  %.not.i84 = icmp eq ptr %i.cd, null
  br i1 %.not.i84, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = atomicrmw add ptr %i.cd, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !18 ; 2 uses
  %.not.i88 = icmp eq ptr %i.cg, null
  br i1 %.not.i88, label %_ZN4ncnn3Mat7releaseEv.exit90, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = atomicrmw add ptr %i.cg, i32 -1 acq_rel, align 4
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.v, label %_ZN4ncnn3Mat7releaseEv.exit90

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !19 ; 3 uses
  %.not3.i89 = icmp eq ptr %i.ck, null
  %i.cl = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i89, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef %i.cl), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit90

bb.x:                                             ; preds = %bb.v
  %.not.i91 = icmp eq ptr %i.cl, null
  br i1 %.not.i91, label %_ZN4ncnn3Mat7releaseEv.exit90, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.cl) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit90

_ZN4ncnn3Mat7releaseEv.exit90:                    ; preds = %bb.y, %bb.x, %bb.t, %bb.u, %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.cr, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cp, i8 0, i64 20, i1 false)
  %i.cs = load <2 x ptr>, ptr %1, align 8, !tbaa !24
  store <2 x ptr> %i.cs, ptr %2, align 8, !tbaa !24
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !19
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !19
  %i.cw = load <2 x i32>, ptr %i.az, align 4, !tbaa !25
  store <2 x i32> %i.cw, ptr %i.cq, align 4, !tbaa !25
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %bb.q, %_ZN4ncnn3Mat7releaseEv.exit90
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 1, ptr %i.cx, align 8, !tbaa !17
  %i.cy = sdiv i32 %i.bi, %.097
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !27
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 1, ptr %i.da, align 8, !tbaa !28
  %5 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.by, i1 true)
  %i.db = lshr i64 %.pre, %5
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !23
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bx, ptr %i.dd, align 8, !tbaa !16
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.097, ptr %i.de, align 8, !tbaa !15
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.z:                                             ; preds = %bb.p
  %i.df = sdiv i32 %i.bi, %.097
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !35
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.df, i64 noundef %i.bx, i32 noundef %.097, ptr noundef %i.dh)
  %i.di = load ptr, ptr %2, align 8, !tbaa !20
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.z
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !23
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !26
  %i.do = sext i32 %i.dn to i64
  %i.dp = mul i64 %i.dl, %i.do
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  br i1 %i.bz, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  switch i32 %i.g, label %_ZNK4ncnn3Mat5emptyEv.exit.thread [
    i32 8, label %bb.ac
    i32 4, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.ds)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn15Flatten_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.ad:                                            ; preds = %bb.ab
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.du)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn15Flatten_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.ae:                                            ; preds = %bb.aa
  %i.dv = add i32 %i.o, -3
  %or.cond3 = icmp ult i32 %i.dv, 2
  br i1 %or.cond3, label %bb.af, label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.af:                                            ; preds = %bb.ae
  switch i32 %i.g, label %bb.ai [
    i32 8, label %bb.ag
    i32 4, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.dx)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn15Flatten_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.d)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.ah:                                            ; preds = %bb.af
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.dz)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn15Flatten_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.d)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.ai:                                            ; preds = %bb.af
  br i1 %i.ca, label %bb.aj, label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.eb)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn15Flatten_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.d)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.ah, %bb.ag, %bb.ad, %bb.ab, %bb.ac, %bb.z, %bb.ae, %bb.aj, %bb.ai, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZN4ncnn3MataSERKS0_.exit, %.thread
  %.081 = phi i32 [ %i.bw, %.thread ], [ 0, %_ZN4ncnn3MataSERKS0_.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ -100, %bb.z ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.ag ], [ 0, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN4ncnn3MataSERKS0_.exit86

_ZN4ncnn3MataSERKS0_.exit86:                      ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %bb.d, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %bb.c, %bb.b
  %.2 = phi i32 [ %i.l, %bb.b ], [ %i.m, %bb.c ], [ %.081, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ 0, %bb.d ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit ]
  ret i32 %.2
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn15Flatten_x86_fmaC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn7FlattenC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn15Flatten_x86_fmaE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !63
  %i.b = invoke noundef i32 @_ZN4ncnn20cpu_support_x86_f16cEv()
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.e = zext i1 %i.c to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.f, align 4, !tbaa !65
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #6
  resume { ptr, i32 } %i.g
}

declare void @_ZN4ncnn7FlattenC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn20cpu_support_x86_f16cEv() local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn15Flatten_x86_fma12forward_int8ERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %2, %1
  br i1 %i.i, label %_ZN4ncnn3MataSERKS0_.exit68, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %.not.i67 = icmp eq ptr %i.k, null
  br i1 %.not.i67, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = atomicrmw add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  %.not.i69 = icmp eq ptr %i.n, null
  br i1 %.not.i69, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = atomicrmw add ptr %i.n, i32 -1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.g, label %_ZN4ncnn3Mat7releaseEv.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %2, align 8, !tbaa !20     ; 3 uses
  br i1 %.not3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.s), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.i:                                             ; preds = %bb.g
  %.not.i74 = icmp eq ptr %i.s, null
  br i1 %.not.i74, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.s) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.j, %bb.i, %bb.e, %bb.f, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
end_hunk_0
begin_hunk_1_@_ZNK4ncnn15Flatten_x86_fma12forward_int8ERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !35
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.cv, i64 noundef %i.bn, i32 noundef 8, ptr noundef %i.cx)
  %i.cy = load ptr, ptr %2, align 8, !tbaa !20
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.db = load i64, ptr %i.da, align 8, !tbaa !23
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !26
  %i.de = sext i32 %i.dd to i64
  %i.df = mul i64 %i.db, %i.de
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.dh = icmp eq i32 %i.az, 8                    ; 2 uses
  %or.cond5 = and i1 %i.bp, %i.dh
  br i1 %or.cond5, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.dj)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn15Flatten_x86_fma12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.dk = add i32 %i.g, -3
  %or.cond3 = icmp ult i32 %i.dk, 2
  br i1 %or.cond3, label %bb.z, label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.z:                                             ; preds = %bb.y
  br i1 %i.dh, label %.thread77, label %bb.aa

.thread77:                                        ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.dm)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn15Flatten_x86_fma12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.d)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bq, label %bb.ab, label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.do)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn15Flatten_x86_fma12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.10, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.d)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.w, %.thread77, %.thread, %bb.y, %bb.ab, %bb.aa, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZN4ncnn3MataSERKS0_.exit, %bb.l
  %.065 = phi i32 [ %i.bo, %bb.l ], [ 0, %_ZN4ncnn3MataSERKS0_.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.y ], [ 0, %.thread77 ], [ 0, %.thread ], [ -100, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN4ncnn3MataSERKS0_.exit68

_ZN4ncnn3MataSERKS0_.exit68:                      ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %bb.b, %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %.1 = phi i32 [ %.065, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ 0, %bb.b ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn15Flatten_x86_fma19forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %2, %1
  br i1 %i.i, label %_ZN4ncnn3MataSERKS0_.exit75, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %.not.i74 = icmp eq ptr %i.k, null
  br i1 %.not.i74, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = atomicrmw add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  %.not.i76 = icmp eq ptr %i.n, null
  br i1 %.not.i76, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = atomicrmw add ptr %i.n, i32 -1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.g, label %_ZN4ncnn3Mat7releaseEv.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %2, align 8, !tbaa !20     ; 3 uses
  br i1 %.not3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.s), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.i:                                             ; preds = %bb.g
  %.not.i81 = icmp eq ptr %i.s, null
  br i1 %.not.i81, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.s) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.j, %bb.i, %bb.e, %bb.f, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.y, i8 0, i64 20, i1 false)
  %i.ab = load <2 x ptr>, ptr %1, align 8, !tbaa !24
  store <2 x ptr> %i.ab, ptr %2, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !16
  store i64 %i.ad, ptr %i.w, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !15
  store i32 %i.af, ptr %i.x, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !19
  %i.aj = load <4 x i32>, ptr %i.f, align 8, !tbaa !25
  store <4 x i32> %i.aj, ptr %i.y, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !26
  store i32 %i.al, ptr %i.z, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.an = load i64, ptr %i.am, align 8, !tbaa !23
  store i64 %i.an, ptr %i.aa, align 8, !tbaa !23
  br label %_ZN4ncnn3MataSERKS0_.exit75

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !27 ; 2 uses
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !28 ; 2 uses
  store i32 %i.ar, ptr %i.b, align 4, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = load i32, ptr %i.au, align 8, !tbaa !26 ; 2 uses
  store i32 %i.av, ptr %i.c, align 4, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.ba = mul nsw i32 %i.ar, %i.ap
  %i.bb = mul nsw i32 %i.ba, %i.at                ; 2 uses
  store i32 %i.bb, ptr %i.d, align 4, !tbaa !25
  %i.bc = mul nsw i32 %i.av, %i.bb
  %i.bd = mul nsw i32 %i.bc, %i.az                ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !32, !range !33, !noundef !34
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bh = and i32 %i.bd, 7
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.thread84, label %bb.m

.thread84:                                        ; preds = %bb.l
  %i.bj = sext i32 %i.az to i64
  %i.bk = udiv i64 %i.ax, %i.bj
  %i.bl = shl i64 %i.bk, 3
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = and i32 %i.bd, 3
  %.not = icmp eq i32 %i.bm, 0                    ; 3 uses
  %4 = select i1 %.not, i64 4, i64 1
  %i.bn = sext i32 %i.az to i64
  %i.bo = udiv i64 %i.ax, %i.bn
  %i.bp = select i1 %.not, i64 2, i64 0
  %i.bq = shl i64 %i.bo, %i.bp
  br i1 %.not, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.k, %bb.m
  %i.br = tail call noundef i32 @_ZNK4ncnn7Flatten7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.n:                                             ; preds = %.thread84, %bb.m
  %i.bs = phi i64 [ %i.bl, %.thread84 ], [ %i.bq, %bb.m ] ; 2 uses
  %i.bt = phi i64 [ 8, %.thread84 ], [ %4, %bb.m ]
  %.086 = phi i32 [ 8, %.thread84 ], [ 4, %bb.m ] ; 4 uses
  %i.bu = icmp eq i32 %i.g, 2                     ; 2 uses
  %i.bv = icmp eq i32 %i.az, 1                    ; 2 uses
  %or.cond = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.bw = icmp eq ptr %2, %1
  br i1 %i.bw, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !18 ; 2 uses
  %.not.i = icmp eq ptr %i.by, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = atomicrmw add ptr %i.by, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !18 ; 2 uses
  %.not.i77 = icmp eq ptr %i.cb, null
  br i1 %.not.i77, label %_ZN4ncnn3Mat7releaseEv.exit79, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = atomicrmw add ptr %i.cb, i32 -1 acq_rel, align 4
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.t, label %_ZN4ncnn3Mat7releaseEv.exit79

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !19 ; 3 uses
  %.not3.i78 = icmp eq ptr %i.cf, null
  %i.cg = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i78, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !22
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef %i.cg), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit79

bb.v:                                             ; preds = %bb.t
  %.not.i80 = icmp eq ptr %i.cg, null
  br i1 %.not.i80, label %_ZN4ncnn3Mat7releaseEv.exit79, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.cg) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit79

_ZN4ncnn3Mat7releaseEv.exit79:                    ; preds = %bb.w, %bb.v, %bb.r, %bb.s, %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.cm, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ck, i8 0, i64 20, i1 false)
  %i.cn = load <2 x ptr>, ptr %1, align 8, !tbaa !24
  store <2 x ptr> %i.cn, ptr %2, align 8, !tbaa !24
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !19
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !19
  %i.cr = load <2 x i32>, ptr %i.as, align 4, !tbaa !25
  store <2 x i32> %i.cr, ptr %i.cl, align 4, !tbaa !25
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %bb.o, %_ZN4ncnn3Mat7releaseEv.exit79
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 1, ptr %i.cs, align 8, !tbaa !17
  %i.ct = sdiv i32 %i.bd, %.086
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !27
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 1, ptr %i.cv, align 8, !tbaa !28
  %5 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bt, i1 true)
  %i.cw = lshr i64 %.pre, %5
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bs, ptr %i.cy, align 8, !tbaa !16
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.086, ptr %i.cz, align 8, !tbaa !15
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.x:                                             ; preds = %bb.n
  %i.da = sdiv i32 %i.bd, %.086
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !35
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.da, i64 noundef %i.bs, i32 noundef %.086, ptr noundef %i.dc)
  %i.dd = load ptr, ptr %2, align 8, !tbaa !20
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !23
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !26
  %i.dj = sext i32 %i.di to i64
  %i.dk = mul i64 %i.dg, %i.dj
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.y

bb.y:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  br i1 %i.bu, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  switch i32 %i.az, label %_ZNK4ncnn3Mat5emptyEv.exit.thread [
    i32 8, label %bb.aa
    i32 4, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.dn)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn15Flatten_x86_fma19forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.ab:                                            ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.dp)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn15Flatten_x86_fma19forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.ac:                                            ; preds = %bb.y
  %i.dq = add i32 %i.g, -3
  %or.cond3 = icmp ult i32 %i.dq, 2
  br i1 %or.cond3, label %bb.ad, label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.ad:                                            ; preds = %bb.ac
  switch i32 %i.az, label %bb.ag [
    i32 8, label %bb.ae
    i32 4, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.ds)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn15Flatten_x86_fma19forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.d)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.du)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn15Flatten_x86_fma19forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.7, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.d)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.ag:                                            ; preds = %bb.ad
  br i1 %i.bv, label %bb.ah, label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.dw)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn15Flatten_x86_fma19forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.8, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.d)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.af, %bb.ae, %bb.ab, %bb.z, %bb.aa, %bb.x, %bb.ac, %bb.ah, %bb.ag, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZN4ncnn3MataSERKS0_.exit, %.thread
  %.072 = phi i32 [ %i.br, %.thread ], [ 0, %_ZN4ncnn3MataSERKS0_.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ -100, %bb.x ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.ae ], [ 0, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN4ncnn3MataSERKS0_.exit75

_ZN4ncnn3MataSERKS0_.exit75:                      ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %bb.b, %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %.1 = phi i32 [ %.072, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ 0, %bb.b ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit ]
  ret i32 %.1
}

declare noundef i32 @_ZNK4ncnn7Flatten7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Flatten_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not150 = icmp sgt i32 %i.k, %i.j
  br i1 %.not150, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %5, align 4, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph153, %._crit_edge
  %i.p = phi i32 [ %.pre, %.lr.ph153 ], [ %i.bb, %._crit_edge ] ; 4 uses
  %indvars.iv = phi i64 [ %i.n, %.lr.ph153 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !20
  %i.r = load i32, ptr %i.l, align 4, !tbaa !27
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %indvars.iv, %i.s
  %i.u = load i64, ptr %i.m, align 8, !tbaa !16
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %4, align 8, !tbaa !20     ; 8 uses
  %i.y = trunc nsw i64 %indvars.iv to i32
  %i.z = shl i32 %i.y, 3
  %i.aa = mul i32 %i.z, %i.p
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ab ; 2 uses
  %i.ad = shl nsw i64 %indvars.iv, 3              ; 7 uses
  %i.ae = or disjoint i64 %i.ad, 1
  %i.af = sext i32 %i.p to i64                    ; 7 uses
  %i.ag = mul nsw i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ag ; 2 uses
  %i.ai = or disjoint i64 %i.ad, 2
  %i.aj = mul nsw i64 %i.ai, %i.af
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = or disjoint i64 %i.ad, 3
  %i.am = mul nsw i64 %i.al, %i.af
  %i.an = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.am ; 2 uses
  %i.ao = or disjoint i64 %i.ad, 4
  %i.ap = mul nsw i64 %i.ao, %i.af
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ap ; 2 uses
  %i.ar = or disjoint i64 %i.ad, 5
  %i.as = mul nsw i64 %i.ar, %i.af
  %i.at = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.as ; 2 uses
  %i.au = or disjoint i64 %i.ad, 6
  %i.av = mul nsw i64 %i.au, %i.af
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.av ; 2 uses
  %i.ax = or disjoint i64 %i.ad, 7
  %i.ay = mul nsw i64 %i.ax, %i.af
  %i.az = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ay ; 2 uses
  %i.ba = icmp sgt i32 %i.p, 7
  br i1 %i.ba, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.c
  %i.bb = phi i32 [ %i.p, %bb.c ], [ %i.lj, %.lr.ph ] ; 5 uses
  %.093.lcssa = phi ptr [ %i.w, %bb.c ], [ %i.lg, %.lr.ph ] ; 20 uses
  %.091.lcssa = phi ptr [ %i.ac, %bb.c ], [ %i.ky, %.lr.ph ] ; 13 uses
  %.089.lcssa = phi ptr [ %i.ah, %bb.c ], [ %i.kz, %.lr.ph ] ; 13 uses
  %.087.lcssa = phi ptr [ %i.ak, %bb.c ], [ %i.la, %.lr.ph ] ; 13 uses
  %.085.lcssa = phi ptr [ %i.an, %bb.c ], [ %i.lb, %.lr.ph ] ; 13 uses
  %.083.lcssa = phi ptr [ %i.aq, %bb.c ], [ %i.lc, %.lr.ph ] ; 13 uses
  %.081.lcssa = phi ptr [ %i.at, %bb.c ], [ %i.ld, %.lr.ph ] ; 13 uses
  %.079.lcssa = phi ptr [ %i.aw, %bb.c ], [ %i.le, %.lr.ph ] ; 13 uses
  %.077.lcssa = phi ptr [ %i.az, %bb.c ], [ %i.lf, %.lr.ph ] ; 13 uses
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %i.lh, %.lr.ph ] ; 6 uses
  %i.bc = icmp slt i32 %.0.lcssa, %i.bb
  br i1 %i.bc, label %.lr.ph149.preheader, label %._crit_edge

.lr.ph149.preheader:                              ; preds = %.preheader
  %i.bd = xor i32 %.0.lcssa, -1
  %i.be = add i32 %i.bb, %i.bd                    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK4ncnn15Flatten_x86_fma12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9:bb.a
  %i.ab = mul nsw i64 %i.aa, %i.u
  %i.ac = getelementptr inbounds i8, ptr %i.r, i64 %i.ab
  %i.ad = or disjoint i64 %i.s, 4
  %i.ae = mul nsw i64 %i.ad, %i.u
  %i.af = getelementptr inbounds i8, ptr %i.r, i64 %i.ae
  %i.ag = or disjoint i64 %i.s, 3
  %i.ah = mul nsw i64 %i.ag, %i.u
  %i.ai = getelementptr inbounds i8, ptr %i.r, i64 %i.ah
  %i.aj = or disjoint i64 %i.s, 2
  %i.ak = mul nsw i64 %i.aj, %i.u
  %i.al = getelementptr inbounds i8, ptr %i.r, i64 %i.ak
  %i.am = or disjoint i64 %i.s, 1
  %i.an = mul nsw i64 %i.am, %i.u
  %i.ao = getelementptr inbounds i8, ptr %i.r, i64 %i.an
  %i.ap = trunc nsw i64 %indvars.iv to i32
  %i.aq = shl i32 %i.ap, 3
  %i.ar = mul i32 %i.aq, %i.p
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.r, i64 %i.as
  %i.au = load ptr, ptr %3, align 8, !tbaa !20, !noalias !286
  %i.av = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !286
  %i.aw = mul i64 %i.av, %indvars.iv
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !286
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.076 = phi i32 [ %i.by, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.05075 = phi ptr [ %i.bw, %.lr.ph ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %.05174 = phi ptr [ %i.bt, %.lr.ph ], [ %i.z, %.lr.ph.preheader ] ; 2 uses
  %.05273 = phi ptr [ %i.bq, %.lr.ph ], [ %i.ac, %.lr.ph.preheader ] ; 2 uses
  %.05372 = phi ptr [ %i.bn, %.lr.ph ], [ %i.af, %.lr.ph.preheader ] ; 2 uses
  %.05471 = phi ptr [ %i.bk, %.lr.ph ], [ %i.ai, %.lr.ph.preheader ] ; 2 uses
  %.05570 = phi ptr [ %i.bh, %.lr.ph ], [ %i.al, %.lr.ph.preheader ] ; 2 uses
  %.05669 = phi ptr [ %i.be, %.lr.ph ], [ %i.ao, %.lr.ph.preheader ] ; 2 uses
  %.05768 = phi ptr [ %i.bb, %.lr.ph ], [ %i.at, %.lr.ph.preheader ] ; 2 uses
  %.05867 = phi ptr [ %i.bx, %.lr.ph ], [ %i.az, %.lr.ph.preheader ] ; 9 uses
  %i.ba = load i8, ptr %.05867, align 1, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %.05768, i64 1
  store i8 %i.ba, ptr %.05768, align 1, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %.05867, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !42
  %i.be = getelementptr inbounds nuw i8, ptr %.05669, i64 1
  store i8 %i.bd, ptr %.05669, align 1, !tbaa !42
  %i.bf = getelementptr inbounds nuw i8, ptr %.05867, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !42
  %i.bh = getelementptr inbounds nuw i8, ptr %.05570, i64 1
  store i8 %i.bg, ptr %.05570, align 1, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %.05867, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %.05471, i64 1
  store i8 %i.bj, ptr %.05471, align 1, !tbaa !42
  %i.bl = getelementptr inbounds nuw i8, ptr %.05867, i64 4
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %.05372, i64 1
  store i8 %i.bm, ptr %.05372, align 1, !tbaa !42
  %i.bo = getelementptr inbounds nuw i8, ptr %.05867, i64 5
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %.05273, i64 1
  store i8 %i.bp, ptr %.05273, align 1, !tbaa !42
  %i.br = getelementptr inbounds nuw i8, ptr %.05867, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %.05174, i64 1
  store i8 %i.bs, ptr %.05174, align 1, !tbaa !42
  %i.bu = getelementptr inbounds nuw i8, ptr %.05867, i64 7
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !42
  %i.bw = getelementptr inbounds nuw i8, ptr %.05075, i64 1
  store i8 %i.bv, ptr %.05075, align 1, !tbaa !42
  %i.bx = getelementptr inbounds nuw i8, ptr %.05867, i64 8
  %i.by = add nuw nsw i32 %.076, 1                ; 2 uses
  %i.bz = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !285

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre81 = load i32, ptr %i.b, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc
  %i.cb = phi i32 [ %.pre81, %._crit_edge.loopexit ], [ %i.o, %.noexc ] ; 2 uses
  %i.cc = phi i32 [ %i.bz, %._crit_edge.loopexit ], [ %i.p, %.noexc ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cd = sext i32 %i.cb to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cd
  br i1 %.not.not, label %.noexc, label %._crit_edge79

._crit_edge79:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge79, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Flatten_x86_fma12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not34 = icmp sgt i32 %i.k, %i.j
  br i1 %.not34, label %._crit_edge36, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i32, ptr %5, align 4, !tbaa !25     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.noexc.preheader, label %._crit_edge36

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.q = phi i32 [ %i.j, %.noexc.preheader ], [ %i.aj, %._crit_edge ]
  %i.r = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ak, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.t = load ptr, ptr %4, align 8, !tbaa !20
  %i.u = zext nneg i32 %i.r to i64
  %i.v = mul nsw i64 %indvars.iv, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  %i.x = load ptr, ptr %3, align 8, !tbaa !20, !noalias !291
  %i.y = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !291
  %i.z = mul i64 %i.y, %indvars.iv
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !291
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.033 = phi i32 [ %i.ag, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02132 = phi ptr [ %i.af, %.lr.ph ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %.02231 = phi ptr [ %i.ad, %.lr.ph ], [ %i.ac, %.lr.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02231, i64 1
  %i.ae = load i8, ptr %.02231, align 1, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %.02132, i64 1
  store i8 %i.ae, ptr %.02132, align 1, !tbaa !42
  %i.ag = add nuw nsw i32 %.033, 1                ; 2 uses
  %i.ah = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !289

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.b, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc
  %i.aj = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.q, %.noexc ] ; 2 uses
  %i.ak = phi i32 [ %i.ah, %._crit_edge.loopexit ], [ %i.r, %.noexc ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.al = sext i32 %i.aj to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.al
  br i1 %.not.not, label %.noexc, label %._crit_edge36, !llvm.loop !290

._crit_edge36:                                    ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge36, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { builtin nounwind }

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
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!14 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !11, i64 8, !12, i64 16, !7, i64 24, !13, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !12, i64 64}
!15 = !{!14, !7, i64 24}
!16 = !{!14, !12, i64 16}
!17 = !{!14, !7, i64 40}
!18 = !{!14, !11, i64 8}
!19 = !{!14, !13, i64 32}
!20 = !{!14, !10, i64 0}
!21 = !{!"vtable pointer", !5, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!14, !12, i64 64}
!24 = !{!10, !10, i64 0}
!25 = !{!7, !7, i64 0}
!26 = !{!14, !7, i64 56}
!27 = !{!14, !7, i64 44}
!28 = !{!14, !7, i64 48}
!29 = !{!14, !7, i64 52}
!30 = !{!"bool", !6, i64 0}
!31 = !{!"_ZTSN4ncnn6OptionE", !30, i64 0, !30, i64 1, !30, i64 2, !30, i64 3, !7, i64 4, !13, i64 8, !13, i64 16, !7, i64 24, !30, i64 28, !30, i64 29, !30, i64 30, !30, i64 31, !30, i64 32, !30, i64 33, !30, i64 34, !30, i64 35, !30, i64 36, !30, i64 37, !30, i64 38, !30, i64 39, !7, i64 40, !30, i64 44, !30, i64 45, !30, i64 46, !30, i64 47, !6, i64 48, !30, i64 49, !30, i64 50, !30, i64 51, !30, i64 52, !30, i64 53, !30, i64 54, !30, i64 55, !30, i64 56, !30, i64 57, !30, i64 58, !30, i64 59, !30, i64 60, !30, i64 61, !30, i64 62, !30, i64 63}
!32 = !{!31, !30, i64 39}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!31, !13, i64 8}
!36 = !{!31, !7, i64 4}
!37 = !{!"float", !6, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!6, !6, i64 0}
!43 = !{i64 2, i64 -1, i64 -1, i1 true}
!44 = !{!43}
!45 = !{!"llvm.loop.unswitch.partial.disable"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!"short", !6, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"branch_weights", i32 8, i32 8}
!50 = !{!"p1 omnipotent char", !10, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !50, i64 0}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !12, i64 8, !6, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!54 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !53, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorIiSaIiEE", !55, i64 0}
!57 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !60, i64 0}
!62 = !{!"_ZTSN4ncnn5LayerE", !30, i64 8, !30, i64 9, !30, i64 10, !30, i64 11, !30, i64 12, !30, i64 13, !30, i64 14, !30, i64 15, !30, i64 16, !30, i64 17, !30, i64 18, !30, i64 19, !30, i64 20, !30, i64 21, !30, i64 22, !30, i64 23, !30, i64 24, !30, i64 25, !30, i64 26, !30, i64 27, !7, i64 28, !10, i64 32, !7, i64 40, !52, i64 48, !52, i64 80, !56, i64 112, !56, i64 136, !61, i64 160, !61, i64 184}
!63 = !{!62, !30, i64 11}
!64 = !{!62, !30, i64 13}
!65 = !{!62, !30, i64 12}
!66 = distinct !{!66, i1 false, !"LVerDomain"}
!67 = distinct !{!67, !66}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !66}
!70 = distinct !{!70, !66}
!71 = distinct !{!71, !66}
!72 = distinct !{!72, !66}
!73 = distinct !{!73, !66}
!74 = distinct !{!74, !66}
!75 = distinct !{!75, !66}
!76 = distinct !{!76, !39, !40, !41}
!77 = distinct !{!77, !39}
!78 = distinct !{!78, !39, !40}
!79 = !{!67}
!80 = !{!68}
!81 = !{!75, !74, !73, !72, !71, !70, !69, !67}
!82 = !{!75}
!83 = !{!74, !73, !72, !71, !70, !69, !67}
!84 = !{!74}
!85 = !{!73, !72, !71, !70, !69, !67}
!86 = !{!73}
!87 = !{!72, !71, !70, !69, !67}
!88 = !{!72}
!89 = !{!71, !70, !69, !67}
!90 = !{!71}
!91 = !{!70, !69, !67}
!92 = !{!70}
!93 = !{!69, !67}
!94 = !{!69}
!95 = distinct !{!95, i1 false, !"LVerDomain"}
!96 = distinct !{!96, !95}
!97 = distinct !{!97, !95}
!98 = distinct !{!98, !95}
!99 = distinct !{!99, !95}
!100 = distinct !{!100, !95}
!101 = distinct !{!101, !39, !40, !41}
!102 = distinct !{!102, !39}
!103 = distinct !{!103, !39, !40}
!104 = distinct !{!104, !45}
!105 = !{!96}
!106 = !{!97}
!107 = !{!100, !99, !98, !96}
!108 = !{!100}
!109 = !{!99, !98, !96}
!110 = !{!99}
!111 = !{!98, !96}
!112 = !{!98}
!113 = distinct !{!113, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!114 = distinct !{!114, !113, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!115 = distinct !{!115, i1 false, !"LVerDomain"}
!116 = distinct !{!116, !115}
!117 = distinct !{!117, !115}
!118 = distinct !{!118, !115}
!119 = distinct !{!119, !115}
!120 = distinct !{!120, !115}
!121 = distinct !{!121, !115}
!122 = distinct !{!122, !115}
!123 = distinct !{!123, !115}
!124 = distinct !{!124, !115}
!125 = distinct !{!125, !39, !40, !41}
!126 = distinct !{!126, !39}
!127 = distinct !{!127, !39, !40}
!128 = !{!114}
!129 = !{!116}
!130 = !{!117}
!131 = !{!124, !123, !122, !121, !120, !119, !118, !116}
!132 = !{!124}
!133 = !{!123, !122, !121, !120, !119, !118, !116}
!134 = !{!123}
!135 = !{!122, !121, !120, !119, !118, !116}
!136 = !{!122}
!137 = !{!121, !120, !119, !118, !116}
!138 = !{!121}
!139 = !{!120, !119, !118, !116}
!140 = !{!120}
!141 = !{!119, !118, !116}
!142 = !{!119}
!143 = !{!118, !116}
!144 = !{!118}
!145 = distinct !{!145, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!146 = distinct !{!146, !145, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!147 = distinct !{!147, i1 false, !"LVerDomain"}
!148 = distinct !{!148, !147}
!149 = distinct !{!149, !147}
!150 = distinct !{!150, !147}
!151 = distinct !{!151, !147}
!152 = distinct !{!152, !147}
!153 = distinct !{!153, !39, !40, !41}
!154 = distinct !{!154, !39}
!155 = distinct !{!155, !39, !40}
!156 = distinct !{!156, !45}
!157 = !{!146}
!158 = !{!148}
!159 = !{!149}
!160 = !{!152, !151, !150, !148}
!161 = !{!152}
!162 = !{!151, !150, !148}
!163 = !{!151}
!164 = !{!150, !148}
!165 = !{!150}
!166 = distinct !{!166, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!167 = distinct !{!167, !166, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!168 = distinct !{!168, !39, !40, !41}
!169 = distinct !{!169, !39, !40, !41}
!170 = distinct !{!170, !46}
!171 = distinct !{!171, !39}
!172 = distinct !{!172, !39, !40}
!173 = distinct !{!173, !45}
!174 = !{!167}
!175 = !{!"branch_weights", i32 8, i32 24}
!176 = distinct !{!176, i1 false, !"LVerDomain"}
!177 = distinct !{!177, !176}
!178 = distinct !{!178, !176}
!179 = distinct !{!179, !176}
!180 = distinct !{!180, !176}
!181 = distinct !{!181, !176}
!182 = distinct !{!182, !176}
!183 = distinct !{!183, !176}
!184 = distinct !{!184, !176}
!185 = distinct !{!185, !176}
!186 = distinct !{!186, !39, !40, !41}
!187 = distinct !{!187, !39, !40}
!188 = !{!177}
!189 = !{!178}
!190 = !{!185, !184, !183, !182, !181, !180, !179, !177}
!191 = !{!185}
!192 = !{!184, !183, !182, !181, !180, !179, !177}
!193 = !{!184}
!194 = !{!183, !182, !181, !180, !179, !177}
end_hunk_2
