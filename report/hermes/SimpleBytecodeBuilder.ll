inline.NumInlined: 309
inline.NumDeleted: 149
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.hermes::hbc::BytecodeFileHeader" = type { i64, i32, [20 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %"union.hermes::hbc::BytecodeOptions", [19 x i8] }
%"union.hermes::hbc::BytecodeOptions" = type { %struct.anon }
%struct.anon = type { i8 }
%"struct.hermes::hbc::SmallFuncHeader" = type { i64, i32, i16, i8, %"union.hermes::hbc::FunctionHeaderFlag" }
%"union.hermes::hbc::FunctionHeaderFlag" = type { %struct.anon.7 }
%struct.anon.7 = type { i8 }
%"struct.hermes::hbc::DebugInfoHeader" = type { i32, i32, i32, i32, i32, i32, i32 }
%"struct.hermes::hbc::BytecodeFileFooter" = type { [20 x i8] }
%"struct.std::array" = type { [20 x i8] }

$_ZN12VectorBufferD2Ev = comdat any

$_ZN12VectorBufferD0Ev = comdat any

$_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag = comdat any

$_ZTV12VectorBuffer = comdat any

@_ZTV12VectorBuffer = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN12VectorBufferD2Ev, ptr @_ZN12VectorBufferD0Ev] }, comdat, align 8
@.str = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc21SimpleBytecodeBuilder22generateBytecodeBufferEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 18 uses
  %3 = alloca %"struct.hermes::hbc::BytecodeFileHeader", align 8 ; 13 uses
  %4 = alloca %"struct.hermes::hbc::SmallFuncHeader", align 8 ; 12 uses
  %5 = alloca %"struct.hermes::hbc::DebugInfoHeader", align 1 ; 5 uses
  %6 = alloca %"struct.hermes::hbc::BytecodeFileFooter", align 1 ; 5 uses
  %7 = alloca %"struct.std::array", align 1       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 40                  ; 7 uses
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = shl i32 %i.h, 4
  %i.j = add i32 %i.i, 128                        ; 3 uses
  %.not53 = icmp eq i32 %i.h, 0                   ; 2 uses
  br i1 %.not53, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.g, 4294967295
  %xtraiter = and i64 %i.g, 1
  %i.k = icmp eq i64 %wide.trip.count, 1
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, 4294967294
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.046.epil.init = phi i32 [ %i.j, %.lr.ph.preheader ], [ %i.bg, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod83 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %indvars.iv.epil.init ; 3 uses
  store i32 %.046.epil.init, ptr %i.l, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %.046.epil.init, %i.t
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i32 [ %i.j, %bb.a ], [ %i.bg, %._crit_edge.loopexit.unr-lcssa ], [ %i.u, %.lr.ph.epil.preheader ]
  %i.v = add i32 %.0.lcssa, 3
  %i.w = and i32 %i.v, -4                         ; 2 uses
  %i.x = add i32 %i.w, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.y, i8 0, i64 20, i1 false)
  store i64 2240826417119764422, ptr %3, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 96, ptr %i.z, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.x, ptr %i.aa, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 0, ptr %i.ab, align 4, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.h, ptr %i.ac, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.ad, i8 0, i64 60, i1 false)
  store i32 %i.w, ptr %i.ae, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.af, i8 0, i64 20, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr null, ptr noundef nonnull align 1 dereferenceable(128) %3, ptr noundef nonnull %i.ah)
  br i1 %.not53, label %._crit_edge52, label %.lr.ph49

