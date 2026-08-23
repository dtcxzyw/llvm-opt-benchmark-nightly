Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/packing?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_ZN4ncnn7PackingD0Ev = comdat any

@_ZTVN4ncnn7PackingE = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn7PackingE, ptr @_ZN4ncnn5LayerD2Ev, ptr @_ZN4ncnn7PackingD0Ev, ptr @_ZN4ncnn7Packing10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn7Packing7forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn7PackingE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn7PackingE, ptr @_ZTIN4ncnn5LayerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn7PackingE = hidden constant [16 x i8] c"N4ncnn7PackingE\00", align 1
@_ZTIN4ncnn5LayerE = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

@_ZN4ncnn7PackingC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn7PackingC2Ev

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn7PackingD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) #6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn7Packing10load_paramERKNS_9ParamDictE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(224) initializes((208, 224)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef 1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.a, ptr %i.b, align 8, !tbaa !9
  %i.c = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, i32 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 %i.c, ptr %i.d, align 4, !tbaa !28
  %i.e = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2, i32 noundef 0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %i.e, ptr %i.f, align 8, !tbaa !29
  %i.g = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 3, i32 noundef 0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %i.g, ptr %i.h, align 4, !tbaa !30
  ret i32 0
}

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn7Packing7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !31   ; 14 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !9    ; 21 uses
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.v = icmp eq ptr %2, %1
  br i1 %i.v, label %_ZN4ncnn3MataSERKS0_.exit69, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35   ; 2 uses
  %.not.i68 = icmp eq ptr %i.x, null
  br i1 %.not.i68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = atomicrmw add ptr %i.x, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35  ; 2 uses
  %.not.i73 = icmp eq ptr %i.aa, null
  br i1 %.not.i73, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = atomicrmw add ptr %i.aa, i32 -1 acq_rel, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.g, label %_ZN4ncnn3Mat7releaseEv.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 3 uses
  %.not3.i = icmp eq ptr %i.ae, null
  %i.af = load ptr, ptr %2, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef %i.af), !inline_history !40
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.i:                                             ; preds = %bb.g
  %.not.i93 = icmp eq ptr %i.af, null
  br i1 %.not.i93, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.af) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.j, %bb.i, %bb.e, %bb.f, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.an, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.al, i8 0, i64 20, i1 false)
  %i.ao = load <2 x ptr>, ptr %1, align 8, !tbaa !42
  store <2 x ptr> %i.ao, ptr %2, align 8, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !43
  store i64 %i.aq, ptr %i.aj, align 8, !tbaa !43
  %i.ar = load i32, ptr %i.q, align 8, !tbaa !31
  store i32 %i.ar, ptr %i.ak, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !36
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.at, ptr %i.au, align 8, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load <4 x i32>, ptr %i.av, align 8, !tbaa !34
  store <4 x i32> %i.aw, ptr %i.al, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !44
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !41
  store i64 %i.ba, ptr %i.an, align 8, !tbaa !41
  br label %_ZN4ncnn3MataSERKS0_.exit69

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !45 ; 8 uses
  store i32 %i.bc, ptr %i.b, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !46 ; 5 uses
  store i32 %i.be, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !47 ; 2 uses
  store i32 %i.bg, ptr %i.d, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !44 ; 4 uses
  store i32 %i.bi, ptr %i.e, align 4, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !48 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !43 ; 7 uses
  store i64 %i.bm, ptr %i.f, align 8, !tbaa !49
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !28
  %.not = icmp eq i32 %i.bo, 0
  br i1 %.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  switch i32 %i.bk, label %bb.ag [
    i32 1, label %bb.m
    i32 2, label %bb.w
  ]

