inline.NumInlined: 434
inline.NumDeleted: 268
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.LogMessage = type { i8, %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.duckdb_re2::StringPiece" = type { ptr, i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.duckdb_re2::SparseSetT" = type { i32, %"class.duckdb_re2::PODArray.30", %"class.duckdb_re2::PODArray.30" }
%"class.duckdb_re2::PODArray.30" = type { %"class.std::unique_ptr.31" }
%"class.std::unique_ptr.31" = type { %"struct.std::__uniq_ptr_data.32" }
%"struct.std::__uniq_ptr_data.32" = type { %"class.std::__uniq_ptr_impl.33" }
%"class.std::__uniq_ptr_impl.33" = type { %"class.std::tuple.34" }
%"class.std::tuple.34" = type { %"struct.std::_Tuple_impl.35" }
%"struct.std::_Tuple_impl.35" = type { %"struct.std::_Tuple_impl.36", %"struct.std::_Head_base.38" }
%"struct.std::_Tuple_impl.36" = type { %"struct.std::_Head_base.37" }
%"struct.std::_Head_base.37" = type { %"struct.duckdb_re2::PODArray<int>::Deleter" }
%"struct.duckdb_re2::PODArray<int>::Deleter" = type { i32 }
%"struct.std::_Head_base.38" = type { ptr }

$_ZN10LogMessageD2Ev = comdat any

$_ZN10duckdb_re210SparseSetTIvED2Ev = comdat any

$_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh = comdat any

@.str.1 = private unnamed_addr constant [49 x i8] c"Cannot use SearchOnePass for unanchored matches.\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"unhandled opcode: \00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN10duckdb_re214OnePass_ChecksEv() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re24Prog13SearchOnePassERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = alloca [10 x ptr], align 16              ; 9 uses
  %i.b = alloca [10 x ptr], align 16              ; 13 uses
  %8 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 11 uses
  %i.c = icmp ne i32 %3, 1
  %i.d = icmp ne i32 %4, 2
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i8 0, ptr %7, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.e)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.1, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.g = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !22
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.i = getelementptr i8, ptr %i.g, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.l, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.n) #13
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.l, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #12
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.af

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  resume { ptr, i32 } %i.s

bb.d:                                             ; preds = %bb.a
  %i.t = shl i32 %6, 1                            ; 3 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.t, i32 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.u = zext nneg i32 %spec.store.select to i64  ; 4 uses
  %i.v = shl nuw nsw i64 %i.u, 3                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.v, i1 false), !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.v, i1 false), !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !26
  %i.w = load ptr, ptr %8, align 8, !tbaa !28
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = load i8, ptr %0, align 8, !tbaa !30, !range !66, !noundef !67
  %i.z = trunc nuw i8 %i.y to i1
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !28 ; 6 uses
  %.val128 = load ptr, ptr %8, align 8
  %.not = icmp ne ptr %.val128, %.pre.pre
  %or.cond213.not = select i1 %i.z, i1 %.not, i1 false
  br i1 %or.cond213.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !68, !range !66, !noundef !67
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %._crit_edge198

