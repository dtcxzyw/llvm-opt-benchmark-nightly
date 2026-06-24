inline.NumInlined: 1564
inline.NumDeleted: 717
begin_hunk_0_@_ZN3re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEii:bb.a
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !9
  %i.bm = trunc i16 %i.bl to i1
  %i.bn = icmp ult i8 %i.q, 123
  %or.cond = and i1 %i.bn, %i.bm
  %i.bo = icmp ugt i8 %i.t, 96
  %or.cond3 = and i1 %i.bo, %or.cond
  br i1 %or.cond3, label %bb.o, label %"_ZZN3re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42"

bb.o:                                             ; preds = %"_ZZN3re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit"
  %i.bp = call i32 @llvm.umax.i32(i32 %i.r, i32 97) ; 3 uses
  %i.bq = call i32 @llvm.umin.i32(i32 %i.u, i32 122) ; 4 uses
  %.not35 = icmp samesign ugt i32 %i.bp, %i.bq
  br i1 %.not35, label %"_ZZN3re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = add nsw i32 %i.bp, -32                  ; 2 uses
  %i.bs = add nsw i32 %i.bq, -32                  ; 2 uses
  %i.bt = add nsw i32 %i.bp, -33                  ; 2 uses
  %i.bu = load i64, ptr %i.g, align 8, !tbaa !156 ; 2 uses
  %i.bv = and i32 %i.bt, 63
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 1, %i.bw                ; 2 uses
  %i.by = and i64 %i.bu, %i.bx
  %.not.i40 = icmp eq i64 %i.by, 0
  br i1 %.not.i40, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = or i64 %i.bu, %i.bx
  store i64 %i.bz, ptr %i.g, align 8, !tbaa !156
  %i.ca = call noundef i32 @_ZNK3re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.br)
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = zext nneg i32 %i.bt to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ce
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !156 ; 2 uses
  %i.ch = add nsw i32 %i.bq, -96
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = shl nuw nsw i64 1, %i.ci                ; 2 uses
  %i.ck = and i64 %i.cg, %i.cj
  %.not24.i38 = icmp eq i64 %i.ck, 0
  br i1 %.not24.i38, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cl = or i64 %i.cg, %i.cj
  store i64 %i.cl, ptr %i.b, align 8, !tbaa !156
  %i.cm = add nsw i32 %i.bq, -31
  %i.cn = call noundef i32 @_ZNK3re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.cm)
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = zext nneg i32 %i.bs to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cr
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ct = trunc nsw i64 %indvars.iv to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.3 = phi i32 [ %.265, %bb.t ], [ %i.cz, %bb.v ] ; 2 uses
  %.021.i39 = phi i32 [ %i.br, %bb.t ], [ %i.db, %bb.v ] ; 2 uses
  %i.cu = icmp slt i32 %.021.i39, 256
  br i1 %i.cu, label %bb.v, label %"_ZZN3re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42"

bb.v:                                             ; preds = %bb.u
  %i.cv = call noundef i32 @_ZNK3re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %.021.i39) ; 3 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = call i32 @llvm.smin.i32(i32 %i.cy, i32 %.3) ; 2 uses
  store i32 %i.ct, ptr %i.cx, align 4, !tbaa !3
  %i.da = icmp eq i32 %i.cv, %i.bs
  %i.db = add nsw i32 %i.cv, 1
  br i1 %i.da, label %"_ZZN3re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42", label %bb.u

"_ZZN3re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42": ; preds = %bb.v, %bb.u, %bb.o, %"_ZZN3re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit"
  %.063 = phi i32 [ %.265, %bb.o ], [ %.265, %"_ZZN3re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit" ], [ %.3, %bb.u ], [ %i.cz, %bb.v ] ; 2 uses
  %.not36 = icmp eq i32 %.063, %3
  br i1 %.not36, label %bb.x, label %bb.w

bb.w:                                             ; preds = %"_ZZN3re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42"
  %i.dc = trunc nsw i64 %indvars.iv to i32
  %i.dd = sub nsw i32 %.063, %i.dc
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.dd, i32 32767)
  %i.de = load i16, ptr %i.bk, align 2, !tbaa !9
  %.tr = trunc i32 %.sroa.speculated to i16
  %i.df = shl i16 %.tr, 1
  %i.dg = or i16 %i.de, %i.df
  store i16 %i.dg, ptr %i.bk, align 2, !tbaa !9
  br label %bb.x

bb.x:                                             ; preds = %"_ZZN3re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42", %bb.w, %bb.f
  %.2 = phi i1 [ false, %bb.f ], [ true, %bb.w ], [ true, %"_ZZN3re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42" ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.f
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !271
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3re211SparseArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !229  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !249
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.f) #23
  br label %_ZN3re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit

_ZN3re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZN3re28PODArrayIiED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !107
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.l) #23
  br label %_ZN3re28PODArrayIiED2Ev.exit

