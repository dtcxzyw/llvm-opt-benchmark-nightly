Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/shufflechannel_x86?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.ncnn::Option" = type { i8, i8, i8, i8, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%"class.ncnn::Mat" = type { ptr, ptr, i64, i32, ptr, i32, i32, i32, i32, i32, i64 }

$_ZN4ncnn18ShuffleChannel_x86D0Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN4ncnn18ShuffleChannel_x86E = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn18ShuffleChannel_x86E, ptr @_ZN4ncnn5LayerD2Ev, ptr @_ZN4ncnn18ShuffleChannel_x86D0Ev, ptr @_ZN4ncnn14ShuffleChannel10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn18ShuffleChannel_x867forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn18ShuffleChannel_x86E = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn18ShuffleChannel_x86E, ptr @_ZTIN4ncnn14ShuffleChannelE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn18ShuffleChannel_x86E = hidden constant [28 x i8] c"N4ncnn18ShuffleChannel_x86E\00", align 1
@_ZTIN4ncnn14ShuffleChannelE = external constant ptr
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [38 x i8] c"Elembits = %d is not implemented yet.\00", align 1

@_ZN4ncnn18ShuffleChannel_x86C1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn18ShuffleChannel_x86C2Ev

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn18ShuffleChannel_x86D0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 comdat align 2 {
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
define hidden noundef i32 @_ZNK4ncnn18ShuffleChannel_x867forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %.tr.i = trunc i64 %i.d to i32
  %i.e = shl i32 %.tr.i, 3
  %i.f = sdiv i32 %i.e, %i.b                      ; 2 uses
  %.not = icmp eq i32 %i.f, 32
  br i1 %.not, label %bb.b, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.a, %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.g = phi i32 [ %i.f, %_ZNK4ncnn3Mat8elembitsEv.exit ], [ 0, %bb.a ]
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str, i32 noundef %i.g) #16 ; 0 uses
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !16
  %fputc = tail call i32 @fputc(i32 10, ptr %i.j) ; 0 uses
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.b:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !21   ; 4 uses
  %i.s = mul i32 %i.n, %i.l
  %i.t = mul i32 %i.s, %i.p                       ; 17 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.v = load i32, ptr %i.u, align 4, !tbaa !22
  %.not301 = icmp eq i32 %i.v, 0
  br i1 %.not301, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = mul nsw i32 %i.r, %i.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.y = load i32, ptr %i.x, align 8, !tbaa !38
  %i.z = sdiv i32 %i.w, %i.y
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi i32 [ %i.z, %bb.c ], [ %i.ab, %bb.d ] ; 6 uses
  %i.ad = sdiv i32 %i.r, %i.ac                    ; 13 uses
  %i.ae = srem i32 %i.r, %i.ac
  %i.af = icmp eq i32 %i.ac, 1
  br i1 %i.af, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp eq ptr %2, %1
  br i1 %i.ag, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 2 uses
  %.not.i307 = icmp eq ptr %i.ai, null
  br i1 %.not.i307, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = atomicrmw add ptr %i.ai, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39 ; 2 uses
  %.not.i479 = icmp eq ptr %i.al, null
  br i1 %.not.i479, label %_ZN4ncnn3Mat7releaseEv.exit481, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = atomicrmw add ptr %i.al, i32 -1 acq_rel, align 4
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.k, label %_ZN4ncnn3Mat7releaseEv.exit481

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40 ; 3 uses
  %.not3.i480 = icmp eq ptr %i.ap, null
  %i.aq = load ptr, ptr %2, align 8, !tbaa !41    ; 3 uses
  br i1 %.not3.i480, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef %i.aq), !inline_history !44
  br label %_ZN4ncnn3Mat7releaseEv.exit481

bb.m:                                             ; preds = %bb.k
  %.not.i482 = icmp eq ptr %i.aq, null
  br i1 %.not.i482, label %_ZN4ncnn3Mat7releaseEv.exit481, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.aq) #14
  br label %_ZN4ncnn3Mat7releaseEv.exit481

_ZN4ncnn3Mat7releaseEv.exit481:                   ; preds = %bb.n, %bb.m, %bb.i, %bb.j, %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aw, i8 0, i64 20, i1 false)
  %i.az = load <2 x ptr>, ptr %1, align 8, !tbaa !46
  store <2 x ptr> %i.az, ptr %2, align 8, !tbaa !46
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !15
  store i64 %i.ba, ptr %i.au, align 8, !tbaa !15
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !9
  store i32 %i.bb, ptr %i.av, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load <4 x i32>, ptr %i.bf, align 8, !tbaa !47
  store <4 x i32> %i.bg, ptr %i.aw, align 8, !tbaa !47
  %i.bh = load i32, ptr %i.q, align 8, !tbaa !21
  store i32 %i.bh, ptr %i.ax, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !45
  store i64 %i.bj, ptr %i.ay, align 8, !tbaa !45
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.o:                                             ; preds = %bb.e
  %i.bk = icmp eq i32 %i.b, 4
  br i1 %i.bk, label %bb.p, label %bb.bd

bb.p:                                             ; preds = %bb.o
  %i.bl = icmp ne i32 %i.ac, 2                    ; 2 uses
  %i.bm = and i32 %i.r, 1
  %.not302 = icmp eq i32 %i.bm, 0
  %or.cond = select i1 %i.bl, i1 true, i1 %.not302
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !48
  tail call void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.bo)
  %i.bp = load ptr, ptr %2, align 8, !tbaa !41    ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZNK4ncnn3Mat5emptyEv.exit308

_ZNK4ncnn3Mat5emptyEv.exit308:                    ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !45 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !21
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul i64 %i.bs, %i.bv
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_ZN4ncnn3MataSERKS0_.exit, label %.preheader953

.preheader953:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit308
  %i.by = icmp sgt i32 %i.ad, 0
  br i1 %i.by, label %_ZN4ncnn3MatD2Ev.exit350.lr.ph, label %_ZN4ncnn3MatD2Ev.exit345

_ZN4ncnn3MatD2Ev.exit350.lr.ph:                   ; preds = %.preheader953
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = icmp sgt i32 %i.t, 0
  br i1 %i.cb, label %_ZN4ncnn3MatD2Ev.exit350.preheader, label %_ZN4ncnn3MatD2Ev.exit345

_ZN4ncnn3MatD2Ev.exit350.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit350.lr.ph
  %i.cc = zext nneg i32 %i.ad to i64              ; 2 uses
  %xtraiter = and i32 %i.t, 1
  %i.cd = icmp eq i32 %i.t, 1
  %unroll_iter = and i32 %i.t, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1063 = trunc i32 %i.t to i1
  br label %_ZN4ncnn3MatD2Ev.exit350

_ZN4ncnn3MatD2Ev.exit345.loopexit:                ; preds = %._crit_edge
  %.pre = load ptr, ptr %2, align 8, !tbaa !41, !noalias !50
  %.pre1023 = load i64, ptr %i.br, align 8, !tbaa !45, !noalias !50
  br label %_ZN4ncnn3MatD2Ev.exit345