._crit_edge198:                                   ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre199 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !69
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val131 = load ptr, ptr %8, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.val132 = load i64, ptr %i.ad, align 8, !tbaa !69
  %i.ae = getelementptr inbounds nuw i8, ptr %.val131, i64 %.val132
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val130 = load i64, ptr %i.af, align 8, !tbaa !69 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %.val130
  %.not117 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not117, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %._crit_edge198, %bb.h
  %i.ah = phi i64 [ %.val130, %bb.h ], [ %.pre199, %._crit_edge198 ] ; 2 uses
  %spec.select = phi i32 [ 2, %bb.h ], [ %4, %._crit_edge198 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !25 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !70
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.ah
  store ptr %.pre.pre, ptr %i.b, align 16, !tbaa !25
  %.not186 = icmp eq i64 %i.ah, 0
  br i1 %.not186, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.i
  %i.aq = load i32, ptr %i.aj, align 4, !tbaa !71
  %i.ar = icmp eq i32 %spec.select, 2
  %i.as = icmp sgt i32 %6, 1                      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = icmp ne i32 %spec.select, 0
  %scevgep = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %scevgep192 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %smax = tail call i32 @llvm.smax.i32(i32 %i.t, i32 3)
  %i.av = zext nneg i32 %smax to i64
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = add nsw i64 %i.aw, -16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph177, %.loopexit162
  %.0107175 = phi i32 [ %i.aq, %.lr.ph177 ], [ %.1108, %.loopexit162 ] ; 5 uses
  %.0109174 = phi i1 [ false, %.lr.ph177 ], [ %.1110, %.loopexit162 ] ; 3 uses
  %.0112173 = phi ptr [ %.pre.pre, %.lr.ph177 ], [ %i.cu, %.loopexit162 ] ; 9 uses
  %.0114172 = phi ptr [ %i.aj, %.lr.ph177 ], [ %.1115, %.loopexit162 ]
  %i.ay = load i8, ptr %.0112173, align 1, !tbaa !73
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !73
  %i.bc = getelementptr inbounds nuw i8, ptr %.0114172, i64 4
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3  ; 6 uses
  %i.bg = and i32 %i.bf, 63                       ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = call noundef i32 @_ZN10duckdb_re24Prog10EmptyFlagsERKNS_11StringPieceEPKc(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %.0112173)
  %i.bj = xor i32 %i.bi, -1
  %i.bk = and i32 %i.bg, %i.bj
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = lshr i32 %i.bf, 16
  %i.bm = mul nsw i32 %i.bl, %i.an
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.aj, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !71
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1115 = phi ptr [ %i.bo, %bb.l ], [ null, %bb.k ] ; 3 uses
  %.1108 = phi i32 [ %i.bp, %bb.l ], [ 48, %bb.k ] ; 2 uses
  %i.bq = icmp eq i32 %.0107175, 48
  %or.cond5 = select i1 %i.ar, i1 true, i1 %i.bq
  br i1 %or.cond5, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = and i32 %i.bf, 64
  %i.bs = icmp eq i32 %i.br, 0                    ; 2 uses
  %i.bt = and i32 %.1108, 63
  %i.bu = icmp eq i32 %i.bt, 0
  %or.cond123 = select i1 %i.bs, i1 %i.bu, i1 false
  br i1 %or.cond123, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = and i32 %.0107175, 63                   ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = call noundef i32 @_ZN10duckdb_re24Prog10EmptyFlagsERKNS_11StringPieceEPKc(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %.0112173)
  %i.by = xor i32 %i.bx, -1
  %i.bz = and i32 %i.bv, %i.by
  %.not.i133 = icmp eq i32 %i.bz, 0
  br i1 %.not.i133, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.as, label %._crit_edge, label %_ZN10duckdb_re2L13ApplyCapturesEjPKcPS1_i.exit

._crit_edge:                                      ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep, ptr nonnull align 16 %scevgep192, i64 %i.ax, i1 false), !tbaa !25
  %i.ca = and i32 %.0107175, 32640
  %.not120.not = icmp eq i32 %i.ca, 0
  br i1 %.not120.not, label %_ZN10duckdb_re2L13ApplyCapturesEjPKcPS1_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.t
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.t ], [ 2, %._crit_edge ] ; 4 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cc = shl i32 32, %i.cb
  %i.cd = and i32 %i.cc, %.0107175
  %.not.i134 = icmp eq i32 %i.cd, 0
  br i1 %.not.i134, label %.lr.ph.i.1, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store ptr %.0112173, ptr %i.ce, align 16, !tbaa !25
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cf = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.cg = shl i32 32, %i.cf
  %i.ch = and i32 %i.cg, %.0107175
  %.not.i134.1 = icmp eq i32 %i.ch, 0
  br i1 %.not.i134.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.1
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i
  store ptr %.0112173, ptr %i.ci, align 8, !tbaa !25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.u
  br i1 %exitcond.not.i.1, label %_ZN10duckdb_re2L13ApplyCapturesEjPKcPS1_i.exit, label %.lr.ph.i, !llvm.loop !74

