Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min?download=true
inline.NumInlined: 352
inline.NumDeleted: 238
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3igl3minIN5Eigen5ArrayIbLin1ELi3ELi0ELin1ELi3EEENS2_IbLin1ELi1ELi0ELin1ELi1EEENS1_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEiRNS1_15PlainObjectBaseIT0_EERNSC_IT1_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN3igl3minIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEiRNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl3minIN5Eigen5ArrayIbLin1ELi3ELi0ELin1ELi3EEENS2_IbLin1ELi1ELi0ELin1ELi1EEENS1_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEiRNS1_15PlainObjectBaseIT0_EERNSC_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, 1                        ; 2 uses
  br i1 %i.a, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %sext = shl i64 %i.c, 32
  %i.e = ashr exact i64 %sext, 32
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.b, %bb.a
  %i.f = phi i64 [ 3, %bb.a ], [ %i.e, %bb.b ]    ; 5 uses
  %i.g = phi i32 [ 3, %bb.a ], [ %i.d, %bb.b ]    ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !35
  %.not.i.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.j = load ptr, ptr %2, align 8, !tbaa !36
  tail call void @free(ptr noundef %i.j) #7
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.d, label %.sink.split.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.f) #8 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

.sink.split.i.i:                                  ; preds = %bb.d, %bb.c
  %.sink.i.i = phi ptr [ %i.l, %bb.d ], [ null, %bb.c ]
  store ptr %.sink.i.i, ptr %2, align 8, !tbaa !36
  br label %_ZN5Eigen15PlainObjectBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %.sink.split.i.i
  store i64 %i.f, ptr %i.h, align 8, !tbaa !35
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.f, i64 noundef 1)
  %i.o = icmp sgt i32 %i.g, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit
  %i.p = load ptr, ptr %2, align 8, !tbaa !36     ; 9 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !15     ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %0, align 8, !tbaa !37, !noalias !38 ; 7 uses
  %i.t = load i64, ptr %i.r, align 8, !tbaa !33   ; 11 uses
  br i1 %i.a, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us.preheader, label %.lr.ph.split.us.split

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us.preheader: ; preds = %.lr.ph.split.us
  %wide.trip.count52 = zext nneg i32 %i.g to i64  ; 3 uses
  %min.iters.check67 = icmp ult i32 %i.g, 8
  br i1 %min.iters.check67, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us.preheader78, label %vector.ph68

vector.ph68:                                      ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us.preheader
  %n.vec69 = and i64 %wide.trip.count52, 2147483640 ; 3 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next72, %vector.body70 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %index71 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store <4 x i8> zeroinitializer, ptr %i.v, align 1, !tbaa !40
  store <4 x i8> zeroinitializer, ptr %i.w, align 1, !tbaa !40
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index71 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.x, align 4, !tbaa !16
  store <4 x i32> splat (i32 -1), ptr %i.y, align 4, !tbaa !16
  %index.next72 = add nuw i64 %index71, 8         ; 2 uses
  %i.z = icmp eq i64 %index.next72, %n.vec69
  br i1 %i.z, label %middle.block73, label %vector.body70, !llvm.loop !24

middle.block73:                                   ; preds = %vector.body70
  %cmp.n74 = icmp eq i64 %n.vec69, %wide.trip.count52
  br i1 %cmp.n74, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us.preheader78

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us.preheader78: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us.preheader, %middle.block73
  %indvars.iv49.ph = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us.preheader ], [ %n.vec69, %middle.block73 ]
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us.preheader78, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us ], [ %indvars.iv49.ph, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us.preheader78 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv49
  store i8 0, ptr %i.aa, align 1, !tbaa !40
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv49
  store i32 -1, ptr %i.ab, align 4, !tbaa !16
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us, !llvm.loop !25

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.ac = icmp sgt i64 %i.t, 1
  %wide.trip.count47 = zext nneg i32 %i.g to i64  ; 6 uses
  br i1 %i.ac, label %.lr.ph.i.i.i.i.preheader.us.us.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader

.lr.ph.i.i.i.i.preheader.us.us.preheader:         ; preds = %.lr.ph.split.us.split
  %i.ad = add nsw i64 %i.t, -1                    ; 2 uses
  %i.ae = add nsw i64 %i.t, -2
  %xtraiter83 = and i64 %i.ad, 3                  ; 3 uses
  %i.af = icmp ult i64 %i.ae, 3
  %unroll_iter = and i64 %i.ad, -4
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  %lcmp.mod87 = icmp ne i64 %xtraiter83, 0
  br label %.lr.ph.i.i.i.i.preheader.us.us

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader: ; preds = %.lr.ph.split.us.split
  %min.iters.check = icmp ult i32 %i.g, 8
  %ident.check.not = icmp ne i64 %i.t, 1
  %or.cond.not77 = select i1 %min.iters.check, i1 true, i1 %ident.check.not
  %4 = ptrtoaddr ptr %i.p to i64
  %5 = ptrtoaddr ptr %i.s to i64
  %i.ag = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.ag, -8
  %or.cond76 = select i1 %or.cond.not77, i1 true, i1 %diff.check
  br i1 %or.cond76, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader80, label %vector.ph

vector.ph:                                        ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader
  %n.vec = and i64 %wide.trip.count47, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.s, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %wide.load = load <4 x i8>, ptr %i.ah, align 1, !tbaa !40
  %wide.load65 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store <4 x i8> %wide.load, ptr %i.aj, align 1, !tbaa !40
  store <4 x i8> %wide.load65, ptr %i.ak, align 1, !tbaa !40
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> zeroinitializer, ptr %i.al, align 4, !tbaa !16
  store <4 x i32> zeroinitializer, ptr %i.am, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count47
  br i1 %cmp.n, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader80

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader80: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader, %middle.block
  %indvars.iv39.ph = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count47, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol.loopexit, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader80
  %i.ao = mul nsw i64 %i.t, %indvars.iv39.ph
  %i.ap = getelementptr inbounds i8, ptr %i.s, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !40, !range !41, !noundef !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv39.ph
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !40
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv39.ph
  store i32 0, ptr %i.as, align 4, !tbaa !16
  %indvars.iv.next40.prol = or disjoint i64 %indvars.iv39.ph, 1
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol.loopexit

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol.loopexit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader80
  %indvars.iv39.unr = phi i64 [ %indvars.iv39.ph, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader80 ], [ %indvars.iv.next40.prol, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol ]
  %i.at = add nsw i64 %wide.trip.count47, -1
  %i.au = icmp eq i64 %indvars.iv39.ph, %i.at
  br i1 %i.au, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us

.lr.ph.i.i.i.i.preheader.us.us:                   ; preds = %.lr.ph.i.i.i.i.preheader.us.us.preheader, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us.us.preheader ] ; 4 uses
  %i.av = mul nuw nsw i64 %i.t, %indvars.iv44
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.av ; 6 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !40, !range !41, !noundef !38 ; 4 uses
  br i1 %i.af, label %.lr.ph.i.i.i.i.us.us.epil.preheader, label %.lr.ph.i.i.i.i.us.us