_ZN4ncnn3MatD2Ev.exit345:                         ; preds = %_ZN4ncnn3MatD2Ev.exit345.loopexit, %_ZN4ncnn3MatD2Ev.exit350.lr.ph, %.preheader953
  %i.ce = phi i64 [ %.pre1023, %_ZN4ncnn3MatD2Ev.exit345.loopexit ], [ %i.bs, %_ZN4ncnn3MatD2Ev.exit350.lr.ph ], [ %i.bs, %.preheader953 ]
  %i.cf = phi ptr [ %.pre, %_ZN4ncnn3MatD2Ev.exit345.loopexit ], [ %i.bp, %_ZN4ncnn3MatD2Ev.exit350.lr.ph ], [ %i.bp, %.preheader953 ]
  %i.cg = load ptr, ptr %1, align 8, !tbaa !41, !noalias !53 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !45, !noalias !53 ; 2 uses
  %i.cj = sext i32 %i.ad to i64
  %i.ck = mul i64 %i.ci, %i.cj
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !15, !noalias !53 ; 2 uses
  %i.cm = mul i64 %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cm ; 3 uses
  %i.co = shl nsw i32 %i.ad, 1
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = mul i64 %i.ci, %i.cp
  %i.cr = mul i64 %i.cq, %i.cl
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cr
  %i.ct = mul i64 %i.ce, %i.cp
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !15, !noalias !50
  %i.cw = mul i64 %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cw ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  %i.cz = icmp sgt i32 %i.t, 1
  br i1 %i.cz, label %.lr.ph.preheader, label %._crit_edge965

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit345
  %i.da = add nsw i32 %i.t, -2
  %i.db = add nsw i32 %i.t, -1                    ; 2 uses
  %xtraiter1064 = and i32 %i.db, 3                ; 3 uses
  %i.dc = icmp ult i32 %i.da, 3
  br i1 %i.dc, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter1070.a = and i32 %i.db, -4
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit350:                         ; preds = %_ZN4ncnn3MatD2Ev.exit350.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit350.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.dd = load ptr, ptr %1, align 8, !tbaa !41, !noalias !56 ; 3 uses
  %i.de = load i64, ptr %i.bz, align 8, !tbaa !45, !noalias !56 ; 3 uses
  %i.df = mul i64 %i.de, %indvars.iv
  %i.dg = load i64, ptr %i.c, align 8, !tbaa !15, !noalias !56 ; 3 uses
  %i.dh = mul i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dh ; 2 uses
  %i.dj = add nuw nsw i64 %indvars.iv, %i.cc      ; 2 uses
  %i.dk = mul i64 %i.de, %i.dj
  %i.dl = mul i64 %i.dk, %i.dg
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dl ; 2 uses
  %i.dn = add nuw nsw i64 %i.dj, 1
  %i.do = mul i64 %i.de, %i.dn
  %i.dp = mul i64 %i.do, %i.dg
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dp ; 2 uses
  %i.dr = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ds = load ptr, ptr %2, align 8, !tbaa !41, !noalias !59 ; 2 uses
  %i.dt = load i64, ptr %i.br, align 8, !tbaa !45, !noalias !59 ; 2 uses
  %i.du = mul i64 %i.dt, %i.dr
  %i.dv = load i64, ptr %i.ca, align 8, !tbaa !15, !noalias !59 ; 2 uses
  %i.dw = mul i64 %i.du, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dw ; 2 uses
  %i.dy = or disjoint i64 %i.dr, 1
  %i.dz = mul i64 %i.dt, %i.dy
  %i.ea = mul i64 %i.dz, %i.dv
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ea ; 2 uses
  br i1 %i.cd, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit350.new

._crit_edge.unr-lcssa:                            ; preds = %_ZN4ncnn3MatD2Ev.exit350.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit350
  %.0268959.epil.init = phi ptr [ %i.di, %_ZN4ncnn3MatD2Ev.exit350 ], [ %i.ew, %._crit_edge.unr-lcssa ]
  %.0271958.epil.init = phi ptr [ %i.dm, %_ZN4ncnn3MatD2Ev.exit350 ], [ %i.ex, %._crit_edge.unr-lcssa ]
  %.0272957.epil.init = phi ptr [ %i.dq, %_ZN4ncnn3MatD2Ev.exit350 ], [ %i.ey, %._crit_edge.unr-lcssa ]
  %.0273956.epil.init = phi ptr [ %i.dx, %_ZN4ncnn3MatD2Ev.exit350 ], [ %i.ez, %._crit_edge.unr-lcssa ]
  %.0274955.epil.init = phi ptr [ %i.eb, %_ZN4ncnn3MatD2Ev.exit350 ], [ %i.fa, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1063)
  %i.ec = load <4 x float>, ptr %.0268959.epil.init, align 1, !tbaa !62 ; 2 uses
  %i.ed = load <4 x float>, ptr %.0271958.epil.init, align 1, !tbaa !62
  %i.ee = load <4 x float>, ptr %.0272957.epil.init, align 1, !tbaa !62
  %i.ef = shufflevector <4 x float> %i.ec, <4 x float> %i.ed, <4 x i32> <i32 0, i32 6, i32 1, i32 7>
  %i.eg = shufflevector <4 x float> %i.ec, <4 x float> %i.ee, <4 x i32> <i32 2, i32 4, i32 3, i32 5>
  store <4 x float> %i.ef, ptr %.0273956.epil.init, align 1, !tbaa !62
  store <4 x float> %i.eg, ptr %.0274955.epil.init, align 1, !tbaa !62
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1003.not = icmp eq i64 %indvars.iv.next, %i.cc
  br i1 %exitcond1003.not, label %_ZN4ncnn3MatD2Ev.exit345.loopexit, label %_ZN4ncnn3MatD2Ev.exit350, !llvm.loop !63

_ZN4ncnn3MatD2Ev.exit350.new:                     ; preds = %_ZN4ncnn3MatD2Ev.exit350, %_ZN4ncnn3MatD2Ev.exit350.new
  %.0268959 = phi ptr [ %i.ew, %_ZN4ncnn3MatD2Ev.exit350.new ], [ %i.di, %_ZN4ncnn3MatD2Ev.exit350 ] ; 3 uses
  %.0271958 = phi ptr [ %i.ex, %_ZN4ncnn3MatD2Ev.exit350.new ], [ %i.dm, %_ZN4ncnn3MatD2Ev.exit350 ] ; 3 uses
  %.0272957 = phi ptr [ %i.ey, %_ZN4ncnn3MatD2Ev.exit350.new ], [ %i.dq, %_ZN4ncnn3MatD2Ev.exit350 ] ; 3 uses
  %.0273956 = phi ptr [ %i.ez, %_ZN4ncnn3MatD2Ev.exit350.new ], [ %i.dx, %_ZN4ncnn3MatD2Ev.exit350 ] ; 3 uses
  %.0274955 = phi ptr [ %i.fa, %_ZN4ncnn3MatD2Ev.exit350.new ], [ %i.eb, %_ZN4ncnn3MatD2Ev.exit350 ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %_ZN4ncnn3MatD2Ev.exit350.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit350 ]
  %i.eh = load <4 x float>, ptr %.0268959, align 1, !tbaa !62 ; 2 uses
  %i.ei = load <4 x float>, ptr %.0271958, align 1, !tbaa !62
  %i.ej = load <4 x float>, ptr %.0272957, align 1, !tbaa !62
  %i.ek = shufflevector <4 x float> %i.eh, <4 x float> %i.ei, <4 x i32> <i32 0, i32 6, i32 1, i32 7>
  %i.el = shufflevector <4 x float> %i.eh, <4 x float> %i.ej, <4 x i32> <i32 2, i32 4, i32 3, i32 5>
  store <4 x float> %i.ek, ptr %.0273956, align 1, !tbaa !62
  store <4 x float> %i.el, ptr %.0274955, align 1, !tbaa !62
  %i.em = getelementptr inbounds nuw i8, ptr %.0268959, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %.0271958, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.0272957, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %.0273956, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %.0274955, i64 16
  %i.er = load <4 x float>, ptr %i.em, align 1, !tbaa !62 ; 2 uses
  %i.es = load <4 x float>, ptr %i.en, align 1, !tbaa !62
  %i.et = load <4 x float>, ptr %i.eo, align 1, !tbaa !62
  %i.eu = shufflevector <4 x float> %i.er, <4 x float> %i.es, <4 x i32> <i32 0, i32 6, i32 1, i32 7>
  %i.ev = shufflevector <4 x float> %i.er, <4 x float> %i.et, <4 x i32> <i32 2, i32 4, i32 3, i32 5>
  store <4 x float> %i.eu, ptr %i.ep, align 1, !tbaa !62
  store <4 x float> %i.ev, ptr %i.eq, align 1, !tbaa !62
  %i.ew = getelementptr inbounds nuw i8, ptr %.0268959, i64 32 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0271958, i64 32 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.0272957, i64 32 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0273956, i64 32 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0274955, i64 32 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit350.new, !llvm.loop !65