bb.m:                                             ; preds = %bb.l
  %i.bp = mul nsw i32 %i.bc, %i.r
  %i.bq = srem i32 %i.bp, %i.t
  %.not59 = icmp eq i32 %i.bq, 0
  br i1 %.not59, label %.thread.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = icmp eq ptr %2, %1
  br i1 %i.br, label %_ZN4ncnn3MataSERKS0_.exit67, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !35 ; 2 uses
  %.not.i66 = icmp eq ptr %i.bt, null
  br i1 %.not.i66, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = atomicrmw add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !35 ; 2 uses
  %.not.i74 = icmp eq ptr %i.bw, null
  br i1 %.not.i74, label %_ZN4ncnn3Mat7releaseEv.exit76, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = atomicrmw add ptr %i.bw, i32 -1 acq_rel, align 4
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.s, label %_ZN4ncnn3Mat7releaseEv.exit76

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !36 ; 3 uses
  %.not3.i75 = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %2, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i75, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.cb), !inline_history !40
  br label %_ZN4ncnn3Mat7releaseEv.exit76

bb.u:                                             ; preds = %bb.s
  %.not.i91 = icmp eq ptr %i.cb, null
  br i1 %.not.i91, label %_ZN4ncnn3Mat7releaseEv.exit76, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %i.cb) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit76

_ZN4ncnn3Mat7releaseEv.exit76:                    ; preds = %bb.v, %bb.u, %bb.q, %bb.r, %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.cj, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ch, i8 0, i64 20, i1 false)
  %i.ck = load <2 x ptr>, ptr %1, align 8, !tbaa !42
  store <2 x ptr> %i.ck, ptr %2, align 8, !tbaa !42
  %i.cl = load i64, ptr %i.bl, align 8, !tbaa !43
  store i64 %i.cl, ptr %i.cf, align 8, !tbaa !43
  %i.cm = load i32, ptr %i.q, align 8, !tbaa !31
  store i32 %i.cm, ptr %i.cg, align 8, !tbaa !31
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !36
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !36
  %i.cq = load <4 x i32>, ptr %i.bj, align 8, !tbaa !34
  store <4 x i32> %i.cq, ptr %i.ch, align 8, !tbaa !34
  %i.cr = load i32, ptr %i.bh, align 8, !tbaa !44
  store i32 %i.cr, ptr %i.ci, align 8, !tbaa !44
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !41
  store i64 %i.ct, ptr %i.cj, align 8, !tbaa !41
  br label %_ZN4ncnn3MataSERKS0_.exit67

bb.w:                                             ; preds = %bb.l
  %i.cu = mul nsw i32 %i.be, %i.r                 ; 2 uses
  %i.cv = srem i32 %i.cu, %i.t
  %.not60 = icmp eq i32 %i.cv, 0
  br i1 %.not60, label %.thread.thread96, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = icmp eq ptr %2, %1
  br i1 %i.cw, label %_ZN4ncnn3MataSERKS0_.exit67, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !35 ; 2 uses
  %.not.i64 = icmp eq ptr %i.cy, null
  br i1 %.not.i64, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = atomicrmw add ptr %i.cy, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !35 ; 2 uses
  %.not.i77 = icmp eq ptr %i.db, null
  br i1 %.not.i77, label %_ZN4ncnn3Mat7releaseEv.exit79, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.ac, label %_ZN4ncnn3Mat7releaseEv.exit79

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !36 ; 3 uses
  %.not3.i78 = icmp eq ptr %i.df, null
  %i.dg = load ptr, ptr %2, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i78, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !38
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef %i.dg), !inline_history !40
  br label %_ZN4ncnn3Mat7releaseEv.exit79

bb.ae:                                            ; preds = %bb.ac
  %.not.i89 = icmp eq ptr %i.dg, null
  br i1 %.not.i89, label %_ZN4ncnn3Mat7releaseEv.exit79, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @free(ptr noundef nonnull %i.dg) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit79

