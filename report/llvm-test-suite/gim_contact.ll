inline.NumInlined: 81
inline.NumDeleted: 42
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }

$_Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_ = comdat any

$__clang_call_terminate = comdat any

; Function Attrs: uwtable
define dso_local void @_ZN17gim_contact_array14merge_contactsERKS_b(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [8 x %class.btVector3], align 16    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit, label %_ZN9gim_arrayI11GIM_CONTACTE11clear_rangeEj.exit.i

_ZN9gim_arrayI11GIM_CONTACTE11clear_rangeEj.exit.i: ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !8
  br label %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit

_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit:        ; preds = %bb.a, %_ZN9gim_arrayI11GIM_CONTACTE11clear_rangeEj.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !8    ; 4 uses
  switch i32 %i.e, label %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit [
    i32 1, label %bb.b
    i32 0, label %._crit_edge
  ]

bb.b:                                             ; preds = %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit
  %i.f = load ptr, ptr %1, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13
  %.not.i.i.not = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.not, label %bb.c, label %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i

._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !12
  br label %_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !8
  %i.i = tail call noundef ptr @_Z9gim_allocm(i64 noundef 192) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !12
  store i32 4, ptr %i.g, align 4, !tbaa !13
  %.pre = load i32, ptr %i.a, align 8, !tbaa !8
  %i.j = zext i32 %.pre to i64
  br label %_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit

_ZN9gim_arrayI11GIM_CONTACTE9push_backERKS0_.exit: ; preds = %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i, %bb.c
  %i.k = phi i64 [ 0, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i ], [ %i.j, %bb.c ]
  %i.l = phi ptr [ %.pre.i, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i ], [ %i.i, %bb.c ]
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.m, ptr noundef nonnull align 4 dereferenceable(48) %i.f, i64 48, i1 false), !tbaa.struct !14
  %i.n = load i32, ptr %i.a, align 8, !tbaa !8
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !8
  br label %bb.ac

_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit:        ; preds = %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit
  %i.p = zext i32 %i.e to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noundef ptr @_Z9gim_allocm(i64 noundef %i.q) ; 3 uses
  %.pr = load i32, ptr %i.d, align 8, !tbaa !8    ; 7 uses
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit
  %.not.i.i59 = icmp ult i32 %i.e, %.pr
  br i1 %.not.i.i59, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.s = zext i32 %.pr to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noundef ptr @_Z9gim_allocm(i64 noundef %i.t)
          to label %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjb.exit unwind label %.thread ; 2 uses

_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjb.exit:  ; preds = %bb.e
  %.pre129 = load i32, ptr %i.d, align 8, !tbaa !8 ; 2 uses
  %.not120 = icmp eq i32 %.pre129, 0
  br i1 %.not120, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjb.exit
  %.sroa.0.4152 = phi ptr [ %i.u, %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjb.exit ], [ %i.r, %bb.d ] ; 4 uses
  %i.v = phi i32 [ %.pre129, %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjb.exit ], [ %.pr, %bb.d ] ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !12     ; 3 uses
  %wide.trip.count = zext i32 %i.v to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.v, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967294   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load float, ptr %i.x, align 4, !tbaa !16
  %i.ab = load float, ptr %i.z, align 4, !tbaa !16
  %i.ac = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.ab, i64 1
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> splat (float 1.000000e+03), <2 x float> splat (float 1.000000e+00))
  %i.af = fptosi <2 x float> %i.ae to <2 x i32>
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.ai = load float, ptr %i.ag, align 4, !tbaa !16
  %i.aj = load float, ptr %i.ah, align 4, !tbaa !16
  %i.ak = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.aj, i64 1
  %i.am = fmul <2 x float> %i.al, splat (float 1.333000e+03)
  %i.an = fptosi <2 x float> %i.am to <2 x i32>
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !16
  %i.ar = load float, ptr %i.ap, align 4, !tbaa !16
  %i.as = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.ar, i64 1
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> splat (float 2.133000e+03), <2 x float> splat (float 3.000000e+00))
  %i.av = fptosi <2 x float> %i.au to <2 x i32>
  %i.aw = shl <2 x i32> %i.an, splat (i32 4)
  %i.ax = add <2 x i32> %i.aw, %i.af
  %i.ay = shl <2 x i32> %i.av, splat (i32 8)
  %i.az = add <2 x i32> %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.4152, i64 %index
  %interleaved.vec = shufflevector <2 x i32> %i.az, <2 x i32> %vec.ind, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.ba, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %indvars.iv ; 3 uses
  %4 = load float, ptr %i.bc, align 4, !tbaa !16
  %5 = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bd = load float, ptr %5, align 4, !tbaa !16
  %6 = fmul float %i.bd, 1.333000e+03
  %i.be = fptosi float %6 to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !16
  %7 = insertelement <2 x float> poison, float %4, i64 0
  %8 = insertelement <2 x float> %7, float %i.bg, i64 1
  %9 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> <float 1.000000e+03, float 2.133000e+03>, <2 x float> <float 1.000000e+00, float 3.000000e+00>) ; 2 uses
  %10 = extractelement <2 x float> %9, i64 0
  %11 = fptosi float %10 to i32
  %12 = extractelement <2 x float> %9, i64 1
  %i.bh = fptosi float %12 to i32
  %i.bi = shl i32 %i.be, 4
  %i.bj = add i32 %i.bi, %11
  %i.bk = shl i32 %i.bh, 8
  %i.bl = add i32 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.4152, i64 %indvars.iv ; 2 uses
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !24