.lr.ph.i.i.i.i.us.us:                             ; preds = %.lr.ph.i.i.i.i.preheader.us.us, %.lr.ph.i.i.i.i.us.us
  %.sroa.0.0.i.i.us.us = phi i64 [ %.sroa.0.1.i.i.us.us.3, %.lr.ph.i.i.i.i.us.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us.us ]
  %.sroa.8.0.i.i.us.us = phi i8 [ %.sroa.8.1.i.i.us.us.3, %.lr.ph.i.i.i.i.us.us ], [ %i.ax, %.lr.ph.i.i.i.i.preheader.us.us ]
  %.02125.i.i.i.i.us.us = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.us.us ], [ 1, %.lr.ph.i.i.i.i.preheader.us.us ] ; 6 uses
  %i.ay = phi i8 [ %i.bu, %.lr.ph.i.i.i.i.us.us ], [ %i.ax, %.lr.ph.i.i.i.i.preheader.us.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.us.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us.us ]
  %i.az = getelementptr i8, ptr %i.aw, i64 %.02125.i.i.i.i.us.us
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !40, !range !41, !noundef !38
  %i.bb = icmp samesign ult i8 %i.ba, %i.ay       ; 3 uses
  %.sroa.0.1.i.i.us.us = select i1 %i.bb, i64 %.02125.i.i.i.i.us.us, i64 %.sroa.0.0.i.i.us.us
  %i.bc = select i1 %i.bb, i8 0, i8 %i.ay         ; 2 uses
  %i.bd = add nuw nsw i64 %.02125.i.i.i.i.us.us, 1 ; 2 uses
  %i.be = getelementptr i8, ptr %i.aw, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !40, !range !41, !noundef !38
  %i.bg = icmp samesign ult i8 %i.bf, %i.bc       ; 3 uses
  %.sroa.0.1.i.i.us.us.1 = select i1 %i.bg, i64 %i.bd, i64 %.sroa.0.1.i.i.us.us
  %i.bh = or i1 %i.bg, %i.bb
  %i.bi = select i1 %i.bg, i8 0, i8 %i.bc         ; 2 uses
  %i.bj = add nuw nsw i64 %.02125.i.i.i.i.us.us, 2 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.aw, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !40, !range !41, !noundef !38
  %i.bm = icmp samesign ult i8 %i.bl, %i.bi       ; 3 uses
  %.sroa.0.1.i.i.us.us.2 = select i1 %i.bm, i64 %i.bj, i64 %.sroa.0.1.i.i.us.us.1
  %i.bn = select i1 %i.bm, i8 0, i8 %i.bi         ; 2 uses
  %i.bo = add nuw nsw i64 %.02125.i.i.i.i.us.us, 3 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.aw, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !40, !range !41, !noundef !38
  %i.br = icmp samesign ult i8 %i.bq, %i.bn       ; 3 uses
  %.sroa.0.1.i.i.us.us.3 = select i1 %i.br, i64 %i.bo, i64 %.sroa.0.1.i.i.us.us.2 ; 3 uses
  %i.bs = or i1 %i.br, %i.bm
  %i.bt = select i1 %i.bs, i1 true, i1 %i.bh
  %.sroa.8.1.i.i.us.us.3 = select i1 %i.bt, i8 0, i8 %.sroa.8.0.i.i.us.us ; 3 uses
  %i.bu = select i1 %i.br, i8 0, i8 %i.bn         ; 2 uses
  %i.bv = add nuw nsw i64 %.02125.i.i.i.i.us.us, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa, label %.lr.ph.i.i.i.i.us.us, !llvm.loop !27

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.us.us
  br i1 %lcmp.mod84.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.us.us.epil.preheader

