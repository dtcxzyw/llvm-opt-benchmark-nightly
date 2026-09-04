Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/gim_contact?download=true
inline.NumInlined: 80
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.gim_array.0 = type { ptr, i32, i32 }
%class.btVector3 = type { [4 x float] }

$_Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_ = comdat any

$_ZN9gim_arrayI15GIM_RSORT_TOKENED2Ev = comdat any

$__clang_call_terminate = comdat any

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17gim_contact_array14merge_contactsERKS_b(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.gim_array.0, align 8         ; 12 uses
  %4 = alloca [8 x %class.btVector3], align 16    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit, label %_ZN9gim_arrayI11GIM_CONTACTE11clear_rangeEj.exit.i

_ZN9gim_arrayI11GIM_CONTACTE11clear_rangeEj.exit.i: ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !12
  br label %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit

_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit:        ; preds = %bb.a, %_ZN9gim_arrayI11GIM_CONTACTE11clear_rangeEj.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !12   ; 5 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit
  %i.g = load ptr, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %.not.i.i.not = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.not, label %bb.c, label %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i

._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !13
  br label %_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !12
  %i.j = tail call noundef ptr @_Z9gim_allocm(i64 noundef 192) ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !13
  store i32 4, ptr %i.h, align 4, !tbaa !14
  %.pre105 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = zext i32 %.pre105 to i64
  br label %_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit

_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit: ; preds = %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i, %bb.c
  %i.l = phi i64 [ 0, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i ], [ %i.k, %bb.c ]
  %i.m = phi ptr [ %.pre.i, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i ], [ %i.j, %bb.c ]
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.n, ptr noundef nonnull align 4 dereferenceable(48) %i.g, i64 48, i1 false), !tbaa.struct !19
  %i.o = load i32, ptr %i.a, align 8, !tbaa !12
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.a, align 8, !tbaa !12
  br label %bb.ag

bb.d:                                             ; preds = %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.not.i.not.i = icmp eq i32 %i.e, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br i1 %.not.i.not.i, label %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit.thread, label %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit

_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit.thread: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %._crit_edge

_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit:        ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.s = zext i32 %i.e to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noundef ptr @_Z9gim_allocm(i64 noundef %i.t) ; 3 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !22
  store i32 %i.e, ptr %i.r, align 4, !tbaa !23
  %.pre = load i32, ptr %i.d, align 8, !tbaa !12  ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %.not123 = icmp eq i32 %.pre, 0
  br i1 %.not123, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit
  %i.w = icmp ult i32 %i.e, %.pre
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12
  br i1 %i.w, label %bb.f, label %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjbRKS0_.exit.thread129

_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjbRKS0_.exit.thread129: ; preds = %bb.e
  store i32 %.pre, ptr %i.v, align 8, !tbaa !24
  br label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.pre to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = invoke noundef ptr @_Z9gim_allocm(i64 noundef %i.z)
          to label %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjbRKS0_.exit unwind label %bb.g ; 3 uses

