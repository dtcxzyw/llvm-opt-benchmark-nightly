Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/dispersioncorrection?download=true
inline.NumInlined: 318
inline.NumDeleted: 199
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector.53" = type { %"struct.std::_Vector_base.54" }
%"struct.std::_Vector_base.54" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr.139" }
%"class.std::unique_ptr.139" = type { %"struct.std::__uniq_ptr_data.140" }
%"struct.std::__uniq_ptr_data.140" = type { %"class.std::__uniq_ptr_impl.141" }
%"class.std::__uniq_ptr_impl.141" = type { %"class.std::tuple.142" }
%"class.std::tuple.142" = type { %"struct.std::_Tuple_impl.143" }
%"struct.std::_Tuple_impl.143" = type { %"struct.std::_Head_base.146" }
%"struct.std::_Head_base.146" = type { ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.gmx::LogEntryWriter" = type { %"struct.gmx::LogEntry" }
%"struct.gmx::LogEntry" = type <{ %"class.std::__cxx11::basic_string", i8, [7 x i8] }>

$_ZNSt10filesystem7__cxx114pathC2IA75_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

@.str = private unnamed_addr constant [75 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/mdlib/dispersioncorrection.cpp\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Old format tpr with TPI, please generate a new tpr file\00", align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Counted %ld exclusions\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Average C6 parameter is: %10g\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Average C12 parameter is: %10g\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"With dispersion correction rvdw-switch can not be zero for vdw-type = %s\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Dispersion correction is not implemented for vdw-type = %s\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"tableFileName\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Need a table file name\00", align 1
@"__PRETTY_FUNCTION__._ZZN20DispersionCorrectionC1ERK10gmx_mtop_tRK10t_inputrecbRK19interaction_const_tPKcENK3$_0clEv" = private unnamed_addr constant [167 x i8] c"auto DispersionCorrection::DispersionCorrection(const gmx_mtop_t &, const t_inputrec &, bool, const interaction_const_t &, const char *)::(lambda)::operator()() const\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"WARNING: There are no atom pairs for dispersion correction\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"WARNING: using dispersion correction with user tables\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Long Range LJ corr.: <C6> %10.4e\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c" <C12> %10.4e\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN20DispersionCorrection17InteractionParamsD1Ev = unnamed_addr alias void (ptr), ptr @_ZN20DispersionCorrection17InteractionParamsD2Ev
@_ZN20DispersionCorrection14TopologyParamsC1ERK10gmx_mtop_tRK10t_inputrecb = unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN20DispersionCorrection14TopologyParamsC2ERK10gmx_mtop_tRK10t_inputrecb
@_ZN20DispersionCorrectionC1ERK10gmx_mtop_tRK10t_inputrecbRK19interaction_const_tPKc = unnamed_addr alias void (ptr, ptr, ptr, i1, ptr, ptr), ptr @_ZN20DispersionCorrectionC2ERK10gmx_mtop_tRK10t_inputrecbRK19interaction_const_tPKc

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN20DispersionCorrection17InteractionParamsD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI12t_forcetableSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI12t_forcetableEclEPS0_.exit.i

_ZNKSt14default_deleteI12t_forcetableEclEPS0_.exit.i: ; preds = %bb.a
  tail call void @_ZN12t_forcetableD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #17
  br label %_ZNSt10unique_ptrI12t_forcetableSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI12t_forcetableSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteI12t_forcetableEclEPS0_.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZN12t_forcetableD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN20DispersionCorrection14TopologyParamsC2ERK10gmx_mtop_tRK10t_inputrecb(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(768) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.53", align 16   ; 15 uses
  %5 = alloca %"class.std::vector.53", align 8    ; 7 uses
  %6 = alloca %"class.std::vector.53", align 16   ; 8 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205  ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !207
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  call void @_Z27makeNonBondedParameterListsibN3gmx8ArrayRefIK9t_iparamsEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.53") align 8 %4, i32 noundef %i.b, i1 noundef zeroext false, ptr %i.d, ptr %i.j, i1 noundef zeroext %3)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 392
  %.val = load i32, ptr %i.k, align 8, !tbaa !208
  %i.l = icmp eq i32 %.val, 5
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !206  ; 3 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !207
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.t = load i32, ptr %i.s, align 4, !tbaa !209
  invoke void @_Z35makeLJPmeC6GridCorrectionParametersiN3gmx8ArrayRefIK9t_iparamsEE12LongRangeVdW(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.53") align 8 %5, i32 noundef %i.b, ptr %i.m, ptr %i.r, i32 noundef %i.t)
          to label %.preheader282 unwind label %bb.d

.preheader282:                                    ; preds = %bb.b
  %i.u = icmp sgt i32 %i.b, 0
  br i1 %i.u, label %.preheader281.lr.ph, label %._crit_edge291.split

.preheader281.lr.ph:                              ; preds = %.preheader282
  %i.v = load ptr, ptr %5, align 8                ; 8 uses
  %i.w = load ptr, ptr %4, align 16               ; 8 uses
  %i.x = zext nneg i32 %i.b to i64                ; 8 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = add nsw i64 %i.y, -4                     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.z
  %scevgep532 = getelementptr i8, ptr %i.w, i64 %i.z
  %min.iters.check = icmp ult i32 %i.b, 9
  %bound0 = icmp ult ptr %i.w, %scevgep
  %bound1 = icmp ult ptr %i.v, %scevgep532
  %found.conflict = and i1 %bound0, %bound1
  %i.aa = and i64 %i.x, 7                         ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = select i1 %i.ab, i64 8, i64 %i.aa
  %n.vec = sub nsw i64 %i.x, %i.ac                ; 2 uses
  br label %.preheader281

.preheader281:                                    ; preds = %.preheader281.lr.ph, %._crit_edge
  %indvars.iv426 = phi i64 [ 0, %.preheader281.lr.ph ], [ %indvars.iv.next427, %._crit_edge ] ; 2 uses
  %i.ad = mul nuw nsw i64 %indvars.iv426, %i.x    ; 6 uses
  %brmerge589 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge589, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %.preheader281, %vector.body
  %indvars.iv.ph = phi i64 [ %n.vec, %vector.body ], [ 0, %.preheader281 ] ; 4 uses
  %i.ae = sub nsw i64 %i.x, %indvars.iv.ph
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.af = add nuw nsw i64 %indvars.iv.prol, %i.ad
  %i.ag = shl nuw nsw i64 %i.af, 1                ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !111
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ag ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !111
  %i.al = fsub float %i.ak, %i.ai
  store float %i.al, ptr %i.aj, align 4, !tbaa !111
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !134

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.am = sub nsw i64 %indvars.iv.ph, %i.x
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.ad
  %invariant.op585 = add nuw nsw i64 2, %i.ad
  %invariant.op587 = add nuw nsw i64 3, %i.ad
  br label %scalar.ph

vector.ph:                                        ; preds = %.preheader281
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.ad, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ao = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %i.ap = shl nuw nsw <8 x i64> %i.ao, splat (i64 1) ; 2 uses
  %i.aq = extractelement <8 x i64> %i.ap, i64 0
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aq
  %wide.vec = load <16 x float>, ptr %i.ar, align 4, !tbaa !111, !alias.scope !211
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.w, <8 x i64> %i.ap ; 2 uses
  %i.as = extractelement <8 x ptr> %wide.gep, i64 0
  %wide.vec533 = load <16 x float>, ptr %i.as, align 4, !tbaa !111, !alias.scope !212, !noalias !211
  %strided.vec534 = shufflevector <16 x float> %wide.vec533, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.at = fsub <8 x float> %strided.vec534, %strided.vec
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.at, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !111, !alias.scope !212, !noalias !211
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %scalar.ph.preheader, label %vector.body, !llvm.loop !138

._crit_edge291.split:                             ; preds = %._crit_edge, %.preheader282
  %i.av = load ptr, ptr %5, align 8, !tbaa !216   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge291.split
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !217
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge291.split, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit249

._crit_edge:                                      ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %i.x
  br i1 %exitcond430.not, label %._crit_edge291.split, label %.preheader281, !llvm.loop !139

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.bc = add nuw nsw i64 %indvars.iv, %i.ad
  %i.bd = shl nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !111
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bd ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !111
  %i.bi = fsub float %i.bh, %i.bf
  store float %i.bi, ptr %i.bg, align 4, !tbaa !111
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op
  %i.bj = shl nuw nsw i64 %.reass, 1              ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !111
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bj ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !111
  %i.bo = fsub float %i.bn, %i.bl
  store float %i.bo, ptr %i.bm, align 4, !tbaa !111
  %.reass586 = add nuw nsw i64 %indvars.iv, %invariant.op585
  %i.bp = shl nuw nsw i64 %.reass586, 1           ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !111
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bp ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !111
  %i.bu = fsub float %i.bt, %i.br
  store float %i.bu, ptr %i.bs, align 4, !tbaa !111
  %.reass588 = add nuw nsw i64 %indvars.iv, %invariant.op587
  %i.bv = shl nuw nsw i64 %.reass588, 1           ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !111
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bv ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !111
  %i.ca = fsub float %i.bz, %i.bx
  store float %i.ca, ptr %i.by, align 4, !tbaa !111
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.x
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !140

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !206 ; 3 uses
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !207
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  invoke void @_Z27makeNonBondedParameterListsibN3gmx8ArrayRefIK9t_iparamsEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.53") align 8 %6, i32 noundef %i.b, i1 noundef zeroext false, ptr %i.cb, ptr %i.cg, i1 noundef zeroext %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ch = load ptr, ptr %4, align 16, !tbaa !216  ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 16, !tbaa !217
  %i.ck = load <2 x ptr>, ptr %6, align 16, !tbaa !218
  store <2 x ptr> %i.ck, ptr %4, align 16, !tbaa !218
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 16, !tbaa !217
  store ptr %i.cm, ptr %i.ci, align 16, !tbaa !217
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit238, label %_ZNSt6vectorIfSaIfEEaSEOS1_.exit

_ZNSt6vectorIfSaIfEEaSEOS1_.exit:                 ; preds = %bb.f
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = ptrtoint ptr %i.ch to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cp) #17
  %.pr = load ptr, ptr %6, align 16, !tbaa !216   ; 3 uses
  %.not.i.i.i237 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i237, label %_ZNSt6vectorIfSaIfEED2Ev.exit238, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEEaSEOS1_.exit
  %i.cq = load ptr, ptr %i.cl, align 16, !tbaa !217
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %.pr to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ct) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit238

_ZNSt6vectorIfSaIfEED2Ev.exit238:                 ; preds = %bb.f, %_ZNSt6vectorIfSaIfEEaSEOS1_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit249

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit238, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 420
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
end_hunk_0