.lr.ph.i.i.i.i.us.us.epil.preheader:              ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa, %.lr.ph.i.i.i.i.preheader.us.us
  %.sroa.0.0.i.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.us.us ], [ %.sroa.0.1.i.i.us.us.3, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa ]
  %.sroa.8.0.i.i.us.us.epil.init = phi i8 [ %i.ax, %.lr.ph.i.i.i.i.preheader.us.us ], [ %.sroa.8.1.i.i.us.us.3, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa ]
  %.02125.i.i.i.i.us.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.us.us ], [ %i.bv, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa ]
  %.epil.init = phi i8 [ %i.ax, %.lr.ph.i.i.i.i.preheader.us.us ], [ %i.bu, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %.lr.ph.i.i.i.i.us.us.epil

.lr.ph.i.i.i.i.us.us.epil:                        ; preds = %.lr.ph.i.i.i.i.us.us.epil, %.lr.ph.i.i.i.i.us.us.epil.preheader
  %.sroa.0.0.i.i.us.us.epil = phi i64 [ %.sroa.0.1.i.i.us.us.epil, %.lr.ph.i.i.i.i.us.us.epil ], [ %.sroa.0.0.i.i.us.us.epil.init, %.lr.ph.i.i.i.i.us.us.epil.preheader ]
  %.sroa.8.0.i.i.us.us.epil = phi i8 [ %.sroa.8.1.i.i.us.us.epil, %.lr.ph.i.i.i.i.us.us.epil ], [ %.sroa.8.0.i.i.us.us.epil.init, %.lr.ph.i.i.i.i.us.us.epil.preheader ]
  %.02125.i.i.i.i.us.us.epil = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.us.us.epil ], [ %.02125.i.i.i.i.us.us.epil.init, %.lr.ph.i.i.i.i.us.us.epil.preheader ] ; 3 uses
  %i.bw = phi i8 [ %i.ca, %.lr.ph.i.i.i.i.us.us.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.us.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.us.us.epil ], [ 0, %.lr.ph.i.i.i.i.us.us.epil.preheader ]
  %i.bx = getelementptr i8, ptr %i.aw, i64 %.02125.i.i.i.i.us.us.epil
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !40, !range !41, !noundef !38
  %i.bz = icmp samesign ult i8 %i.by, %i.bw       ; 3 uses
  %.sroa.0.1.i.i.us.us.epil = select i1 %i.bz, i64 %.02125.i.i.i.i.us.us.epil, i64 %.sroa.0.0.i.i.us.us.epil ; 2 uses
  %.sroa.8.1.i.i.us.us.epil = select i1 %i.bz, i8 0, i8 %.sroa.8.0.i.i.us.us.epil ; 2 uses
  %i.ca = select i1 %i.bz, i8 0, i8 %i.bw
  %i.cb = add nuw nsw i64 %.02125.i.i.i.i.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter83
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.us.us.epil, !llvm.loop !28

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us: ; preds = %.lr.ph.i.i.i.i.us.us.epil, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa
  %.sroa.0.1.i.i.us.us.lcssa = phi i64 [ %.sroa.0.1.i.i.us.us.3, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa ], [ %.sroa.0.1.i.i.us.us.epil, %.lr.ph.i.i.i.i.us.us.epil ]
  %.sroa.8.1.i.i.us.us.lcssa = phi i8 [ %.sroa.8.1.i.i.us.us.3, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa ], [ %.sroa.8.1.i.i.us.us.epil, %.lr.ph.i.i.i.i.us.us.epil ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv44
  store i8 %.sroa.8.1.i.i.us.us.lcssa, ptr %i.cc, align 1, !tbaa !40
  %i.cd = trunc i64 %.sroa.0.1.i.i.us.us.lcssa to i32
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv44
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !16
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count47
  br i1 %exitcond48.not, label %._crit_edge, label %.lr.ph.i.i.i.i.preheader.us.us, !llvm.loop !29

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol.loopexit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us
  %indvars.iv39 = phi i64 [ %indvars.iv.next40.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us ], [ %indvars.iv39.unr, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol.loopexit ] ; 5 uses
  %i.cf = mul nsw i64 %i.t, %indvars.iv39
  %i.cg = getelementptr inbounds i8, ptr %i.s, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !40, !range !41, !noundef !38
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv39
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !40
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv39
  store i32 0, ptr %i.cj, align 4, !tbaa !16
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 3 uses
  %i.ck = mul nsw i64 %i.t, %indvars.iv.next40
  %i.cl = getelementptr inbounds i8, ptr %i.s, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !40, !range !41, !noundef !38
  %i.cn = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.next40
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !40
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next40
  store i32 0, ptr %i.co, align 4, !tbaa !16
  %indvars.iv.next40.1 = add nuw nsw i64 %indvars.iv39, 2 ; 2 uses
  %exitcond43.not.1 = icmp eq i64 %indvars.iv.next40.1, %wide.trip.count47
  br i1 %exitcond43.not.1, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us, !llvm.loop !30

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cp = shl nsw i64 %i.t, 1
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol.loopexit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us, %middle.block, %middle.block73, %_ZN5Eigen15PlainObjectBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit
  ret void

bb.f:                                             ; preds = %.lr.ph.split, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit ] ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv ; 3 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !40, !range !41, !noundef !38 ; 3 uses
  %i.cs = getelementptr i8, ptr %i.cq, i64 %i.t
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !40, !range !41, !noundef !38
  %i.cu = icmp samesign ult i8 %i.ct, %i.cr
  br i1 %i.cu, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit, label %_ZN5Eigen8internal12visitor_implINS0_17min_coeff_visitorINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi0EEENS0_17visitor_evaluatorIS7_EELi2EE3runERKSA_RS8_.exit.i.i.i.i