_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjbRKS0_.exit: ; preds = %bb.f
  %.pre102.pre.pre = load i32, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !22
  store i32 %.pre, ptr %i.x, align 4, !tbaa !23
  store i32 %.pre, ptr %i.v, align 8, !tbaa !24
  %.not = icmp eq i32 %.pre102.pre.pre, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjbRKS0_.exit.thread129, %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjbRKS0_.exit
  %i.ab = phi ptr [ %i.u, %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjbRKS0_.exit.thread129 ], [ %i.aa, %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjbRKS0_.exit ] ; 4 uses
  %.pre102132 = phi i32 [ %.pre, %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjbRKS0_.exit.thread129 ], [ %.pre102.pre.pre, %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjbRKS0_.exit ] ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !13    ; 3 uses
  %wide.trip.count = zext i32 %.pre102132 to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %.pre102132, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967294   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %index ; 3 uses
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %index ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load float, ptr %i.ad, align 4, !tbaa !17
  %i.ah = load float, ptr %i.af, align 4, !tbaa !17
  %5 = insertelement <2 x float> poison, float %i.ag, i64 0
  %6 = insertelement <2 x float> %5, float %i.ah, i64 1
  %7 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> splat (float 1.000000e+03), <2 x float> splat (float 1.000000e+00))
  %8 = fptosi <2 x float> %7 to <2 x i32>
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 52
  %i.ak = load float, ptr %i.ai, align 4, !tbaa !17
  %i.al = load float, ptr %i.aj, align 4, !tbaa !17
  %9 = insertelement <2 x float> poison, float %i.ak, i64 0
  %10 = insertelement <2 x float> %9, float %i.al, i64 1
  %11 = fmul <2 x float> %10, splat (float 1.333000e+03)
  %12 = fptosi <2 x float> %11 to <2 x i32>
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ao = load float, ptr %i.am, align 4, !tbaa !17
  %i.ap = load float, ptr %i.an, align 4, !tbaa !17
  %13 = insertelement <2 x float> poison, float %i.ao, i64 0
  %14 = insertelement <2 x float> %13, float %i.ap, i64 1
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> splat (float 2.133000e+03), <2 x float> splat (float 3.000000e+00))
  %16 = fptosi <2 x float> %15 to <2 x i32>
  %17 = shl <2 x i32> %12, splat (i32 4)
  %18 = add <2 x i32> %17, %8
  %19 = shl <2 x i32> %16, splat (i32 8)
  %20 = add <2 x i32> %18, %19
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index
  %interleaved.vec = shufflevector <2 x i32> %20, <2 x i32> %vec.ind, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.aq, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %indvars.iv ; 3 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !17
  %i.aw = fmul float %i.av, 1.333000e+03
  %i.ax = fptosi float %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !17
  %i.ba = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.az, i64 1
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> <float 1.000000e+03, float 2.133000e+03>, <2 x float> <float 1.000000e+00, float 3.000000e+00>) ; 2 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0
  %i.be = fptosi float %i.bd to i32
  %i.bf = extractelement <2 x float> %i.bc, i64 1
  %i.bg = fptosi float %i.bf to i32
  %i.bh = shl i32 %i.ax, 4
  %i.bi = add i32 %i.bh, %i.be
  %i.bj = shl i32 %i.bg, 8
  %i.bk = add i32 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !29

bb.g:                                             ; preds = %bb.f
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.h:                                             ; preds = %._crit_edge
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit, %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit.thread, %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjbRKS0_.exit
  %i.bq = phi ptr [ null, %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit.thread ], [ %i.aa, %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjbRKS0_.exit ], [ %i.u, %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit ], [ %i.ab, %middle.block ], [ %i.ab, %scalar.ph ]
  %i.br = phi i32 [ 0, %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit.thread ], [ %.pre, %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjbRKS0_.exit ], [ 0, %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit ], [ %.pre, %middle.block ], [ %.pre, %scalar.ph ]
  %i.bs = phi ptr [ %i.q, %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit.thread ], [ %i.v, %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjbRKS0_.exit ], [ %i.v, %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit ], [ %i.v, %middle.block ], [ %i.v, %scalar.ph ] ; 2 uses
  invoke void @_Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_(ptr noundef %i.bq, i32 noundef %i.br)
          to label %bb.i unwind label %bb.h

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bt = load ptr, ptr %3, align 8, !tbaa !22    ; 4 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !35
  %i.bx = zext i32 %i.bw to i64
  %i.by = load ptr, ptr %1, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %i.by, i64 %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !14 ; 4 uses
  %i.cc = load i32, ptr %i.a, align 8, !tbaa !12  ; 3 uses
  %.not.i.i64 = icmp ugt i32 %i.cb, %i.cc
  br i1 %.not.i.i64, label %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i67, label %bb.j

._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i67: ; preds = %bb.i
  %.pre.i68 = load ptr, ptr %0, align 8, !tbaa !13
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  store i32 %i.cb, ptr %i.a, align 8, !tbaa !12
  %i.cd = shl i32 %i.cc, 1
  %i.ce = add i32 %i.cd, 4                        ; 4 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ca, align 4, !tbaa !14
  %i.cg = load ptr, ptr %0, align 8, !tbaa !13, !nonnull !36, !noundef !36
  invoke void @_Z8gim_freePv(ptr noundef nonnull %i.cg)
          to label %.noexc69 unwind label %bb.r