_ZN10duckdb_re2L13ApplyCapturesEjPKcPS1_i.exit:   ; preds = %bb.t, %bb.q, %._crit_edge
  store ptr %.0112173, ptr %i.at, align 8, !tbaa !25
  %or.cond125 = or i1 %i.au, %i.bs
  br i1 %or.cond125, label %bb.u, label %.preheader

bb.u:                                             ; preds = %bb.n, %bb.p, %_ZN10duckdb_re2L13ApplyCapturesEjPKcPS1_i.exit, %bb.m
  %.1110 = phi i1 [ %.0109174, %bb.m ], [ %.0109174, %bb.n ], [ %.0109174, %bb.p ], [ true, %_ZN10duckdb_re2L13ApplyCapturesEjPKcPS1_i.exit ] ; 3 uses
  %i.cj = icmp eq ptr %.1115, null
  br i1 %i.cj, label %_ZN10duckdb_re2L13ApplyCapturesEjPKcPS1_i.exit142, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = and i32 %i.bf, 32640
  %i.cl = icmp ne i32 %i.ck, 0
  %or.cond3 = and i1 %i.as, %i.cl
  br i1 %or.cond3, label %.lr.ph.i137, label %.loopexit162

.lr.ph.i137:                                      ; preds = %bb.v, %bb.y
  %indvars.iv.i138 = phi i64 [ %indvars.iv.next.i140.1, %bb.y ], [ 2, %bb.v ] ; 4 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv.i138 to i32
  %i.cn = shl i32 32, %i.cm
  %i.co = and i32 %i.cn, %i.bf
  %.not.i139 = icmp eq i32 %i.co, 0
  br i1 %.not.i139, label %.lr.ph.i137.1, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i137
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i138
  store ptr %.0112173, ptr %i.cp, align 16, !tbaa !25
  br label %.lr.ph.i137.1

.lr.ph.i137.1:                                    ; preds = %bb.w, %.lr.ph.i137
  %indvars.iv.next.i140 = or disjoint i64 %indvars.iv.i138, 1 ; 2 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv.next.i140 to i32
  %i.cr = shl i32 32, %i.cq
  %i.cs = and i32 %i.cr, %i.bf
  %.not.i139.1 = icmp eq i32 %i.cs, 0
  br i1 %.not.i139.1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i137.1
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i140
  store ptr %.0112173, ptr %i.ct, align 8, !tbaa !25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i137.1
  %indvars.iv.next.i140.1 = add nuw nsw i64 %indvars.iv.i138, 2 ; 2 uses
  %exitcond.not.i141.1 = icmp eq i64 %indvars.iv.next.i140.1, %i.u
  br i1 %exitcond.not.i141.1, label %.loopexit162, label %.lr.ph.i137, !llvm.loop !74

.loopexit162:                                     ; preds = %bb.y, %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %.0112173, i64 1 ; 3 uses
  %i.cv = icmp ult ptr %i.cu, %i.ap
  br i1 %i.cv, label %bb.j, label %._crit_edge178, !llvm.loop !76

._crit_edge178:                                   ; preds = %.loopexit162, %bb.i
  %.0114.lcssa = phi ptr [ %i.aj, %bb.i ], [ %.1115, %.loopexit162 ]
  %.0112.lcssa = phi ptr [ %.pre.pre, %bb.i ], [ %i.cu, %.loopexit162 ] ; 4 uses
  %.0109.lcssa = phi i1 [ false, %bb.i ], [ %.1110, %.loopexit162 ] ; 2 uses
  %i.cw = load i32, ptr %.0114.lcssa, align 4, !tbaa !71 ; 5 uses
  %.not118 = icmp eq i32 %i.cw, 48
  br i1 %.not118, label %_ZN10duckdb_re2L13ApplyCapturesEjPKcPS1_i.exit142, label %bb.z