_ZN5Eigen8internal12visitor_implINS0_17min_coeff_visitorINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi0EEENS0_17visitor_evaluatorIS7_EELi2EE3runERKSA_RS8_.exit.i.i.i.i: ; preds = %bb.f
  %i.cv = getelementptr i8, ptr %i.cq, i64 %i.cp
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !40, !range !41, !noundef !38 ; 2 uses
  %.not5.i.i = icmp samesign ult i8 %i.cw, %i.cr
  %i.cx = add nsw i8 %i.cr, -1
  %i.cy = icmp ult i8 %i.cx, %i.cw
  %i.cz = zext i1 %i.cy to i8
  %i.da = select i1 %.not5.i.i, i32 2, i32 0
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit: ; preds = %_ZN5Eigen8internal12visitor_implINS0_17min_coeff_visitorINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi0EEENS0_17visitor_evaluatorIS7_EELi2EE3runERKSA_RS8_.exit.i.i.i.i, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ %i.da, %_ZN5Eigen8internal12visitor_implINS0_17min_coeff_visitorINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi0EEENS0_17visitor_evaluatorIS7_EELi2EE3runERKSA_RS8_.exit.i.i.i.i ]
  %.0.in = phi i8 [ 0, %bb.f ], [ %i.cz, %_ZN5Eigen8internal12visitor_implINS0_17min_coeff_visitorINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi0EEENS0_17visitor_evaluatorIS7_EELi2EE3runERKSA_RS8_.exit.i.i.i.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  store i8 %.0.in, ptr %i.db, align 1, !tbaa !40
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  store i32 %.0, ptr %i.dc, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !29
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !42
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.i) #7
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #8 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !15
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl3minIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEiRNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, 1                        ; 2 uses
  %.in.v = select i1 %i.a, i64 16, i64 8
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.b = load i64, ptr %.in, align 8, !tbaa !59   ; 12 uses
  %i.c = trunc i64 %i.b to i32
  %sext = shl i64 %i.b, 32
  %i.d = ashr exact i64 %sext, 32                 ; 2 uses
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.d, i64 noundef 1)
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.d, i64 noundef 1)
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !23     ; 18 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !15     ; 16 uses
  br i1 %i.a, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load ptr, ptr %0, align 8, !tbaa !61, !noalias !62 ; 6 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !63, !noalias !62 ; 9 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader, label %.lr.ph.split.us.split

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader: ; preds = %.lr.ph.split.us
  %wide.trip.count77 = and i64 %i.b, 2147483647   ; 3 uses
  %min.iters.check117 = icmp samesign ult i64 %wide.trip.count77, 4
  br i1 %min.iters.check117, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader129, label %vector.ph118

vector.ph118:                                     ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader
  %n.vec119 = and i64 %i.b, 2147483644            ; 3 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next122, %vector.body120 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index121 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x double> zeroinitializer, ptr %i.l, align 8, !tbaa !65
  store <2 x double> zeroinitializer, ptr %i.m, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index121 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <2 x i32> splat (i32 -1), ptr %i.n, align 4, !tbaa !16
  store <2 x i32> splat (i32 -1), ptr %i.o, align 4, !tbaa !16
  %index.next122 = add nuw i64 %index121, 4       ; 2 uses
  %i.p = icmp eq i64 %index.next122, %n.vec119
  br i1 %i.p, label %middle.block123, label %vector.body120, !llvm.loop !45