_ZN4ncnn3Mat7releaseEv.exit79:                    ; preds = %bb.af, %bb.ae, %bb.aa, %bb.ab, %bb.ad
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.do, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dm, i8 0, i64 20, i1 false)
  %i.dp = load <2 x ptr>, ptr %1, align 8, !tbaa !42
  store <2 x ptr> %i.dp, ptr %2, align 8, !tbaa !42
  %i.dq = load i64, ptr %i.bl, align 8, !tbaa !43
  store i64 %i.dq, ptr %i.dk, align 8, !tbaa !43
  %i.dr = load i32, ptr %i.q, align 8, !tbaa !31
  store i32 %i.dr, ptr %i.dl, align 8, !tbaa !31
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !36
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !36
  %i.dv = load <4 x i32>, ptr %i.bj, align 8, !tbaa !34
  store <4 x i32> %i.dv, ptr %i.dm, align 8, !tbaa !34
  %i.dw = load i32, ptr %i.bh, align 8, !tbaa !44
  store i32 %i.dw, ptr %i.dn, align 8, !tbaa !44
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !41
  store i64 %i.dy, ptr %i.do, align 8, !tbaa !41
  br label %_ZN4ncnn3MataSERKS0_.exit67

bb.ag:                                            ; preds = %bb.l
  %i.dz = add i32 %i.bk, -3
  %or.cond = icmp ult i32 %i.dz, 2
  br i1 %or.cond, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.ea = mul nsw i32 %i.bi, %i.r
  %i.eb = srem i32 %i.ea, %i.t
  %.not61 = icmp eq i32 %i.eb, 0
  br i1 %.not61, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ec = icmp eq ptr %2, %1
  br i1 %i.ec, label %_ZN4ncnn3MataSERKS0_.exit67, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !35 ; 2 uses
  %.not.i62 = icmp eq ptr %i.ee, null
  br i1 %.not.i62, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ef = atomicrmw add ptr %i.ee, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !35 ; 2 uses
  %.not.i80 = icmp eq ptr %i.eh, null
  br i1 %.not.i80, label %_ZN4ncnn3Mat7releaseEv.exit82, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ei = atomicrmw add ptr %i.eh, i32 -1 acq_rel, align 4
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.an, label %_ZN4ncnn3Mat7releaseEv.exit82

bb.an:                                            ; preds = %bb.am
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !36 ; 3 uses
  %.not3.i81 = icmp eq ptr %i.el, null
  %i.em = load ptr, ptr %2, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i81, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !38
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  tail call void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef %i.em), !inline_history !40
  br label %_ZN4ncnn3Mat7releaseEv.exit82

bb.ap:                                            ; preds = %bb.an
  %.not.i87 = icmp eq ptr %i.em, null
  br i1 %.not.i87, label %_ZN4ncnn3Mat7releaseEv.exit82, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @free(ptr noundef nonnull %i.em) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit82

_ZN4ncnn3Mat7releaseEv.exit82:                    ; preds = %bb.aq, %bb.ap, %bb.al, %bb.am, %bb.ao
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.eu, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.es, i8 0, i64 20, i1 false)
  %i.ev = load <2 x ptr>, ptr %1, align 8, !tbaa !42
  store <2 x ptr> %i.ev, ptr %2, align 8, !tbaa !42
  %i.ew = load i64, ptr %i.bl, align 8, !tbaa !43
  store i64 %i.ew, ptr %i.eq, align 8, !tbaa !43
  %i.ex = load i32, ptr %i.q, align 8, !tbaa !31
  store i32 %i.ex, ptr %i.er, align 8, !tbaa !31
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !36
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !36
  %i.fb = load <4 x i32>, ptr %i.bj, align 8, !tbaa !34
  store <4 x i32> %i.fb, ptr %i.es, align 8, !tbaa !34
  %i.fc = load i32, ptr %i.bh, align 8, !tbaa !44
  store i32 %i.fc, ptr %i.et, align 8, !tbaa !44
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !41
  store i64 %i.fe, ptr %i.eu, align 8, !tbaa !41
  br label %_ZN4ncnn3MataSERKS0_.exit67

