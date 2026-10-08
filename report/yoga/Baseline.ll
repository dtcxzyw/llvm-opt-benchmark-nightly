Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/Baseline?download=true
inline.NumInlined: 140
inline.NumDeleted: 74
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.facebook::yoga::Event::Data" = type { ptr }
%"struct.facebook::yoga::Event::TypedData" = type { i8 }
%"struct.facebook::yoga::Event::TypedData.14" = type { i8 }
%"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator" = type { ptr, i64, %"class.std::forward_list" }
%"class.std::forward_list" = type { %"struct.std::_Fwd_list_base" }
%"struct.std::_Fwd_list_base" = type { %"struct.std::_Fwd_list_base<std::pair<const facebook::yoga::Node *, unsigned long>, std::allocator<std::pair<const facebook::yoga::Node *, unsigned long>>>::_Fwd_list_impl" }
%"struct.std::_Fwd_list_base<std::pair<const facebook::yoga::Node *, unsigned long>, std::allocator<std::pair<const facebook::yoga::Node *, unsigned long>>>::_Fwd_list_impl" = type { %"struct.std::_Fwd_list_node_base" }
%"struct.std::_Fwd_list_node_base" = type { ptr }

$_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv = comdat any

$_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv = comdat any

@.str = private unnamed_addr constant [50 x i8] c"Expect custom baseline function to not return NaN\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN8facebook4yoga17calculateBaselineEPKNS0_4NodeE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::yoga::Event::Data", align 8 ; 4 uses
  %2 = alloca %"class.facebook::yoga::Event::Data", align 8 ; 4 uses
  %3 = alloca %"struct.facebook::yoga::Event::TypedData", align 1 ; 3 uses
  %4 = alloca %"struct.facebook::yoga::Event::TypedData.14", align 1 ; 3 uses
  %5 = alloca %"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88
  %.not57 = icmp eq ptr %i.b, null
  br i1 %.not57, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store ptr %3, ptr %2, align 8, !tbaa !90
  call void @_ZN8facebook4yoga5Event7publishEPK6YGNodeNS1_4TypeERKNS1_4DataE(ptr noundef nonnull %0, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.d = load float, ptr %i.c, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.f = load float, ptr %i.e, align 4, !tbaa !91
  %i.g = call noundef float @_ZNK8facebook4yoga4Node8baselineEff(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %i.d, float noundef %i.f) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store ptr %4, ptr %1, align 8, !tbaa !90
  call void @_ZN8facebook4yoga5Event7publishEPK6YGNodeNS1_4TypeERKNS1_4DataE(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.h = fcmp ord float %i.g, 0.000000e+00
  call void @_ZN8facebook4yoga19assertFatalWithNodeEPKNS0_4NodeEbPKc(ptr noundef nonnull %0, i1 noundef zeroext %i.h, ptr noundef nonnull @.str)
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16, !noalias !92
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !17, !noalias !92 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %5, align 8, !tbaa !24, !alias.scope !92
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !alias.scope !92
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !25, !noalias !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.q = load i8, ptr %i.p, align 4, !noalias !92
  %i.r = and i8 %i.q, 12
  %i.s = icmp eq i8 %i.r, 8
  br i1 %i.s, label %bb.e, label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread, !prof !26

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge unwind label %bb.f

._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge: ; preds = %bb.e
  %.pre = load ptr, ptr %5, align 8, !tbaa !24
  %.pre80 = load i64, ptr %i.m, align 8
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !27, !alias.scope !92 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not12.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i ], [ %i.v, %bb.f ] ; 2 uses
  %i.w = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !27 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #9
  %.not.i.i.i3.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i3.i, label %common.resume, label %.lr.ph.i.i.i.i, !llvm.loop !0

common.resume:                                    ; preds = %.lr.ph.i.i.i.i, %bb.f, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit50
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit50 ], [ %i.u, %bb.f ], [ %i.u, %.lr.ph.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !92
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit: ; preds = %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge, %bb.g
  %i.x = phi i64 [ %.pre80, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ 0, %bb.g ] ; 2 uses
  %i.y = phi ptr [ %.pre, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ null, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.not.i3465 = icmp ne ptr %i.y, null
  %i.aa = icmp ne i64 %i.x, 0
  %i.ab = select i1 %.not.i3465, i1 true, i1 %i.aa
  br i1 %i.ab, label %.lr.ph, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

.lr.ph:                                           ; preds = %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %i.ac = phi ptr [ %i.t, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.z, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ] ; 4 uses
  %i.ad = phi ptr [ %0, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.y, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %i.ae = phi i64 [ 0, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.x, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.t
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit45

bb.i:                                             ; preds = %.lr.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit
  %i.aj = phi ptr [ %i.ad, %.lr.ph ], [ %i.cv, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 3 uses
  %i.ak = phi i64 [ %i.ae, %.lr.ph ], [ %i.cu, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 5 uses
  %.03166 = phi ptr [ null, %.lr.ph ], [ %.2, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 696
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 704
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !16
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !17 ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.ak, %i.as
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.ak, i64 noundef %i.as) #10
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ak
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 672
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !93
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.m, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit45

bb.m:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.az = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.ba = and i32 %i.az, 805306368
  %i.bb = icmp eq i32 %i.ba, 536870912
  br i1 %i.bb, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = lshr i32 %i.az, 24
  %i.bd = trunc nuw i32 %i.bc to i8
  %i.be = and i8 %i.bd, 15                        ; 2 uses
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = load i32, ptr %i.af, align 8
  %i.bh = lshr i32 %i.bg, 20
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = and i8 %i.bi, 15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bk = phi i8 [ %i.bj, %bb.o ], [ %i.be, %bb.n ]
  %i.bl = load i8, ptr %i.ag, align 4
  %i.bm = and i8 %i.bl, 12
  %i.bn = icmp eq i8 %i.bm, 0
  %i.bo = icmp eq i8 %i.bk, 5                     ; 2 uses
  %or.cond.i = and i1 %i.bo, %i.bn
  br i1 %or.cond.i, label %bb.q, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit

bb.q:                                             ; preds = %bb.p
  %i.bp = load i32, ptr %i.af, align 8
  %i.bq = and i32 %i.bp, 8
  %.not.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.not.i, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit: ; preds = %bb.p
  br i1 %i.bo, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread: ; preds = %bb.q, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit
  %i.br = load i8, ptr %i.au, align 8
  %i.bs = and i8 %i.br, 2
  %.not58 = icmp eq i8 %i.bs, 0
  br i1 %.not58, label %bb.r, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

bb.r:                                             ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread
  %i.bt = icmp eq ptr %.03166, null
  %spec.select = select i1 %i.bt, ptr %i.au, ptr %.03166
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %.2 = phi ptr [ %spec.select, %bb.r ], [ %.03166, %bb.m ] ; 2 uses
  %i.bu = add nuw i64 %i.ak, 1                    ; 2 uses
  %.not11.i.i = icmp ult i64 %i.bu, %i.as
  br i1 %.not11.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %tailrecurse.i.i
  %i.bv = load ptr, ptr %i.ah, align 8, !tbaa !29 ; 5 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, label %tailrecurse.i.i, !prof !30

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit

tailrecurse.i.i:                                  ; preds = %.lr.ph.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !32
  store ptr %i.by, ptr %5, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !33
  store i64 %i.ca, ptr %i.ac, align 8, !tbaa !34
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !27
  store ptr %i.cb, ptr %i.ah, align 8, !tbaa !27
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 24) #9, !inline_history !35
  %i.cc = load i64, ptr %i.ac, align 8, !tbaa !34 ; 2 uses
  %i.cd = add i64 %i.cc, 1                        ; 2 uses
  %i.ce = load ptr, ptr %5, align 8, !tbaa !24    ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 696
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 704
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !16
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !17 ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 3
  %.not.i.i = icmp ult i64 %i.cd, %i.cm
  br i1 %.not.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, label %.lr.ph.i.i

_ZNK8facebook4yoga4Node8getChildEm.exit.i.i:      ; preds = %tailrecurse.i.i, %bb.s
  %i.cn = phi ptr [ %i.aj, %bb.s ], [ %i.ce, %tailrecurse.i.i ]
  %.lcssa8.i.i = phi i64 [ %i.ak, %bb.s ], [ %i.cc, %tailrecurse.i.i ]
  %.lcssa6.i.i = phi i64 [ %i.bu, %bb.s ], [ %i.cd, %tailrecurse.i.i ] ; 2 uses
  %.lcssa.i.i = phi ptr [ %i.ao, %bb.s ], [ %i.ci, %tailrecurse.i.i ]
  store i64 %.lcssa6.i.i, ptr %i.ac, align 8, !tbaa !34
  %i.co = getelementptr [8 x i8], ptr %.lcssa.i.i, i64 %.lcssa8.i.i
  %6 = getelementptr i8, ptr %i.co, i64 8
  %i.cp = load ptr, ptr %6, align 8, !tbaa !25
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 60
  %i.cr = load i8, ptr %i.cq, align 4
  %i.cs = and i8 %i.cr, 12
  %i.ct = icmp eq i8 %i.cs, 8
  br i1 %i.ct, label %bb.t, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit, !prof !26

bb.t:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
          to label %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge unwind label %bb.h

._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge: ; preds = %bb.t
  %.pre81 = load ptr, ptr %5, align 8, !tbaa !24
  %.pre82 = load i64, ptr %i.ac, align 8
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit: ; preds = %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i
  %i.cu = phi i64 [ %.pre82, %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge ], [ 0, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i ], [ %.lcssa6.i.i, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i ] ; 2 uses
  %i.cv = phi ptr [ %.pre81, %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge ], [ null, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i ], [ %i.cn, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i ] ; 2 uses
  %.not.i34 = icmp ne ptr %i.cv, null
  %i.cw = icmp ne i64 %i.cu, 0
  %i.cx = select i1 %.not.i34, i1 true, i1 %i.cw
  br i1 %i.cx, label %bb.i, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit, %bb.k, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit, %bb.q, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %.3 = phi ptr [ null, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ], [ %.03166, %bb.k ], [ %i.au, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread ], [ %i.au, %bb.q ], [ %i.au, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit ], [ %.2, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !27 ; 2 uses
  %.not12.i.i.i36 = icmp eq ptr %i.cz, null
  br i1 %.not12.i.i.i36, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit40, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, %.lr.ph.i.i.i37
  %.013.i.i.i38 = phi ptr [ %i.da, %.lr.ph.i.i.i37 ], [ %i.cz, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 2 uses
  %i.da = load ptr, ptr %.013.i.i.i38, align 8, !tbaa !27 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i38, i64 noundef 24) #9
  %.not.i.i.i39 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i39, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit40, label %.lr.ph.i.i.i37, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit40: ; preds = %.lr.ph.i.i.i37, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.db = icmp eq ptr %.3, null
  br i1 %i.db, label %bb.u, label %bb.v

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit45: ; preds = %bb.h, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.h ], [ %i.ax, %bb.l ]
  %i.dc = load ptr, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %.not12.i.i.i46 = icmp eq ptr %i.dc, null
  br i1 %.not12.i.i.i46, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit50, label %.lr.ph.i.i.i47

.lr.ph.i.i.i47:                                   ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit45, %.lr.ph.i.i.i47
  %.013.i.i.i48 = phi ptr [ %i.dd, %.lr.ph.i.i.i47 ], [ %i.dc, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit45 ] ; 2 uses
  %i.dd = load ptr, ptr %.013.i.i.i48, align 8, !tbaa !27 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i48, i64 noundef 24) #9
  %.not.i.i.i49 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i49, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit50, label %.lr.ph.i.i.i47, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit50: ; preds = %.lr.ph.i.i.i47, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %common.resume

bb.u:                                             ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit40
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.df = load float, ptr %i.de, align 4, !tbaa !91
  br label %bb.w

bb.v:                                             ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit40
  %i.dg = call noundef float @_ZN8facebook4yoga17calculateBaselineEPKNS0_4NodeE(ptr noundef nonnull %.3)
  %i.dh = getelementptr inbounds nuw i8, ptr %.3, i64 612
  %i.di = load float, ptr %i.dh, align 4, !tbaa !91
  %i.dj = fadd float %i.dg, %i.di
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.b
  %.1 = phi float [ %i.g, %bb.b ], [ %i.df, %bb.u ], [ %i.dj, %bb.v ]
  ret float %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef float @_ZNK8facebook4yoga4Node8baselineEff(ptr noundef nonnull align 8 dereferenceable(744), float noundef, float noundef) local_unnamed_addr #2

declare void @_ZN8facebook4yoga19assertFatalWithNodeEPKNS0_4NodeEbPKc(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN8facebook4yoga16isBaselineLayoutEPKNS0_4NodeE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 8
  %.not35.not = icmp eq i32 %i.c, 0
  br i1 %.not35.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 15728640
  %i.e = icmp eq i32 %i.d, 5242880
  br i1 %i.e, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16, !noalias !96
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !17, !noalias !96 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %1, align 8, !tbaa !24, !alias.scope !96
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !alias.scope !96
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !25, !noalias !96
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.n = load i8, ptr %i.m, align 4, !noalias !96
  %i.o = and i8 %i.n, 12
  %i.p = icmp eq i8 %i.o, 8
  br i1 %i.p, label %bb.e, label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread, !prof !26

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge unwind label %bb.f

._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge: ; preds = %bb.e
  %.pre = load ptr, ptr %1, align 8, !tbaa !24
  %.pre60 = load i64, ptr %i.j, align 8
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !27, !alias.scope !96 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.s, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !27 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #9
  %.not.i.i.i3.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i3.i, label %common.resume, label %.lr.ph.i.i.i.i, !llvm.loop !0

common.resume:                                    ; preds = %.lr.ph.i.i.i.i, %bb.f, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit32
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit32 ], [ %i.r, %bb.f ], [ %i.r, %.lr.ph.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !alias.scope !96
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit: ; preds = %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge, %bb.g
  %i.u = phi i64 [ %.pre60, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ 0, %bb.g ] ; 2 uses
  %i.v = phi ptr [ %.pre, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ null, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not.i1648 = icmp ne ptr %i.v, null
  %i.x = icmp ne i64 %i.u, 0
  %.not37.not49 = select i1 %.not.i1648, i1 true, i1 %i.x
  br i1 %.not37.not49, label %.lr.ph, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

.lr.ph:                                           ; preds = %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %i.y = phi ptr [ %i.q, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.w, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ] ; 4 uses
  %i.z = phi ptr [ %0, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.v, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %i.aa = phi i64 [ 0, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.u, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit27

bb.i:                                             ; preds = %.lr.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit
  %i.ad = phi ptr [ %i.z, %.lr.ph ], [ %i.bw, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 3 uses
  %i.ae = phi i64 [ %i.aa, %.lr.ph ], [ %i.bv, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 696
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 704
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !17 ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3                 ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.ae, %i.am
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.ae, i64 noundef %i.am) #10
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ae
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %i.ar = and i32 %i.aq, 805306368
  %.not = icmp ne i32 %i.ar, 536870912
  %i.as = and i32 %i.aq, 251658240
  %i.at = icmp eq i32 %i.as, 83886080
  %or.cond = and i1 %.not, %i.at                  ; 3 uses
  br i1 %or.cond, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit27

.critedge:                                        ; preds = %bb.k
  %i.av = add nuw i64 %i.ae, 1                    ; 2 uses
  %.not11.i.i = icmp ult i64 %i.av, %i.am
  br i1 %.not11.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge, %tailrecurse.i.i
  %i.aw = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 5 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, label %tailrecurse.i.i, !prof !30

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit

tailrecurse.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !32
  store ptr %i.az, ptr %1, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !33
  store i64 %i.bb, ptr %i.y, align 8, !tbaa !34
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !27
  store ptr %i.bc, ptr %i.ab, align 8, !tbaa !27
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 24) #9, !inline_history !35
  %i.bd = load i64, ptr %i.y, align 8, !tbaa !34  ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 2 uses
  %i.bf = load ptr, ptr %1, align 8, !tbaa !24    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 696
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 704
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !16
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !17 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3
  %.not.i.i = icmp ult i64 %i.be, %i.bn
  br i1 %.not.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, label %.lr.ph.i.i

_ZNK8facebook4yoga4Node8getChildEm.exit.i.i:      ; preds = %tailrecurse.i.i, %.critedge
  %i.bo = phi ptr [ %i.ad, %.critedge ], [ %i.bf, %tailrecurse.i.i ]
  %.lcssa8.i.i = phi i64 [ %i.ae, %.critedge ], [ %i.bd, %tailrecurse.i.i ]
  %.lcssa6.i.i = phi i64 [ %i.av, %.critedge ], [ %i.be, %tailrecurse.i.i ] ; 2 uses
  %.lcssa.i.i = phi ptr [ %i.ai, %.critedge ], [ %i.bj, %tailrecurse.i.i ]
  store i64 %.lcssa6.i.i, ptr %i.y, align 8, !tbaa !34
  %i.bp = getelementptr [8 x i8], ptr %.lcssa.i.i, i64 %.lcssa8.i.i
  %2 = getelementptr i8, ptr %i.bp, i64 8
  %i.bq = load ptr, ptr %2, align 8, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 60
  %i.bs = load i8, ptr %i.br, align 4
  %i.bt = and i8 %i.bs, 12
  %i.bu = icmp eq i8 %i.bt, 8
  br i1 %i.bu, label %bb.m, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit, !prof !26

bb.m:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
          to label %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge unwind label %bb.h

._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge: ; preds = %bb.m
  %.pre61 = load ptr, ptr %1, align 8, !tbaa !24
  %.pre62 = load i64, ptr %i.y, align 8
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit: ; preds = %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i
  %i.bv = phi i64 [ %.pre62, %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge ], [ 0, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i ], [ %.lcssa6.i.i, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i ] ; 2 uses
  %i.bw = phi ptr [ %.pre61, %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge ], [ null, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i ], [ %i.bo, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i ] ; 2 uses
  %.not.i16 = icmp ne ptr %i.bw, null
  %i.bx = icmp ne i64 %i.bv, 0
  %.not37.not = select i1 %.not.i16, i1 true, i1 %i.bx
  br i1 %.not37.not, label %bb.i, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit, %bb.k, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %.not37.not.lcssa = phi i1 [ false, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ], [ %or.cond, %bb.k ], [ %or.cond, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !27 ; 2 uses
  %.not12.i.i.i18 = icmp eq ptr %i.bz, null
  br i1 %.not12.i.i.i18, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit22, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, %.lr.ph.i.i.i19
  %.013.i.i.i20 = phi ptr [ %i.ca, %.lr.ph.i.i.i19 ], [ %i.bz, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 2 uses
  %i.ca = load ptr, ptr %.013.i.i.i20, align 8, !tbaa !27 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i20, i64 noundef 24) #9
  %.not.i.i.i21 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i21, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit22, label %.lr.ph.i.i.i19, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit22: ; preds = %.lr.ph.i.i.i19, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.n

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit27: ; preds = %bb.h, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.au, %bb.l ]
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !27 ; 2 uses
  %.not12.i.i.i28 = icmp eq ptr %i.cb, null
  br i1 %.not12.i.i.i28, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit32, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit27, %.lr.ph.i.i.i29
  %.013.i.i.i30 = phi ptr [ %i.cc, %.lr.ph.i.i.i29 ], [ %i.cb, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit27 ] ; 2 uses
  %i.cc = load ptr, ptr %.013.i.i.i30, align 8, !tbaa !27 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i30, i64 noundef 24) #9
  %.not.i.i.i31 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i31, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit32, label %.lr.ph.i.i.i29, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit32: ; preds = %.lr.ph.i.i.i29, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %common.resume

bb.n:                                             ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit22, %bb.b, %bb.a
  %.3 = phi i1 [ %.not37.not.lcssa, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit22 ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.c, %i.k
  br i1 %.not.i.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.c, i64 noundef %i.k) #10
  unreachable

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.0.peel = load ptr, ptr %i.l, align 8, !tbaa !25 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.peel, i64 60
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, 12
  %i.q = icmp eq i8 %i.p, 8
  br i1 %i.q, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.0.peel, i64 696 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.peel, i64 704 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !17
  %.not.peel = icmp eq ptr %i.t, %i.u
  br i1 %.not.peel, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.a, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx.peel, align 8
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !27
  store ptr %i.x, ptr %i.v, align 8, !tbaa !27
  store ptr %i.v, ptr %i.m, align 8, !tbaa !27
  store ptr %.0.peel, ptr %0, align 8, !tbaa !24
  store i64 0, ptr %i.b, align 8, !tbaa !34
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i6.not.peel = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i6.not.peel, label %.loopexit12, label %_ZNK8facebook4yoga4Node8getChildEm.exit7

_ZNK8facebook4yoga4Node8getChildEm.exit7:         ; preds = %bb.d, %bb.f
  %i.aa = phi ptr [ %.0, %bb.f ], [ %.0.peel, %bb.d ]
  %.0.in = phi ptr [ %i.an, %bb.f ], [ %i.z, %bb.d ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !25  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 60
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, 12
  %i.ae = icmp eq i8 %i.ad, 8
  br i1 %i.ae, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit7
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 696 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 704 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !17
  %.not = icmp eq ptr %i.ah, %i.ai
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.aa, ptr %i.ak, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !27
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !27
  store ptr %i.aj, ptr %i.m, align 8, !tbaa !27
  store ptr %.0, ptr %0, align 8, !tbaa !24
  store i64 0, ptr %i.b, align 8, !tbaa !34
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !16
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i6.not = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i6.not, label %.loopexit12, label %_ZNK8facebook4yoga4Node8getChildEm.exit7, !llvm.loop !97

.loopexit12:                                      ; preds = %bb.f, %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 0) #10
  unreachable

.loopexit:                                        ; preds = %bb.e, %bb.c
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %.critedge

.critedge:                                        ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %_ZNK8facebook4yoga4Node8getChildEm.exit7, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 696
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not11 = icmp ult i64 %i.c, %i.l
  br i1 %.not11, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %tailrecurse, !prof !30

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

tailrecurse:                                      ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32
  store ptr %i.q, ptr %0, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !33
  store i64 %i.s, ptr %i.a, align 8, !tbaa !34
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !27
  store ptr %i.t, ptr %i.m, align 8, !tbaa !27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 24) #9
  %i.u = load i64, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.v = add i64 %i.u, 1                          ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 696
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 704
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !17  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not = icmp ult i64 %i.v, %i.ae
  br i1 %.not, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %tailrecurse, %bb.a
  %.lcssa8 = phi i64 [ %i.b, %bb.a ], [ %i.u, %tailrecurse ]
  %.lcssa6 = phi i64 [ %i.c, %bb.a ], [ %i.v, %tailrecurse ]
  %.lcssa = phi ptr [ %i.h, %bb.a ], [ %i.aa, %tailrecurse ]
  store i64 %.lcssa6, ptr %i.a, align 8, !tbaa !34
  %i.af = getelementptr [8 x i8], ptr %.lcssa, i64 %.lcssa8
  %1 = getelementptr i8, ptr %i.af, i64 8
  %i.ag = load ptr, ptr %1, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, 12
  %i.ak = icmp eq i8 %i.aj, 8
  br i1 %i.ak, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %bb.c, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare void @_ZN8facebook4yoga5Event7publishEPK6YGNodeNS1_4TypeERKNS1_4DataE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }
attributes #10 = { noreturn }
attributes #11 = { "function-inline-cost-multiplier"="2" }
attributes #12 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !28}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!"p1 _ZTSN8facebook4yoga4NodeE", !10, i64 0}
!13 = !{!"any p2 pointer", !10, i64 0}
!14 = !{!"p2 _ZTSN8facebook4yoga4NodeE", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 8}
!17 = !{!15, !14, i64 0}
!18 = !{!"p1 _ZTSSt19_Fwd_list_node_base", !10, i64 0}
!19 = !{!"_ZTSSt19_Fwd_list_node_base", !18, i64 0}
!20 = !{!"_ZTSNSt14_Fwd_list_baseISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE14_Fwd_list_implE", !19, i64 0}
!21 = !{!"_ZTSSt14_Fwd_list_baseISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE", !20, i64 0}
!22 = !{!"_ZTSSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE", !21, i64 0}
!23 = !{!"_ZTSN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorE", !12, i64 0, !11, i64 8, !22, i64 16}
!24 = !{!23, !12, i64 0}
!25 = !{!12, !12, i64 0}
!26 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!27 = !{!19, !18, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!21, !18, i64 0}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!"_ZTSSt4pairIPKN8facebook4yoga4NodeEmE", !12, i64 0, !11, i64 8}
!32 = !{!31, !12, i64 0}
!33 = !{!31, !11, i64 8}
!34 = !{!23, !11, i64 8}
!35 = !{ptr @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv}
!36 = distinct !{!36, i1 false, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv"}
!37 = distinct !{!37, !36, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv: argument 0"}
!38 = !{!"bool", !6, i64 0}
!39 = !{!"_ZTSN8facebook4yoga8NodeTypeE", !6, i64 0}
!40 = !{!"float", !6, i64 0}
!41 = !{!"_ZTSN8facebook4yoga13FloatOptionalE", !40, i64 0}
!42 = !{!"_ZTSN8facebook4yoga9DirectionE", !6, i64 0}
!43 = !{!"_ZTSN8facebook4yoga13FlexDirectionE", !6, i64 0}
!44 = !{!"_ZTSN8facebook4yoga7JustifyE", !6, i64 0}
!45 = !{!"_ZTSN8facebook4yoga5AlignE", !6, i64 0}
!46 = !{!"_ZTSN8facebook4yoga12PositionTypeE", !6, i64 0}
!47 = !{!"_ZTSN8facebook4yoga4WrapE", !6, i64 0}
!48 = !{!"_ZTSN8facebook4yoga8OverflowE", !6, i64 0}
!49 = !{!"_ZTSN8facebook4yoga7DisplayE", !6, i64 0}
!50 = !{!"_ZTSN8facebook4yoga9BoxSizingE", !6, i64 0}
!51 = !{!"short", !6, i64 0}
!52 = !{!"_ZTSN8facebook4yoga16StyleValueHandleE", !51, i64 0}
!53 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm9EE", !6, i64 0}
!54 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm3EE", !6, i64 0}
!55 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm2EE", !6, i64 0}
!56 = !{!"p1 _ZTSN8facebook4yoga13GridTrackSizeE", !10, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!"_ZTSNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE12_Vector_implE", !57, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE", !58, i64 0}
!60 = !{!"_ZTSSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EE", !59, i64 0}
!61 = !{!"_ZTSN8facebook4yoga12GridLineTypeE", !6, i64 0}
!62 = !{!"_ZTSN8facebook4yoga8GridLineE", !61, i64 0, !7, i64 4}
!63 = !{!"_ZTSSt5arrayIjLm4EE", !6, i64 0}
!64 = !{!"_ZTSSt12_Base_bitsetILm1EE", !11, i64 0}
!65 = !{!"_ZTSSt6bitsetILm4EE", !64, i64 0}
!66 = !{!"p1 _ZTSN8facebook4yoga16SmallValueBufferILm4EE8OverflowE", !10, i64 0}
!67 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook4yoga16SmallValueBufferILm4EE8OverflowELb0EE", !66, i64 0}
!68 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEE", !67, i64 0}
!69 = !{!"_ZTSSt5tupleIJPN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEE", !68, i64 0}
!70 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EE", !69, i64 0}
!71 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_ELb1ELb1EE", !70, i64 0}
!72 = !{!"_ZTSSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EE", !71, i64 0}
!73 = !{!"_ZTSN8facebook4yoga16SmallValueBufferILm4EEE", !51, i64 0, !63, i64 4, !65, i64 24, !72, i64 32}
!74 = !{!"_ZTSN8facebook4yoga14StyleValuePoolE", !73, i64 0}
!75 = !{!"_ZTSN8facebook4yoga5StyleE", !42, i64 0, !43, i64 0, !44, i64 0, !44, i64 1, !44, i64 1, !45, i64 2, !45, i64 2, !45, i64 3, !46, i64 3, !47, i64 3, !48, i64 4, !49, i64 4, !50, i64 4, !52, i64 5, !52, i64 7, !52, i64 9, !52, i64 11, !53, i64 13, !53, i64 31, !53, i64 49, !53, i64 67, !54, i64 85, !55, i64 91, !55, i64 95, !55, i64 99, !52, i64 103, !60, i64 112, !60, i64 136, !60, i64 160, !60, i64 184, !62, i64 208, !62, i64 216, !62, i64 224, !62, i64 232, !74, i64 240}
!76 = !{!"_ZTSSt5arrayIN8facebook4yoga17CachedMeasurementELm8EE", !6, i64 0}
!77 = !{!"_ZTSN8facebook4yoga10SizingModeE", !6, i64 0}
!78 = !{!"_ZTSN8facebook4yoga17CachedMeasurementE", !40, i64 0, !40, i64 4, !77, i64 8, !77, i64 12, !40, i64 16, !40, i64 20}
!79 = !{!"_ZTSSt5arrayIfLm2EE", !6, i64 0}
!80 = !{!"_ZTSSt5arrayIfLm4EE", !6, i64 0}
!81 = !{!"_ZTSN8facebook4yoga13LayoutResultsE", !7, i64 0, !41, i64 4, !41, i64 8, !7, i64 12, !7, i64 16, !42, i64 20, !7, i64 24, !76, i64 28, !78, i64 220, !42, i64 244, !38, i64 244, !79, i64 248, !79, i64 256, !79, i64 264, !80, i64 272, !80, i64 288, !80, i64 304, !80, i64 320}
!82 = !{!"_ZTSNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE12_Vector_implE", !15, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorIPN8facebook4yoga4NodeESaIS3_EE", !83, i64 0}
!85 = !{!"p1 _ZTSN8facebook4yoga6ConfigE", !10, i64 0}
!86 = !{!"_ZTSSt5arrayIN8facebook4yoga15StyleSizeLengthELm2EE", !6, i64 0}
!87 = !{!"_ZTSN8facebook4yoga4NodeE", !38, i64 0, !38, i64 0, !38, i64 0, !38, i64 0, !39, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !41, i64 32, !41, i64 36, !10, i64 40, !10, i64 48, !75, i64 56, !81, i64 336, !11, i64 672, !11, i64 680, !12, i64 688, !84, i64 696, !85, i64 720, !86, i64 728}
!88 = !{!87, !10, i64 40}
!89 = !{!"_ZTSN8facebook4yoga5Event4DataE", !10, i64 0}
!90 = !{!89, !10, i64 0}
!91 = !{!40, !40, i64 0}
!92 = !{!37}
!93 = !{!87, !11, i64 672}
!94 = distinct !{!94, i1 false, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv"}
!95 = distinct !{!95, !94, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv: argument 0"}
!96 = !{!95}
!97 = distinct !{!97, !28, !98}
!98 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