.lr.ph49:                                         ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 15 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.trip.count60 = and i64 %i.g, 4294967295
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.046 = phi i32 [ %i.j, %.lr.ph.preheader.new ], [ %i.bg, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  store i32 %.046, ptr %i.am, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !20
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = add i32 %.046, %i.au                    ; 2 uses
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store i32 %i.av, ptr %i.ax, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !20
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32
  %i.bg = add i32 %i.av, %i.bf                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !29

.lr.ph51.preheader:                               ; preds = %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit
  %wide.trip.count65 = and i64 %i.g, 4294967295
  br label %.lr.ph51

bb.b:                                             ; preds = %.lr.ph49, %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit
  %indvars.iv57 = phi i64 [ 0, %.lr.ph49 ], [ %indvars.iv.next58, %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit ] ; 2 uses
  %i.bh = load ptr, ptr %1, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.bh, i64 %indvars.iv57 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !31 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !32 ; 2 uses
  %i.bu = load i32, ptr %i.bi, align 8, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 15, i1 false)
  store i8 6, ptr %i.ai, align 1, !tbaa !33
  %i.bv = icmp ugt i32 %i.bu, 33554431
  br i1 %i.bv, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 38, ptr %i.ai, align 1
  store i32 0, ptr %i.aj, align 8
  br label %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit

bb.d:                                             ; preds = %bb.b
  %i.bw = icmp ugt i32 %i.br, 127
  br i1 %i.bw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 38, ptr %i.ai, align 1
  store i64 0, ptr %4, align 8
  br label %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit

bb.f:                                             ; preds = %bb.d
  %i.bx = shl nuw i32 %i.br, 25
  %i.by = or disjoint i32 %i.bu, %i.bx
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = and i64 %i.bp, 4294934528
  %.not = icmp eq i64 %i.ca, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 38, ptr %i.ai, align 1
  %i.cb = and i64 %i.bz, 4261412864
  store i64 %i.cb, ptr %4, align 8
  br label %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit

bb.h:                                             ; preds = %bb.f
  %i.cc = shl i64 %i.bp, 32
  %i.cd = or disjoint i64 %i.cc, %i.bz            ; 2 uses
  store i64 %i.cd, ptr %4, align 8
  %i.ce = icmp ugt i32 %i.bt, 127
  br i1 %i.ce, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 38, ptr %i.ai, align 1
  %i.cf = and i64 %i.cd, 140737454800896
  store i64 %i.cf, ptr %4, align 8
  store i32 0, ptr %i.aj, align 8
  br label %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit

bb.j:                                             ; preds = %bb.h
  %i.cg = shl nuw i32 %i.bt, 25
  store i32 %i.cg, ptr %i.aj, align 8
  store i8 0, ptr %i.ak, align 2
  br label %_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit

_ZN6hermes3hbc15SmallFuncHeaderC2ERKNS0_14FunctionHeaderE.exit: ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.j
  %i.ch = load ptr, ptr %i.ag, align 8, !tbaa !34
  %i.ci = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.cm, ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count60
  br i1 %exitcond61.not, label %.lr.ph51.preheader, label %bb.b, !llvm.loop !35

._crit_edge52:                                    ; preds = %.lr.ph51, %._crit_edge
  %i.cn = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 8 uses
  %i.co = load ptr, ptr %2, align 8, !tbaa !20    ; 9 uses
  %i.cp = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 10 uses
  %i.cs = add i64 %i.cr, 3
  %i.ct = and i64 %i.cs, -4                       ; 5 uses
  %i.cu = icmp ugt i64 %i.ct, %i.cr
  br i1 %i.cu, label %bb.k, label %bb.s

bb.k:                                             ; preds = %._crit_edge52
  %i.cv = sub nuw i64 %i.ct, %i.cr                ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !36
  %i.cy = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.cz = sub i64 %i.cy, %i.cp                    ; 2 uses
  %i.da = icmp sgt i64 %i.cr, -1
  call void @llvm.assume(i1 %i.da)
  %i.db = xor i64 %i.cr, 9223372036854775807      ; 2 uses
  %i.dc = icmp ule i64 %i.cz, %i.db
  call void @llvm.assume(i1 %i.dc)
  %.not23.i.i = icmp ult i64 %i.cz, %i.cv
  br i1 %.not23.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.cn, align 1, !tbaa !33
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 2 uses
  %i.de = add nsw i64 %i.cv, -1                   ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i, label %bb.m
end_hunk_0