._crit_edge965.loopexit.unr-lcssa:                ; preds = %.lr.ph
  %lcmp.mod1065.not = icmp eq i32 %xtraiter1064, 0
  br i1 %lcmp.mod1065.not, label %._crit_edge965, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge965.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0276964.epil.init = phi ptr [ %i.cn, %.lr.ph.preheader ], [ %i.gl, %._crit_edge965.loopexit.unr-lcssa ]
  %.0277963.epil.init = phi ptr [ %i.cy, %.lr.ph.preheader ], [ %i.gm, %._crit_edge965.loopexit.unr-lcssa ]
  %.0278962.epil.init = phi ptr [ %i.cx, %.lr.ph.preheader ], [ %i.gn, %._crit_edge965.loopexit.unr-lcssa ]
  %lcmp.mod1069.a = icmp ne i32 %xtraiter1064, 0
  tail call void @llvm.assume(i1 %lcmp.mod1069.a)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0276964.epil = phi ptr [ %i.fe, %.lr.ph.epil ], [ %.0276964.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0277963.epil = phi ptr [ %i.ff, %.lr.ph.epil ], [ %.0277963.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0278962.epil = phi ptr [ %i.fg, %.lr.ph.epil ], [ %.0278962.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fb = load <4 x float>, ptr %.0276964.epil, align 1, !tbaa !62
  %i.fc = load <4 x float>, ptr %.0277963.epil, align 1, !tbaa !62
  %i.fd = shufflevector <4 x float> %i.fb, <4 x float> %i.fc, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.fd, ptr %.0278962.epil, align 1, !tbaa !62
  %i.fe = getelementptr inbounds nuw i8, ptr %.0276964.epil, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0277963.epil, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0278962.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1064
  br i1 %epil.iter.cmp.not, label %._crit_edge965, label %.lr.ph.epil, !llvm.loop !66

._crit_edge965:                                   ; preds = %._crit_edge965.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN4ncnn3MatD2Ev.exit345
  %.0278.lcssa = phi ptr [ %i.cx, %_ZN4ncnn3MatD2Ev.exit345 ], [ %i.gn, %._crit_edge965.loopexit.unr-lcssa ], [ %i.fg, %.lr.ph.epil ] ; 4 uses
  %.0277.lcssa = phi ptr [ %i.cy, %_ZN4ncnn3MatD2Ev.exit345 ], [ %i.gm, %._crit_edge965.loopexit.unr-lcssa ], [ %i.ff, %.lr.ph.epil ] ; 2 uses
  %.0276.lcssa = phi ptr [ %i.cn, %_ZN4ncnn3MatD2Ev.exit345 ], [ %i.gl, %._crit_edge965.loopexit.unr-lcssa ], [ %i.fe, %.lr.ph.epil ] ; 2 uses
  %i.fh = load float, ptr %.0276.lcssa, align 4, !tbaa !68
  store float %i.fh, ptr %.0278.lcssa, align 4, !tbaa !68
  %i.fi = load float, ptr %.0277.lcssa, align 4, !tbaa !68
  %i.fj = getelementptr inbounds nuw i8, ptr %.0278.lcssa, i64 4
  store float %i.fi, ptr %i.fj, align 4, !tbaa !68
  %i.fk = getelementptr inbounds nuw i8, ptr %.0276.lcssa, i64 4
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !68
  %i.fm = getelementptr inbounds nuw i8, ptr %.0278.lcssa, i64 8
  store float %i.fl, ptr %i.fm, align 4, !tbaa !68
  %i.fn = getelementptr inbounds nuw i8, ptr %.0277.lcssa, i64 4
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !68
  %i.fp = getelementptr inbounds nuw i8, ptr %.0278.lcssa, i64 12
  store float %i.fo, ptr %i.fp, align 4, !tbaa !68
  br label %_ZN4ncnn3MataSERKS0_.exit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0276964 = phi ptr [ %i.cn, %.lr.ph.preheader.new ], [ %i.gl, %.lr.ph ] ; 5 uses
  %.0277963 = phi ptr [ %i.cy, %.lr.ph.preheader.new ], [ %i.gm, %.lr.ph ] ; 5 uses
  %.0278962 = phi ptr [ %i.cx, %.lr.ph.preheader.new ], [ %i.gn, %.lr.ph ] ; 5 uses
  %niter1071.a = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter1071.next.3, %.lr.ph ]
  %i.fq = load <4 x float>, ptr %.0276964, align 1, !tbaa !62
  %i.fr = load <4 x float>, ptr %.0277963, align 1, !tbaa !62
  %i.fs = shufflevector <4 x float> %i.fq, <4 x float> %i.fr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.fs, ptr %.0278962, align 1, !tbaa !62
  %i.ft = getelementptr inbounds nuw i8, ptr %.0276964, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %.0277963, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.0278962, i64 16
  %i.fw = load <4 x float>, ptr %i.ft, align 1, !tbaa !62
  %i.fx = load <4 x float>, ptr %i.fu, align 1, !tbaa !62
  %i.fy = shufflevector <4 x float> %i.fw, <4 x float> %i.fx, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.fy, ptr %i.fv, align 1, !tbaa !62
  %i.fz = getelementptr inbounds nuw i8, ptr %.0276964, i64 32
  %i.ga = getelementptr inbounds nuw i8, ptr %.0277963, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %.0278962, i64 32
  %i.gc = load <4 x float>, ptr %i.fz, align 1, !tbaa !62
  %i.gd = load <4 x float>, ptr %i.ga, align 1, !tbaa !62
  %i.ge = shufflevector <4 x float> %i.gc, <4 x float> %i.gd, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.ge, ptr %i.gb, align 1, !tbaa !62
  %i.gf = getelementptr inbounds nuw i8, ptr %.0276964, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %.0277963, i64 48
  %i.gh = getelementptr inbounds nuw i8, ptr %.0278962, i64 48
  %i.gi = load <4 x float>, ptr %i.gf, align 1, !tbaa !62
  %i.gj = load <4 x float>, ptr %i.gg, align 1, !tbaa !62
  %i.gk = shufflevector <4 x float> %i.gi, <4 x float> %i.gj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.gk, ptr %i.gh, align 1, !tbaa !62
  %i.gl = getelementptr inbounds nuw i8, ptr %.0276964, i64 64 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0277963, i64 64 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0278962, i64 64 ; 3 uses
  %niter1071.next.3 = add i32 %niter1071.a, 4     ; 2 uses
  %niter1071.ncmp.3 = icmp eq i32 %niter1071.next.3, %unroll_iter1070.a
  br i1 %niter1071.ncmp.3, label %._crit_edge965.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !70

bb.r:                                             ; preds = %bb.p
  %i.go = icmp sle i32 %i.ac, 4
  %.not303 = icmp eq i32 %i.ae, 0
  %or.cond1094 = select i1 %i.go, i1 %.not303, i1 false
  br i1 %or.cond1094, label %bb.ay, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !71
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !74
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 0, ptr %i.gu, align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gt, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.gx, align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gw, i8 0, i64 28, i1 false)
  %i.gy = invoke noundef i32 @_ZNK4ncnn14ShuffleChannel7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.u unwind label %bb.w       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %.not304 = icmp eq i32 %i.gy, 0
  br i1 %.not304, label %bb.ad, label %bb.ae

bb.v:                                             ; preds = %bb.s
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.w:                                             ; preds = %bb.ad, %bb.t
  %i.ha = landingpad { ptr, i32 }
          cleanup
  %i.hb = load ptr, ptr %i.gv, align 8, !tbaa !39 ; 2 uses
  %.not.i391 = icmp eq ptr %i.hb, null
  br i1 %.not.i391, label %_ZN4ncnn3MatD2Ev.exit342, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hc = atomicrmw add ptr %i.hb, i32 -1 acq_rel, align 4
  %i.hd = icmp eq i32 %i.hc, 1
  br i1 %i.hd, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit342

bb.y:                                             ; preds = %bb.x
  %i.he = load ptr, ptr %i.gw, align 8, !tbaa !40 ; 3 uses
  %.not3.i392 = icmp eq ptr %i.he, null
  %i.hf = load ptr, ptr %6, align 8, !tbaa !41    ; 3 uses
  br i1 %.not3.i392, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hg = load ptr, ptr %i.he, align 8, !tbaa !42
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8
  invoke void %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef %i.hf)
          to label %_ZN4ncnn3MatD2Ev.exit342 unwind label %bb.ac, !inline_history !44