bb.z:                                             ; preds = %._crit_edge178
  %i.cx = and i32 %i.cw, 63                       ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = call noundef i32 @_ZN10duckdb_re24Prog10EmptyFlagsERKNS_11StringPieceEPKc(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %.0112.lcssa)
  %i.da = xor i32 %i.cz, -1
  %i.db = and i32 %i.cx, %i.da
  %.not.i143 = icmp eq i32 %i.db, 0
  br i1 %.not.i143, label %bb.ab, label %_ZN10duckdb_re2L13ApplyCapturesEjPKcPS1_i.exit142

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dc = icmp sgt i32 %6, 1                      ; 2 uses
  %i.dd = and i32 %i.cw, 32640
  %.not119 = icmp ne i32 %i.dd, 0
  %or.cond127.not159 = and i1 %i.dc, %.not119
  br i1 %or.cond127.not159, label %.lr.ph.i146, label %_ZN10duckdb_re2L13ApplyCapturesEjPKcPS1_i.exit151

.lr.ph.i146:                                      ; preds = %bb.ab, %bb.ae
  %indvars.iv.i147 = phi i64 [ %indvars.iv.next.i149.1, %bb.ae ], [ 2, %bb.ab ] ; 4 uses
  %i.de = trunc nuw nsw i64 %indvars.iv.i147 to i32
  %i.df = shl i32 32, %i.de
  %i.dg = and i32 %i.df, %i.cw
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re210SparseSetTIvED2Ev:bb.a
bb.c:                                             ; preds = %_ZN10duckdb_re28PODArrayIiED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #13
  br label %_ZN10duckdb_re28PODArrayIiED2Ev.exit2