middle.block123:                                  ; preds = %vector.body120
  %cmp.n124 = icmp eq i64 %wide.trip.count77, %n.vec119
  br i1 %cmp.n124, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader129

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader129: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader, %middle.block123
  %indvars.iv74.ph = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader ], [ %n.vec119, %middle.block123 ]
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader129, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us ], [ %indvars.iv74.ph, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader129 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv74
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !65
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv74
  store i32 -1, ptr %i.r, align 4, !tbaa !16
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us, !llvm.loop !46

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.s = icmp sgt i64 %i.j, 1
  %wide.trip.count72 = and i64 %i.b, 2147483647   ; 5 uses
  br i1 %i.s, label %.lr.ph.i.i.i.i.preheader.us.us.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader

.lr.ph.i.i.i.i.preheader.us.us.preheader:         ; preds = %.lr.ph.split.us.split
  %i.t = add nsw i64 %i.j, -1                     ; 3 uses
  %xtraiter146 = and i64 %i.t, 1
  %i.u = icmp eq i64 %i.j, 2
  %unroll_iter151 = and i64 %i.t, -2
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  %lcmp.mod150 = trunc i64 %i.t to i1
  br label %.lr.ph.i.i.i.i.preheader.us.us

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader: ; preds = %.lr.ph.split.us.split
  %min.iters.check105 = icmp samesign ult i64 %wide.trip.count72, 8
  %ident.check.not = icmp ne i64 %i.j, 1
  %or.cond.not128 = or i1 %min.iters.check105, %ident.check.not
  %4 = ptrtoaddr ptr %i.g to i64
  %5 = ptrtoaddr ptr %i.i to i64
  %i.v = sub i64 %5, %4
  %diff.check103 = icmp ugt i64 %i.v, -32
  %or.cond126 = select i1 %or.cond.not128, i1 true, i1 %diff.check103
  br i1 %or.cond126, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader131, label %vector.ph106

vector.ph106:                                     ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader
  %n.vec107 = and i64 %i.b, 2147483644            ; 3 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next112, %vector.body108 ] ; 4 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.i, i64 %index109 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load110 = load <2 x double>, ptr %i.w, align 8, !tbaa !65
  %wide.load111 = load <2 x double>, ptr %i.x, align 8, !tbaa !65
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index109 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> %wide.load110, ptr %i.y, align 8, !tbaa !65
  store <2 x double> %wide.load111, ptr %i.z, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index109 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store <2 x i32> zeroinitializer, ptr %i.aa, align 4, !tbaa !16
  store <2 x i32> zeroinitializer, ptr %i.ab, align 4, !tbaa !16
  %index.next112 = add nuw i64 %index109, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.ac, label %middle.block113, label %vector.body108, !llvm.loop !47

middle.block113:                                  ; preds = %vector.body108
  %cmp.n114 = icmp eq i64 %wide.trip.count72, %n.vec107
  br i1 %cmp.n114, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader131

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader131: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader, %middle.block113
  %indvars.iv64.ph = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader ], [ %n.vec107, %middle.block113 ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv64.ph, 1
  %xtraiter143 = and i64 %i.b, 1
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.prol.loopexit, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.prol

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.prol: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader131
  %i.ad = mul nsw i64 %i.j, %indvars.iv64.ph
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !65
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv64.ph
  store double %i.af, ptr %i.ag, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv64.ph
  store i32 0, ptr %i.ah, align 4, !tbaa !16
  %indvars.iv.next65.prol = or disjoint i64 %indvars.iv64.ph, 1
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.prol.loopexit

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.prol.loopexit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.prol, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader131
  %indvars.iv64.unr = phi i64 [ %indvars.iv64.ph, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader131 ], [ %indvars.iv.next65.prol, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.prol ]
  %i.ai = icmp eq i64 %wide.trip.count72, %.neg
  br i1 %i.ai, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us

.lr.ph.i.i.i.i.preheader.us.us:                   ; preds = %.lr.ph.i.i.i.i.preheader.us.us.preheader, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us.us.preheader ] ; 4 uses
  %i.aj = mul nuw nsw i64 %i.j, %indvars.iv69
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.aj ; 4 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !65 ; 4 uses
  br i1 %i.u, label %.lr.ph.i.i.i.i.us.us.epil.preheader, label %.lr.ph.i.i.i.i.us.us

.lr.ph.i.i.i.i.us.us:                             ; preds = %.lr.ph.i.i.i.i.preheader.us.us, %.lr.ph.i.i.i.i.us.us
  %.sroa.0.0.i.i.us.us = phi i64 [ %.sroa.0.1.i.i.us.us.1, %.lr.ph.i.i.i.i.us.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us.us ]
  %.sroa.8.0.i.i.us.us = phi double [ %.sroa.8.1.i.i.us.us.1, %.lr.ph.i.i.i.i.us.us ], [ %i.al, %.lr.ph.i.i.i.i.preheader.us.us ]
  %.02125.i.i.i.i.us.us = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.us.us ], [ 1, %.lr.ph.i.i.i.i.preheader.us.us ] ; 4 uses
  %i.am = phi double [ %i.av, %.lr.ph.i.i.i.i.us.us ], [ %i.al, %.lr.ph.i.i.i.i.preheader.us.us ] ; 2 uses
  %niter152 = phi i64 [ %niter152.next.1, %.lr.ph.i.i.i.i.us.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us.us ]
  %i.an = getelementptr [8 x i8], ptr %i.ak, i64 %.02125.i.i.i.i.us.us
  %i.ao = load double, ptr %i.an, align 8, !tbaa !65 ; 3 uses
  %i.ap = fcmp olt double %i.ao, %i.am            ; 3 uses
  %.sroa.0.1.i.i.us.us = select i1 %i.ap, i64 %.02125.i.i.i.i.us.us, i64 %.sroa.0.0.i.i.us.us
  %.sroa.8.1.i.i.us.us = select i1 %i.ap, double %i.ao, double %.sroa.8.0.i.i.us.us
  %i.aq = select i1 %i.ap, double %i.ao, double %i.am ; 2 uses
  %i.ar = add nuw nsw i64 %.02125.i.i.i.i.us.us, 1 ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %i.ak, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !65 ; 3 uses
  %i.au = fcmp olt double %i.at, %i.aq            ; 3 uses
  %.sroa.0.1.i.i.us.us.1 = select i1 %i.au, i64 %i.ar, i64 %.sroa.0.1.i.i.us.us ; 3 uses
  %.sroa.8.1.i.i.us.us.1 = select i1 %i.au, double %i.at, double %.sroa.8.1.i.i.us.us ; 3 uses
  %i.av = select i1 %i.au, double %i.at, double %i.aq ; 2 uses
  %i.aw = add nuw nsw i64 %.02125.i.i.i.i.us.us, 2 ; 2 uses
  %niter152.next.1 = add nuw i64 %niter152, 2     ; 2 uses
  %niter152.ncmp.1 = icmp eq i64 %niter152.next.1, %unroll_iter151
  br i1 %niter152.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa, label %.lr.ph.i.i.i.i.us.us, !llvm.loop !48

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.us.us
  br i1 %lcmp.mod147.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.us.us.epil.preheader