bb.aa:                                            ; preds = %bb.y
  %.not.i525 = icmp eq ptr %i.hf, null
  br i1 %.not.i525, label %_ZN4ncnn3MatD2Ev.exit342, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.hf) #14
  br label %_ZN4ncnn3MatD2Ev.exit342

bb.ac:                                            ; preds = %bb.z
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit342:                         ; preds = %bb.x, %bb.w, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.ar

bb.ad:                                            ; preds = %bb.u
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.ae unwind label %bb.w

bb.ae:                                            ; preds = %bb.ad, %bb.u
  %i.hl = load ptr, ptr %i.gv, align 8, !tbaa !39 ; 2 uses
  %.not.i395 = icmp eq ptr %i.hl, null
  br i1 %.not.i395, label %_ZN4ncnn3MatD2Ev.exit341, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hm = atomicrmw add ptr %i.hl, i32 -1 acq_rel, align 4
  %i.hn = icmp eq i32 %i.hm, 1
  br i1 %i.hn, label %bb.ag, label %_ZN4ncnn3MatD2Ev.exit341

bb.ag:                                            ; preds = %bb.af
  %i.ho = load ptr, ptr %i.gw, align 8, !tbaa !40 ; 3 uses
  %.not3.i396 = icmp eq ptr %i.ho, null
  %i.hp = load ptr, ptr %6, align 8, !tbaa !41    ; 3 uses
  br i1 %.not3.i396, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hq = load ptr, ptr %i.ho, align 8, !tbaa !42
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  invoke void %i.hs(ptr noundef nonnull align 8 dereferenceable(8) %i.ho, ptr noundef %i.hp)
          to label %_ZN4ncnn3MatD2Ev.exit341 unwind label %bb.ak, !inline_history !44

bb.ai:                                            ; preds = %bb.ag
  %.not.i523 = icmp eq ptr %i.hp, null
  br i1 %.not.i523, label %_ZN4ncnn3MatD2Ev.exit341, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @free(ptr noundef nonnull %i.hp) #14
  br label %_ZN4ncnn3MatD2Ev.exit341

bb.ak:                                            ; preds = %bb.ah
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit341:                         ; preds = %bb.af, %bb.ae, %bb.ah, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.hv = load ptr, ptr %i.gs, align 8, !tbaa !39 ; 2 uses
  %.not.i399 = icmp eq ptr %i.hv, null
  br i1 %.not.i399, label %_ZN4ncnn3MatD2Ev.exit340, label %bb.al

bb.al:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit341
  %i.hw = atomicrmw add ptr %i.hv, i32 -1 acq_rel, align 4
  %i.hx = icmp eq i32 %i.hw, 1
  br i1 %i.hx, label %bb.am, label %_ZN4ncnn3MatD2Ev.exit340

bb.am:                                            ; preds = %bb.al
  %i.hy = load ptr, ptr %i.gt, align 8, !tbaa !40 ; 3 uses
  %.not3.i400 = icmp eq ptr %i.hy, null
  %i.hz = load ptr, ptr %5, align 8, !tbaa !41    ; 3 uses
  br i1 %.not3.i400, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ia = load ptr, ptr %i.hy, align 8, !tbaa !42
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  invoke void %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef %i.hz)
          to label %_ZN4ncnn3MatD2Ev.exit340 unwind label %bb.aq, !inline_history !44

bb.ao:                                            ; preds = %bb.am
  %.not.i521 = icmp eq ptr %i.hz, null
  br i1 %.not.i521, label %_ZN4ncnn3MatD2Ev.exit340, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef nonnull %i.hz) #14
  br label %_ZN4ncnn3MatD2Ev.exit340

bb.aq:                                            ; preds = %bb.an
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit340:                         ; preds = %bb.al, %_ZN4ncnn3MatD2Ev.exit341, %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.ar:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit342, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ha, %_ZN4ncnn3MatD2Ev.exit342 ], [ %i.gz, %bb.v ]
  %i.if = load ptr, ptr %i.gs, align 8, !tbaa !39 ; 2 uses
  %.not.i403 = icmp eq ptr %i.if, null
  br i1 %.not.i403, label %_ZN4ncnn3MatD2Ev.exit339, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ig = atomicrmw add ptr %i.if, i32 -1 acq_rel, align 4
  %i.ih = icmp eq i32 %i.ig, 1
  br i1 %i.ih, label %bb.at, label %_ZN4ncnn3MatD2Ev.exit339