_ZN10duckdb_re28PODArrayIiED2Ev.exit2:            ; preds = %_ZN10duckdb_re28PODArrayIiED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare noundef i32 @_ZN10duckdb_re24Prog10EmptyFlagsERKNS_11StringPieceEPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113  ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not65 = icmp ult i64 %i.g, %2
  br i1 %.not65, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !73      ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !114

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1, !tbaa !73
  store i8 %i.q, ptr %i.d, align 1, !tbaa !73
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !113
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !114

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !73
  store i8 %i.z, ptr %i.y, align 1, !tbaa !73
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.l:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ac, %bb.m ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !113
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !114

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.p, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %1, align 1, !tbaa !73
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !73
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !113
  %.not.i.i.i70 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i70, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.r:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !97    ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.au = phi ptr [ %i.at, %bb.t ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1, !tbaa !73
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.v, label %bb.w, !prof !114

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.u
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.x, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.x:                                             ; preds = %bb.w
  %i.az = load i8, ptr %i.ai, align 1, !tbaa !73
  store i8 %i.az, ptr %i.au, align 1, !tbaa !73
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.x, %bb.w, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.y, label %bb.z, !prof !114

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %1, i64 %i.bb, i1 false)
  br label %bb.ab

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.be = load i8, ptr %1, align 1, !tbaa !73
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !73
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %.not.i75 = icmp eq ptr %i.ai, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZdlPv(ptr noundef nonnull %i.ai) #13
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ab, %bb.ac
  store ptr %i.au, ptr %0, align 8, !tbaa !97
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !113
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !112
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.k, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69, %bb.q, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTS10LogMessage", !9, i64 0, !10, i64 8}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !11, i64 0, !12, i64 8}
!11 = !{!"_ZTSSo"}
!12 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !13, i64 0, !18, i64 64, !19, i64 72}
!13 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !16, i64 56}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"_ZTSSt6locale", !17, i64 0}
!17 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!18 = !{!"_ZTSSt13_Ios_Openmode", !5, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !21, i64 8, !5, i64 16}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!21 = !{!"long", !5, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !6, i64 0}
!24 = !{!19, !14, i64 0}
!25 = !{!14, !14, i64 0}
!26 = !{i64 0, i64 8, !25, i64 8, i64 8, !27}
!27 = !{!21, !21, i64 0}
!28 = !{!29, !14, i64 0}
!29 = !{!"_ZTSN10duckdb_re211StringPieceE", !14, i64 0, !21, i64 8}
!30 = !{!31, !9, i64 0}
!31 = !{!"_ZTSN10duckdb_re24ProgE", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !9, i64 24, !21, i64 32, !5, i64 40, !4, i64 48, !5, i64 52, !32, i64 88, !21, i64 104, !43, i64 112, !54, i64 128, !21, i64 144, !64, i64 152, !64, i64 160, !5, i64 168, !65, i64 424, !65, i64 428}
!32 = !{!"_ZTSN10duckdb_re28PODArrayItEE", !33, i64 0}
!33 = !{!"_ZTSSt10unique_ptrIA_tN10duckdb_re28PODArrayItE7DeleterEE", !34, i64 0}
!34 = !{!"_ZTSSt15__uniq_ptr_dataItN10duckdb_re28PODArrayItE7DeleterELb1ELb1EE", !35, i64 0}
!35 = !{!"_ZTSSt15__uniq_ptr_implItN10duckdb_re28PODArrayItE7DeleterEE", !36, i64 0}
!36 = !{!"_ZTSSt5tupleIJPtN10duckdb_re28PODArrayItE7DeleterEEE", !37, i64 0}
!37 = !{!"_ZTSSt11_Tuple_implILm0EJPtN10duckdb_re28PODArrayItE7DeleterEEE", !38, i64 0, !41, i64 8}
!38 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayItE7DeleterEEE", !39, i64 0}
!39 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayItE7DeleterELb0EE", !40, i64 0}
!40 = !{!"_ZTSN10duckdb_re28PODArrayItE7DeleterE", !4, i64 0}
!41 = !{!"_ZTSSt10_Head_baseILm0EPtLb0EE", !42, i64 0}
!42 = !{!"p1 short", !15, i64 0}
!43 = !{!"_ZTSN10duckdb_re28PODArrayINS_4Prog4InstEEE", !44, i64 0}
!44 = !{!"_ZTSSt10unique_ptrIA_N10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !45, i64 0}
!45 = !{!"_ZTSSt15__uniq_ptr_dataIN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterELb1ELb1EE", !46, i64 0}
!46 = !{!"_ZTSSt15__uniq_ptr_implIN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !47, i64 0}
!47 = !{!"_ZTSSt5tupleIJPN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !48, i64 0}
!48 = !{!"_ZTSSt11_Tuple_implILm0EJPN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !49, i64 0, !52, i64 8}
!49 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayINS0_4Prog4InstEE7DeleterEEE", !50, i64 0}
!50 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayINS0_4Prog4InstEE7DeleterELb0EE", !51, i64 0}
!51 = !{!"_ZTSN10duckdb_re28PODArrayINS_4Prog4InstEE7DeleterE", !4, i64 0}
!52 = !{!"_ZTSSt10_Head_baseILm0EPN10duckdb_re24Prog4InstELb0EE", !53, i64 0}
!53 = !{!"p1 _ZTSN10duckdb_re24Prog4InstE", !15, i64 0}
!54 = !{!"_ZTSN10duckdb_re28PODArrayIhEE", !55, i64 0}
!55 = !{!"_ZTSSt10unique_ptrIA_hN10duckdb_re28PODArrayIhE7DeleterEE", !56, i64 0}
!56 = !{!"_ZTSSt15__uniq_ptr_dataIhN10duckdb_re28PODArrayIhE7DeleterELb1ELb1EE", !57, i64 0}
!57 = !{!"_ZTSSt15__uniq_ptr_implIhN10duckdb_re28PODArrayIhE7DeleterEE", !58, i64 0}
!58 = !{!"_ZTSSt5tupleIJPhN10duckdb_re28PODArrayIhE7DeleterEEE", !59, i64 0}
!59 = !{!"_ZTSSt11_Tuple_implILm0EJPhN10duckdb_re28PODArrayIhE7DeleterEEE", !60, i64 0, !63, i64 8}
!60 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayIhE7DeleterEEE", !61, i64 0}
!61 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayIhE7DeleterELb0EE", !62, i64 0}
!62 = !{!"_ZTSN10duckdb_re28PODArrayIhE7DeleterE", !4, i64 0}
!63 = !{!"_ZTSSt10_Head_baseILm0EPhLb0EE", !14, i64 0}
!64 = !{!"p1 _ZTSN10duckdb_re23DFAE", !15, i64 0}
!65 = !{!"_ZTSSt9once_flag", !4, i64 0}
!66 = !{i8 0, i8 2}
!67 = !{}
!68 = !{!31, !9, i64 1}
!69 = !{!29, !21, i64 8}
!70 = !{!31, !4, i64 20}
!71 = !{!72, !4, i64 0}
!72 = !{!"_ZTSN10duckdb_re28OneStateE", !4, i64 0, !5, i64 4}
!73 = !{!5, !5, i64 0}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.mustprogress"}
!76 = distinct !{!76, !75}
!77 = distinct !{!77, !75}
!78 = !{!31, !9, i64 4}
!79 = !{!31, !4, i64 8}
!80 = !{!31, !21, i64 144}
!81 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!82 = !{!31, !4, i64 16}
!83 = !{!84, !4, i64 0}
!84 = !{!"_ZTSN10duckdb_re210SparseSetTIvEE", !4, i64 0, !85, i64 8, !85, i64 24}
!85 = !{!"_ZTSN10duckdb_re28PODArrayIiEE", !86, i64 0}
!86 = !{!"_ZTSSt10unique_ptrIA_iN10duckdb_re28PODArrayIiE7DeleterEE", !87, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_dataIiN10duckdb_re28PODArrayIiE7DeleterELb1ELb1EE", !88, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_implIiN10duckdb_re28PODArrayIiE7DeleterEE", !89, i64 0}
!89 = !{!"_ZTSSt5tupleIJPiN10duckdb_re28PODArrayIiE7DeleterEEE", !90, i64 0}
!90 = !{!"_ZTSSt11_Tuple_implILm0EJPiN10duckdb_re28PODArrayIiE7DeleterEEE", !91, i64 0, !94, i64 8}
!91 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayIiE7DeleterEEE", !92, i64 0}
!92 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayIiE7DeleterELb0EE", !93, i64 0}
!93 = !{!"_ZTSN10duckdb_re28PODArrayIiE7DeleterE", !4, i64 0}
!94 = !{!"_ZTSSt10_Head_baseILm0EPiLb0EE", !95, i64 0}
!95 = !{!"p1 int", !15, i64 0}
!96 = !{!94, !95, i64 0}
!97 = !{!98, !14, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!99 = distinct !{!99, !75}
!100 = !{!101, !4, i64 0}
!101 = !{!"_ZTSN10duckdb_re28InstCondE", !4, i64 0, !4, i64 4}
!102 = !{!101, !4, i64 4}
!103 = !{!53, !53, i64 0}
!104 = !{!105, !4, i64 0}
!105 = !{!"_ZTSN10duckdb_re24Prog4InstE", !4, i64 0, !5, i64 4}
!106 = distinct !{!106, !75}
!107 = distinct !{!107, !75}
!108 = distinct !{!108, !75}
!109 = distinct !{!109, !75}
!110 = distinct !{!110, !75}
!111 = !{!95, !95, i64 0}
!112 = !{!98, !14, i64 16}
!113 = !{!98, !14, i64 8}
!114 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
