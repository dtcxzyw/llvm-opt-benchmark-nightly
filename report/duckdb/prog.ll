inline.NumInlined: 1409
inline.NumDeleted: 635
begin_hunk_0_@_ZN10duckdb_re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEii:bb.a
  %.021.i = phi i32 [ %i.r, %bb.l ], [ %i.bj, %bb.n ] ; 2 uses
  %i.bc = icmp slt i32 %.021.i, 256
  br i1 %i.bc, label %bb.n, label %"_ZZN10duckdb_re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit"

bb.n:                                             ; preds = %bb.m
  %i.bd = call noundef i32 @_ZNK10duckdb_re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %.021.i) ; 3 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = call i32 @llvm.smin.i32(i32 %i.bg, i32 %.164) ; 2 uses
  store i32 %i.bb, ptr %i.bf, align 4, !tbaa !3
  %i.bi = icmp eq i32 %i.bd, %i.u
  %i.bj = add nsw i32 %i.bd, 1
  br i1 %i.bi, label %"_ZZN10duckdb_re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit", label %bb.m

"_ZZN10duckdb_re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit": ; preds = %bb.m, %bb.n
  %.265 = phi i32 [ %i.bh, %bb.n ], [ %.164, %bb.m ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 6 ; 3 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !9
  %i.bm = trunc i16 %i.bl to i1
  %i.bn = icmp ult i8 %i.q, 123
  %or.cond = and i1 %i.bn, %i.bm
  %i.bo = icmp ugt i8 %i.t, 96
  %or.cond3 = and i1 %i.bo, %or.cond
  br i1 %or.cond3, label %bb.o, label %"_ZZN10duckdb_re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42"

bb.o:                                             ; preds = %"_ZZN10duckdb_re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit"
  %i.bp = call i32 @llvm.umax.i32(i32 %i.r, i32 97) ; 3 uses
  %i.bq = call i32 @llvm.umin.i32(i32 %i.u, i32 122) ; 4 uses
  %.not35 = icmp samesign ugt i32 %i.bp, %i.bq
  br i1 %.not35, label %"_ZZN10duckdb_re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = add nsw i32 %i.bp, -32                  ; 2 uses
  %i.bs = add nsw i32 %i.bq, -32                  ; 2 uses
  %i.bt = add nsw i32 %i.bp, -33                  ; 2 uses
  %i.bu = load i64, ptr %i.g, align 8, !tbaa !116 ; 2 uses
  %i.bv = and i32 %i.bt, 63
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 1, %i.bw                ; 2 uses
  %i.by = and i64 %i.bu, %i.bx
  %.not.i40 = icmp eq i64 %i.by, 0
  br i1 %.not.i40, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = or i64 %i.bu, %i.bx
  store i64 %i.bz, ptr %i.g, align 8, !tbaa !116
  %i.ca = call noundef i32 @_ZNK10duckdb_re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.br)
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = zext nneg i32 %i.bt to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ce
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !116 ; 2 uses
  %i.ch = add nsw i32 %i.bq, -96
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = shl nuw nsw i64 1, %i.ci                ; 2 uses
  %i.ck = and i64 %i.cg, %i.cj
  %.not24.i38 = icmp eq i64 %i.ck, 0
  br i1 %.not24.i38, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cl = or i64 %i.cg, %i.cj
  store i64 %i.cl, ptr %i.b, align 8, !tbaa !116
  %i.cm = add nsw i32 %i.bq, -31
  %i.cn = call noundef i32 @_ZNK10duckdb_re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.cm)
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
  br i1 %i.cu, label %bb.v, label %"_ZZN10duckdb_re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42"

bb.v:                                             ; preds = %bb.u
  %i.cv = call noundef i32 @_ZNK10duckdb_re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %.021.i39) ; 3 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = call i32 @llvm.smin.i32(i32 %i.cy, i32 %.3) ; 2 uses
  store i32 %i.ct, ptr %i.cx, align 4, !tbaa !3
  %i.da = icmp eq i32 %i.cv, %i.bs
  %i.db = add nsw i32 %i.cv, 1
  br i1 %i.da, label %"_ZZN10duckdb_re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42", label %bb.u

"_ZZN10duckdb_re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42": ; preds = %bb.v, %bb.u, %bb.o, %"_ZZN10duckdb_re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit"
  %.063 = phi i32 [ %.265, %bb.o ], [ %.265, %"_ZZN10duckdb_re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit" ], [ %.3, %bb.u ], [ %i.cz, %bb.v ] ; 2 uses
  %.not36 = icmp eq i32 %.063, %3
  br i1 %.not36, label %bb.x, label %bb.w