bb.at:                                            ; preds = %bb.as
  %i.ii = load ptr, ptr %i.gt, align 8, !tbaa !40 ; 3 uses
  %.not3.i404 = icmp eq ptr %i.ii, null
  %i.ij = load ptr, ptr %5, align 8, !tbaa !41    ; 3 uses
  br i1 %.not3.i404, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ik = load ptr, ptr %i.ii, align 8, !tbaa !42
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load ptr, ptr %i.il, align 8
  invoke void %i.im(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, ptr noundef %i.ij)
          to label %_ZN4ncnn3MatD2Ev.exit339 unwind label %bb.ax, !inline_history !44

bb.av:                                            ; preds = %bb.at
  %.not.i519 = icmp eq ptr %i.ij, null
  br i1 %.not.i519, label %_ZN4ncnn3MatD2Ev.exit339, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.ij) #14
  br label %_ZN4ncnn3MatD2Ev.exit339

bb.ax:                                            ; preds = %bb.au
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  %i.io = extractvalue { ptr, i32 } %i.in, 0
  call void @__clang_call_terminate(ptr %i.io) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit339:                         ; preds = %bb.as, %bb.ar, %bb.au, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  resume { ptr, i32 } %.pn

bb.ay:                                            ; preds = %bb.r
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !48
  tail call void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.iq)
  %i.ir = load ptr, ptr %2, align 8, !tbaa !41
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.ay
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !45
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !21
  %i.ix = sext i32 %i.iw to i64
  %i.iy = mul i64 %i.iu, %i.ix
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.az

bb.az:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  br i1 %i.bl, label %bb.ba, label %.preheader951

.preheader951:                                    ; preds = %bb.az
  %i.ja = icmp sgt i32 %i.ad, 0
  br i1 %i.ja, label %_ZN4ncnn3MatD2Ev.exit338.lr.ph, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit338.lr.ph:                   ; preds = %.preheader951
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jd = icmp sgt i32 %i.t, 0
  br i1 %i.jd, label %_ZN4ncnn3MatD2Ev.exit338.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit338.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit338.lr.ph
  %i.je = zext nneg i32 %i.ad to i64              ; 2 uses
  %xtraiter1073 = and i32 %i.t, 1
  %i.jf = icmp eq i32 %i.t, 1
  %unroll_iter1077 = and i32 %i.t, 2147483646
  %lcmp.mod1075.not = icmp eq i32 %xtraiter1073, 0
  %lcmp.mod1076 = trunc i32 %i.t to i1
  br label %_ZN4ncnn3MatD2Ev.exit338

_ZN4ncnn3MatD2Ev.exit338:                         ; preds = %_ZN4ncnn3MatD2Ev.exit338.preheader, %._crit_edge974
  %indvars.iv1006 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit338.preheader ], [ %indvars.iv.next1007, %._crit_edge974 ] ; 4 uses
  %i.jg = load ptr, ptr %1, align 8, !tbaa !41, !noalias !75 ; 2 uses
  %i.jh = load i64, ptr %i.jb, align 8, !tbaa !45, !noalias !75 ; 2 uses
  %i.ji = mul i64 %i.jh, %indvars.iv1006
  %i.jj = load i64, ptr %i.c, align 8, !tbaa !15, !noalias !75 ; 2 uses
  %i.jk = mul i64 %i.ji, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jk ; 2 uses
  %i.jm = add nuw nsw i64 %indvars.iv1006, %i.je
  %i.jn = mul i64 %i.jh, %i.jm
  %i.jo = mul i64 %i.jn, %i.jj
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jo ; 2 uses
  %i.jq = shl nuw nsw i64 %indvars.iv1006, 1      ; 2 uses
  %i.jr = load ptr, ptr %2, align 8, !tbaa !41, !noalias !78 ; 2 uses
  %i.js = load i64, ptr %i.it, align 8, !tbaa !45, !noalias !78 ; 2 uses
  %i.jt = mul i64 %i.js, %i.jq
  %i.ju = load i64, ptr %i.jc, align 8, !tbaa !15, !noalias !78 ; 2 uses
  %i.jv = mul i64 %i.jt, %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jv ; 2 uses
  %i.jx = or disjoint i64 %i.jq, 1
  %i.jy = mul i64 %i.js, %i.jx
  %i.jz = mul i64 %i.jy, %i.ju
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jz ; 2 uses
  br i1 %i.jf, label %.epil.preheader1072, label %_ZN4ncnn3MatD2Ev.exit338.new

._crit_edge974.unr-lcssa:                         ; preds = %_ZN4ncnn3MatD2Ev.exit338.new
  br i1 %lcmp.mod1075.not, label %._crit_edge974, label %.epil.preheader1072

.epil.preheader1072:                              ; preds = %._crit_edge974.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit338
  %.0289972.epil.init = phi ptr [ %i.jl, %_ZN4ncnn3MatD2Ev.exit338 ], [ %i.kr, %._crit_edge974.unr-lcssa ]
  %.0291970.epil.init = phi ptr [ %i.ka, %_ZN4ncnn3MatD2Ev.exit338 ], [ %i.ku, %._crit_edge974.unr-lcssa ]
  %.0292969.epil.init = phi ptr [ %i.jw, %_ZN4ncnn3MatD2Ev.exit338 ], [ %i.kt, %._crit_edge974.unr-lcssa ]
  %.0293968.epil.init = phi ptr [ %i.jp, %_ZN4ncnn3MatD2Ev.exit338 ], [ %i.ks, %._crit_edge974.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1076)
  %i.kb = load <4 x float>, ptr %.0289972.epil.init, align 1, !tbaa !62 ; 2 uses
  %i.kc = load <4 x float>, ptr %.0293968.epil.init, align 1, !tbaa !62 ; 2 uses
  %i.kd = shufflevector <4 x float> %i.kb, <4 x float> %i.kc, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ke = shufflevector <4 x float> %i.kb, <4 x float> %i.kc, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.kd, ptr %.0292969.epil.init, align 1, !tbaa !62
  store <4 x float> %i.ke, ptr %.0291970.epil.init, align 1, !tbaa !62
  br label %._crit_edge974

._crit_edge974:                                   ; preds = %._crit_edge974.unr-lcssa, %.epil.preheader1072
  %indvars.iv.next1007 = add nuw nsw i64 %indvars.iv1006, 1 ; 2 uses
  %exitcond1010.not = icmp eq i64 %indvars.iv.next1007, %i.je
  br i1 %exitcond1010.not, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZN4ncnn3MatD2Ev.exit338, !llvm.loop !81