.thread:                                          ; preds = %bb.e
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i.i83

bb.f:                                             ; preds = %._crit_edge
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i.i83

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit, %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit, %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjb.exit
  %.sroa.16.1147 = phi i32 [ %i.e, %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit ], [ %.pr, %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjb.exit ], [ 0, %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit ], [ %.pr, %middle.block ], [ %.pr, %scalar.ph ] ; 3 uses
  %.sroa.0.4145 = phi ptr [ null, %_ZN9gim_arrayI11GIM_CONTACTE5clearEv.exit ], [ %i.u, %_ZN9gim_arrayI15GIM_RSORT_TOKENE6resizeEjb.exit ], [ %i.r, %_ZN9gim_arrayI15GIM_RSORT_TOKENEC2Ej.exit ], [ %.sroa.0.4152, %middle.block ], [ %.sroa.0.4152, %scalar.ph ] ; 7 uses
  invoke void @_Z13gim_heap_sortI15GIM_RSORT_TOKEN26GIM_RSORT_TOKEN_COMPARATOREvPT_jT0_(ptr noundef %.sroa.0.4145, i32 noundef %.sroa.16.1147)
          to label %bb.g unwind label %bb.f

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.br = load i32, ptr %.sroa.0.4145, align 4, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.4145, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !23
  %i.bu = zext i32 %i.bt to i64
  %i.bv = load ptr, ptr %1, align 8, !tbaa !12
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !13 ; 4 uses
  %i.bz = load i32, ptr %i.a, align 8, !tbaa !8   ; 3 uses
  %.not.i.i64 = icmp ugt i32 %i.by, %i.bz
  br i1 %.not.i.i64, label %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i67, label %bb.h

._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i67: ; preds = %bb.g
  %.pre.i68 = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.m

bb.h:                                             ; preds = %bb.g
  store i32 %i.by, ptr %i.a, align 8, !tbaa !8
  %i.ca = shl i32 %i.bz, 1
  %i.cb = add i32 %i.ca, 4                        ; 4 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bx, align 4, !tbaa !13
  %i.cd = load ptr, ptr %0, align 8, !tbaa !12, !nonnull !25, !noundef !25
  invoke void @_Z8gim_freePv(ptr noundef nonnull %i.cd)
          to label %.noexc69 unwind label %bb.p

.noexc69:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %.not.i.i.i65 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i65, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = load ptr, ptr %0, align 8, !tbaa !12
  %i.cf = zext i32 %i.by to i64
  %i.cg = mul nuw nsw i64 %i.cf, 48
  %i.ch = zext i32 %i.cb to i64
  %i.ci = mul nuw nsw i64 %i.ch, 48
  %i.cj = invoke noundef ptr @_Z11gim_reallocPvmm(ptr noundef %i.ce, i64 noundef %i.cg, i64 noundef %i.ci)
          to label %.noexc70 unwind label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.ck = zext i32 %i.cb to i64
  %i.cl = mul nuw nsw i64 %i.ck, 48
  %i.cm = invoke noundef ptr @_Z9gim_allocm(i64 noundef %i.cl)
          to label %.noexc70 unwind label %bb.p