.thread:                                          ; preds = %bb.ah, %bb.ag, %bb.k
  switch i32 %i.bk, label %_ZN4ncnn3MataSERKS0_.exit67 [
    i32 1, label %.thread.thread
    i32 2, label %.thread..thread.thread96_crit_edge
    i32 3, label %bb.bd
    i32 4, label %bb.bf
  ]

.thread..thread.thread96_crit_edge:               ; preds = %.thread
  %.pre101 = mul nsw i32 %i.be, %i.r
  br label %.thread.thread96

.thread.thread:                                   ; preds = %bb.m, %.thread
  %i.ff = icmp eq i32 %i.t, 1
  br i1 %i.ff, label %bb.ar, label %bb.ba

bb.ar:                                            ; preds = %.thread.thread
  %i.fg = icmp eq ptr %2, %1
  br i1 %i.fg, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp eq ptr %i.fi, null
  br i1 %.not.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fj = atomicrmw add ptr %i.fi, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !35 ; 2 uses
  %.not.i83 = icmp eq ptr %i.fl, null
  br i1 %.not.i83, label %_ZN4ncnn3Mat7releaseEv.exit85, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fm = atomicrmw add ptr %i.fl, i32 -1 acq_rel, align 4
  %i.fn = icmp eq i32 %i.fm, 1
  br i1 %i.fn, label %bb.aw, label %_ZN4ncnn3Mat7releaseEv.exit85

bb.aw:                                            ; preds = %bb.av
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !36 ; 3 uses
  %.not3.i84 = icmp eq ptr %i.fp, null
  %i.fq = load ptr, ptr %2, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i84, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fr = load ptr, ptr %i.fp, align 8, !tbaa !38
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  tail call void %i.ft(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef %i.fq), !inline_history !40
  br label %_ZN4ncnn3Mat7releaseEv.exit85

bb.ay:                                            ; preds = %bb.aw
  %.not.i86 = icmp eq ptr %i.fq, null
  br i1 %.not.i86, label %_ZN4ncnn3Mat7releaseEv.exit85, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @free(ptr noundef nonnull %i.fq) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit85

_ZN4ncnn3Mat7releaseEv.exit85:                    ; preds = %bb.az, %bb.ay, %bb.au, %bb.av, %bb.ax
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.fx, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fu, i8 0, i64 20, i1 false)
  %i.fy = load <2 x ptr>, ptr %1, align 8, !tbaa !42
  store <2 x ptr> %i.fy, ptr %2, align 8, !tbaa !42
  %5 = load i64, ptr %i.bl, align 8, !tbaa !43
  store i64 %5, ptr %4, align 8, !tbaa !43
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !36
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !36
  %i.gc = load i32, ptr %i.bj, align 8, !tbaa !48
  store i32 %i.gc, ptr %i.fu, align 8, !tbaa !48
  %i.gd = load <2 x i32>, ptr %i.bd, align 8, !tbaa !34
  store <2 x i32> %i.gd, ptr %i.fv, align 8, !tbaa !34
  %i.ge = load i32, ptr %i.bh, align 8, !tbaa !44
  store i32 %i.ge, ptr %i.fw, align 8, !tbaa !44
  %.pre = load i32, ptr %i.b, align 4, !tbaa !34
  %.pre97 = load i32, ptr %i.a, align 4, !tbaa !34
  %.pre99 = load i64, ptr %i.f, align 8, !tbaa !49
  %.pre100 = load i32, ptr %i.s, align 8, !tbaa !9
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %bb.ar, %_ZN4ncnn3Mat7releaseEv.exit85
  %i.gf = phi i32 [ %.pre100, %_ZN4ncnn3Mat7releaseEv.exit85 ], [ 1, %bb.ar ]
  %i.gg = phi i64 [ %.pre99, %_ZN4ncnn3Mat7releaseEv.exit85 ], [ %i.bm, %bb.ar ]
  %i.gh = phi i32 [ %.pre97, %_ZN4ncnn3Mat7releaseEv.exit85 ], [ %i.r, %bb.ar ] ; 2 uses
  %i.gi = phi i32 [ %.pre, %_ZN4ncnn3Mat7releaseEv.exit85 ], [ %i.bc, %bb.ar ]
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gj = load i64, ptr %.in, align 8, !tbaa !41
  %i.gk = mul nsw i32 %i.gh, %i.gi
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !45
  %i.gm = sext i32 %i.gh to i64                   ; 2 uses
  %i.gn = mul i64 %i.gj, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !41
  %i.gp = udiv i64 %i.gg, %i.gm
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !43
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.gf, ptr %i.gr, align 8, !tbaa !31
  br label %_ZN4ncnn3MataSERKS0_.exit67