.lr.ph.i.i.i.i.us.us.epil.preheader:              ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa, %.lr.ph.i.i.i.i.preheader.us.us
  %.sroa.0.0.i.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.us.us ], [ %.sroa.0.1.i.i.us.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa ]
  %.sroa.8.0.i.i.us.us.epil.init = phi double [ %i.al, %.lr.ph.i.i.i.i.preheader.us.us ], [ %.sroa.8.1.i.i.us.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa ]
  %.02125.i.i.i.i.us.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.us.us ], [ %i.aw, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.al, %.lr.ph.i.i.i.i.preheader.us.us ], [ %i.av, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.ax = getelementptr [8 x i8], ptr %i.ak, i64 %.02125.i.i.i.i.us.us.epil.init
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !65 ; 2 uses
  %i.az = fcmp olt double %i.ay, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.us.us.epil = select i1 %i.az, i64 %.02125.i.i.i.i.us.us.epil.init, i64 %.sroa.0.0.i.i.us.us.epil.init
  %.sroa.8.1.i.i.us.us.epil = select i1 %i.az, double %i.ay, double %.sroa.8.0.i.i.us.us.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa, %.lr.ph.i.i.i.i.us.us.epil.preheader
  %.sroa.0.1.i.i.us.us.lcssa = phi i64 [ %.sroa.0.1.i.i.us.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa ], [ %.sroa.0.1.i.i.us.us.epil, %.lr.ph.i.i.i.i.us.us.epil.preheader ]
  %.sroa.8.1.i.i.us.us.lcssa = phi double [ %.sroa.8.1.i.i.us.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us.unr-lcssa ], [ %.sroa.8.1.i.i.us.us.epil, %.lr.ph.i.i.i.i.us.us.epil.preheader ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv69
  store double %.sroa.8.1.i.i.us.us.lcssa, ptr %i.ba, align 8, !tbaa !65
  %i.bb = trunc i64 %.sroa.0.1.i.i.us.us.lcssa to i32
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv69
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !16
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge, label %.lr.ph.i.i.i.i.preheader.us.us, !llvm.loop !49

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.prol.loopexit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us
  %indvars.iv64 = phi i64 [ %indvars.iv.next65.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us ], [ %indvars.iv64.unr, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.prol.loopexit ] ; 5 uses
  %i.bd = mul nsw i64 %i.j, %indvars.iv64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !65
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv64
  store double %i.bf, ptr %i.bg, align 8, !tbaa !65
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv64
  store i32 0, ptr %i.bh, align 4, !tbaa !16
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 3 uses
  %i.bi = mul nsw i64 %i.j, %indvars.iv.next65
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !65
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next65
  store double %i.bk, ptr %i.bl, align 8, !tbaa !65
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next65
  store i32 0, ptr %i.bm, align 4, !tbaa !16
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %exitcond68.not.1 = icmp eq i64 %indvars.iv.next65.1, %wide.trip.count72
  br i1 %exitcond68.not.1, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us, !llvm.loop !50

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %0, align 8, !tbaa !61, !noalias !66 ; 8 uses
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !67, !noalias !66 ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37.preheader, label %.lr.ph.split.split

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37.preheader: ; preds = %.lr.ph.split
  %wide.trip.count62 = and i64 %i.b, 2147483647   ; 3 uses
  %min.iters.check93 = icmp samesign ult i64 %wide.trip.count62, 4
  br i1 %min.iters.check93, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37.preheader133, label %vector.ph94

vector.ph94:                                      ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37.preheader
  %n.vec95 = and i64 %i.b, 2147483644             ; 3 uses
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next98, %vector.body96 ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index97 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <2 x double> zeroinitializer, ptr %i.br, align 8, !tbaa !65
  store <2 x double> zeroinitializer, ptr %i.bs, align 8, !tbaa !65
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index97 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store <2 x i32> splat (i32 -1), ptr %i.bt, align 4, !tbaa !16
  store <2 x i32> splat (i32 -1), ptr %i.bu, align 4, !tbaa !16
  %index.next98 = add nuw i64 %index97, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next98, %n.vec95
  br i1 %i.bv, label %middle.block99, label %vector.body96, !llvm.loop !53

middle.block99:                                   ; preds = %vector.body96
  %cmp.n100 = icmp eq i64 %wide.trip.count62, %n.vec95
  br i1 %cmp.n100, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37.preheader133

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37.preheader133: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37.preheader, %middle.block99
  %indvars.iv59.ph = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37.preheader ], [ %n.vec95, %middle.block99 ]
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37.preheader133, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37 ], [ %indvars.iv59.ph, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37.preheader133 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv59
  store double 0.000000e+00, ptr %i.bw, align 8, !tbaa !65
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv59
  store i32 -1, ptr %i.bx, align 4, !tbaa !16
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37, !llvm.loop !54

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.by = icmp sgt i64 %i.bp, 1
  %i.bz = load i64, ptr %i.f, align 8, !tbaa !63  ; 3 uses
  %wide.trip.count57 = and i64 %i.b, 2147483647   ; 5 uses
  br i1 %i.by, label %.preheader.i.i.i.i.preheader.us.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.preheader

.preheader.i.i.i.i.preheader.us.preheader:        ; preds = %.lr.ph.split.split
  %i.ca = add nsw i64 %i.bp, -1                   ; 3 uses
  %xtraiter138 = and i64 %i.ca, 1
  %i.cb = icmp eq i64 %i.bp, 2
  %unroll_iter = and i64 %i.ca, -2
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  %lcmp.mod142 = trunc i64 %i.ca to i1
  br label %.preheader.i.i.i.i.preheader.us

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.preheader: ; preds = %.lr.ph.split.split
  %min.iters.check = icmp samesign ult i64 %wide.trip.count57, 6
  %6 = ptrtoaddr ptr %i.g to i64
  %7 = ptrtoaddr ptr %i.bo to i64
  %i.cc = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.cc, -32
  %or.cond127 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond127, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.preheader136, label %vector.ph

vector.ph:                                        ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.preheader
  %n.vec = and i64 %i.b, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load = load <2 x double>, ptr %i.cd, align 8, !tbaa !65
  %wide.load91 = load <2 x double>, ptr %i.ce, align 8, !tbaa !65
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <2 x double> %wide.load, ptr %i.cf, align 8, !tbaa !65
  store <2 x double> %wide.load91, ptr %i.cg, align 8, !tbaa !65
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store <2 x i32> zeroinitializer, ptr %i.ch, align 4, !tbaa !16
  store <2 x i32> zeroinitializer, ptr %i.ci, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count57, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.preheader136

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.preheader136: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.prol.loopexit, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.prol

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.prol: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.preheader136, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.prol ], [ %indvars.iv.ph, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.preheader136 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.prol ], [ 0, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.preheader136 ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.prol
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !65
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.prol
  store double %i.cl, ptr %i.cm, align 8, !tbaa !65
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.prol
  store i32 0, ptr %i.cn, align 4, !tbaa !16
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.prol.loopexit, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.prol, !llvm.loop !56

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.prol.loopexit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.prol, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.preheader136
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.preheader136 ], [ %indvars.iv.next.prol, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.prol ]
  %i.co = sub nsw i64 %indvars.iv.ph, %wide.trip.count57
  %i.cp = icmp ugt i64 %i.co, -4
  br i1 %i.cp, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit

.preheader.i.i.i.i.preheader.us:                  ; preds = %.preheader.i.i.i.i.preheader.us.preheader, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us ], [ 0, %.preheader.i.i.i.i.preheader.us.preheader ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv54 ; 4 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !65 ; 4 uses
  br i1 %i.cb, label %.preheader.i.i.i.i.us.epil.preheader, label %.preheader.i.i.i.i.us

.preheader.i.i.i.i.us:                            ; preds = %.preheader.i.i.i.i.preheader.us, %.preheader.i.i.i.i.us
  %.sroa.8.0.i.i23.us = phi double [ %.sroa.8.1.i.i24.us.1, %.preheader.i.i.i.i.us ], [ %i.cr, %.preheader.i.i.i.i.preheader.us ]
  %.sroa.6.0.i.i.us = phi i64 [ %.sroa.6.1.i.i.us.1, %.preheader.i.i.i.i.us ], [ 0, %.preheader.i.i.i.i.preheader.us ]
  %.promoted30.i.i.i.i.us = phi double [ %.promoted29.i.i.i.i.us.1, %.preheader.i.i.i.i.us ], [ %i.cr, %.preheader.i.i.i.i.preheader.us ] ; 2 uses
  %.02027.i.i.i.i.us = phi i64 [ %i.db, %.preheader.i.i.i.i.us ], [ 1, %.preheader.i.i.i.i.preheader.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.i.i.i.us ], [ 0, %.preheader.i.i.i.i.preheader.us ]
  %i.cs = mul nsw i64 %.02027.i.i.i.i.us, %i.bz
  %i.ct = getelementptr [8 x i8], ptr %i.cq, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !65 ; 3 uses
  %i.cv = fcmp olt double %i.cu, %.promoted30.i.i.i.i.us ; 3 uses
  %.sroa.8.1.i.i24.us = select i1 %i.cv, double %i.cu, double %.sroa.8.0.i.i23.us
  %.sroa.6.1.i.i.us = select i1 %i.cv, i64 %.02027.i.i.i.i.us, i64 %.sroa.6.0.i.i.us
  %.promoted29.i.i.i.i.us = select i1 %i.cv, double %i.cu, double %.promoted30.i.i.i.i.us ; 2 uses
  %i.cw = add nuw nsw i64 %.02027.i.i.i.i.us, 1   ; 2 uses
  %i.cx = mul nsw i64 %i.cw, %i.bz
  %i.cy = getelementptr [8 x i8], ptr %i.cq, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !65 ; 3 uses
  %i.da = fcmp olt double %i.cz, %.promoted29.i.i.i.i.us ; 3 uses
  %.sroa.8.1.i.i24.us.1 = select i1 %i.da, double %i.cz, double %.sroa.8.1.i.i24.us ; 3 uses
  %.sroa.6.1.i.i.us.1 = select i1 %i.da, i64 %i.cw, i64 %.sroa.6.1.i.i.us ; 3 uses
  %.promoted29.i.i.i.i.us.1 = select i1 %i.da, double %i.cz, double %.promoted29.i.i.i.i.us ; 2 uses
  %i.db = add nuw nsw i64 %.02027.i.i.i.i.us, 2   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us.unr-lcssa, label %.preheader.i.i.i.i.us, !llvm.loop !57

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us.unr-lcssa: ; preds = %.preheader.i.i.i.i.us
  br i1 %lcmp.mod139.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us, label %.preheader.i.i.i.i.us.epil.preheader

.preheader.i.i.i.i.us.epil.preheader:             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us.unr-lcssa, %.preheader.i.i.i.i.preheader.us
  %.sroa.8.0.i.i23.us.epil.init = phi double [ %i.cr, %.preheader.i.i.i.i.preheader.us ], [ %.sroa.8.1.i.i24.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us.unr-lcssa ]
  %.sroa.6.0.i.i.us.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader.us ], [ %.sroa.6.1.i.i.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us.unr-lcssa ]
  %.promoted30.i.i.i.i.us.epil.init = phi double [ %i.cr, %.preheader.i.i.i.i.preheader.us ], [ %.promoted29.i.i.i.i.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us.unr-lcssa ]
  %.02027.i.i.i.i.us.epil.init = phi i64 [ 1, %.preheader.i.i.i.i.preheader.us ], [ %i.db, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.dc = mul nsw i64 %.02027.i.i.i.i.us.epil.init, %i.bz
  %i.dd = getelementptr [8 x i8], ptr %i.cq, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !65 ; 2 uses
  %i.df = fcmp olt double %i.de, %.promoted30.i.i.i.i.us.epil.init ; 2 uses
  %.sroa.8.1.i.i24.us.epil = select i1 %i.df, double %i.de, double %.sroa.8.0.i.i23.us.epil.init
  %.sroa.6.1.i.i.us.epil = select i1 %i.df, i64 %.02027.i.i.i.i.us.epil.init, i64 %.sroa.6.0.i.i.us.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us.unr-lcssa, %.preheader.i.i.i.i.us.epil.preheader
  %.sroa.8.1.i.i24.us.lcssa = phi double [ %.sroa.8.1.i.i24.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us.unr-lcssa ], [ %.sroa.8.1.i.i24.us.epil, %.preheader.i.i.i.i.us.epil.preheader ]
  %.sroa.6.1.i.i.us.lcssa = phi i64 [ %.sroa.6.1.i.i.us.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us.unr-lcssa ], [ %.sroa.6.1.i.i.us.epil, %.preheader.i.i.i.i.us.epil.preheader ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv54
  store double %.sroa.8.1.i.i24.us.lcssa, ptr %i.dg, align 8, !tbaa !65
  %i.dh = trunc i64 %.sroa.6.1.i.i.us.lcssa to i32
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv54
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !16
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge, label %.preheader.i.i.i.i.preheader.us, !llvm.loop !49

._crit_edge:                                      ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.prol.loopexit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit34.us, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us37, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.prol.loopexit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.loopexit.us.us, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us, %middle.block, %middle.block99, %middle.block113, %middle.block123, %bb.a
  ret void

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.prol.loopexit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit ], [ %indvars.iv.unr, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.prol.loopexit ] ; 7 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !65
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  store double %i.dk, ptr %i.dl, align 8, !tbaa !65
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 0, ptr %i.dm, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next
  %i.do = load double, ptr %i.dn, align 8, !tbaa !65
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  store double %i.do, ptr %i.dp, align 8, !tbaa !65
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  store i32 0, ptr %i.dq, align 4, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.1
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !65
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.1
  store double %i.ds, ptr %i.dt, align 8, !tbaa !65
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  store i32 0, ptr %i.du, align 4, !tbaa !16
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.2
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !65
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.2
  store double %i.dw, ptr %i.dx, align 8, !tbaa !65
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  store i32 0, ptr %i.dy, align 4, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count57
  br i1 %exitcond.not.3, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit, !llvm.loop !58
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.i) #7
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #8 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
end_hunk_0