_ZN4ncnn3MatD2Ev.exit338.new:                     ; preds = %_ZN4ncnn3MatD2Ev.exit338, %_ZN4ncnn3MatD2Ev.exit338.new
  %.0289972 = phi ptr [ %i.kr, %_ZN4ncnn3MatD2Ev.exit338.new ], [ %i.jl, %_ZN4ncnn3MatD2Ev.exit338 ] ; 3 uses
  %.0291970 = phi ptr [ %i.ku, %_ZN4ncnn3MatD2Ev.exit338.new ], [ %i.ka, %_ZN4ncnn3MatD2Ev.exit338 ] ; 3 uses
  %.0292969 = phi ptr [ %i.kt, %_ZN4ncnn3MatD2Ev.exit338.new ], [ %i.jw, %_ZN4ncnn3MatD2Ev.exit338 ] ; 3 uses
  %.0293968 = phi ptr [ %i.ks, %_ZN4ncnn3MatD2Ev.exit338.new ], [ %i.jp, %_ZN4ncnn3MatD2Ev.exit338 ] ; 3 uses
  %niter1078 = phi i32 [ %niter1078.next.1, %_ZN4ncnn3MatD2Ev.exit338.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit338 ]
  %i.kf = load <4 x float>, ptr %.0289972, align 1, !tbaa !62 ; 2 uses
  %i.kg = load <4 x float>, ptr %.0293968, align 1, !tbaa !62 ; 2 uses
  %i.kh = shufflevector <4 x float> %i.kf, <4 x float> %i.kg, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ki = shufflevector <4 x float> %i.kf, <4 x float> %i.kg, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.kh, ptr %.0292969, align 1, !tbaa !62
  store <4 x float> %i.ki, ptr %.0291970, align 1, !tbaa !62
  %i.kj = getelementptr inbounds nuw i8, ptr %.0289972, i64 16
  %i.kk = getelementptr inbounds nuw i8, ptr %.0293968, i64 16
  %i.kl = getelementptr inbounds nuw i8, ptr %.0292969, i64 16
  %i.km = getelementptr inbounds nuw i8, ptr %.0291970, i64 16
  %i.kn = load <4 x float>, ptr %i.kj, align 1, !tbaa !62 ; 2 uses
  %i.ko = load <4 x float>, ptr %i.kk, align 1, !tbaa !62 ; 2 uses
  %i.kp = shufflevector <4 x float> %i.kn, <4 x float> %i.ko, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.kq = shufflevector <4 x float> %i.kn, <4 x float> %i.ko, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.kp, ptr %i.kl, align 1, !tbaa !62
  store <4 x float> %i.kq, ptr %i.km, align 1, !tbaa !62
  %i.kr = getelementptr inbounds nuw i8, ptr %.0289972, i64 32 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0293968, i64 32 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.0292969, i64 32 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.0291970, i64 32 ; 2 uses
  %niter1078.next.1 = add i32 %niter1078, 2       ; 2 uses
  %niter1078.ncmp.1 = icmp eq i32 %niter1078.next.1, %unroll_iter1077
  br i1 %niter1078.ncmp.1, label %._crit_edge974.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit338.new, !llvm.loop !82

bb.ba:                                            ; preds = %bb.az
  switch i32 %i.ac, label %bb.bd [
    i32 3, label %.preheader
    i32 4, label %.preheader949
  ]

.preheader949:                                    ; preds = %bb.ba
  %i.kv = icmp sgt i32 %i.ad, 0
  br i1 %i.kv, label %_ZN4ncnn3MatD2Ev.exit328.lr.ph, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit328.lr.ph:                   ; preds = %.preheader949
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ky = icmp sgt i32 %i.t, 0
  br i1 %i.ky, label %_ZN4ncnn3MatD2Ev.exit328.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit328.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit328.lr.ph
  %i.kz = mul nuw nsw i32 %i.ad, 3
  %i.la = shl nuw nsw i32 %i.ad, 1
  %i.lb = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.lc = zext nneg i32 %i.la to i64
  %i.ld = zext nneg i32 %i.kz to i64
  br label %_ZN4ncnn3MatD2Ev.exit328

.preheader:                                       ; preds = %bb.ba
  %i.le = icmp sgt i32 %i.ad, 0
  br i1 %i.le, label %_ZN4ncnn3MatD2Ev.exit334.lr.ph, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit334.lr.ph:                   ; preds = %.preheader
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lh = icmp sgt i32 %i.t, 0
  br i1 %i.lh, label %_ZN4ncnn3MatD2Ev.exit334.preheader, label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MatD2Ev.exit334.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit334.lr.ph
  %i.li = shl nuw nsw i32 %i.ad, 1
  %i.lj = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.lk = zext nneg i32 %i.li to i64
  br label %_ZN4ncnn3MatD2Ev.exit334

_ZN4ncnn3MatD2Ev.exit334:                         ; preds = %_ZN4ncnn3MatD2Ev.exit334.preheader, %._crit_edge996
  %indvars.iv1018 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit334.preheader ], [ %indvars.iv.next1019, %._crit_edge996 ] ; 5 uses
  %i.ll = load ptr, ptr %1, align 8, !tbaa !41, !noalias !83 ; 3 uses
  %i.lm = load i64, ptr %i.lf, align 8, !tbaa !45, !noalias !83 ; 3 uses
  %i.ln = mul i64 %i.lm, %indvars.iv1018
  %i.lo = load i64, ptr %i.c, align 8, !tbaa !15, !noalias !83 ; 3 uses
  %i.lp = mul i64 %i.ln, %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lp
  %i.lr = add nuw nsw i64 %indvars.iv1018, %i.lj
  %i.ls = mul i64 %i.lm, %i.lr
  %i.lt = mul i64 %i.ls, %i.lo
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lt
  %i.lv = add nuw nsw i64 %indvars.iv1018, %i.lk
  %i.lw = mul i64 %i.lm, %i.lv
  %i.lx = mul i64 %i.lw, %i.lo
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lx
  %i.lz = mul nuw nsw i64 %indvars.iv1018, 3      ; 3 uses
  %i.ma = load ptr, ptr %2, align 8, !tbaa !41, !noalias !86 ; 3 uses
  %i.mb = load i64, ptr %i.it, align 8, !tbaa !45, !noalias !86 ; 3 uses
  %i.mc = mul i64 %i.mb, %i.lz
  %i.md = load i64, ptr %i.lg, align 8, !tbaa !15, !noalias !86 ; 3 uses
  %i.me = mul i64 %i.mc, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.me
  %i.mg = add nuw nsw i64 %i.lz, 1
  %i.mh = mul i64 %i.mb, %i.mg
  %i.mi = mul i64 %i.mh, %i.md
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mi
  %i.mk = add nuw nsw i64 %i.lz, 2
  %i.ml = mul i64 %i.mb, %i.mk
  %i.mm = mul i64 %i.ml, %i.md
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mm
  br label %bb.bb

._crit_edge996:                                   ; preds = %bb.bb
  %indvars.iv.next1019 = add nuw nsw i64 %indvars.iv1018, 1 ; 2 uses
  %exitcond1022.not = icmp eq i64 %indvars.iv.next1019, %i.lj
  br i1 %exitcond1022.not, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZN4ncnn3MatD2Ev.exit334, !llvm.loop !89