.noexc69:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %.not.i.i.i65 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i65, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %0, align 8, !tbaa !13
  %i.ci = zext i32 %i.cb to i64
  %i.cj = mul nuw nsw i64 %i.ci, 48
  %i.ck = zext i32 %i.ce to i64
  %i.cl = mul nuw nsw i64 %i.ck, 48
  %i.cm = invoke noundef ptr @_Z11gim_reallocPvmm(ptr noundef %i.ch, i64 noundef %i.cj, i64 noundef %i.cl)
          to label %.noexc70 unwind label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.cn = zext i32 %i.ce to i64
  %i.co = mul nuw nsw i64 %i.cn, 48
  %i.cp = invoke noundef ptr @_Z9gim_allocm(i64 noundef %i.co)
          to label %.noexc70 unwind label %bb.r

.noexc70:                                         ; preds = %bb.n, %bb.m
  %storemerge.i.i.i66 = phi ptr [ %i.cm, %bb.m ], [ %i.cp, %bb.n ] ; 2 uses
  store ptr %storemerge.i.i.i66, ptr %0, align 8, !tbaa !13
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !14
  %.pre103 = load i32, ptr %i.a, align 8, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %.noexc70, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i67
  %i.cq = phi i32 [ %i.cc, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i67 ], [ %.pre103, %.noexc70 ]
  %i.cr = phi ptr [ %.pre.i68, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i67 ], [ %storemerge.i.i.i66, %.noexc70 ]
  %i.cs = zext i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [48 x i8], ptr %i.cr, i64 %i.cs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ct, ptr noundef nonnull align 4 dereferenceable(48) %i.bz, i64 48, i1 false), !tbaa.struct !19
  %i.cu = load i32, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.a, align 8, !tbaa !12
  %i.cw = load i32, ptr %i.bs, align 8, !tbaa !24 ; 3 uses
  %i.cx = icmp ugt i32 %i.cw, 1
  br i1 %i.cx, label %.lr.ph93.preheader, label %._crit_edge94

.lr.ph93.preheader:                               ; preds = %bb.o
  %i.cy = load ptr, ptr %0, align 8, !tbaa !13
  %i.cz = zext i32 %i.cu to i64
  %i.da = getelementptr inbounds nuw [48 x i8], ptr %i.cy, i64 %i.cz
  %i.db = zext i32 %i.cw to i64
  br label %.lr.ph93

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %bb.ad
  %indvars.iv99 = phi i64 [ 1, %.lr.ph93.preheader ], [ %indvars.iv.next100, %bb.ad ] ; 2 uses
  %.091 = phi ptr [ %i.da, %.lr.ph93.preheader ], [ %.1, %bb.ad ] ; 8 uses
  %.04290 = phi i32 [ %i.bu, %.lr.ph93.preheader ], [ %i.dd, %bb.ad ]
  %.04389 = phi i32 [ 0, %.lr.ph93.preheader ], [ %.2, %bb.ad ] ; 9 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv99 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !27 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !35
  %i.dg = zext i32 %i.df to i64
  %i.dh = load ptr, ptr %1, align 8, !tbaa !13
  %i.di = getelementptr inbounds nuw [48 x i8], ptr %i.dh, i64 %i.dg ; 4 uses
  %i.dj = icmp eq i32 %.04290, %i.dd
  br i1 %i.dj, label %bb.p, label %bb.v

bb.p:                                             ; preds = %.lr.ph93
  %i.dk = getelementptr inbounds nuw i8, ptr %.091, i64 32
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !39 ; 2 uses
  %i.dm = fadd float %i.dl, f0xB727C5AC
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.do = load float, ptr %i.dn, align 4, !tbaa !39 ; 2 uses
  %i.dp = fcmp ogt float %i.dm, %i.do
  br i1 %i.dp, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.091, ptr noundef nonnull align 4 dereferenceable(48) %i.di, i64 48, i1 false), !tbaa.struct !19
  br label %bb.ad

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit:                                        ; preds = %bb.aa, %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.s:                                             ; preds = %bb.p
  br i1 %2, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.dr = fsub float %i.dl, %i.do
  %i.ds = tail call noundef float @llvm.fabs.f32(float %i.dr)
  %i.dt = fcmp olt float %i.ds, f0x3727C5AC
  %i.du = icmp ult i32 %.04389, 8
  %or.cond3 = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond3, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dw = zext nneg i32 %.04389 to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dx, ptr noundef nonnull align 4 dereferenceable(16) %i.dv, i64 16, i1 false), !tbaa.struct !40
  %i.dy = add nuw nsw i32 %.04389, 1
  br label %bb.ad