_ZN3re28PODArrayIiED2Ev.exit:                     ; preds = %_ZN3re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !253  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !211 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !214
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #23
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !254

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !255
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re24Prog20ConfigurePrefixAccelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(432) initializes((24, 25), (32, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 28 uses
  %i.b = alloca [10 x i16], align 16              ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = zext i1 %2 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.c, ptr %i.d, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !110  ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !34
  br i1 %2, label %._crit_edge.i.i.i, label %bb.s

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.f, i64 9) ; 13 uses
  store i64 %i.h, ptr %i.g, align 8, !tbaa !34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !108, !alias.scope !272
  %i.j = load ptr, ptr %1, align 8, !tbaa !115, !noalias !272 ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  store i8 %i.k, ptr %i.i, align 8, !tbaa !9
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 1 %i.j, i64 %i.h, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.h, ptr %i.l, align 8, !tbaa !110, !alias.scope !272
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i8 0, ptr %i.m, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %.not80.i = icmp eq i64 %i.f, 0                 ; 3 uses
  br i1 %.not80.i, label %vector.body, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %4 = load ptr, ptr %3, align 8, !tbaa !115      ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.f, 1
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, 14
  br label %5

5:                                                ; preds = %5, %.lr.ph.i.preheader.new
  %.05469.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %18, %5 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %5 ]
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 %.05469.i
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = or disjoint i64 %.05469.i, 1               ; 2 uses
  %9 = trunc i64 %8 to i32
  %10 = shl nuw i32 1, %9
  %11 = zext i8 %7 to i64
  %12 = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %11 ; 2 uses
  %13 = load i16, ptr %12, align 2, !tbaa !243
  %14 = trunc i32 %10 to i16
  %15 = or i16 %13, %14
  store i16 %15, ptr %12, align 2, !tbaa !243
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 %8
  %17 = load i8, ptr %16, align 1, !tbaa !9
  %18 = add nuw i64 %.05469.i, 2                  ; 3 uses
  %19 = trunc i64 %18 to i32
  %20 = shl nuw i32 1, %19
  %21 = zext i8 %17 to i64
  %22 = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %21 ; 2 uses
  %23 = load i16, ptr %22, align 2, !tbaa !243
  %24 = trunc i32 %20 to i16
  %25 = or i16 %23, %24
  store i16 %25, ptr %22, align 2, !tbaa !243
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %vector.body.preheader.loopexit.unr-lcssa, label %5, !llvm.loop !275