bb.bb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit334, %bb.bb
  %.0279994 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit334 ], [ %i.nf, %bb.bb ]
  %.0280993 = phi ptr [ %i.mn, %_ZN4ncnn3MatD2Ev.exit334 ], [ %i.ne, %bb.bb ] ; 2 uses
  %.0281992 = phi ptr [ %i.mj, %_ZN4ncnn3MatD2Ev.exit334 ], [ %i.nd, %bb.bb ] ; 2 uses
  %.0282991 = phi ptr [ %i.mf, %_ZN4ncnn3MatD2Ev.exit334 ], [ %i.nc, %bb.bb ] ; 2 uses
  %.0283990 = phi ptr [ %i.ly, %_ZN4ncnn3MatD2Ev.exit334 ], [ %i.nb, %bb.bb ] ; 2 uses
  %.0284989 = phi ptr [ %i.lu, %_ZN4ncnn3MatD2Ev.exit334 ], [ %i.na, %bb.bb ] ; 2 uses
  %.0285988 = phi ptr [ %i.lq, %_ZN4ncnn3MatD2Ev.exit334 ], [ %i.mz, %bb.bb ] ; 2 uses
  %i.mo = load <4 x float>, ptr %.0285988, align 1, !tbaa !62 ; 3 uses
  %i.mp = load <4 x float>, ptr %.0284989, align 1, !tbaa !62 ; 4 uses
  %i.mq = load <4 x float>, ptr %.0283990, align 1, !tbaa !62 ; 3 uses
  %i.mr = shufflevector <4 x float> %i.mo, <4 x float> %i.mp, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ms = shufflevector <4 x float> %i.mo, <4 x float> %i.mp, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.mt = shufflevector <4 x float> %i.mp, <4 x float> %i.mq, <4 x i32> <i32 poison, i32 poison, i32 1, i32 5>
  %i.mu = shufflevector <4 x float> %i.mp, <4 x float> %i.mq, <4 x i32> <i32 poison, i32 poison, i32 3, i32 7>
  %i.mv = shufflevector <4 x float> %i.mo, <4 x float> %i.mq, <4 x i32> <i32 1, i32 3, i32 4, i32 6> ; 2 uses
  %i.mw = shufflevector <4 x float> %i.mr, <4 x float> %i.mv, <4 x i32> <i32 0, i32 1, i32 6, i32 4>
  %i.mx = shufflevector <4 x float> %i.mt, <4 x float> %i.ms, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.my = shufflevector <4 x float> %i.mv, <4 x float> %i.mu, <4 x i32> <i32 3, i32 1, i32 6, i32 7>
  store <4 x float> %i.mw, ptr %.0282991, align 1, !tbaa !62
  store <4 x float> %i.mx, ptr %.0281992, align 1, !tbaa !62
  store <4 x float> %i.my, ptr %.0280993, align 1, !tbaa !62
  %i.mz = getelementptr inbounds nuw i8, ptr %.0285988, i64 16
  %i.na = getelementptr inbounds nuw i8, ptr %.0284989, i64 16
  %i.nb = getelementptr inbounds nuw i8, ptr %.0283990, i64 16
  %i.nc = getelementptr inbounds nuw i8, ptr %.0282991, i64 16
  %i.nd = getelementptr inbounds nuw i8, ptr %.0281992, i64 16
  %i.ne = getelementptr inbounds nuw i8, ptr %.0280993, i64 16
  %i.nf = add nuw nsw i32 %.0279994, 1            ; 2 uses
  %exitcond1017.not = icmp eq i32 %i.nf, %i.t
  br i1 %exitcond1017.not, label %._crit_edge996, label %bb.bb, !llvm.loop !90

_ZN4ncnn3MatD2Ev.exit328:                         ; preds = %_ZN4ncnn3MatD2Ev.exit328.preheader, %._crit_edge986
  %indvars.iv1012 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit328.preheader ], [ %indvars.iv.next1013, %._crit_edge986 ] ; 6 uses
  %i.ng = load ptr, ptr %1, align 8, !tbaa !41, !noalias !91 ; 4 uses
  %i.nh = load i64, ptr %i.kw, align 8, !tbaa !45, !noalias !91 ; 4 uses
  %i.ni = mul i64 %i.nh, %indvars.iv1012
  %i.nj = load i64, ptr %i.c, align 8, !tbaa !15, !noalias !91 ; 4 uses
  %i.nk = mul i64 %i.ni, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nk
  %i.nm = add nuw nsw i64 %indvars.iv1012, %i.lb
  %i.nn = mul i64 %i.nh, %i.nm
  %i.no = mul i64 %i.nn, %i.nj
  %i.np = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.no
  %i.nq = add nuw nsw i64 %indvars.iv1012, %i.lc
  %i.nr = mul i64 %i.nh, %i.nq
  %i.ns = mul i64 %i.nr, %i.nj
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.ns
  %i.nu = add nuw nsw i64 %indvars.iv1012, %i.ld
  %i.nv = mul i64 %i.nh, %i.nu
  %i.nw = mul i64 %i.nv, %i.nj
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nw
  %i.ny = shl nuw nsw i64 %indvars.iv1012, 2      ; 4 uses
  %i.nz = load ptr, ptr %2, align 8, !tbaa !41, !noalias !94 ; 4 uses
  %i.oa = load i64, ptr %i.it, align 8, !tbaa !45, !noalias !94 ; 4 uses
  %i.ob = mul i64 %i.oa, %i.ny
  %i.oc = load i64, ptr %i.kx, align 8, !tbaa !15, !noalias !94 ; 4 uses
  %i.od = mul i64 %i.ob, %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.od
  %i.of = or disjoint i64 %i.ny, 1
  %i.og = mul i64 %i.oa, %i.of
  %i.oh = mul i64 %i.og, %i.oc
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.oh
  %i.oj = or disjoint i64 %i.ny, 2
  %i.ok = mul i64 %i.oa, %i.oj
  %i.ol = mul i64 %i.ok, %i.oc
  %i.om = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.ol
  %i.on = or disjoint i64 %i.ny, 3
  %i.oo = mul i64 %i.oa, %i.on
  %i.op = mul i64 %i.oo, %i.oc
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.op
  br label %bb.bc

._crit_edge986:                                   ; preds = %bb.bc
  %indvars.iv.next1013 = add nuw nsw i64 %indvars.iv1012, 1 ; 2 uses
  %exitcond1016.not = icmp eq i64 %indvars.iv.next1013, %i.lb
  br i1 %exitcond1016.not, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZN4ncnn3MatD2Ev.exit328, !llvm.loop !97