end_hunk_0
begin_hunk_1_@_Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_:bb.a
  store i64 %i.ac, ptr %i.ab, align 4
  %.not.i = icmp ugt i32 %.021.i, %i.a
  br i1 %.not.i, label %.thread.loopexit.i, label %.lr.ph.i

.thread.loopexit.i:                               ; preds = %bb.d, %bb.c
  %.022.lcssa.ph.i = phi i32 [ %.021.i, %bb.d ], [ %.02229.i, %bb.c ]
  %.pre.i = add i32 %.022.lcssa.ph.i, -1
  %.pre32.i = zext i32 %.pre.i to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre32.i
  store i64 %i.h, ptr %i.ad, align 4
  %.not.wide = icmp eq i64 %i.f, 0
  br i1 %.not.wide, label %.preheader, label %.lr.ph.i.preheader, !llvm.loop !42

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_Z13gim_down_heapI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jjT0_.exit24
  %indvars.iv28 = phi i64 [ %i.e, %.lr.ph.preheader ], [ %indvars.iv.next29, %_Z13gim_down_heapI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jjT0_.exit24 ]
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, -1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next29 to i32  ; 3 uses
  %i.ae = and i64 %indvars.iv.next29, 4294967295
  %i.af = load i64, ptr %0, align 4
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 4
  store i64 %i.ah, ptr %0, align 4
  store i64 %i.af, ptr %i.ag, align 4
  %i.ai = load i64, ptr %0, align 4               ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = lshr i32 %indvars, 1                    ; 2 uses
  %.not28.i13 = icmp eq i32 %i.ak, 0
  br i1 %.not28.i13, label %_Z13gim_down_heapI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jjT0_.exit24, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.lr.ph, %bb.g
  %.02229.i15 = phi i32 [ %.021.i16, %bb.g ], [ 1, %.lr.ph ] ; 3 uses
  %i.al = shl nuw i32 %.02229.i15, 1              ; 4 uses
  %i.am = icmp slt i32 %i.al, %indvars
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i14
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr [8 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !27
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !27
  %i.as = sub i32 %i.aq, %i.ar
  %i.at = lshr i32 %i.as, 31
  %spec.select.i23 = or disjoint i32 %i.at, %i.al
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i14
  %.021.i16 = phi i32 [ %i.al, %.lr.ph.i14 ], [ %spec.select.i23, %bb.e ] ; 4 uses
  %i.au = sext i32 %.021.i16 to i64
  %i.av = getelementptr [8 x i8], ptr %0, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -8     ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !27
  %i.ay = sub i32 %i.aj, %i.ax
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.g, label %.thread.loopexit.i17

bb.g:                                             ; preds = %bb.f
  %i.ba = add nsw i32 %.02229.i15, -1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bb
  %i.bd = load i64, ptr %i.aw, align 4
  store i64 %i.bd, ptr %i.bc, align 4
  %.not.i22 = icmp ugt i32 %.021.i16, %i.ak
  br i1 %.not.i22, label %.thread.loopexit.i17, label %.lr.ph.i14

.thread.loopexit.i17:                             ; preds = %bb.g, %bb.f
  %.022.lcssa.ph.i18 = phi i32 [ %.021.i16, %bb.g ], [ %.02229.i15, %bb.f ]
  %.pre.i19 = add i32 %.022.lcssa.ph.i18, -1
  %.pre32.i20 = zext i32 %.pre.i19 to i64
  br label %_Z13gim_down_heapI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jjT0_.exit24

_Z13gim_down_heapI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jjT0_.exit24: ; preds = %.lr.ph, %.thread.loopexit.i17
  %.pre-phi33.i21 = phi i64 [ %.pre32.i20, %.thread.loopexit.i17 ], [ 0, %.lr.ph ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi33.i21
  store i64 %i.ai, ptr %i.be, align 4
  %i.bf = icmp ugt i32 %indvars, 1
  br i1 %i.bf, label %.lr.ph, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %_Z13gim_down_heapI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jjT0_.exit24, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9gim_arrayI15GIM_RSORT_TOKENED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i, label %_ZN9gim_arrayI15GIM_RSORT_TOKENE11clear_rangeEj.exit.i.i

_ZN9gim_arrayI15GIM_RSORT_TOKENE11clear_rangeEj.exit.i.i: ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !24
  br label %_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i

_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i:  ; preds = %_ZN9gim_arrayI15GIM_RSORT_TOKENE11clear_rangeEj.exit.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !23
  %i.e = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN9gim_arrayI15GIM_RSORT_TOKENE12clear_memoryEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i
  invoke void @_Z8gim_freePv(ptr noundef nonnull %i.e)
          to label %_ZN9gim_arrayI15GIM_RSORT_TOKENE12clear_memoryEv.exit unwind label %bb.c

_ZN9gim_arrayI15GIM_RSORT_TOKENE12clear_memoryEv.exit: ; preds = %bb.b, %_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i
  ret void

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #11
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17gim_contact_array21merge_contacts_uniqueERKS_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit, label %_ZN9gim_arrayI11GIM_CONTACTE11clear_rangeEj.exit.i

_ZN9gim_arrayI11GIM_CONTACTE11clear_rangeEj.exit.i: ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !12
  br label %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit

_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit:        ; preds = %bb.a, %_ZN9gim_arrayI11GIM_CONTACTE11clear_rangeEj.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit
  %i.g = load ptr, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %.not.i.i.not = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.not, label %bb.c, label %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i

._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !13
  br label %_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !12
  %i.j = tail call noundef ptr @_Z9gim_allocm(i64 noundef 192) ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !13
  store i32 4, ptr %i.h, align 4, !tbaa !14
  %.pre = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = zext i32 %.pre to i64
  br label %_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit

_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit: ; preds = %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i, %bb.c
  %i.l = phi i64 [ 0, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i ], [ %i.k, %bb.c ]
  %i.m = phi ptr [ %.pre.i, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i ], [ %i.j, %bb.c ]
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.n, ptr noundef nonnull align 4 dereferenceable(48) %i.g, i64 48, i1 false), !tbaa.struct !19
  %i.o = load i32, ptr %i.a, align 8, !tbaa !12
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.a, align 8, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit, %_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare noundef ptr @_Z11gim_reallocPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_Z9gim_allocm(i64 noundef) local_unnamed_addr #5

declare void @_Z8gim_freePv(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS11GIM_CONTACT", !9, i64 0}
!11 = !{!"_ZTS9gim_arrayI11GIM_CONTACTE", !10, i64 0, !6, i64 8, !6, i64 12}
!12 = !{!11, !6, i64 8}
!13 = !{!11, !10, i64 0}
!14 = !{!11, !6, i64 12}
!15 = !{!5, !5, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{i64 0, i64 16, !15, i64 16, i64 16, !15, i64 32, i64 4, !17, i64 36, i64 4, !17, i64 40, i64 4, !18, i64 44, i64 4, !18}
!20 = !{!"p1 _ZTS15GIM_RSORT_TOKEN", !9, i64 0}
!21 = !{!"_ZTS9gim_arrayI15GIM_RSORT_TOKENE", !20, i64 0, !6, i64 8, !6, i64 12}
!22 = !{!21, !20, i64 0}
!23 = !{!21, !6, i64 12}
!24 = !{!21, !6, i64 8}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"_ZTS15GIM_RSORT_TOKEN", !6, i64 0, !6, i64 4}
!27 = !{!26, !6, i64 0}
!28 = distinct !{!28, !25, !33, !34}
!29 = distinct !{!29, !25, !34, !33}
!30 = distinct !{!30, !41}
!31 = distinct !{!31, !25}
!32 = distinct !{!32, !25}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!26, !6, i64 4}
!36 = !{}
!37 = !{!"_ZTS9btVector3", !5, i64 0}
!38 = !{!"_ZTS11GIM_CONTACT", !37, i64 0, !37, i64 16, !16, i64 32, !16, i64 36, !6, i64 40, !6, i64 44}
!39 = !{!38, !16, i64 32}
!40 = !{i64 0, i64 16, !15}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25}
end_hunk_1