vector.body.preheader.loopexit.unr-lcssa:         ; preds = %5
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vector.body, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %vector.body.preheader.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.05469.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %18, %vector.body.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod57 = trunc i64 %i.h to i1
  call void @llvm.assume(i1 %lcmp.mod57)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 %.05469.i.epil.init
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = trunc i64 %.05469.i.epil.init to i32
  %i.r = add i32 %i.q, 1
  %i.s = shl nuw i32 1, %i.r
  %i.t = zext i8 %i.p to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !243
  %i.w = trunc i32 %i.s to i16
  %i.x = or i16 %i.v, %i.w
  store i16 %i.x, ptr %i.u, align 2, !tbaa !243
  br label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.epil.preheader, %vector.body.preheader.loopexit.unr-lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %wide.load = load <16 x i16>, ptr %i.a, align 16, !tbaa !243
  %wide.load41.a = load <16 x i16>, ptr %i.y, align 16, !tbaa !243
  %wide.load42.a = load <16 x i16>, ptr %i.z, align 16, !tbaa !243
  %wide.load43 = load <16 x i16>, ptr %i.aa, align 16, !tbaa !243
  %i.ab = or <16 x i16> %wide.load, splat (i16 1)
  %i.ac = or <16 x i16> %wide.load41.a, splat (i16 1)
  %i.ad = or <16 x i16> %wide.load42.a, splat (i16 1)
  %i.ae = or <16 x i16> %wide.load43, splat (i16 1)
  store <16 x i16> %i.ab, ptr %i.a, align 16, !tbaa !243
  store <16 x i16> %i.ac, ptr %i.y, align 16, !tbaa !243
  store <16 x i16> %i.ad, ptr %i.z, align 16, !tbaa !243
  store <16 x i16> %i.ae, ptr %i.aa, align 16, !tbaa !243
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %wide.load.1 = load <16 x i16>, ptr %i.af, align 16, !tbaa !243
  %wide.load41.1.a = load <16 x i16>, ptr %i.ag, align 16, !tbaa !243
  %wide.load42.1.a = load <16 x i16>, ptr %i.ah, align 16, !tbaa !243
  %wide.load43.1 = load <16 x i16>, ptr %i.ai, align 16, !tbaa !243
  %i.aj = or <16 x i16> %wide.load.1, splat (i16 1)
  %i.ak = or <16 x i16> %wide.load41.1.a, splat (i16 1)
  %i.al = or <16 x i16> %wide.load42.1.a, splat (i16 1)
  %i.am = or <16 x i16> %wide.load43.1, splat (i16 1)
  store <16 x i16> %i.aj, ptr %i.af, align 16, !tbaa !243
  store <16 x i16> %i.ak, ptr %i.ag, align 16, !tbaa !243
  store <16 x i16> %i.al, ptr %i.ah, align 16, !tbaa !243
  store <16 x i16> %i.am, ptr %i.ai, align 16, !tbaa !243
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %wide.load.2 = load <16 x i16>, ptr %i.an, align 16, !tbaa !243
  %wide.load41.2.a = load <16 x i16>, ptr %i.ao, align 16, !tbaa !243
  %wide.load42.2.a = load <16 x i16>, ptr %i.ap, align 16, !tbaa !243
  %wide.load43.2 = load <16 x i16>, ptr %i.aq, align 16, !tbaa !243
  %i.ar = or <16 x i16> %wide.load.2, splat (i16 1)
  %i.as = or <16 x i16> %wide.load41.2.a, splat (i16 1)
  %i.at = or <16 x i16> %wide.load42.2.a, splat (i16 1)
  %i.au = or <16 x i16> %wide.load43.2, splat (i16 1)
  store <16 x i16> %i.ar, ptr %i.an, align 16, !tbaa !243
  store <16 x i16> %i.as, ptr %i.ao, align 16, !tbaa !243
  store <16 x i16> %i.at, ptr %i.ap, align 16, !tbaa !243
  store <16 x i16> %i.au, ptr %i.aq, align 16, !tbaa !243
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 416 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 448 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 480 ; 2 uses
  %wide.load.3 = load <16 x i16>, ptr %i.av, align 16, !tbaa !243
  %wide.load41.3.a = load <16 x i16>, ptr %i.aw, align 16, !tbaa !243
  %wide.load42.3.a = load <16 x i16>, ptr %i.ax, align 16, !tbaa !243
  %wide.load43.3 = load <16 x i16>, ptr %i.ay, align 16, !tbaa !243
  %i.az = or <16 x i16> %wide.load.3, splat (i16 1)
  %i.ba = or <16 x i16> %wide.load41.3.a, splat (i16 1)
  %i.bb = or <16 x i16> %wide.load42.3.a, splat (i16 1)
  %i.bc = or <16 x i16> %wide.load43.3, splat (i16 1)
  store <16 x i16> %i.az, ptr %i.av, align 16, !tbaa !243
  store <16 x i16> %i.ba, ptr %i.aw, align 16, !tbaa !243
  store <16 x i16> %i.bb, ptr %i.ax, align 16, !tbaa !243
  store <16 x i16> %i.bc, ptr %i.ay, align 16, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  store i16 1, ptr %i.b, align 16, !tbaa !243
  %.pre92.pre.i = load ptr, ptr %3, align 8, !tbaa !115 ; 9 uses
  br i1 %.not80.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %vector.body
  %.not106.i = icmp eq i64 %i.f, 1
  br i1 %.not106.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.i, label %.lr.ph72.split.i

.lr.ph72.split.i:                                 ; preds = %.lr.ph72.i
  %i.bd = add nsw i64 %i.h, -1                    ; 3 uses
  %xtraiter58 = and i64 %i.bd, 1
  %i.be = icmp eq i64 %i.f, 2
  br i1 %i.be, label %.epil.preheader, label %.lr.ph72.split.i.new

.lr.ph72.split.i.new:                             ; preds = %.lr.ph72.split.i
  %unroll_iter63 = and i64 %i.bd, -2
  br label %bb.l

._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa: ; preds = %bb.l
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %._crit_edge.loopexit.peel.begin.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa, %.lr.ph72.split.i
  %.epil.init = phi i16 [ 1, %.lr.ph72.split.i ], [ %i.ew, %._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa ]
  %.05671.i.epil.init = phi i64 [ 0, %.lr.ph72.split.i ], [ %i.ex, %._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod62 = trunc i64 %i.bd to i1
  call void @llvm.assume(i1 %lcmp.mod62)
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre92.pre.i, i64 %.05671.i.epil.init
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !243
  %i.bk = shl i16 %.epil.init, 1
  %i.bl = or disjoint i16 %i.bk, 1
  %i.bm = and i16 %i.bj, %i.bl                    ; 2 uses
  %i.bn = add nuw i64 %.05671.i.epil.init, 1      ; 2 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bn
  store i16 %i.bm, ptr %i.bo, align 2, !tbaa !243
  br label %._crit_edge.loopexit.peel.begin.loopexit.i

._crit_edge.loopexit.peel.begin.loopexit.i:       ; preds = %._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa, %.epil.preheader
  %.lcssa56 = phi i16 [ %i.ew, %._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa ], [ %i.bm, %.epil.preheader ]
  %.lcssa55 = phi i64 [ %i.ex, %._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa ], [ %i.bn, %.epil.preheader ]
  %i.bp = shl i16 %.lcssa56, 1
  %i.bq = or disjoint i16 %i.bp, 1
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.i

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.i: ; preds = %._crit_edge.loopexit.peel.begin.loopexit.i, %.lr.ph72.i
  %i.br = phi i16 [ 3, %.lr.ph72.i ], [ %i.bq, %._crit_edge.loopexit.peel.begin.loopexit.i ]
  %i.bs = phi i64 [ 0, %.lr.ph72.i ], [ %.lcssa55, %._crit_edge.loopexit.peel.begin.loopexit.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre92.pre.i, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !243
  %i.by = and i16 %i.bx, %i.br
  %i.bz = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.h
  %spec.store.select.peel.i = select i1 %i.ca, i64 9, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %spec.store.select.peel.i
  store i16 %i.by, ptr %i.cb, align 2, !tbaa !243
  %26 = getelementptr inbounds nuw i8, ptr %.pre92.pre.i, i64 %i.h ; 2 uses
  %i.cc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.cd = shl nuw nsw i64 %i.cc, 1
  %i.ce = xor i64 %i.cd, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %.pre92.pre.i, ptr nonnull %26, i64 noundef %i.ce)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.i
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr nonnull %.pre92.pre.i, ptr nonnull %26)
          to label %.noexc9 unwind label %bb.r