.noexc70:                                         ; preds = %bb.l, %bb.k
  %storemerge.i.i.i66 = phi ptr [ %i.cj, %bb.k ], [ %i.cm, %bb.l ] ; 2 uses
  store ptr %storemerge.i.i.i66, ptr %0, align 8, !tbaa !12
  store i32 %i.cb, ptr %i.bx, align 4, !tbaa !13
  %.pre130 = load i32, ptr %i.a, align 8, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %.noexc70, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i67
  %i.cn = phi i32 [ %i.bz, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i67 ], [ %.pre130, %.noexc70 ]
  %i.co = phi ptr [ %.pre.i68, %._ZN9gim_arrayI11GIM_CONTACTE12growingCheckEv.exit_crit_edge.i67 ], [ %storemerge.i.i.i66, %.noexc70 ]
  %i.cp = zext i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [48 x i8], ptr %i.co, i64 %i.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.cq, ptr noundef nonnull align 4 dereferenceable(48) %i.bw, i64 48, i1 false), !tbaa.struct !14
  %i.cr = load i32, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.a, align 8, !tbaa !8
  %i.ct = icmp ugt i32 %.sroa.16.1147, 1
  br i1 %i.ct, label %.lr.ph119.preheader, label %_ZN9gim_arrayI15GIM_RSORT_TOKENED2Ev.exit

.lr.ph119.preheader:                              ; preds = %bb.m
  %i.cu = load ptr, ptr %0, align 8, !tbaa !12
  %i.cv = zext i32 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [48 x i8], ptr %i.cu, i64 %i.cv
  %wide.trip.count127 = zext i32 %.sroa.16.1147 to i64
  br label %.lr.ph119

.lr.ph119:                                        ; preds = %.lr.ph119.preheader, %bb.ab
  %indvars.iv124 = phi i64 [ 1, %.lr.ph119.preheader ], [ %indvars.iv.next125, %bb.ab ] ; 2 uses
  %.042117 = phi ptr [ %i.cw, %.lr.ph119.preheader ], [ %.143, %bb.ab ] ; 8 uses
  %.044116 = phi i32 [ %i.br, %.lr.ph119.preheader ], [ %i.cy, %bb.ab ]
  %.045115 = phi i32 [ 0, %.lr.ph119.preheader ], [ %.247, %bb.ab ] ; 9 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.4145, i64 %indvars.iv124 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !21 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !23
  %i.db = zext i32 %i.da to i64
  %i.dc = load ptr, ptr %1, align 8, !tbaa !12
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.dc, i64 %i.db ; 4 uses
  %i.de = icmp eq i32 %.044116, %i.cy
  br i1 %i.de, label %bb.n, label %bb.t

bb.n:                                             ; preds = %.lr.ph119
  %i.df = getelementptr inbounds nuw i8, ptr %.042117, i64 32
  %i.dg = load float, ptr %i.df, align 4, !tbaa !26 ; 2 uses
  %i.dh = fadd float %i.dg, f0xB727C5AC
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.dj = load float, ptr %i.di, align 4, !tbaa !26 ; 2 uses
  %i.dk = fcmp ogt float %i.dh, %i.dj
  br i1 %i.dk, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.042117, ptr noundef nonnull align 4 dereferenceable(48) %i.dd, i64 48, i1 false), !tbaa.struct !14
  br label %bb.ab

bb.p:                                             ; preds = %bb.l, %bb.k, %bb.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i.i83.thread

.loopexit:                                        ; preds = %bb.y, %bb.z
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i.i83.thread

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9gim_arrayI15GIM_RSORT_TOKENE5clearEv.exit.i.i83.thread

bb.q:                                             ; preds = %bb.n
  br i1 %2, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.dm = fsub float %i.dg, %i.dj
  %i.dn = tail call noundef float @llvm.fabs.f32(float %i.dm)
  %i.do = fcmp olt float %i.dn, f0x3727C5AC
  %i.dp = icmp ult i32 %.045115, 8
  %or.cond3 = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond3, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dr = zext nneg i32 %.045115 to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 4 dereferenceable(16) %i.dq, i64 16, i1 false), !tbaa.struct !29
  %i.dt = add nuw nsw i32 %.045115, 1
  br label %bb.ab

bb.t:                                             ; preds = %.lr.ph119
  %i.du = icmp ne i32 %.045115, 0
  %or.cond = select i1 %2, i1 %i.du, i1 false
  br i1 %or.cond, label %.lr.ph.preheader.i, label %_ZN11GIM_CONTACT19interpolate_normalsEP9btVector3j.exit

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %.042117, i64 16 ; 2 uses
  %i.dw = load <2 x float>, ptr %i.dv, align 4    ; 2 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.042117, i64 24 ; 2 uses
  %.sroa.11.0.copyload.i = load float, ptr %.sroa.11.0..sroa_idx.i, align 4 ; 2 uses
  %wide.trip.count.i = zext i32 %.045115 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.dx = icmp ult i32 %.045115, 4
  br i1 %i.dx, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  %.sroa.11.014.i.epil.init = phi float [ %.sroa.11.0.copyload.i, %.lr.ph.preheader.i ], [ %i.fl, %._crit_edge.i.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.dw, %.lr.ph.preheader.i ], [ %i.fi, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod167 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod167)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
end_hunk_0