bb.ba:                                            ; preds = %.thread.thread
  %i.gs = mul nsw i32 %i.bc, %i.r
  %i.gt = add i32 %i.t, -1
  %i.gu = add i32 %i.gt, %i.gs
  %i.gv = sdiv i32 %i.gu, %i.t
  %i.gw = sext i32 %i.r to i64
  %i.gx = udiv i64 %i.bm, %i.gw
  %i.gy = sext i32 %i.t to i64
  %i.gz = mul i64 %i.gx, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !50
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.gv, i64 noundef %i.gz, i32 noundef %i.t, ptr noundef %i.hb)
  %i.hc = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %_ZN4ncnn3MataSERKS0_.exit67, label %_ZNK4ncnn3Mat5emptyEv.exit72

_ZNK4ncnn3Mat5emptyEv.exit72:                     ; preds = %bb.ba
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !41
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !44
  %i.hi = sext i32 %i.hh to i64
  %i.hj = mul i64 %i.hf, %i.hi
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %_ZN4ncnn3MataSERKS0_.exit67, label %bb.bb

bb.bb:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit72
  %i.hl = load ptr, ptr %1, align 8, !tbaa !37
  %i.hm = sext i32 %i.bc to i64
  %i.hn = mul i64 %i.bm, %i.hm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hc, ptr align 1 %i.hl, i64 %i.hn, i1 false)
  br label %_ZN4ncnn3MataSERKS0_.exit67

.thread.thread96:                                 ; preds = %.thread..thread.thread96_crit_edge, %bb.w
  %.pre-phi = phi i32 [ %.pre101, %.thread..thread.thread96_crit_edge ], [ %i.cu, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.ho = add i32 %i.t, -1
  %i.hp = add i32 %i.ho, %.pre-phi
  %i.hq = sdiv i32 %i.hp, %i.t                    ; 2 uses
  store i32 %i.hq, ptr %i.g, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.hr = sext i32 %i.r to i64
  %i.hs = udiv i64 %i.bm, %i.hr
  %i.ht = sext i32 %i.t to i64                    ; 2 uses
  %i.hu = mul i64 %i.hs, %i.ht                    ; 3 uses
  store i64 %i.hu, ptr %i.h, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  %i.hv = udiv i64 %i.hu, %i.ht
  store i64 %i.hv, ptr %i.i, align 8, !tbaa !49
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !50
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bc, i32 noundef %i.hq, i64 noundef %i.hu, i32 noundef %i.t, ptr noundef %i.hx)
  %i.hy = load ptr, ptr %2, align 8, !tbaa !37
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %_ZNK4ncnn3Mat5emptyEv.exit71.thread, label %_ZNK4ncnn3Mat5emptyEv.exit71

_ZNK4ncnn3Mat5emptyEv.exit71:                     ; preds = %.thread.thread96
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !41
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !44
  %i.ie = sext i32 %i.id to i64
  %i.if = mul i64 %i.ib, %i.ie
  %i.ig = icmp eq i64 %i.if, 0
  br i1 %i.ig, label %_ZNK4ncnn3Mat5emptyEv.exit71.thread, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit71
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !52
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.ii)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 10, ptr nonnull @_ZNK4ncnn7Packing7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.g, ptr nonnull %2, ptr nonnull %i.b, ptr nonnull %i.h, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %i.f, ptr nonnull %i.i)
  br label %_ZNK4ncnn3Mat5emptyEv.exit71.thread