bb.bc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit328, %bb.bc
  %.0258984 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit328 ], [ %i.pl, %bb.bc ]
  %.0259983 = phi ptr [ %i.oq, %_ZN4ncnn3MatD2Ev.exit328 ], [ %i.pk, %bb.bc ] ; 2 uses
  %.0260982 = phi ptr [ %i.om, %_ZN4ncnn3MatD2Ev.exit328 ], [ %i.pj, %bb.bc ] ; 2 uses
  %.0261981 = phi ptr [ %i.oi, %_ZN4ncnn3MatD2Ev.exit328 ], [ %i.pi, %bb.bc ] ; 2 uses
  %.0262980 = phi ptr [ %i.oe, %_ZN4ncnn3MatD2Ev.exit328 ], [ %i.ph, %bb.bc ] ; 2 uses
  %.0263979 = phi ptr [ %i.nx, %_ZN4ncnn3MatD2Ev.exit328 ], [ %i.pg, %bb.bc ] ; 2 uses
  %.0264978 = phi ptr [ %i.nt, %_ZN4ncnn3MatD2Ev.exit328 ], [ %i.pf, %bb.bc ] ; 2 uses
  %.0265977 = phi ptr [ %i.np, %_ZN4ncnn3MatD2Ev.exit328 ], [ %i.pe, %bb.bc ] ; 2 uses
  %.0266976 = phi ptr [ %i.nl, %_ZN4ncnn3MatD2Ev.exit328 ], [ %i.pd, %bb.bc ] ; 2 uses
  %i.or = load <4 x float>, ptr %.0266976, align 1, !tbaa !62 ; 2 uses
  %i.os = load <4 x float>, ptr %.0265977, align 1, !tbaa !62 ; 2 uses
  %i.ot = load <4 x float>, ptr %.0264978, align 1, !tbaa !62 ; 2 uses
  %i.ou = load <4 x float>, ptr %.0263979, align 1, !tbaa !62 ; 2 uses
  %i.ov = shufflevector <4 x float> %i.or, <4 x float> %i.ot, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ow = shufflevector <4 x float> %i.or, <4 x float> %i.ot, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ox = shufflevector <4 x float> %i.os, <4 x float> %i.ou, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.oy = shufflevector <4 x float> %i.os, <4 x float> %i.ou, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.oz = shufflevector <4 x float> %i.ov, <4 x float> %i.ox, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.pa = shufflevector <4 x float> %i.ov, <4 x float> %i.ox, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.pb = shufflevector <4 x float> %i.ow, <4 x float> %i.oy, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.pc = shufflevector <4 x float> %i.ow, <4 x float> %i.oy, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.oz, ptr %.0262980, align 1, !tbaa !62
  store <4 x float> %i.pa, ptr %.0261981, align 1, !tbaa !62
  store <4 x float> %i.pb, ptr %.0260982, align 1, !tbaa !62
  store <4 x float> %i.pc, ptr %.0259983, align 1, !tbaa !62
  %i.pd = getelementptr inbounds nuw i8, ptr %.0266976, i64 16
  %i.pe = getelementptr inbounds nuw i8, ptr %.0265977, i64 16
  %i.pf = getelementptr inbounds nuw i8, ptr %.0264978, i64 16
  %i.pg = getelementptr inbounds nuw i8, ptr %.0263979, i64 16
  %i.ph = getelementptr inbounds nuw i8, ptr %.0262980, i64 16
  %i.pi = getelementptr inbounds nuw i8, ptr %.0261981, i64 16
  %i.pj = getelementptr inbounds nuw i8, ptr %.0260982, i64 16
  %i.pk = getelementptr inbounds nuw i8, ptr %.0259983, i64 16
  %i.pl = add nuw nsw i32 %.0258984, 1            ; 2 uses
  %exitcond1011.not = icmp eq i32 %i.pl, %i.t
  br i1 %exitcond1011.not, label %._crit_edge986, label %bb.bc, !llvm.loop !98

bb.bd:                                            ; preds = %bb.ba, %bb.o
  %i.pm = tail call noundef i32 @_ZNK4ncnn14ShuffleChannel7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %._crit_edge974, %._crit_edge986, %._crit_edge996, %.preheader951, %_ZN4ncnn3MatD2Ev.exit338.lr.ph, %.preheader949, %_ZN4ncnn3MatD2Ev.exit328.lr.ph, %.preheader, %_ZN4ncnn3MatD2Ev.exit334.lr.ph, %bb.ay, %bb.q, %_ZN4ncnn3Mat7releaseEv.exit481, %bb.f, %._crit_edge965, %_ZN4ncnn3MatD2Ev.exit340, %bb.bd, %_ZNK4ncnn3Mat5emptyEv.exit308, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %.2 = phi i32 [ -100, %_ZNK4ncnn3Mat8elembitsEv.exit.thread ], [ 0, %.preheader949 ], [ %i.pm, %bb.bd ], [ 0, %._crit_edge965 ], [ %i.gy, %_ZN4ncnn3MatD2Ev.exit340 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit308 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %.preheader ], [ -100, %bb.ay ], [ 0, %bb.f ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit481 ], [ -100, %bb.q ], [ 0, %_ZN4ncnn3MatD2Ev.exit334.lr.ph ], [ 0, %.preheader951 ], [ 0, %_ZN4ncnn3MatD2Ev.exit328.lr.ph ], [ 0, %._crit_edge986 ], [ 0, %_ZN4ncnn3MatD2Ev.exit338.lr.ph ], [ 0, %._crit_edge996 ], [ 0, %._crit_edge974 ]
  ret i32 %.2
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn18ShuffleChannel_x86C2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4ncnn14ShuffleChannelC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn18ShuffleChannel_x86E, i64 16), ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !99
  ret void
}

declare void @_ZN4ncnn14ShuffleChannelC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef i32 @_ZNK4ncnn14ShuffleChannel7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 24}
!10 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !12, i64 8, !13, i64 16, !6, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!15 = !{!10, !13, i64 16}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!18 = !{!10, !6, i64 44}
!19 = !{!10, !6, i64 48}
!20 = !{!10, !6, i64 52}
!21 = !{!10, !6, i64 56}
!22 = !{!23, !6, i64 212}
!23 = !{!"_ZTSN4ncnn14ShuffleChannelE", !24, i64 0, !6, i64 208, !6, i64 212}
!24 = !{!"_ZTSN4ncnn5LayerE", !25, i64 8, !25, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !25, i64 13, !25, i64 14, !25, i64 15, !25, i64 16, !25, i64 17, !25, i64 18, !25, i64 19, !25, i64 20, !25, i64 21, !25, i64 22, !25, i64 23, !25, i64 24, !25, i64 25, !25, i64 26, !25, i64 27, !6, i64 28, !11, i64 32, !6, i64 40, !26, i64 48, !26, i64 80, !29, i64 112, !29, i64 136, !33, i64 160, !33, i64 184}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !13, i64 8, !7, i64 16}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!28 = !{!"p1 omnipotent char", !11, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTSN4ncnn3MatE", !11, i64 0}
!38 = !{!23, !6, i64 208}
!39 = !{!10, !12, i64 8}
!40 = !{!10, !14, i64 32}
!41 = !{!10, !11, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !8, i64 0}
!44 = distinct !{null}
!45 = !{!10, !13, i64 64}
!46 = !{!11, !11, i64 0}
!47 = !{!6, !6, i64 0}
!48 = !{!49, !14, i64 8}
!49 = !{!"_ZTSN4ncnn6OptionE", !25, i64 0, !25, i64 1, !25, i64 2, !25, i64 3, !6, i64 4, !14, i64 8, !14, i64 16, !6, i64 24, !25, i64 28, !25, i64 29, !25, i64 30, !25, i64 31, !25, i64 32, !25, i64 33, !25, i64 34, !25, i64 35, !25, i64 36, !25, i64 37, !25, i64 38, !25, i64 39, !6, i64 40, !25, i64 44, !25, i64 45, !25, i64 46, !25, i64 47, !7, i64 48, !25, i64 49, !25, i64 50, !25, i64 51, !25, i64 52, !25, i64 53, !25, i64 54, !25, i64 55, !25, i64 56, !25, i64 57, !25, i64 58, !25, i64 59, !25, i64 60, !25, i64 61, !25, i64 62, !25, i64 63}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!52 = distinct !{!52, !"_ZN4ncnn3Mat7channelEi"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!55 = distinct !{!55, !"_ZNK4ncnn3Mat7channelEi"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!58 = distinct !{!58, !"_ZNK4ncnn3Mat7channelEi"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!61 = distinct !{!61, !"_ZN4ncnn3Mat7channelEi"}
!62 = !{!7, !7, i64 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
end_hunk_0