bb.w:                                             ; preds = %"_ZZN10duckdb_re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42"
  %i.dc = trunc nsw i64 %indvars.iv to i32
  %i.dd = sub nsw i32 %.063, %i.dc
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.dd, i32 32767)
  %i.de = load i16, ptr %i.bk, align 2, !tbaa !9
  %.tr = trunc i32 %.sroa.speculated to i16
  %i.df = shl i16 %.tr, 1
  %i.dg = or i16 %i.de, %i.df
  store i16 %i.dg, ptr %i.bk, align 2, !tbaa !9
  br label %bb.x

bb.x:                                             ; preds = %"_ZZN10duckdb_re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42", %bb.w, %bb.f
  %.2 = phi i1 [ false, %bb.f ], [ true, %bb.w ], [ true, %"_ZZN10duckdb_re24Prog12ComputeHintsEPSt6vectorINS0_4InstESaIS2_EEiiENK3$_0clEii.exit42" ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.f
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !225
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10duckdb_re211SparseArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #20
  br label %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit

_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i1, label %_ZN10duckdb_re28PODArrayIiED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #20
  br label %_ZN10duckdb_re28PODArrayIiED2Ev.exit

_ZN10duckdb_re28PODArrayIiED2Ev.exit:             ; preds = %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !204    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !166 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #20
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !208

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !204
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #20
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re24Prog20ConfigurePrefixAccelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(432) initializes((24, 25), (32, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 44 uses
  %i.b = alloca [10 x i16], align 16              ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.c = zext i1 %2 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.c, ptr %i.d, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !81   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !10
  br i1 %2, label %._crit_edge.i.i.i, label %bb.s

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.f, i64 9) ; 12 uses
  store i64 %i.h, ptr %i.g, align 8, !tbaa !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 17 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !79, !alias.scope !226
  %i.j = load ptr, ptr %1, align 8, !tbaa !83, !noalias !226 ; 2 uses
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
  store i64 %i.h, ptr %i.l, align 8, !tbaa !81, !alias.scope !226
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h ; 3 uses
  store i8 0, ptr %i.m, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %.not83.i = icmp eq i64 %i.f, 0                 ; 3 uses
  br i1 %.not83.i, label %vector.body, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %xtraiter = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.f, 1
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, 14
  br label %.lr.ph.i

vector.body.preheader.loopexit.unr-lcssa:         ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vector.body, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %vector.body.preheader.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.05471.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %16, %vector.body.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod50 = trunc i64 %i.h to i1
  call void @llvm.assume(i1 %lcmp.mod50)
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.05471.i.epil.init
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = trunc i64 %.05471.i.epil.init to i32
  %i.r = add i32 %i.q, 1
  %i.s = shl nuw i32 1, %i.r
  %i.t = zext i8 %i.p to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !198
  %i.w = trunc i32 %i.s to i16
  %i.x = or i16 %i.v, %i.w
  store i16 %i.x, ptr %i.u, align 2, !tbaa !198
  br label %vector.body

vector.body:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %vector.body.preheader.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.a, align 16, !tbaa !198
  %wide.load38 = load <8 x i16>, ptr %i.y, align 16, !tbaa !198
  %i.z = or <8 x i16> %wide.load, splat (i16 1)
  %i.aa = or <8 x i16> %wide.load38, splat (i16 1)
  store <8 x i16> %i.z, ptr %i.a, align 16, !tbaa !198
  store <8 x i16> %i.aa, ptr %i.y, align 16, !tbaa !198
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %wide.load.1 = load <8 x i16>, ptr %i.ab, align 16, !tbaa !198
  %wide.load38.1 = load <8 x i16>, ptr %i.ac, align 16, !tbaa !198
  %i.ad = or <8 x i16> %wide.load.1, splat (i16 1)
  %i.ae = or <8 x i16> %wide.load38.1, splat (i16 1)
  store <8 x i16> %i.ad, ptr %i.ab, align 16, !tbaa !198
  store <8 x i16> %i.ae, ptr %i.ac, align 16, !tbaa !198
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %wide.load.2 = load <8 x i16>, ptr %i.af, align 16, !tbaa !198
  %wide.load38.2 = load <8 x i16>, ptr %i.ag, align 16, !tbaa !198
  %i.ah = or <8 x i16> %wide.load.2, splat (i16 1)
  %i.ai = or <8 x i16> %wide.load38.2, splat (i16 1)
  store <8 x i16> %i.ah, ptr %i.af, align 16, !tbaa !198
  store <8 x i16> %i.ai, ptr %i.ag, align 16, !tbaa !198
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %wide.load.3 = load <8 x i16>, ptr %i.aj, align 16, !tbaa !198
  %wide.load38.3 = load <8 x i16>, ptr %i.ak, align 16, !tbaa !198
  %i.al = or <8 x i16> %wide.load.3, splat (i16 1)
  %i.am = or <8 x i16> %wide.load38.3, splat (i16 1)
  store <8 x i16> %i.al, ptr %i.aj, align 16, !tbaa !198
  store <8 x i16> %i.am, ptr %i.ak, align 16, !tbaa !198
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %wide.load.4 = load <8 x i16>, ptr %i.an, align 16, !tbaa !198
  %wide.load38.4 = load <8 x i16>, ptr %i.ao, align 16, !tbaa !198
  %i.ap = or <8 x i16> %wide.load.4, splat (i16 1)
  %i.aq = or <8 x i16> %wide.load38.4, splat (i16 1)
  store <8 x i16> %i.ap, ptr %i.an, align 16, !tbaa !198
  store <8 x i16> %i.aq, ptr %i.ao, align 16, !tbaa !198
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %wide.load.5 = load <8 x i16>, ptr %i.ar, align 16, !tbaa !198
  %wide.load38.5 = load <8 x i16>, ptr %i.as, align 16, !tbaa !198
  %i.at = or <8 x i16> %wide.load.5, splat (i16 1)
  %i.au = or <8 x i16> %wide.load38.5, splat (i16 1)
  store <8 x i16> %i.at, ptr %i.ar, align 16, !tbaa !198
  store <8 x i16> %i.au, ptr %i.as, align 16, !tbaa !198
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  %wide.load.6 = load <8 x i16>, ptr %i.av, align 16, !tbaa !198
  %wide.load38.6 = load <8 x i16>, ptr %i.aw, align 16, !tbaa !198
  %i.ax = or <8 x i16> %wide.load.6, splat (i16 1)
  %i.ay = or <8 x i16> %wide.load38.6, splat (i16 1)
  store <8 x i16> %i.ax, ptr %i.av, align 16, !tbaa !198
  store <8 x i16> %i.ay, ptr %i.aw, align 16, !tbaa !198
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %wide.load.7 = load <8 x i16>, ptr %i.az, align 16, !tbaa !198
  %wide.load38.7 = load <8 x i16>, ptr %i.ba, align 16, !tbaa !198
  %i.bb = or <8 x i16> %wide.load.7, splat (i16 1)
  %i.bc = or <8 x i16> %wide.load38.7, splat (i16 1)
  store <8 x i16> %i.bb, ptr %i.az, align 16, !tbaa !198
  store <8 x i16> %i.bc, ptr %i.ba, align 16, !tbaa !198
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  %wide.load.8 = load <8 x i16>, ptr %i.bd, align 16, !tbaa !198
  %wide.load38.8 = load <8 x i16>, ptr %i.be, align 16, !tbaa !198
  %i.bf = or <8 x i16> %wide.load.8, splat (i16 1)
  %i.bg = or <8 x i16> %wide.load38.8, splat (i16 1)
  store <8 x i16> %i.bf, ptr %i.bd, align 16, !tbaa !198
  store <8 x i16> %i.bg, ptr %i.be, align 16, !tbaa !198
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  %wide.load.9 = load <8 x i16>, ptr %i.bh, align 16, !tbaa !198
  %wide.load38.9 = load <8 x i16>, ptr %i.bi, align 16, !tbaa !198
  %i.bj = or <8 x i16> %wide.load.9, splat (i16 1)
  %i.bk = or <8 x i16> %wide.load38.9, splat (i16 1)
  store <8 x i16> %i.bj, ptr %i.bh, align 16, !tbaa !198
  store <8 x i16> %i.bk, ptr %i.bi, align 16, !tbaa !198
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 336 ; 2 uses
  %wide.load.10 = load <8 x i16>, ptr %i.bl, align 16, !tbaa !198
  %wide.load38.10 = load <8 x i16>, ptr %i.bm, align 16, !tbaa !198
  %i.bn = or <8 x i16> %wide.load.10, splat (i16 1)
  %i.bo = or <8 x i16> %wide.load38.10, splat (i16 1)
  store <8 x i16> %i.bn, ptr %i.bl, align 16, !tbaa !198
  store <8 x i16> %i.bo, ptr %i.bm, align 16, !tbaa !198
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 368 ; 2 uses
  %wide.load.11 = load <8 x i16>, ptr %i.bp, align 16, !tbaa !198
  %wide.load38.11 = load <8 x i16>, ptr %i.bq, align 16, !tbaa !198
  %i.br = or <8 x i16> %wide.load.11, splat (i16 1)
  %i.bs = or <8 x i16> %wide.load38.11, splat (i16 1)
  store <8 x i16> %i.br, ptr %i.bp, align 16, !tbaa !198
  store <8 x i16> %i.bs, ptr %i.bq, align 16, !tbaa !198
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %wide.load.12 = load <8 x i16>, ptr %i.bt, align 16, !tbaa !198
  %wide.load38.12 = load <8 x i16>, ptr %i.bu, align 16, !tbaa !198
  %i.bv = or <8 x i16> %wide.load.12, splat (i16 1)
  %i.bw = or <8 x i16> %wide.load38.12, splat (i16 1)
  store <8 x i16> %i.bv, ptr %i.bt, align 16, !tbaa !198
  store <8 x i16> %i.bw, ptr %i.bu, align 16, !tbaa !198
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 416 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 432 ; 2 uses
  %wide.load.13 = load <8 x i16>, ptr %i.bx, align 16, !tbaa !198
  %wide.load38.13 = load <8 x i16>, ptr %i.by, align 16, !tbaa !198
  %i.bz = or <8 x i16> %wide.load.13, splat (i16 1)
  %i.ca = or <8 x i16> %wide.load38.13, splat (i16 1)
  store <8 x i16> %i.bz, ptr %i.bx, align 16, !tbaa !198
  store <8 x i16> %i.ca, ptr %i.by, align 16, !tbaa !198
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 448 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 464 ; 2 uses
  %wide.load.14 = load <8 x i16>, ptr %i.cb, align 16, !tbaa !198
  %wide.load38.14 = load <8 x i16>, ptr %i.cc, align 16, !tbaa !198
  %i.cd = or <8 x i16> %wide.load.14, splat (i16 1)
  %i.ce = or <8 x i16> %wide.load38.14, splat (i16 1)
  store <8 x i16> %i.cd, ptr %i.cb, align 16, !tbaa !198
  store <8 x i16> %i.ce, ptr %i.cc, align 16, !tbaa !198
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 480 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 496 ; 2 uses
  %wide.load.15 = load <8 x i16>, ptr %i.cf, align 16, !tbaa !198
  %wide.load38.15 = load <8 x i16>, ptr %i.cg, align 16, !tbaa !198
  %i.ch = or <8 x i16> %wide.load.15, splat (i16 1)
  %i.ci = or <8 x i16> %wide.load38.15, splat (i16 1)
  store <8 x i16> %i.ch, ptr %i.cf, align 16, !tbaa !198
  store <8 x i16> %i.ci, ptr %i.cg, align 16, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  store i16 1, ptr %i.b, align 16, !tbaa !198
  br i1 %.not83.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05471.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %16, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %4 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.05471.i
  %5 = load i8, ptr %4, align 2, !tbaa !9
  %6 = or disjoint i64 %.05471.i, 1               ; 2 uses
  %7 = trunc i64 %6 to i32
  %8 = shl nuw i32 1, %7
  %9 = zext i8 %5 to i64
  %10 = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %9 ; 2 uses
  %11 = load i16, ptr %10, align 2, !tbaa !198
  %12 = trunc i32 %8 to i16
  %13 = or i16 %11, %12
  store i16 %13, ptr %10, align 2, !tbaa !198
  %14 = getelementptr inbounds nuw i8, ptr %i.i, i64 %6
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %16 = add nuw i64 %.05471.i, 2                  ; 3 uses
  %17 = trunc i64 %16 to i32
  %18 = shl nuw i32 1, %17
  %19 = zext i8 %15 to i64
  %20 = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %19 ; 2 uses
  %21 = load i16, ptr %20, align 2, !tbaa !198
  %22 = trunc i32 %18 to i16
  %23 = or i16 %21, %22
  store i16 %23, ptr %20, align 2, !tbaa !198
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %vector.body.preheader.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !229

.lr.ph74.i:                                       ; preds = %vector.body
  %.not109.i = icmp eq i64 %i.f, 1
  br i1 %.not109.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.i, label %.lr.ph74.split.i

.lr.ph74.split.i:                                 ; preds = %.lr.ph74.i
  %i.cj = add nsw i64 %i.h, -1                    ; 3 uses
  %xtraiter51 = and i64 %i.cj, 1
  %i.ck = icmp eq i64 %i.f, 2
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph74.split.i.new

.lr.ph74.split.i.new:                             ; preds = %.lr.ph74.split.i
  %unroll_iter56 = and i64 %i.cj, -2
  br label %bb.l

._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa: ; preds = %bb.l
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %._crit_edge.loopexit.peel.begin.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa, %.lr.ph74.split.i
  %.epil.init = phi i16 [ 1, %.lr.ph74.split.i ], [ %i.fy, %._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa ]
  %.05673.i.epil.init = phi i64 [ 0, %.lr.ph74.split.i ], [ %i.fz, %._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i64 %i.cj to i1
  call void @llvm.assume(i1 %lcmp.mod55)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 %.05673.i.epil.init
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !9
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !198
  %i.cq = shl i16 %.epil.init, 1
  %i.cr = or disjoint i16 %i.cq, 1
  %i.cs = and i16 %i.cp, %i.cr                    ; 2 uses
  %i.ct = add nuw i64 %.05673.i.epil.init, 1      ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ct
  store i16 %i.cs, ptr %i.cu, align 2, !tbaa !198
  br label %._crit_edge.loopexit.peel.begin.loopexit.i

._crit_edge.loopexit.peel.begin.loopexit.i:       ; preds = %._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa, %.epil.preheader
  %.lcssa49 = phi i16 [ %i.fy, %._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa ], [ %i.cs, %.epil.preheader ]
  %.lcssa48 = phi i64 [ %i.fz, %._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa ], [ %i.ct, %.epil.preheader ]
  %i.cv = shl i16 %.lcssa49, 1
  %i.cw = or disjoint i16 %i.cv, 1
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.i

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.i: ; preds = %._crit_edge.loopexit.peel.begin.loopexit.i, %.lr.ph74.i
  %i.cx = phi i16 [ 3, %.lr.ph74.i ], [ %i.cw, %._crit_edge.loopexit.peel.begin.loopexit.i ]
  %i.cy = phi i64 [ 0, %.lr.ph74.i ], [ %.lcssa48, %._crit_edge.loopexit.peel.begin.loopexit.i ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !9
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !198
  %i.de = and i16 %i.dd, %i.cx
  %i.df = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %i.dg = icmp eq i64 %i.df, %i.h
  %spec.store.select.peel.i = select i1 %i.dg, i64 9, i64 %i.df
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %spec.store.select.peel.i
  store i16 %i.de, ptr %i.dh, align 2, !tbaa !198
  %i.di = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.dj = shl nuw nsw i64 %i.di, 1
  %i.dk = xor i64 %i.dj, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %i.i, ptr nonnull %i.m, i64 noundef %i.dk)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.i
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr nonnull %i.i, ptr nonnull %i.m)
          to label %.noexc9 unwind label %bb.r

.noexc9:                                          ; preds = %.noexc
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !83  ; 6 uses
  %.pre96.i = load i64, ptr %i.l, align 8, !tbaa !81 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.pre96.i ; 5 uses
  %switch = icmp ult i64 %.pre96.i, 2
  br i1 %switch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc9
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  br label %bb.d

.preheader.i.i.i.i:                               ; preds = %bb.d
  %i.dn = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dn, %i.dl
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, label %bb.d, !llvm.loop !230

bb.d:                                             ; preds = %.lr.ph, %.preheader.i.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.preheader.i.i.i.i ] ; 3 uses
  %i.do = phi ptr [ %i.dm, %.lr.ph ], [ %i.dn, %.preheader.i.i.i.i ] ; 3 uses
  %.sroa.09.0.i.i.i.i37 = phi ptr [ %.pre.i, %.lr.ph ], [ %i.do, %.preheader.i.i.i.i ] ; 5 uses
  %i.dp = load i8, ptr %.sroa.09.0.i.i.i.i37, align 1, !tbaa !9 ; 3 uses
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !9
  %i.dr = icmp eq i8 %i.dp, %i.dq
  br i1 %i.dr, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !230

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i.i: ; preds = %bb.d
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i37, i64 2 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.ds, %i.dl
  br i1 %.not18.i.i.i, label %._crit_edge.i.i.i8, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i.i
  %i.dt = xor i64 %.pre96.i, 2
  %i.du = sub i64 %i.dt, %indvar
  %i.dv = add i64 %.pre96.i, -3
  %i.dw = sub i64 %i.dv, %indvar
  %xtraiter59 = and i64 %i.du, 3                  ; 2 uses
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %bb.f
  %i.dx = phi i8 [ %i.dz, %bb.f ], [ %i.dp, %.lr.ph.i.i.i.preheader ]
  %i.dy = phi ptr [ %i.ec, %bb.f ], [ %i.ds, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.i.prol = phi ptr [ %.sroa.0.1.i.i.i.prol, %bb.f ], [ %.sroa.09.0.i.i.i.i37, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.f ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !9   ; 4 uses
  %i.ea = icmp eq i8 %i.dx, %i.dz
  br i1 %i.ea, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.prol
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i.prol
  %.sroa.0.1.i.i.i.prol = phi ptr [ %.sroa.0.019.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.eb, %bb.e ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter59
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !231

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %bb.f, %.lr.ph.i.i.i.preheader
  %.sroa.0.1.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %.sroa.0.1.i.i.i.prol, %bb.f ]
  %.unr61 = phi i8 [ %i.dp, %.lr.ph.i.i.i.preheader ], [ %i.dz, %bb.f ]
  %.unr62 = phi ptr [ %i.ds, %.lr.ph.i.i.i.preheader ], [ %i.ec, %bb.f ]
  %.sroa.0.019.i.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i.i37, %.lr.ph.i.i.i.preheader ], [ %.sroa.0.1.i.i.i.prol, %bb.f ]
  %i.ed = icmp ult i64 %i.dw, 3
  br i1 %i.ed, label %._crit_edge.i.i.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.k
  %i.ee = phi i8 [ %i.es, %bb.k ], [ %.unr61, %.lr.ph.i.i.i.prol.loopexit ]
  %i.ef = phi ptr [ %i.ev, %bb.k ], [ %.unr62, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.3, %bb.k ], [ %.sroa.0.019.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9   ; 3 uses
  %i.eh = icmp eq i8 %i.ee, %i.eg
  br i1 %i.eh, label %.lr.ph.i.i.i.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i, i64 1 ; 2 uses
  store i8 %i.eg, ptr %i.ei, align 1, !tbaa !9
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.019.i.i.i, %.lr.ph.i.i.i ], [ %i.ei, %bb.g ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !9   ; 3 uses
  %i.el = icmp eq i8 %i.eg, %i.ek
  br i1 %i.el, label %.lr.ph.i.i.i.2, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.1
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 1 ; 2 uses
  store i8 %i.ek, ptr %i.em, align 1, !tbaa !9
  br label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.h, %.lr.ph.i.i.i.1
  %.sroa.0.1.i.i.i.1 = phi ptr [ %.sroa.0.1.i.i.i, %.lr.ph.i.i.i.1 ], [ %i.em, %bb.h ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !9   ; 3 uses
  %i.ep = icmp eq i8 %i.ek, %i.eo
  br i1 %i.ep, label %.lr.ph.i.i.i.3, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.2
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.1, i64 1 ; 2 uses
  store i8 %i.eo, ptr %i.eq, align 1, !tbaa !9
  br label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.i, %.lr.ph.i.i.i.2
  %.sroa.0.1.i.i.i.2 = phi ptr [ %.sroa.0.1.i.i.i.1, %.lr.ph.i.i.i.2 ], [ %i.eq, %bb.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.es = load i8, ptr %i.er, align 1, !tbaa !9   ; 3 uses
  %i.et = icmp eq i8 %i.eo, %i.es
  br i1 %i.et, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.3
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.2, i64 1 ; 2 uses
  store i8 %i.es, ptr %i.eu, align 1, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i.3
  %.sroa.0.1.i.i.i.3 = phi ptr [ %.sroa.0.1.i.i.i.2, %.lr.ph.i.i.i.3 ], [ %i.eu, %bb.j ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %.not.i.i60.i.3 = icmp eq ptr %i.ev, %i.dl
  br i1 %.not.i.i60.i.3, label %._crit_edge.i.i.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !232

._crit_edge.i.i.loopexit.i:                       ; preds = %bb.k, %.lr.ph.i.i.i.prol.loopexit
  %.sroa.0.1.i.i.i.lcssa = phi ptr [ %.sroa.0.1.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.sroa.0.1.i.i.i.3, %bb.k ]
  %.pre97.pre.i = load ptr, ptr %3, align 8, !tbaa !83
  br label %._crit_edge.i.i.i8

._crit_edge.i.i.i8:                               ; preds = %._crit_edge.i.i.loopexit.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i.i
  %.pre97.i = phi ptr [ %.pre.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i.i ], [ %.pre97.pre.i, %._crit_edge.i.i.loopexit.i ]
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.sroa.09.0.i.i.i.i37, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops19_Iter_equal_to_iterEET_SC_SC_T0_.exit.i.i.i ], [ %.sroa.0.1.i.i.i.lcssa, %._crit_edge.i.i.loopexit.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i: ; preds = %.preheader.i.i.i.i, %.noexc9, %._crit_edge.i.i.i8, %vector.body
  %i.ex = phi ptr [ %.pre97.i, %._crit_edge.i.i.i8 ], [ %.pre.i, %.noexc9 ], [ %i.i, %vector.body ], [ %.pre.i, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.05.0.i.i.i = phi ptr [ %i.ew, %._crit_edge.i.i.i8 ], [ %i.dl, %.noexc9 ], [ %i.i, %vector.body ], [ %i.dl, %.preheader.i.i.i.i ]
  %i.ey = ptrtoint ptr %.sroa.05.0.i.i.i to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 2 uses
  store i64 %i.fa, ptr %i.l, align 8, !tbaa !81
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fa
  store i8 0, ptr %i.fb, align 1, !tbaa !9
  %i.fc = load ptr, ptr %3, align 8, !tbaa !83    ; 4 uses
  %i.fd = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #24
          to label %.noexc10 unwind label %bb.r   ; 5 uses

.noexc10:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.fd, i8 0, i64 2048, i1 false)
  br i1 %.not83.i, label %vector.body40.preheader, label %.lr.ph81.i

.lr.ph81.i:                                       ; preds = %.noexc10
  %i.fe = load i64, ptr %i.l, align 8, !tbaa !81  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fe
  %.not6875.i = icmp samesign eq i64 %i.fe, 0
  br i1 %.not6875.i, label %vector.body40.preheader, label %.lr.ph78.i

bb.l:                                             ; preds = %bb.l, %.lr.ph74.split.i.new
  %i.fg = phi i16 [ 1, %.lr.ph74.split.i.new ], [ %i.fy, %bb.l ]
  %.05673.i = phi i64 [ 0, %.lr.ph74.split.i.new ], [ %i.fz, %bb.l ] ; 3 uses
  %niter57 = phi i64 [ 0, %.lr.ph74.split.i.new ], [ %niter57.next.1, %bb.l ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.i, i64 %.05673.i
  %i.fi = load i8, ptr %i.fh, align 2, !tbaa !9
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fj
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !198
  %i.fm = shl i16 %i.fg, 1
  %i.fn = or disjoint i16 %i.fm, 1
  %i.fo = and i16 %i.fl, %i.fn                    ; 2 uses
  %i.fp = or disjoint i64 %.05673.i, 1            ; 2 uses
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.fp
  store i16 %i.fo, ptr %i.fq, align 2, !tbaa !198
  %i.fr = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fp
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !9
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ft
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !198
  %i.fw = shl i16 %i.fo, 1
  %i.fx = or disjoint i16 %i.fw, 1
  %i.fy = and i16 %i.fv, %i.fx                    ; 4 uses
  %i.fz = add nuw i64 %.05673.i, 2                ; 4 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.fz
  store i16 %i.fy, ptr %i.ga, align 4, !tbaa !198
  %niter57.next.1 = add nuw i64 %niter57, 2       ; 2 uses
  %niter57.ncmp.1 = icmp eq i64 %niter57.next.1, %unroll_iter56
  br i1 %niter57.ncmp.1, label %._crit_edge.loopexit.peel.begin.loopexit.i.unr-lcssa, label %bb.l, !llvm.loop !233

vector.body40:                                    ; preds = %vector.body40, %vector.body40.preheader
  %index41 = phi i64 [ 0, %vector.body40.preheader ], [ %index.next44.1, %vector.body40 ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %index41 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %wide.load42 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !116
  %wide.load43 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !116
  %i.gd = or <2 x i64> %wide.load42, splat (i64 972777519512027136)
  %i.ge = or <2 x i64> %wide.load43, splat (i64 972777519512027136)
  store <2 x i64> %i.gd, ptr %i.gb, align 8, !tbaa !116
  store <2 x i64> %i.ge, ptr %i.gc, align 8, !tbaa !116
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %index41 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 48 ; 2 uses
  %wide.load42.1 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !116
  %wide.load43.1 = load <2 x i64>, ptr %i.gh, align 8, !tbaa !116
  %i.gi = or <2 x i64> %wide.load42.1, splat (i64 972777519512027136)
  %i.gj = or <2 x i64> %wide.load43.1, splat (i64 972777519512027136)
  store <2 x i64> %i.gi, ptr %i.gg, align 8, !tbaa !116
  store <2 x i64> %i.gj, ptr %i.gh, align 8, !tbaa !116
  %index.next44.1 = add nuw nsw i64 %index41, 8   ; 2 uses
  %i.gk = icmp eq i64 %index.next44.1, 256
  br i1 %i.gk, label %middle.block45, label %vector.body40, !llvm.loop !235

.lr.ph78.i:                                       ; preds = %.lr.ph81.i, %._crit_edge79.i
  %.05780.i = phi i64 [ %i.gq, %._crit_edge79.i ], [ 0, %.lr.ph81.i ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %.05780.i
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !198
  %i.gn = shl i16 %i.gm, 1
  %i.go = or disjoint i16 %i.gn, 1
  %i.gp = mul i64 %.05780.i, 6
  br label %bb.m

._crit_edge79.i:                                  ; preds = %bb.q
  %i.gq = add nuw i64 %.05780.i, 1                ; 2 uses
  %exitcond90.not.i = icmp eq i64 %i.gq, %i.h
  br i1 %exitcond90.not.i, label %vector.body40.preheader, label %.lr.ph78.i, !llvm.loop !236

vector.body40.preheader:                          ; preds = %._crit_edge79.i, %.noexc10, %.lr.ph81.i
  br label %vector.body40

bb.m:                                             ; preds = %bb.q, %.lr.ph78.i
  %.sroa.061.076.i = phi ptr [ %i.fc, %.lr.ph78.i ], [ %i.hi, %bb.q ] ; 2 uses
  %i.gr = load i8, ptr %.sroa.061.076.i, align 1, !tbaa !9 ; 2 uses
  %i.gs = zext i8 %i.gr to i64                    ; 2 uses
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.gs
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !198
  %i.gv = and i16 %i.gu, %i.go
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.053.i = phi i64 [ 0, %bb.m ], [ %i.gy, %bb.n ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %.053.i
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !198
  %.not.i = icmp eq i16 %i.gx, %i.gv
  %i.gy = add i64 %.053.i, 1
  br i1 %.not.i, label %bb.o, label %bb.n, !llvm.loop !237

bb.o:                                             ; preds = %bb.n
  %i.gz = mul i64 %.053.i, 6
  %i.ha = shl i64 %i.gz, %i.gp                    ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.gs ; 3 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !116
  %i.hd = or i64 %i.hc, %i.ha
  store i64 %i.hd, ptr %i.hb, align 8, !tbaa !116
  %i.he = add i8 %i.gr, -97
  %or.cond.i = icmp ult i8 %i.he, 26
  br i1 %or.cond.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hf = getelementptr i8, ptr %i.hb, i64 -256   ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !116
  %i.hh = or i64 %i.hg, %i.ha
  store i64 %i.hh, ptr %i.hf, align 8, !tbaa !116
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.061.076.i, i64 1 ; 2 uses
  %.not68.i = icmp eq ptr %i.hi, %i.ff
  br i1 %.not68.i, label %._crit_edge79.i, label %bb.m

middle.block45:                                   ; preds = %vector.body40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.fd, ptr %i.hj, align 8, !tbaa !9
  %i.hk = icmp eq ptr %i.fc, %i.i
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %middle.block45
  call void @_ZdlPv(ptr noundef %i.fc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, %.noexc, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.i
  %i.hl = landingpad { ptr, i32 }
          cleanup
  %i.hm = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.i
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.hm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  resume { ptr, i32 } %i.hl

bb.s:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 1
  %i.ho = load ptr, ptr %1, align 8, !tbaa !83
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !9
  %i.hq = sext i8 %i.hp to i32
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.hq, ptr %i.hr, align 8, !tbaa !9
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hs = load i64, ptr %i.e, align 8, !tbaa !81
  %i.ht = load ptr, ptr %1, align 8, !tbaa !83
  %i.hu = getelementptr i8, ptr %i.ht, i64 %i.hs
  %i.hv = getelementptr i8, ptr %i.hu, i64 -1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !9
  %i.hx = sext i8 %i.hw to i32
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %middle.block45, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.t
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN10duckdb_re24Prog20PrefixAccel_ShiftDFAEPKvm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1, i64 noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 10 uses
  %i.c = icmp ult i64 %2, %i.b
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 7
  br i1 %i.d, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %2, -8
  %i.f = getelementptr i8, ptr %1, i64 %i.e       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9    ; 9 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.t, %bb.c
  %.097 = phi ptr [ %1, %bb.c ], [ %i.df, %bb.t ] ; 17 uses
  %.093 = phi i64 [ 0, %bb.c ], [ %i.bk, %bb.t ]
  %i.i = load i8, ptr %.097, align 1, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %.097, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %.097, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %.097, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %.097, i64 4
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %.097, i64 5
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %.097, i64 6
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %.097, i64 7
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %i.x = zext i8 %i.i to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !116
  %i.aa = zext i8 %i.k to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !116
  %i.ad = zext i8 %i.m to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !116
  %i.ag = zext i8 %i.o to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !116
  %i.aj = zext i8 %i.q to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !116
  %i.am = zext i8 %i.s to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !116
  %i.ap = zext i8 %i.u to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !116
  %i.as = zext i8 %i.w to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !116
  %i.av = and i64 %.093, 63
  %i.aw = lshr i64 %i.z, %i.av                    ; 2 uses
  %i.ax = and i64 %i.aw, 63
  %i.ay = lshr i64 %i.ac, %i.ax                   ; 2 uses
  %i.az = and i64 %i.ay, 63
  %i.ba = lshr i64 %i.af, %i.az                   ; 2 uses
  %i.bb = and i64 %i.ba, 63
  %i.bc = lshr i64 %i.ai, %i.bb                   ; 2 uses
  %i.bd = and i64 %i.bc, 63
  %i.be = lshr i64 %i.al, %i.bd                   ; 2 uses
  %i.bf = and i64 %i.be, 63
  %i.bg = lshr i64 %i.ao, %i.bf                   ; 2 uses
  %i.bh = and i64 %i.bg, 63
  %i.bi = lshr i64 %i.ar, %i.bh                   ; 2 uses
  %i.bj = and i64 %i.bi, 63
  %i.bk = lshr i64 %i.au, %i.bj                   ; 3 uses
  %i.bl = and i64 %i.bk, 63
  %.not.not = icmp eq i64 %i.bl, 54
  br i1 %.not.not, label %bb.e, label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %.097, i64 2
  %i.bn = getelementptr inbounds nuw i8, ptr %.097, i64 3
  %i.bo = getelementptr inbounds nuw i8, ptr %.097, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.097, i64 5
  %i.bq = getelementptr inbounds nuw i8, ptr %.097, i64 6
  %i.br = getelementptr inbounds nuw i8, ptr %.097, i64 7
  %i.bs = sub i64 54, %i.aw
  %i.bt = and i64 %i.bs, 63
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %.097, i64 1
  %i.bw = sub i64 0, %i.b
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 %i.bw
  br label %.critedge

bb.g:                                             ; preds = %bb.e
end_hunk_0