.noexc9:                                          ; preds = %.noexc
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !115 ; 6 uses
  %.pre93.i = load i64, ptr %i.l, align 8, !tbaa !110 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.pre93.i ; 5 uses
  %switch = icmp ult i64 %.pre93.i, 2
  br i1 %switch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc9
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  br label %bb.d

.preheader.i.i.i.i:                               ; preds = %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.cf
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, label %bb.d, !llvm.loop !276

bb.d:                                             ; preds = %.lr.ph, %.preheader.i.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.preheader.i.i.i.i ] ; 3 uses
  %i.cj = phi ptr [ %i.cg, %.lr.ph ], [ %i.ch, %.preheader.i.i.i.i ] ; 3 uses
  %.sroa.09.0.i.i.i.i40 = phi ptr [ %.pre.i, %.lr.ph ], [ %i.cj, %.preheader.i.i.i.i ] ; 5 uses
  %i.ck = load i8, ptr %.sroa.09.0.i.i.i.i40, align 1, !tbaa !9 ; 3 uses
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !9
  %i.cm = icmp eq i8 %i.ck, %i.cl
  br i1 %i.cm, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !276

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i.i: ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i40, i64 2 ; 3 uses
  %i.co = icmp eq ptr %i.cn, %i.cf
  br i1 %i.co, label %._crit_edge.i.i.i8, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i.i
  %i.cp = xor i64 %.pre93.i, 2
  %i.cq = sub i64 %i.cp, %indvar
  %i.cr = add i64 %.pre93.i, -3
  %i.cs = sub i64 %i.cr, %indvar
  %xtraiter66 = and i64 %i.cq, 3                  ; 2 uses
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod67.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %bb.f
  %i.ct = phi i8 [ %i.cv, %bb.f ], [ %i.ck, %.lr.ph.i.i.i.preheader ]
  %i.cu = phi ptr [ %i.cy, %bb.f ], [ %i.cn, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.018.i.i.i.prol = phi ptr [ %.sroa.0.1.i.i.i.prol, %bb.f ], [ %.sroa.09.0.i.i.i.i40, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.f ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9   ; 4 uses
  %i.cw = icmp eq i8 %i.ct, %i.cv
  br i1 %i.cw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.prol
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.cv, ptr %i.cx, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i.prol
  %.sroa.0.1.i.i.i.prol = phi ptr [ %.sroa.0.018.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.cx, %bb.e ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter66
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !277

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %bb.f, %.lr.ph.i.i.i.preheader
  %.sroa.0.1.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %.sroa.0.1.i.i.i.prol, %bb.f ]
  %.unr68 = phi i8 [ %i.ck, %.lr.ph.i.i.i.preheader ], [ %i.cv, %bb.f ]
  %.unr69 = phi ptr [ %i.cn, %.lr.ph.i.i.i.preheader ], [ %i.cy, %bb.f ]
  %.sroa.0.018.i.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i.i40, %.lr.ph.i.i.i.preheader ], [ %.sroa.0.1.i.i.i.prol, %bb.f ]
  %i.cz = icmp ult i64 %i.cs, 3
  br i1 %i.cz, label %._crit_edge.i.i.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.k
  %i.da = phi i8 [ %i.do, %bb.k ], [ %.unr68, %.lr.ph.i.i.i.prol.loopexit ]
  %i.db = phi ptr [ %i.dr, %bb.k ], [ %.unr69, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.018.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.3, %bb.k ], [ %.sroa.0.018.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !9   ; 3 uses
  %i.dd = icmp eq i8 %i.da, %i.dc
  br i1 %i.dd, label %.lr.ph.i.i.i.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 1 ; 2 uses
  store i8 %i.dc, ptr %i.de, align 1, !tbaa !9
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.018.i.i.i, %.lr.ph.i.i.i ], [ %i.de, %bb.g ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !9   ; 3 uses
  %i.dh = icmp eq i8 %i.dc, %i.dg
  br i1 %i.dh, label %.lr.ph.i.i.i.2, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.1
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  store i8 %i.dg, ptr %i.di, align 1, !tbaa !9
  br label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.h, %.lr.ph.i.i.i.1
  %.sroa.0.1.i.i.i.1 = phi ptr [ %.sroa.0.1.i.i.i, %.lr.ph.i.i.i.1 ], [ %i.di, %bb.h ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !9   ; 3 uses
  %i.dl = icmp eq i8 %i.dg, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i.i.3, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.2
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.1, i64 1 ; 2 uses
  store i8 %i.dk, ptr %i.dm, align 1, !tbaa !9
  br label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.i, %.lr.ph.i.i.i.2
  %.sroa.0.1.i.i.i.2 = phi ptr [ %.sroa.0.1.i.i.i.1, %.lr.ph.i.i.i.2 ], [ %i.dm, %bb.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 3
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !9   ; 3 uses
  %i.dp = icmp eq i8 %i.dk, %i.do
  br i1 %i.dp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.3
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.2, i64 1 ; 2 uses
  store i8 %i.do, ptr %i.dq, align 1, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i.3
  %.sroa.0.1.i.i.i.3 = phi ptr [ %.sroa.0.1.i.i.i.2, %.lr.ph.i.i.i.3 ], [ %i.dq, %bb.j ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.cf
  br i1 %i.ds, label %._crit_edge.i.i.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !278

._crit_edge.i.i.loopexit.i:                       ; preds = %bb.k, %.lr.ph.i.i.i.prol.loopexit
  %.sroa.0.1.i.i.i.lcssa = phi ptr [ %.sroa.0.1.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.sroa.0.1.i.i.i.3, %bb.k ]
  %.pre94.pre.i = load ptr, ptr %3, align 8, !tbaa !115
  br label %._crit_edge.i.i.i8

._crit_edge.i.i.i8:                               ; preds = %._crit_edge.i.i.loopexit.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i.i
  %.pre94.i = phi ptr [ %.pre.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i.i ], [ %.pre94.pre.i, %._crit_edge.i.i.loopexit.i ]
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.sroa.09.0.i.i.i.i40, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i.i ], [ %.sroa.0.1.i.i.i.lcssa, %._crit_edge.i.i.loopexit.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i: ; preds = %.preheader.i.i.i.i, %.noexc9, %._crit_edge.i.i.i8, %vector.body
  %i.du = phi ptr [ %.pre94.i, %._crit_edge.i.i.i8 ], [ %.pre.i, %.noexc9 ], [ %.pre92.pre.i, %vector.body ], [ %.pre.i, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.05.0.i.i.i = phi ptr [ %i.dt, %._crit_edge.i.i.i8 ], [ %i.cf, %.noexc9 ], [ %.pre92.pre.i, %vector.body ], [ %i.cf, %.preheader.i.i.i.i ]
  %i.dv = ptrtoint ptr %.sroa.05.0.i.i.i to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 2 uses
  store i64 %i.dx, ptr %i.l, align 8, !tbaa !110
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dx
  store i8 0, ptr %i.dy, align 1, !tbaa !9
  %i.dz = load ptr, ptr %3, align 8, !tbaa !115   ; 4 uses
  %i.ea = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #26
          to label %.noexc10 unwind label %bb.r   ; 68 uses

.noexc10:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.ea, i8 0, i64 2048, i1 false)
  br i1 %.not80.i, label %vector.body45.preheader, label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %.noexc10
  %i.eb = load i64, ptr %i.l, align 8, !tbaa !110 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eb
  %i.ed = icmp samesign eq i64 %i.eb, 0
  br i1 %i.ed, label %vector.body45.preheader, label %.lr.ph75.i

bb.l:                                             ; preds = %bb.l, %.lr.ph72.split.i.new
  %i.ee = phi i16 [ 1, %.lr.ph72.split.i.new ], [ %i.ew, %bb.l ]
  %.05671.i = phi i64 [ 0, %.lr.ph72.split.i.new ], [ %i.ex, %bb.l ] ; 3 uses
  %niter64 = phi i64 [ 0, %.lr.ph72.split.i.new ], [ %niter64.next.1, %bb.l ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.pre92.pre.i, i64 %.05671.i
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !243
  %i.ek = shl i16 %i.ee, 1
  %i.el = or disjoint i16 %i.ek, 1
  %i.em = and i16 %i.ej, %i.el                    ; 2 uses
  %i.en = or disjoint i64 %.05671.i, 1            ; 2 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.en
  store i16 %i.em, ptr %i.eo, align 2, !tbaa !243
  %i.ep = getelementptr inbounds nuw i8, ptr %.pre92.pre.i, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !9
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !243
  %i.eu = shl i16 %i.em, 1
  %i.ev = or disjoint i16 %i.eu, 1
  %i.ew = and i16 %i.et, %i.ev                    ; 4 uses
  %i.ex = add nuw i64 %.05671.i, 2                ; 4 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ex
  store i16 %i.ew, ptr %i.ey, align 4, !tbaa !243
  %niter64.next.1 = add nuw i64 %niter64, 2       ; 2 uses
  %niter64.ncmp.1 = icmp eq i64 %niter64.next.1, %unroll_iter63
  br i1 %niter64.ncmp.1, label %._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa, label %bb.l, !llvm.loop !279

.lr.ph75.i:                                       ; preds = %.lr.ph78.i, %._crit_edge76.i
  %.05777.i = phi i64 [ %i.fe, %._crit_edge76.i ], [ 0, %.lr.ph78.i ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %.05777.i
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !243
  %i.fb = shl i16 %i.fa, 1
  %i.fc = or disjoint i16 %i.fb, 1
  %i.fd = mul i64 %.05777.i, 6
  br label %bb.m

._crit_edge76.i:                                  ; preds = %bb.q
  %i.fe = add nuw i64 %.05777.i, 1                ; 2 uses
  %exitcond87.not.i = icmp eq i64 %i.fe, %i.h
  br i1 %exitcond87.not.i, label %vector.body45.preheader, label %.lr.ph75.i, !llvm.loop !281

vector.body45.preheader:                          ; preds = %._crit_edge76.i, %.noexc10, %.lr.ph78.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ea, i64 64 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ea, i64 96 ; 2 uses
  %wide.load47.a = load <4 x i64>, ptr %i.ea, align 8, !tbaa !156
  %wide.load48.a = load <4 x i64>, ptr %i.ff, align 8, !tbaa !156
  %wide.load49.a = load <4 x i64>, ptr %i.fg, align 8, !tbaa !156
  %wide.load50 = load <4 x i64>, ptr %i.fh, align 8, !tbaa !156
  %i.fi = or <4 x i64> %wide.load47.a, splat (i64 972777519512027136)
  %i.fj = or <4 x i64> %wide.load48.a, splat (i64 972777519512027136)
  %i.fk = or <4 x i64> %wide.load49.a, splat (i64 972777519512027136)
  %i.fl = or <4 x i64> %wide.load50, splat (i64 972777519512027136)
  store <4 x i64> %i.fi, ptr %i.ea, align 8, !tbaa !156
  store <4 x i64> %i.fj, ptr %i.ff, align 8, !tbaa !156
  store <4 x i64> %i.fk, ptr %i.fg, align 8, !tbaa !156
  store <4 x i64> %i.fl, ptr %i.fh, align 8, !tbaa !156
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ea, i64 128 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ea, i64 160 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ea, i64 192 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 224 ; 2 uses
  %wide.load47.1.a = load <4 x i64>, ptr %i.fm, align 8, !tbaa !156
  %wide.load48.1.a = load <4 x i64>, ptr %i.fn, align 8, !tbaa !156
  %wide.load49.1.a = load <4 x i64>, ptr %i.fo, align 8, !tbaa !156
  %wide.load50.1 = load <4 x i64>, ptr %i.fp, align 8, !tbaa !156
  %i.fq = or <4 x i64> %wide.load47.1.a, splat (i64 972777519512027136)
  %i.fr = or <4 x i64> %wide.load48.1.a, splat (i64 972777519512027136)
  %i.fs = or <4 x i64> %wide.load49.1.a, splat (i64 972777519512027136)
  %i.ft = or <4 x i64> %wide.load50.1, splat (i64 972777519512027136)
  store <4 x i64> %i.fq, ptr %i.fm, align 8, !tbaa !156
  store <4 x i64> %i.fr, ptr %i.fn, align 8, !tbaa !156
  store <4 x i64> %i.fs, ptr %i.fo, align 8, !tbaa !156
  store <4 x i64> %i.ft, ptr %i.fp, align 8, !tbaa !156
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ea, i64 256 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ea, i64 288 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ea, i64 320 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ea, i64 352 ; 2 uses
  %wide.load47.2.a = load <4 x i64>, ptr %i.fu, align 8, !tbaa !156
  %wide.load48.2.a = load <4 x i64>, ptr %i.fv, align 8, !tbaa !156
  %wide.load49.2.a = load <4 x i64>, ptr %i.fw, align 8, !tbaa !156
  %wide.load50.2 = load <4 x i64>, ptr %i.fx, align 8, !tbaa !156
  %i.fy = or <4 x i64> %wide.load47.2.a, splat (i64 972777519512027136)
  %i.fz = or <4 x i64> %wide.load48.2.a, splat (i64 972777519512027136)
  %i.ga = or <4 x i64> %wide.load49.2.a, splat (i64 972777519512027136)
  %i.gb = or <4 x i64> %wide.load50.2, splat (i64 972777519512027136)
  store <4 x i64> %i.fy, ptr %i.fu, align 8, !tbaa !156
  store <4 x i64> %i.fz, ptr %i.fv, align 8, !tbaa !156
  store <4 x i64> %i.ga, ptr %i.fw, align 8, !tbaa !156
  store <4 x i64> %i.gb, ptr %i.fx, align 8, !tbaa !156
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ea, i64 384 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ea, i64 416 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ea, i64 448 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ea, i64 480 ; 2 uses
  %wide.load47.3.a = load <4 x i64>, ptr %i.gc, align 8, !tbaa !156
  %wide.load48.3.a = load <4 x i64>, ptr %i.gd, align 8, !tbaa !156
  %wide.load49.3.a = load <4 x i64>, ptr %i.ge, align 8, !tbaa !156
  %wide.load50.3 = load <4 x i64>, ptr %i.gf, align 8, !tbaa !156
  %i.gg = or <4 x i64> %wide.load47.3.a, splat (i64 972777519512027136)
  %i.gh = or <4 x i64> %wide.load48.3.a, splat (i64 972777519512027136)
  %i.gi = or <4 x i64> %wide.load49.3.a, splat (i64 972777519512027136)
  %i.gj = or <4 x i64> %wide.load50.3, splat (i64 972777519512027136)
  store <4 x i64> %i.gg, ptr %i.gc, align 8, !tbaa !156
  store <4 x i64> %i.gh, ptr %i.gd, align 8, !tbaa !156
  store <4 x i64> %i.gi, ptr %i.ge, align 8, !tbaa !156
  store <4 x i64> %i.gj, ptr %i.gf, align 8, !tbaa !156
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ea, i64 512 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ea, i64 544 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ea, i64 576 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ea, i64 608 ; 2 uses
  %wide.load47.4.a = load <4 x i64>, ptr %i.gk, align 8, !tbaa !156
  %wide.load48.4.a = load <4 x i64>, ptr %i.gl, align 8, !tbaa !156
  %wide.load49.4.a = load <4 x i64>, ptr %i.gm, align 8, !tbaa !156
  %wide.load50.4 = load <4 x i64>, ptr %i.gn, align 8, !tbaa !156
  %i.go = or <4 x i64> %wide.load47.4.a, splat (i64 972777519512027136)
  %i.gp = or <4 x i64> %wide.load48.4.a, splat (i64 972777519512027136)
  %i.gq = or <4 x i64> %wide.load49.4.a, splat (i64 972777519512027136)
  %i.gr = or <4 x i64> %wide.load50.4, splat (i64 972777519512027136)
  store <4 x i64> %i.go, ptr %i.gk, align 8, !tbaa !156
  store <4 x i64> %i.gp, ptr %i.gl, align 8, !tbaa !156
  store <4 x i64> %i.gq, ptr %i.gm, align 8, !tbaa !156
  store <4 x i64> %i.gr, ptr %i.gn, align 8, !tbaa !156
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ea, i64 640 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ea, i64 672 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ea, i64 704 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ea, i64 736 ; 2 uses
  %wide.load47.5.a = load <4 x i64>, ptr %i.gs, align 8, !tbaa !156
  %wide.load48.5.a = load <4 x i64>, ptr %i.gt, align 8, !tbaa !156
  %wide.load49.5.a = load <4 x i64>, ptr %i.gu, align 8, !tbaa !156
  %wide.load50.5 = load <4 x i64>, ptr %i.gv, align 8, !tbaa !156
  %i.gw = or <4 x i64> %wide.load47.5.a, splat (i64 972777519512027136)
  %i.gx = or <4 x i64> %wide.load48.5.a, splat (i64 972777519512027136)
  %i.gy = or <4 x i64> %wide.load49.5.a, splat (i64 972777519512027136)
  %i.gz = or <4 x i64> %wide.load50.5, splat (i64 972777519512027136)
  store <4 x i64> %i.gw, ptr %i.gs, align 8, !tbaa !156
  store <4 x i64> %i.gx, ptr %i.gt, align 8, !tbaa !156
  store <4 x i64> %i.gy, ptr %i.gu, align 8, !tbaa !156
  store <4 x i64> %i.gz, ptr %i.gv, align 8, !tbaa !156
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ea, i64 768 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ea, i64 800 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ea, i64 832 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ea, i64 864 ; 2 uses
  %wide.load47.6.a = load <4 x i64>, ptr %i.ha, align 8, !tbaa !156
  %wide.load48.6.a = load <4 x i64>, ptr %i.hb, align 8, !tbaa !156
  %wide.load49.6.a = load <4 x i64>, ptr %i.hc, align 8, !tbaa !156
  %wide.load50.6 = load <4 x i64>, ptr %i.hd, align 8, !tbaa !156
  %i.he = or <4 x i64> %wide.load47.6.a, splat (i64 972777519512027136)
  %i.hf = or <4 x i64> %wide.load48.6.a, splat (i64 972777519512027136)
  %i.hg = or <4 x i64> %wide.load49.6.a, splat (i64 972777519512027136)
  %i.hh = or <4 x i64> %wide.load50.6, splat (i64 972777519512027136)
  store <4 x i64> %i.he, ptr %i.ha, align 8, !tbaa !156
  store <4 x i64> %i.hf, ptr %i.hb, align 8, !tbaa !156
  store <4 x i64> %i.hg, ptr %i.hc, align 8, !tbaa !156
  store <4 x i64> %i.hh, ptr %i.hd, align 8, !tbaa !156
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ea, i64 896 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ea, i64 928 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ea, i64 960 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ea, i64 992 ; 2 uses
  %wide.load47.7.a = load <4 x i64>, ptr %i.hi, align 8, !tbaa !156
  %wide.load48.7.a = load <4 x i64>, ptr %i.hj, align 8, !tbaa !156
  %wide.load49.7.a = load <4 x i64>, ptr %i.hk, align 8, !tbaa !156
  %wide.load50.7 = load <4 x i64>, ptr %i.hl, align 8, !tbaa !156
  %i.hm = or <4 x i64> %wide.load47.7.a, splat (i64 972777519512027136)
  %i.hn = or <4 x i64> %wide.load48.7.a, splat (i64 972777519512027136)
  %i.ho = or <4 x i64> %wide.load49.7.a, splat (i64 972777519512027136)
  %i.hp = or <4 x i64> %wide.load50.7, splat (i64 972777519512027136)
  store <4 x i64> %i.hm, ptr %i.hi, align 8, !tbaa !156
  store <4 x i64> %i.hn, ptr %i.hj, align 8, !tbaa !156
  store <4 x i64> %i.ho, ptr %i.hk, align 8, !tbaa !156
  store <4 x i64> %i.hp, ptr %i.hl, align 8, !tbaa !156
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ea, i64 1024 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ea, i64 1056 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ea, i64 1088 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ea, i64 1120 ; 2 uses
  %wide.load47.8.a = load <4 x i64>, ptr %i.hq, align 8, !tbaa !156
  %wide.load48.8.a = load <4 x i64>, ptr %i.hr, align 8, !tbaa !156
  %wide.load49.8.a = load <4 x i64>, ptr %i.hs, align 8, !tbaa !156
  %wide.load50.8 = load <4 x i64>, ptr %i.ht, align 8, !tbaa !156
  %i.hu = or <4 x i64> %wide.load47.8.a, splat (i64 972777519512027136)
  %i.hv = or <4 x i64> %wide.load48.8.a, splat (i64 972777519512027136)
  %i.hw = or <4 x i64> %wide.load49.8.a, splat (i64 972777519512027136)
  %i.hx = or <4 x i64> %wide.load50.8, splat (i64 972777519512027136)
  store <4 x i64> %i.hu, ptr %i.hq, align 8, !tbaa !156
  store <4 x i64> %i.hv, ptr %i.hr, align 8, !tbaa !156
  store <4 x i64> %i.hw, ptr %i.hs, align 8, !tbaa !156
  store <4 x i64> %i.hx, ptr %i.ht, align 8, !tbaa !156
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ea, i64 1152 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ea, i64 1184 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ea, i64 1216 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ea, i64 1248 ; 2 uses
  %wide.load47.9.a = load <4 x i64>, ptr %i.hy, align 8, !tbaa !156
  %wide.load48.9.a = load <4 x i64>, ptr %i.hz, align 8, !tbaa !156
  %wide.load49.9.a = load <4 x i64>, ptr %i.ia, align 8, !tbaa !156
  %wide.load50.9 = load <4 x i64>, ptr %i.ib, align 8, !tbaa !156
  %i.ic = or <4 x i64> %wide.load47.9.a, splat (i64 972777519512027136)
  %i.id = or <4 x i64> %wide.load48.9.a, splat (i64 972777519512027136)
  %i.ie = or <4 x i64> %wide.load49.9.a, splat (i64 972777519512027136)
  %i.if = or <4 x i64> %wide.load50.9, splat (i64 972777519512027136)
  store <4 x i64> %i.ic, ptr %i.hy, align 8, !tbaa !156
  store <4 x i64> %i.id, ptr %i.hz, align 8, !tbaa !156
  store <4 x i64> %i.ie, ptr %i.ia, align 8, !tbaa !156
  store <4 x i64> %i.if, ptr %i.ib, align 8, !tbaa !156
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ea, i64 1280 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ea, i64 1312 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ea, i64 1344 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ea, i64 1376 ; 2 uses
  %wide.load47.10.a = load <4 x i64>, ptr %i.ig, align 8, !tbaa !156
  %wide.load48.10.a = load <4 x i64>, ptr %i.ih, align 8, !tbaa !156
  %wide.load49.10.a = load <4 x i64>, ptr %i.ii, align 8, !tbaa !156
  %wide.load50.10 = load <4 x i64>, ptr %i.ij, align 8, !tbaa !156
  %i.ik = or <4 x i64> %wide.load47.10.a, splat (i64 972777519512027136)
  %i.il = or <4 x i64> %wide.load48.10.a, splat (i64 972777519512027136)
  %i.im = or <4 x i64> %wide.load49.10.a, splat (i64 972777519512027136)
  %i.in = or <4 x i64> %wide.load50.10, splat (i64 972777519512027136)
end_hunk_0