_ZNK4ncnn3Mat5emptyEv.exit71.thread:              ; preds = %.thread.thread96, %_ZNK4ncnn3Mat5emptyEv.exit71, %bb.bc
  %.1 = phi i32 [ 0, %bb.bc ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit71 ], [ -100, %.thread.thread96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %_ZN4ncnn3MataSERKS0_.exit67

bb.bd:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.ij = mul nsw i32 %i.bi, %i.r
  %i.ik = add i32 %i.t, -1
  %i.il = add i32 %i.ik, %i.ij
  %i.im = sdiv i32 %i.il, %i.t                    ; 2 uses
  store i32 %i.im, ptr %i.j, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  %i.in = sext i32 %i.r to i64
  %i.io = udiv i64 %i.bm, %i.in
  %i.ip = sext i32 %i.t to i64                    ; 2 uses
  %i.iq = mul i64 %i.io, %i.ip                    ; 3 uses
  store i64 %i.iq, ptr %i.k, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  %i.ir = udiv i64 %i.iq, %i.ip
  store i64 %i.ir, ptr %i.l, align 8, !tbaa !49
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !50
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bc, i32 noundef %i.be, i32 noundef %i.im, i64 noundef %i.iq, i32 noundef %i.t, ptr noundef %i.it)
  %i.iu = load ptr, ptr %2, align 8, !tbaa !37
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %_ZNK4ncnn3Mat5emptyEv.exit70.thread, label %_ZNK4ncnn3Mat5emptyEv.exit70

_ZNK4ncnn3Mat5emptyEv.exit70:                     ; preds = %bb.bd
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !41
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !44
  %i.ja = sext i32 %i.iz to i64
  %i.jb = mul i64 %i.ix, %i.ja
  %i.jc = icmp eq i64 %i.jb, 0
  br i1 %i.jc, label %_ZNK4ncnn3Mat5emptyEv.exit70.thread, label %bb.be

bb.be:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit70
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !52
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.je)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZNK4ncnn7Packing7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.j, ptr nonnull %2, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.e, ptr nonnull %1, ptr nonnull %i.f, ptr nonnull %i.l)
  br label %_ZNK4ncnn3Mat5emptyEv.exit70.thread

_ZNK4ncnn3Mat5emptyEv.exit70.thread:              ; preds = %bb.bd, %_ZNK4ncnn3Mat5emptyEv.exit70, %bb.be
  %.2 = phi i32 [ 0, %bb.be ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit70 ], [ -100, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  br label %_ZN4ncnn3MataSERKS0_.exit67

bb.bf:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  %i.jf = mul nsw i32 %i.bi, %i.r
  %i.jg = add i32 %i.t, -1
  %i.jh = add i32 %i.jg, %i.jf
  %i.ji = sdiv i32 %i.jh, %i.t                    ; 2 uses
  store i32 %i.ji, ptr %i.m, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  %i.jj = sext i32 %i.r to i64
  %i.jk = udiv i64 %i.bm, %i.jj
  %i.jl = sext i32 %i.t to i64                    ; 2 uses
  %i.jm = mul i64 %i.jk, %i.jl                    ; 3 uses
  store i64 %i.jm, ptr %i.n, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #6
  %i.jn = udiv i64 %i.jm, %i.jl
  store i64 %i.jn, ptr %i.o, align 8, !tbaa !49
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !50
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bc, i32 noundef %i.be, i32 noundef %i.bg, i32 noundef %i.ji, i64 noundef %i.jm, i32 noundef %i.t, ptr noundef %i.jp)
  %i.jq = load ptr, ptr %2, align 8, !tbaa !37
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.bf
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !41
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !44
  %i.jw = sext i32 %i.jv to i64
  %i.jx = mul i64 %i.jt, %i.jw
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !52
end_hunk_0
